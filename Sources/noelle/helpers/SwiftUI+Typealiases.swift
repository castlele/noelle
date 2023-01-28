import SwiftUI
#if os(macOS)

public typealias NLHostingController = NSHostingController
public typealias NLViewRepresentable = NSViewRepresentable

#elseif os(iOS)

public typealias NLHostingController = UIHostingController
public typealias NLViewRepresentable = UIViewRepresentable

#endif
