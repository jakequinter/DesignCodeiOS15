//
//  AccountView.swift
//  DesignCodeiOS15
//
//  Created by Jake Quinter on 7/7/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                VStack(spacing: 8) {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100)
                    )
                    Text("Jake Quinter")
                        .font(.title.weight(.semibold))
                    HStack {
                        Image(systemName: "location")
                            .imageScale(.small)
                        
                        Text("Boston, MA")
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                Section {
                    NavigationLink { ContentView()} label: {
                        Label("Settings", systemImage: "gear")
                    }
                    
                    NavigationLink { Text("Billing")} label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    
                    NavigationLink { Text("Help") } label: {
                        Label("Help", systemImage: "questionmark")
                    }
                }
                .accentColor(.black)
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
                
                Section {
                    Link(destination: URL(string: "https://apple.com")!) {
                        HStack {
                            Label("Website", systemImage: "house")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Link(destination: URL(string: "https://youtube.com")!) {
                        HStack {
                            Label("YouTube", systemImage: "tv")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .foregroundColor(.primary)
                .listRowSeparator(.hidden)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
