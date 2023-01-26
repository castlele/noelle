import SwiftUI
import noelle

final class MainFlow: Flow {

    var window: NoelleWindow?

    func start() {
        let presener = MainMenuPresenter()
        let view = presener.getView()
        let viewController = HostingController(rootView: view)

        window?.rootViewController = viewController
    }
}
