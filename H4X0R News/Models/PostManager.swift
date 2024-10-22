//
//  PostManager.swift
//  H4X0R
//
//  Created by Dezza Rizqi on 20/10/24.
//

import Foundation

class PostManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchPosts() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(PostData.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                   
                } else {
                    print("Error on task")
                }
            }
            task.resume()
        } else {
            print("Error on url")
        }
    }
}
