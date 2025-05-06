import SwiftUI
import SwiftData

struct Message: Identifiable {
    let id = UUID()
    let content: String
    let isUser: Bool
    let timestamp: Date
}

struct ChatView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var user: [User]
    @State private var messages: [Message] = []
    @State private var inputText = ""
    @State private var isTyping = false
    @FocusState private var isInputFocused: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    // Mesaj Listesi
                    ScrollViewReader { proxy in
                        ScrollView {
                            LazyVStack(spacing: 12) {
                                ForEach(messages) { message in
                                    MessageBubble(message: message)
                                        .id(message.id)
                                }
                                
                                if isTyping {
                                    TypingIndicator()
                                }
                            }
                            .padding(.horizontal)
                            .padding(.top, 8)
                        }
                        .onChange(of: messages.count) { _ in
                            withAnimation {
                                proxy.scrollTo(messages.last?.id, anchor: .bottom)
                            }
                        }
                    }
                    
                    // Giriş Alanı
                    VStack(spacing: 0) {
                        Divider()
                            .padding(.bottom, 8)
                        
                        HStack(spacing: 12) {
                            TextField("MentAI'ya sor...", text: $inputText, axis: .vertical)
                                .textFieldStyle(.plain)
                                .font(.system(size: 17))
                                .focused($isInputFocused)
                                .lineLimit(1...5)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 12)
                                .background(Color(.systemGray6))
                                .cornerRadius(20)
                            
                            Button(action: sendMessage) {
                                Image(systemName: "paperplane.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .frame(width: 36, height: 36)
                                    .background(Color.blue)
                                    .cornerRadius(18)
                            }
                            .disabled(inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    }
                    .background(Color(.systemBackground))
                }
            }
            .navigationTitle("MentAI")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        withAnimation {
                            messages = []
                        }
                    }) {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 20))
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
    
    private func sendMessage() {
        let trimmedText = inputText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedText.isEmpty else { return }
        
        // Kullanıcı mesajını ekle
        let userMessage = Message(content: trimmedText, isUser: true, timestamp: Date())
        withAnimation {
            messages.append(userMessage)
        }
        inputText = ""
        
        // MentAI yanıtı için yazıyor göstergesi
        isTyping = true
        
        // Gemini API'ye istek gönder
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // TODO: Gemini API entegrasyonu
            let aiResponse = Message(
                content: "Bu bir örnek yanıt. Gemini API entegrasyonu yapılacak.",
                isUser: false,
                timestamp: Date()
            )
            withAnimation {
                messages.append(aiResponse)
                isTyping = false
            }
        }
    }
}

struct MessageBubble: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.isUser {
                Spacer()
            }
            
            VStack(alignment: message.isUser ? .trailing : .leading, spacing: 4) {
                Text(message.content)
                    .font(.system(size: 17))
                    .foregroundColor(message.isUser ? .white : .primary)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(message.isUser ? Color.blue : Color(.systemGray6))
                    .cornerRadius(18)
                
                Text(message.timestamp, style: .time)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
            
            if !message.isUser {
                Spacer()
            }
        }
        .padding(.horizontal, 4)
    }
}

struct TypingIndicator: View {
    @State private var dotOffset: CGFloat = 0
    
    var body: some View {
        HStack {
            Spacer()
            
            HStack(spacing: 4) {
                ForEach(0..<3) { index in
                    Circle()
                        .fill(Color(.systemGray4))
                        .frame(width: 8, height: 8)
                        .offset(y: dotOffset)
                        .animation(
                            Animation.easeInOut(duration: 0.5)
                                .repeatForever()
                                .delay(Double(index) * 0.2),
                            value: dotOffset
                        )
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(Color(.systemGray6))
            .cornerRadius(18)
        }
        .padding(.horizontal, 4)
        .onAppear {
            dotOffset = -4
        }
    }
}

#Preview {
    ChatView()
} 