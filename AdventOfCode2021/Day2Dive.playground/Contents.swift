var input2 = ["forward 5",
              "down 5",
              "forward 8",
              "up 3",
              "down 8",
              "forward 2"]

func dive(input: [String]) -> Int {
    var horizontalPosition = 0
    var depth = 0
    
    for greeting in input {
        let instructions = greeting.split(separator: " ")
        switch instructions[0] {
        case "forward":
            horizontalPosition += Int(instructions[1])!
        case "down":
            depth += Int(instructions[1])!
        case "up":
            depth -= Int(instructions[1])!
        default:
            break
        }
    }
    
    return depth * horizontalPosition
}

print(dive(input: input2))

func divePart2(input: [String]) -> Int {
    var horizontalPosition = 0
    var aim = 0
    var depth = 0
    
    for greeting in input {
        let instructions = greeting.split(separator: " ")
        switch instructions[0] {
        case "forward":
            horizontalPosition += Int(instructions[1])!
            depth += aim * Int(instructions[1])!
        case "down":
            aim += Int(instructions[1])!
        case "up":
            aim -= Int(instructions[1])!
        default:
            break
        }
    }
    
    return depth * horizontalPosition
}

print(divePart2(input: input2))
