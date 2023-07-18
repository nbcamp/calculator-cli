import Foundation

class Calculator<T: Arithmetic> {
    private var _result: T
    private var _operators: [String: Calculable]

    init(defaultValue: T? = nil, operators: [String: Calculable] = [:]) {
        _result = defaultValue ?? Calculator.zero()
        _operators = operators
    }

    var result: T { _result }

    var operators: [String] { Array(_operators.keys) }

    func extend(_ name: String, _ operation: any Calculable) {
        _operators.updateValue(operation, forKey: name)
    }

    func isSupported(_ name: String) -> Bool {
        return _operators.keys.contains(name)
    }

    func clear() {
        _result = Calculator.zero()
    }

    @discardableResult
    func calculate(_ operand: T, name: String) -> T {
        guard let operation = _operators[name] else { return _result }
        _result = operation.operate(_result, operand)

        return _result
    }

    private static func zero() -> T {
        return 0 as? T ?? 0.0 as! T
    }
}
