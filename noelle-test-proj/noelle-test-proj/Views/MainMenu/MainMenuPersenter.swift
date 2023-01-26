import Combine
import noelle

class MainMenuPresenter: ObservableObject, Presenter {
    func getView() -> MainMenuView {
        MainMenuView(presenter: self)
    }
}
