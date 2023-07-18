class SubOperation: Calculable {
    func operate<Operand>(_ lhs: Operand, _ rhs: Operand) -> Operand where Operand : Arithmetic {
        return lhs - rhs
    }
}
