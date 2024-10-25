import SwiftUI
import WebKit

class WebViewProvider: ObservableObject {
    @Published var loadingState: WebContext
    @Published var command: WebViewCommand
    var webView: WebView
    
    init() {
        let context = WebContext()
        let command = WebViewCommand()
        self.loadingState = context
        self.command = command
        self.webView = WebView(context: context)
        self.command.setWebView(webView.wkWebView)
    }
}
