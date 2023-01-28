public protocol InitializableView {
    func initialize()
    func addViews()
    func configureLayout()
    func bindViews()
    func configureAppearance()
    func localize()
}

extension InitializableView {
    public func initialize() {
        addViews()
        configureLayout()
        bindViews()
        configureAppearance()
        localize()
    }
}
