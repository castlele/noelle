public protocol Presenter {
    associatedtype Presentable

    func getView() -> Presentable
}
