open class BaseVerticalControlsView: BaseInitializableStackView {
    // MARK: - BaseInitializableStackView

    open override func configureLayout() {
        super.configureLayout()

        set(axis: .vertical)
    }

    // MARK: - Open methods

    open func add(buttons: NLButton...) {
        addArrangedSubviews(buttons)
    }
}
