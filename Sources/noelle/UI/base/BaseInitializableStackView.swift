import struct CoreGraphics.CGRect
import class Foundation.NSCoder

open class BaseInitializableStackView: NLStackView, InitializableView {

    // MARK: - Init

    public override init(frame: CGRect) {
        super.init(frame: frame)

        initialize()
    }

    #if os(macOS)
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        super.init(coder: coder)

        initialize()
    }

    #elseif os(iOS)

    @available(*, unavailable)
    public required init(coder: NSCoder) {
        super.init(coder: coder)

        initialize()
    }
    #endif

    open func addViews() {
        // override in subclasses
    }

    open func configureLayout() {
        // override in subclasses
    }

    open func bindViews() {
        // override in subclasses
    }

    open func configureAppearance() {
        // override in subclasses
    }

    open func localize() {
        // override in subclasses
    }
}
