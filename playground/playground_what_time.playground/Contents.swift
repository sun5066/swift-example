import UIKit

let interval: Float = 365.2422
let number = Int(interval * 1000)

let day = number / (60 * 60 * 24)
let hour = (number - day * 3600 * 24) / 3600
let minute = (number - day * 3600 * 24 - hour * 24) * 24 % 60
let seconds = number * 24 % 60
print("\(day)일, \(hour)시, \(minute)분, \(seconds)초")
