import SwiftUI

struct MySubView: View {
    @EnvironmentObject var loadingState: WebContext
    @EnvironmentObject var command: WebViewCommand
    
    var body: some View {
        VStack {
            Text("Loading State: \(loadingState.isLoading ? "Loading" : "Finished")")
            Button("Refresh") {
                command.refresh()
            }
        }
    }
}
