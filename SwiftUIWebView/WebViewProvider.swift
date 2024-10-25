import SwiftUI
import WebKit

class WebViewProvider: ObservableObject {
    @Published var context: WebContext
    @Published var command: WebViewCommand
    var webView: WebView
    
    init() {
        let context = WebContext()
        let command = WebViewCommand()
        self.context = context
        self.command = command
        self.webView = WebView(context: context)
        self.command.setWebView(webView.wkWebView)
    }
}
