import Foundation

extension NLButton {
    public func add(target: AnyObject?, action: Selector) {
        #if os(macOS)
        self.target = target
        self.action = action
        #elseif os(iOS)
        self.addTarget(target, action: action, for: .touchUpInside)
        #endif
    }

    public func set(title: String) {
        #if os(macOS)
        self.title = title
        #elseif os(iOS)
        self.setTitle(title, for: .normal)
        #endif
    }

    public func set(titleColor: NLColor) {
        #if os(macOS)
        self.set(textColor: titleColor)
        #elseif os(iOS)
        self.setTitleColor(titleColor, for: .normal)
        #endif
    }

    // MARK: - NSButton private methods
    #if os(macOS)

    private func set(textColor color: NLColor) {
        let newAttributedTitle = NSMutableAttributedString(attributedString: attributedTitle)
        let range = NSRange(location: 0, length: attributedTitle.length)

        newAttributedTitle.addAttributes([
            .foregroundColor: color,
        ], range: range)

        attributedTitle = newAttributedTitle
    }

    #endif
}
