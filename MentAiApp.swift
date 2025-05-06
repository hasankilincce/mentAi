//
//  MentAiApp.swift
//  MentAi
//
//  Created by Hasan Kılınç on 3.05.2025.
//

import SwiftUI
import SwiftData

@main
struct MentAiApp: App {
    let modelContainer: ModelContainer
    
    init() {
        do {
            modelContainer = try ModelContainer(
                for: User.self, StudySession.self,
                configurations: ModelConfiguration(isStoredInMemoryOnly: false)
            )
            
            // İlk çalıştırmada verileri yükle
            let context = modelContainer.mainContext
            let subjectCount = try context.fetch(FetchDescriptor<Subject>()).count
            if subjectCount == 0 {
                SubjectDataService.loadInitialData(modelContext: context)
            }
        } catch {
            fatalError("Could not initialize ModelContainer: \(error)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(modelContainer)
    }
}
