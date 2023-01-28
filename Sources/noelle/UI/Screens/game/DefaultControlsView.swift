public final class DefaultControlsView: BaseInitializableView {

    private let continueButton = NLButton()

    // MARK: - BaseInitializableView

    public override func addViews() {
        super.addViews()

        addSubviews(continueButton)
    }

    public override func configureLayout() {
        super.configureLayout()

        continueButton.snp.makeConstraints {
            $0.trailing.verticalEdges.equalToSuperview()
        }
    }

    // TODO: remove to configuration of appearance
    public override func configureAppearance() {
        super.configureAppearance()

        continueButton.set(title: "Continue")
    }
}
