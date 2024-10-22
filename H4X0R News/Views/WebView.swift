//
//  WebView.swift
//  H4X0R
//
//  Created by Dezza Rizqi on 21/10/24.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    WebView(urlString: "https://www.google.com")
}
