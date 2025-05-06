import SwiftUI
import SwiftData

struct ProfileView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var users: [User]
    
    var body: some View {
        NavigationView {
            List {
                if let user = users.first {
                    // Profil Başlığı
                    Section {
                        HStack(spacing: 16) {
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(user.name)
                                    .font(.system(size: 22, weight: .bold))
                                
                                Text(user.grade)
                                    .font(.system(size: 17))
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                    
                    // Sınav Bilgileri
                    Section("Sınav Bilgileri") {
                        InfoRow(title: "Sınav Alanı", value: user.examType)
                        InfoRow(title: "Sınıf", value: user.grade)
                        
                        if let previousScore = user.previousScore {
                            InfoRow(title: "Önceki Sıralama", value: formatRank(Int(previousScore)))
                        }
                    }
                    
                    // Hedef Bilgileri
                    if !user.targetDepartment.isEmpty || !user.targetUniversity.isEmpty {
                        Section("Hedeflerim") {
                            if !user.targetDepartment.isEmpty {
                                InfoRow(title: "Hedef Bölüm", value: user.targetDepartment)
                            }
                            
                            if !user.targetUniversity.isEmpty {
                                InfoRow(title: "Hedef Üniversite", value: user.targetUniversity)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Profilim")
            .listStyle(InsetGroupedListStyle())
        }
    }
    
    private func formatRank(_ rank: Int) -> String {
        if rank >= 1_000_000 {
            return "1.000.000+"
        }
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = "."
        return formatter.string(from: NSNumber(value: rank)) ?? "0"
    }
}

struct InfoRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Text(value)
                .font(.system(size: 17, weight: .medium))
        }
        .padding(.vertical, 4)
    }
} 