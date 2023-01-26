import Combine
import SwiftUI

struct MainMenuView: View {

    @StateObject var presenter: MainMenuPresenter

    var body: some View {
        Text("Main menu")
            .frame(width: 400, height: 400)
    }
}
