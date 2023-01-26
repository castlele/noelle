import SwiftUI
#if os(macOS)

public typealias HostingController = NSHostingController

#elseif os(iOS)

public typealias HostingController = UIHostingController

#endif
