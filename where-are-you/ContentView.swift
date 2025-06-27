//
//  ContentView.swift
//  where-are-you
//
//  Created on 5/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, hey!")
                MapView()
            
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing){
                        NavigationLink(destination: {
                            Friends()
                        }, label: {Text("Friends")})
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
