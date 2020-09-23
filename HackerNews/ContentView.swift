//
//  ContentView.swift
//  HackerNews
//
//  Created by Talha Rahman on 9/22/20.
//  Copyright © 2020 Talha Rahman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var manager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(manager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker NEWS")
        }
        .onAppear {
            self.manager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11")
    }
}

