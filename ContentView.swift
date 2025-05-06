//
//  ContentView.swift
//  MentAi
//
//  Created by Hasan Kılınç on 3.05.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var searchText = ""
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // Home View
            NavigationView {
                VStack(spacing: 20) {
                    // Search Bar
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Ders ara...", text: $searchText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.horizontal)
                    
                    // Featured Courses
                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Öne Çıkan Dersler")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 16) {
                                    ForEach(1...5, id: \.self) { _ in
                                        CourseCard()
                                    }
                                }
                                .padding(.horizontal)
                            }
                            
                            // Recent Activity
                            Text("Son Aktiviteler")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.top)
                            
                            ForEach(1...3, id: \.self) { _ in
                                ActivityCard()
                            }
                        }
                    }
                }
                .navigationTitle("MentAi")
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Ana Sayfa")
            }
            .tag(0)
            
            // Study View
            NavigationView {
                Text("Çalışma Alanı")
                    .navigationTitle("Çalışma")
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Çalışma")
            }
            .tag(1)
            
            // Calendar View
            NavigationView {
                CalendarView()
            }
            .tabItem {
                Image(systemName: "calendar")
                Text("Takvim")
            }
            .tag(2)
            
            // Profile View
            NavigationView {
                Text("Profil")
                    .navigationTitle("Profil")
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profil")
            }
            .tag(3)
        }
    }
}

struct CourseCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.blue.opacity(0.1))
                .frame(width: 160, height: 100)
                .overlay(
                    Image(systemName: "book.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.blue)
                )
            
            Text("Matematik")
                .font(.headline)
            Text("Temel Kavramlar")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 160)
    }
}

struct ActivityCard: View {
    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(Color.blue.opacity(0.1))
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                )
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Matematik Alıştırması")
                    .font(.headline)
                Text("2 saat önce")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
