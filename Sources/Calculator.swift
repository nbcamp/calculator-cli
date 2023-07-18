import Foundation

class Calculator<T: Arithmetic> {
    private var result: T
    private var operators: [String: Calculable] = [:]

    init(defaultValue: T = 0) {
        self.result = defaultValue
    }

    func extend(_ name: String, _ operation: any Calculable) {
        operators.updateValue(operation, forKey: name)
    }

    func clear() {
        result = 0 as! T
    }

    func calculate(_ rhs: T, name: String) -> T {
        guard let operation = operators[name] else {
            return result
        }

        return operation.operate(result, rhs)
    }
}
