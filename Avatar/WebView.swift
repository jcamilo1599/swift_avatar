//
//  WebView.swift
//  Avatar
//
//  Created by Juan Camilo Marín Ochoa on 30/04/23.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let htmlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = false
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlString, baseURL: nil)
    }
}
