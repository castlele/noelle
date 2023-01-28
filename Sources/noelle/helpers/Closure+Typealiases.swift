public typealias Closure<In, Out> = (In) -> Out
public typealias ParameterClosure<In> = Closure<In, Void>
public typealias ResultClosure<Out> = () -> Out
public typealias VoidClosure = () -> Void
