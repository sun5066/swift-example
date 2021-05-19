import UIKit

func printHello() {
    print("hello")
}

func printWorld() {
    print("world")
}

func excute(tasks: [() -> Void]) {
    for task in tasks {
        task()
    }
}

excute(tasks: [printHello, printWorld])
