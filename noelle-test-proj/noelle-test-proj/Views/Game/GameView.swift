import SwiftUI
import noelle

struct GameView: View {

    @StateObject var presenter: GamePresenter

    var body: some View {
        DefaultGameView()
            .showPreview()
            .frame(width: 400, height: 400)
            .overlay(Button("Exit to main menu",
                            action: presenter.backToMainMenu),
                     alignment: .topLeading
            )
    }
}

#if DEBUG

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(presenter: .init())
    }
}

#endif
