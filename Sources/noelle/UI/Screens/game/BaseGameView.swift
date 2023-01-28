import CoreGraphics
import SnapKit

open class BaseGameView<ControlPanel: NLView>: BaseInitializableView {

    private let panelView = ControlPanel()

    // TODO: somehow configure from appearance model
    open var controlPanelWidth: CGFloat {
        350
    }

    // MARK: - BaseInitializableView

    open override func addViews() {
        super.addViews()

        addSubviews(panelView)
    }

    open override func configureLayout() {
        super.configureLayout()

        panelView.snp.makeConstraints {
            $0.bottom.centerX.equalToSuperview()
            $0.width.equalTo(controlPanelWidth)
        }
    }
}
