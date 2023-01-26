import noelle

final class MainCoordinator: Coordinator {

    private let mainFlow: MainFlow
    private let gameFlow: GameFlow

    private var window: NoelleWindow?

    init(mainFlow: MainFlow, gameFlow: GameFlow) {
        self.mainFlow = mainFlow
        self.gameFlow = gameFlow
    }

    func start(on window: NoelleWindow) {
        self.window = window
        mainFlow.window = window

        mainFlow.start()

        window.makeKeyAndVisible()
    }
}
