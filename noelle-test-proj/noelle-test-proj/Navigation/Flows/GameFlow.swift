import noelle

final class GameFlow: Flow {

    var window: NoelleWindow?

    init(window: NoelleWindow) {
        self.window = window
    }

    func start() {
        let presenter = GamePresenter()
        presenter.backToMainMenuFlow = window?.pop

        let view = presenter.getView()
        let viewController = NLHostingController(rootView: view)

        window?.present(viewController)
    }
}
