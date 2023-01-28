import CoreGraphics
import SnapKit

open class BaseControlPanelView<TextView: NLTextView, ControlsView: NLView>: BaseInitializableView {

    private let textView = TextView()
    private let controlsView = ControlsView()

    // TODO: somehow configure from appearance model
    open var maxTextViewHeight: CGFloat {
        100
    }

    // MARK: - BaseInitializableView

    open override func addViews() {
        super.addViews()

        addSubviews(textView, controlsView)
    }

    open override func configureLayout() {
        super.configureLayout()

        controlsView.snp.makeConstraints {
            $0.bottom.horizontalEdges.equalToSuperview()
        }

        textView.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview()
            $0.bottom.equalTo(controlsView.snp.top)
            $0.height.equalTo(maxTextViewHeight)
        }
    }

    // TODO: make dinamicaly configurable
    open override func configureAppearance() {
        super.configureAppearance()

        textView.set(text: "Some text")
    }
}
