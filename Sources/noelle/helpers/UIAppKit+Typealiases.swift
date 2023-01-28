#if os(macOS)
import AppKit

// MARK: - View

public typealias NLWindow = NSWindow
public typealias NLViewController = NSViewController
public typealias NLView = NSView
public typealias NLStackView = NSStackView
public typealias NLButton = NSButton
public typealias NLTextView = NSTextView

// MARK: - Models

public typealias NLColor = NSColor
public typealias NLStackViewOrientation = NSUserInterfaceLayoutOrientation

#elseif os(iOS)
import UIKit

// MARK: - Views
public typealias NLWindow = UIWindow
public typealias NLViewController = UIViewController
public typealias NLView = UIView
public typealias NLStackView = UIStackView
public typealias NLButton = UIButton
public typealias NLTextView = UITextView

// MARK: - Models

public typealias NLColor = UIColor
public typealias NLStackViewOrientation = NSLayoutConstraint.Axis

#endif
