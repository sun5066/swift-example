import UIKit

let rect = CGRect(x: 0, y: 0, width: 200, height: 50)
let label = UILabel(frame: rect)
label.backgroundColor = UIColor.red
label.text = "Hello Swift"
label.textAlignment = NSTextAlignment.center
// 이렇게 앞에 .으로 사용 가능
label.textAlignment = .center
label.font = UIFont(name: "Georgia", size: 24)
label
