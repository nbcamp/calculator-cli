protocol Calculable {
    func operate<Operand: Arithmetic>(_ lhs: Operand, _ rhs: Operand) -> Operand
}

protocol Arithmetic {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Self) -> Self
    static func %(lhs: Self, rhs: Self) -> Self
}

extension Int: Arithmetic {}
extension Double: Arithmetic {
    static func %(lhs: Self, rhs: Self) -> Self {
        return Double(Int(lhs) % Int(rhs))
    }
}
