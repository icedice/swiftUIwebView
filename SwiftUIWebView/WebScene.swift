import SwiftUI
import WebKit

struct WebScene: View {
    @EnvironmentObject private var loadingState: WebContext
    let webView: WebView
        
    var body: some View {
        NavigationStack {
            VStack {
                webView
                MySubView()
            }.navigationTitle("test \(loadingState.isLoading)")
        }
    }
}

#Preview {
    let webViewHandler = WebViewProvider()
    WebScene(webView: webViewHandler.webView)
        .environmentObject(webViewHandler.loadingState)
        .environmentObject(webViewHandler.command)
}
