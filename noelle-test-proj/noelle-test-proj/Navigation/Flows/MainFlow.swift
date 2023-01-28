import SwiftUI
import noelle

final class MainFlow: Flow {

    var window: NoelleWindow?
    var gameFlow: GameFlow

    init(window: NoelleWindow) {
        self.window = window
        self.gameFlow = GameFlow(window: window)
    }

    func start() {
        let presenter = MainMenuPresenter()
        presenter.startGameFlow = gameFlow.start
        let view = presenter.getView()
        let viewController = NLHostingController(rootView: view)

        window?.rootViewController = viewController
    }
}
