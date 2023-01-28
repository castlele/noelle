import Combine
import Foundation
import noelle

class MainMenuPresenter: ObservableObject, Presenter {

    var startGameFlow: VoidClosure?

    func getView() -> MainMenuView {
        MainMenuView(presenter: self)
    }

    @objc func startGame() {
        startGameFlow?()
    }
}
