import Combine
import SwiftUI
import noelle

struct MainMenuView: View {

    @StateObject var presenter: MainMenuPresenter

    var body: some View {
        let menuView = DefaultMainMenuView()
        menuView.addStartButtonAction(presenter, action: #selector(presenter.startGame))

        return menuView
            .showPreview()
            .frame(width: 400, height: 400)
    }
}

#if DEBUG

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(presenter: .init())
    }
}
#endif
