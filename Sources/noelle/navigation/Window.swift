#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

open class NoelleWindow {

    private let window: Window

    public var rootViewController: ViewController? {
        get {
            #if os(macOS)
            window.contentViewController
            #elseif os(iOS)
            window.rootViewController
            #endif
        }
        set {
            #if os(macOS)
            window.contentViewController = newValue
            window.contentView = newValue?.view
            #elseif os(iOS)
            window.rootViewController = newValue
            #endif
        }
    }

    // MARK: - Init

    public init(window: Window) {
        self.window = window
    }

    // MARK: - Open methods

    open func makeKeyAndVisible() {
        #if os(macOS)
        window.makeKeyAndOrderFront(nil)
        #elseif os(iOS)
        window.makeKeyAndVisible()
        #endif
    }
}
