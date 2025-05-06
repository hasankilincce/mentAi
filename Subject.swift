import Foundation
import SwiftData

@Model
final class Subject: Identifiable {
    var id: UUID
    var name: String
    var examType: String // TYT veya AYT
    var topics: [Topic]
    
    init(name: String, examType: String, topics: [Topic] = []) {
        self.id = UUID()
        self.name = name
        self.examType = examType
        self.topics = topics
    }
}

@Model
final class Topic: Identifiable {
    var id: UUID
    var name: String
    var subject: Subject?
    
    init(name: String) {
        self.id = UUID()
        self.name = name
    }
} 