#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

// TODO: rename to something like Router?
open class NoelleWindow {

    private let window: NLWindow

    private var viewStack: [NLViewController] = []

    public var rootViewController: NLViewController? {
        get {
            #if os(macOS)
            window.contentViewController
            #elseif os(iOS)
            window.rootViewController
            #endif
        }
        set {
            if let viewController = newValue {
                viewStack.append(viewController)
            }
            #if os(macOS)
            window.contentViewController = newValue
            #elseif os(iOS)
            window.rootViewController = newValue
            #endif
        }
    }

    // MARK: - Init

    public init(window: NLWindow) {
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

    open func present(_ viewController: NLViewController) {
        rootViewController = viewController
    }

    open func pop() {
        viewStack.removeLast()
        rootViewController = viewStack.last
    }
}
