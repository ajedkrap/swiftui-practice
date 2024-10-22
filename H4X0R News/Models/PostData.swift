//
//  PostData.swift
//  H4X0R
//
//  Created by Dezza Rizqi on 20/10/24.
//

import Foundation

struct PostData: Codable {
    let hits: [Post]
}

// Identifiable
/// allow the list to be able to recognize the Object based on the object id
struct Post: Codable, Identifiable {
    var id: String  {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
    let created_at_i: Double
}
