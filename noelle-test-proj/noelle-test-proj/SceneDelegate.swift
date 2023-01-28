#if os(iOS)
import noelle
import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    private var mainCoordinator: MainCoordinator?

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }

        let window = UIWindow(windowScene: windowScene)
        self.window = window

        let noelleWindow = NoelleWindow(window: window)
        let coordinator = MainCoordinator(mainFlow: .init(window: noelleWindow))
        self.mainCoordinator = coordinator

        coordinator.start(on: noelleWindow)
    }
}
#endif
