import SwiftUI
import WebKit

class WebViewCoordinator: NSObject, WKNavigationDelegate {
    weak var webContext: WebContext?
    
    init(context: WebContext) {
        self.webContext = context
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        webContext?.setLoading(true)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webContext?.setLoading(false)
    }
}
