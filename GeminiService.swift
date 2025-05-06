import Foundation
import SwiftData

class GeminiService {
    private let apiKey: String
    private let baseURL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro:generateContent"
    private let modelContext: ModelContext
    
    init(apiKey: String, modelContext: ModelContext) {
        self.apiKey = apiKey
        self.modelContext = modelContext
    }
    
    private func getUserInfo() -> (name: String, examType: String)? {
        let descriptor = FetchDescriptor<User>()
        if let user = try? modelContext.fetch(descriptor).first {
            return (user.name, user.examType)
        }
        return nil
    }
    
    func sendMessage(_ message: String) async throws -> String {
        let url = URL(string: "\(baseURL)?key=\(apiKey)")!
        
        let userInfo = getUserInfo()
        let userName = userInfo?.name ?? "Değerli Öğrenci"
        let examType = userInfo?.examType ?? "YKS"
        
        let systemPrompt = """
        Sen bir \(examType) sınavı mentorüsün. Kullanıcıya samimi ve motive edici bir dille hitap et. 
        Cevapların kısa, net ve pratik olsun. Her zaman öğrencinin adını kullan ve onu motive et.
        Örnek: "Merhaba \(userName)! Bu konuyu şöyle düşünelim..." veya "Harika bir soru \(userName)! İşte kısa ve net çözümü..."
        """
        
        let requestBody: [String: Any] = [
            "contents": [
                [
                    "role": "user",
                    "parts": [
                        ["text": "\(systemPrompt)\n\nÖğrenci sorusu: \(message)"]
                    ]
                ]
            ],
            "generationConfig": [
                "temperature": 0.7,
                "topK": 40,
                "topP": 0.95,
                "maxOutputTokens": 1024
            ]
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONSerialization.data(withJSONObject: requestBody)
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }
        
        guard httpResponse.statusCode == 200 else {
            if let errorJson = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
               let error = errorJson["error"] as? [String: Any],
               let message = error["message"] as? String {
                throw NSError(domain: "GeminiService", code: httpResponse.statusCode, userInfo: [NSLocalizedDescriptionKey: message])
            }
            throw URLError(.badServerResponse)
        }
        
        guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
              let candidates = json["candidates"] as? [[String: Any]],
              let firstCandidate = candidates.first,
              let content = firstCandidate["content"] as? [String: Any],
              let parts = content["parts"] as? [[String: Any]],
              let firstPart = parts.first,
              let text = firstPart["text"] as? String else {
            throw URLError(.cannotParseResponse)
        }
        
        return text
    }
}

// Gemini API yanıt modelleri
struct GeminiResponse: Codable {
    let candidates: [Candidate]
}

struct Candidate: Codable {
    let content: Content
}

struct Content: Codable {
    let parts: [Part]
}

struct Part: Codable {
    let text: String
} 
