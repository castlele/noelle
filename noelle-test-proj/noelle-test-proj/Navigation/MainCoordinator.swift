import noelle

final class MainCoordinator: Coordinator {

    private let mainFlow: MainFlow

    private var window: NoelleWindow?

    init(mainFlow: MainFlow) {
        self.mainFlow = mainFlow
    }

    func start(on window: NoelleWindow) {
        self.window = window

        mainFlow.start()

        window.makeKeyAndVisible()
    }
}
