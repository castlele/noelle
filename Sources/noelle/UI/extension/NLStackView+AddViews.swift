extension NLStackView {
    public func addArrangedSubviews(_ views: NLView...) {
        views.forEach {
            addArrangedSubview($0)
        }
    }

    public func addArrangedSubviews(_ views: [NLView]) {
        views.forEach {
            addArrangedSubview($0)
        }
    }
}
