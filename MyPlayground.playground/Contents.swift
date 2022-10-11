import UIKit
import Foundation

/*
 * Sample1
 * 既定イニシャライザのサンプルコード
 */

//struct SampleCode1 {
//    var firstName = "Taro"
//    var lastName = "Tanaka"
//}
//var sample1 = SampleCode1()
//print(sample1.lastName + sample1.firstName)


/*
 * Sample2
 * 全項目イニシャライザのサンプルコード
 */

//struct SampleCode2 {
//    var firstName = "Taro"
//    var lastName = "Tanaka"
//    var greet: String
//}
//var sample2 = SampleCode2(greet: "こんにちは") // greetは初期値が設定されていないため、省略できない
//print("\(sample2.lastName + sample2.firstName)さん\(sample2.greet)")

/*
 * SampleCode3
 * プロパティに定数がある場合のサンプルコード
 */
//struct SampleCode3 {
//    let in24h: Bool = false
//    var hour = 0, min = 0
//}
//var sample3ErrorVer = SampleCode3(in24: true, hour: 7, min: 0) // 失敗
//var sample3SuccessVer = SampleCode3(hour: 7, min: 0) // 成功

/*
 * SampleCode4
 * 構造体の中に別の構造体を含む場合のサンプルコード
 */
//struct SampleCode4 {
//    var sample1 = SampleCode1()
//}
//var sample4 = SampleCode4()
//print(sample4.sample1.firstName)

/*
 * SampleCode5
 * 構造体の内容を変更するメソッドの場合のサンプルコード
 */
struct SampleCode5 {
    var hour = 0, min = 0

    mutating func advance(min: Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 25
        } else {
            self.min = m
        }
    }
    mutating func inc() {
        self.advance(min: 1)
    }

    func toString() -> String {
        let h = hour < 10 ? "\(hour)" : "\(hour)"
        let m = min < 10 ? "0\(min)" : "\(min)"
        return h + ":" + m
    }
}

var sample5 = SampleCode5(hour: 20, min: 30)
sample5.advance(min: 40)
sample5.inc()
print(sample5.toString())
