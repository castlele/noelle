#if os(macOS)
import AppKit

// MARK: - Public

public typealias Window = NSWindow
public typealias ViewController = NSViewController

#elseif os(iOS)
import UIKit

// MARK: - Public

public typealias Window = UIWindow
public typealias ViewController = UIViewController

#endif
