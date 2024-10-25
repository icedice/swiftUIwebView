import SwiftUI

class WebContext: ObservableObject {
    @Published private(set) var isLoading: Bool = true
    
    func setLoading(_ loading: Bool) {
        isLoading = loading
    }
}
