import SnapKit

open class BaseMenuView<ControlsView: NLView>: BaseInitializableView {

    public let controlsView = ControlsView()

    // MARK: - BaseInitializableView

    open override func addViews() {
        super.addViews()

        addSubviews(controlsView)
    }

    open override func configureLayout() {
        super.configureLayout()

        controlsView.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
