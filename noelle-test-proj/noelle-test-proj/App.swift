import SwiftUI

@main
struct Test_App: App {
    
    #if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    #elseif os(iOS)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    #endif

    var body: some Scene {
        #if os(macOS)
        Settings {
            EmptyView()
        }
        #elseif os(iOS)
        WindowGroup {
            EmptyView()
        }
        #endif
    }
}
