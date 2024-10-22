//
//  ContentView.swift
//  H4X0R
//
//  Created by Dezza Rizqi on 20/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var postManager = PostManager()
    
    var body: some View {
        NavigationView{
            List(postManager.posts) { post in
                NavigationLink(destination: PostDetailView(url: post.url))  {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.postManager.fetchPosts()
        }
    }
}

#Preview {
    ContentView()
}



//struct Post: Identifiable {
//    let id: String
//    let title: String
//}
//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola"),
//]
