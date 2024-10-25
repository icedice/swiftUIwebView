import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @ObservedObject private var context: WebContext
    private(set) var wkWebView = WKWebView()
    
    public init(context: WebContext) {
        self.context = context
    }
    
    func makeUIView(context: Context) -> WKWebView {
        wkWebView.navigationDelegate = context.coordinator
        
        let url = URL(string: "https://www.google.com")!
        let request = URLRequest(url: url)
        wkWebView.load(request)
        
        return wkWebView
    }
    
    func makeCoordinator() -> WebViewCoordinator {
        WebViewCoordinator(context: context)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}

    func refresh() {
        wkWebView.reload()
    }
}
