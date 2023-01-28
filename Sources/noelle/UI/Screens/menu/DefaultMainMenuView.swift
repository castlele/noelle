import Foundation

public final class DefaultMainMenuView: BaseMenuView<BaseVerticalControlsView> {

    private let startButton = NLButton()
    private let optionsButton = NLButton()
    private let exitButton = NLButton()

    // MARK: - BaseInitializableView

    public override func addViews() {
        super.addViews()

        controlsView.add(buttons: startButton, optionsButton, exitButton)
    }

    public override func configureAppearance() {
        super.configureAppearance()

        startButton.set(titleColor: .black)
        optionsButton.set(titleColor: .black)
        exitButton.set(titleColor: .black)
    }

    public override func localize() {
        super.localize()

        startButton.set(title: "Start")
        optionsButton.set(title: "Options")
        exitButton.set(title: "Exit")
    }

    // MARK: - Public methods

    public func addStartButtonAction(_ target: AnyObject?, action: Selector) {
        startButton.add(target: target, action: action)
    }

    public func addOptionsButtonAction(_ target: AnyObject?, action: Selector) {
        optionsButton.add(target: target, action: action)
    }

    public func addExitButtonAction(_ target: AnyObject?, action: Selector) {
        exitButton.add(target: target, action: action)
    }
}
