class ModOperation: Operator {
    func operate<Operand>(_ lhs: Operand, _ rhs: Operand) -> Operand where Operand : Calculable {
        return lhs % rhs
    }
}
