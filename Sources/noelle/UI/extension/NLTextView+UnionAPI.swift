extension NLTextView {
    public func set(text: String) {
        #if os(macOS)
        self.string = text
        #elseif os(iOS)
        self.text = text
        #endif
    }
}
