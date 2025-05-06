import SwiftUI
import SwiftData

struct CalendarView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \StudySession.date, order: .reverse) private var studySessions: [StudySession]
    @Query private var subjects: [Subject]
    @State private var selectedDate = Date()
    @State private var showingAddSession = false
    
    private let calendar = Calendar.current
    
    var body: some View {
        VStack(spacing: 20) {
            // Date Picker
            DatePicker(
                "Tarih Seç",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .padding()
            
            // Study Sessions for Selected Date
            VStack(alignment: .leading, spacing: 16) {
                Text("Çalışma Kayıtları")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                if sessionsForSelectedDate.isEmpty {
                    Text("Bu tarihte çalışma kaydı bulunmuyor")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(sessionsForSelectedDate) { session in
                                StudySessionCard(session: session)
                                    .contextMenu {
                                        Button(role: .destructive) {
                                            deleteSession(session)
                                        } label: {
                                            Label("Sil", systemImage: "trash")
                                        }
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            
            Spacer()
            
            // Add Session Button
            Button(action: { showingAddSession = true }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("Yeni Çalışma Ekle")
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(12)
            }
            .padding()
        }
        .navigationTitle("Çalışma Takvimi")
        .sheet(isPresented: $showingAddSession) {
            AddStudySessionView(selectedDate: selectedDate, subjects: subjects)
        }
        .onAppear {
            print("Mevcut çalışma kayıtları: \(studySessions.count)")
        }
    }
    
    private var sessionsForSelectedDate: [StudySession] {
        studySessions.filter { session in
            calendar.isDate(session.date, inSameDayAs: selectedDate)
        }
    }
    
    private func deleteSession(_ session: StudySession) {
        modelContext.delete(session)
        try? modelContext.save()
    }
}

struct StudySessionCard: View {
    let session: StudySession
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                VStack(alignment: .leading) {
                    Text(session.subject)
                        .font(.headline)
                    Text(session.topic)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Text(formatDuration(session.duration))
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            if let notes = session.notes {
                Text(notes)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
    
    private func formatDuration(_ duration: TimeInterval) -> String {
        let hours = Int(duration) / 3600
        let minutes = Int(duration) / 60 % 60
        return "\(hours)s \(minutes)dk"
    }
}

struct AddStudySessionView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    let selectedDate: Date
    let subjects: [Subject]
    
    @State private var selectedExamType: String = "TYT"
    @State private var selectedSubject: Subject?
    @State private var selectedTopic: Topic?
    @State private var duration: TimeInterval = 3600 // 1 hour default
    @State private var notes = ""
    
    private var filteredSubjects: [Subject] {
        subjects.filter { $0.examType == selectedExamType }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Sınav Türü")) {
                    Picker("Sınav Türü", selection: $selectedExamType) {
                        Text("TYT").tag("TYT")
                        Text("AYT").tag("AYT")
                    }
                    .pickerStyle(.segmented)
                }
                
                Section(header: Text("Ders Seçimi")) {
                    Picker("Ders", selection: $selectedSubject) {
                        Text("Seçiniz").tag(nil as Subject?)
                        ForEach(filteredSubjects) { subject in
                            Text(subject.name)
                                .tag(subject as Subject?)
                        }
                    }
                }
                
                if let subject = selectedSubject {
                    Section(header: Text("Konu Seçimi")) {
                        Picker("Konu", selection: $selectedTopic) {
                            Text("Seçiniz").tag(nil as Topic?)
                            ForEach(subject.topics) { topic in
                                Text(topic.name).tag(topic as Topic?)
                            }
                        }
                    }
                }
                
                Section(header: Text("Süre")) {
                    Picker("Çalışma Süresi", selection: $duration) {
                        Text("30 dakika").tag(TimeInterval(1800))
                        Text("1 saat").tag(TimeInterval(3600))
                        Text("1.5 saat").tag(TimeInterval(5400))
                        Text("2 saat").tag(TimeInterval(7200))
                    }
                }
                
                Section(header: Text("Notlar")) {
                    TextEditor(text: $notes)
                        .frame(height: 100)
                }
            }
            .navigationTitle("Yeni Çalışma")
            .navigationBarItems(
                leading: Button("İptal") { dismiss() },
                trailing: Button("Kaydet") {
                    saveSession()
                    dismiss()
                }
                .disabled(selectedSubject == nil || selectedTopic == nil)
            )
            .onChange(of: selectedExamType) { oldValue, newValue in
                selectedSubject = nil
                selectedTopic = nil
            }
        }
    }
    
    private func saveSession() {
        guard let subject = selectedSubject,
              let topic = selectedTopic else { return }
        
        let session = StudySession(
            subject: "\(subject.name) (\(subject.examType))",
            topic: topic.name,
            duration: duration,
            date: selectedDate,
            notes: notes.isEmpty ? nil : notes
        )
        modelContext.insert(session)
        try? modelContext.save()
    }
} 