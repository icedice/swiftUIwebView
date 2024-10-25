import SwiftUI
import WebKit

class WebViewCommand: ObservableObject {
    private weak var webView: WKWebView?
    
    func setWebView(_ webView: WKWebView) {
        self.webView = webView
    }
    
    func refresh() {
        webView?.reload()
    }
}
