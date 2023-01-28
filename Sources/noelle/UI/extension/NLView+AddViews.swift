extension NLView {
    public func addSubviews(_ views: NLView...) {
        views.forEach {
            addSubview($0)
        }
    }

    public func addSubviews(_ views: [NLView]) {
        views.forEach {
            addSubview($0)
        }
    }
}
