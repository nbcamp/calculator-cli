protocol Operator {
    func operate<Operand: Calculable>(_ lhs: Operand, _ rhs: Operand) -> Operand
}

protocol Calculable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Self) -> Self
    static func %(lhs: Self, rhs: Self) -> Self
}

extension Int: Calculable {}
extension Double: Calculable {
    static func %(lhs: Self, rhs: Self) -> Self {
        return Double(Int(lhs) % Int(rhs))
    }
}
