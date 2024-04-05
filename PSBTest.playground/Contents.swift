import UIKit

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}

func teemResults(data: [String]) {
    var firstTeem = 0
    var secondTeem = 0
    
    data.forEach { result in
        if result.contains(":") {
            var arr = result.filter{ $0 != " " }.components(separatedBy: ":")
            if arr[0].isInt && arr[1].isInt {
                if arr[0] > arr[1] {
                    firstTeem += 3
                    secondTeem += 0
                }else if arr[0] == arr[1] {
                    firstTeem += 1
                    secondTeem += 1
                }else {
                    firstTeem += 0
                    secondTeem += 3
                }
            }else {
                print("Неверный формат \(result)")
            }
        }else {
            print("Неверный формат \(result)")
        }
    }
    
    print("Результ первой команды: \(firstTeem)")
    print("Результ второй команды: \(secondTeem)")
}


teemResults(data: ["3:2", "3: 3", "3:a", "3- 12"])
