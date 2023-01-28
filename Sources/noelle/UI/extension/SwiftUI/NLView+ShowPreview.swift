import SwiftUI

extension NLView {
    private struct Preview: NLViewRepresentable {
        let view: NLView

        #if os(macOS)
        func makeNSView(context: Context) -> NLView {
            view
        }

        func updateNSView(_ uiView: NLView, context: Context) {
            //
        }

        #elseif os(iOS)

        func makeUIView(context: Context) -> NLView {
            view
        }

        func updateUIView(_ uiView: NLView, context: Context) {
            //
        }

        #endif
    }

    public func showPreview() -> some View {
        Preview(view: self)
    }
}
