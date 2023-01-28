import Combine
import noelle

class GamePresenter: ObservableObject, Presenter {

    var backToMainMenuFlow: VoidClosure?

    func getView() -> GameView {
        .init(presenter: self)
    }

    func backToMainMenu() {
        backToMainMenuFlow?()
    }
}
