//
//  PostDetailView.swift
//  H4X0R
//
//  Created by Dezza Rizqi on 21/10/24.
//

import SwiftUI
import WebKit

struct PostDetailView: View {
        
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    PostDetailView(url: "https://www.google.com")
}


