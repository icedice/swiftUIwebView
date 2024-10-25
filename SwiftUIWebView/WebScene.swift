import SwiftUI
import WebKit

struct WebScene: View {
    @EnvironmentObject private var context: WebContext
    let webView: WebView
        
    var body: some View {
        NavigationStack {
            VStack {
                webView
                MySubView()
            }.navigationTitle("test \(context.isLoading)")
        }
    }
}

#Preview {
    let webViewHandler = WebViewProvider()
    WebScene(webView: webViewHandler.webView)
        .environmentObject(webViewHandler.context)
        .environmentObject(webViewHandler.command)
}
