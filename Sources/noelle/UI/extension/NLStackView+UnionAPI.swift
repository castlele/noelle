extension NLStackView {
    public func set(axis:  NLStackViewOrientation) {
        #if os(macOS)
        self.orientation = axis
        #elseif os(iOS)
        self.axis = axis
        #endif
    }
}
