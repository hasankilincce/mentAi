import Foundation
import SwiftData

@Model
final class User {
    var id: UUID
    var name: String
    var grade: String
    var examType: String
    var previousScore: Double?
    var targetDepartment: String
    var targetUniversity: String
    
    init(
        id: UUID = UUID(),
        name: String,
        grade: String,
        examType: String,
        previousScore: Double? = nil,
        targetDepartment: String,
        targetUniversity: String
    ) {
        self.id = id
        self.name = name
        self.grade = grade
        self.examType = examType
        self.previousScore = previousScore
        self.targetDepartment = targetDepartment
        self.targetUniversity = targetUniversity
    }
} 