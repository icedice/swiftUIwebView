import UIKit
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let webViewHandler = WebViewProvider()
        
        let root = UIHostingController(
            rootView: WebScene(webView: webViewHandler.webView)
                .environmentObject(webViewHandler.context)
                .environmentObject(webViewHandler.command)
        )
        
        window?.rootViewController = root
        window?.makeKeyAndVisible()
        
        return true
    }
}

