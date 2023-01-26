import SwiftUI
import noelle

#if os(macOS)
import AppKit

final class AppDelegate: NSObject, NSApplicationDelegate {

    private var mainCoordinator: MainCoordinator?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let nsWindow = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 1024, height: 768),
                                styleMask: [.miniaturizable, .closable, .resizable, .titled],
                                backing: .buffered,
                                defer: false)

        let window = NoelleWindow(window: nsWindow)
        let coordinator = MainCoordinator(mainFlow: .init(), gameFlow: .init())
        self.mainCoordinator = coordinator

        coordinator.start(on: window)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
#elseif os(iOS)
import UIKit

final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfig = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = SceneDelegate.self
        return sceneConfig
    }
}

#endif
