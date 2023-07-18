// NAME: Calculator CLI
// DESC: CLI tool to perform simple operations
//
// Created by Jinyong Park on 2023/07/17

typealias T = Double

let calculator = Calculator<T>(
    operators: [
        "+": AddOperation(),
        "-": SubOperation(),
        "*": MulOperation(),
        "/": DivOperation(),
        "%": ModOperation(),
    ]
)

printHelp(operators: calculator.operators)

while true {
    let result = String(format: "%.4f", calculator.result)
    print("\nResult: \(result)", terminator: "\n» ")
    guard var input = readLine() else { break }

    input = String(input.filter { !" \n\t\r".contains($0) })
    if input == "exit" { print("Goodbye."); break }
    if input == "help" { printHelp(operators: calculator.operators); continue }
    if input == "reset" { calculator.clear(); continue }

    guard input.count >= 2 else { continue }
    guard let sign = input.first, calculator.isSupported(String(sign)) else { continue }
    guard let num = T(input[input.index(input.startIndex, offsetBy: 1)...]) else { continue }
    calculator.calculate(num, name: String(sign))
}

func printHelp(operators: [String] = []) {
    print("\n[Calculator CLI]\n")
    print("This command provides simple arithmetic functions.\n")
    print(" · Usage: Enter operater and operand. e.g. +42")
    print(" · Operators: \(calculator.operators.joined(separator: ", "))")
    print(" · Commands:")
    print("      help        Print this message")
    print("      reset       Reset result to zero")
    print("      exit        Exit this program")
    print()
}
