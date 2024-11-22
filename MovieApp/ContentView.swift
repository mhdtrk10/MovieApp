//
//  ContentView.swift
//  MovieApp
//
//  Created by Mehdi Oturak on 22.11.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MockData.movieArray, id : \.id) { movie in
                        NavigationLink(movie.movieName) {
                            _MovieView(model: movie)
                        }
                    }.onDelete { IndexSet in
                        MockData.movieArray[IndexSet.first!]
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
