import Foundation
import SwiftData

@Model
final class StudySession: Identifiable {
    var id: UUID
    var subject: String
    var topic: String
    var duration: TimeInterval // Duration in seconds
    var date: Date
    var notes: String?
    
    init(subject: String, topic: String, duration: TimeInterval, date: Date = Date(), notes: String? = nil) {
        self.id = UUID()
        self.subject = subject
        self.topic = topic
        self.duration = duration
        self.date = date
        self.notes = notes
    }
} 