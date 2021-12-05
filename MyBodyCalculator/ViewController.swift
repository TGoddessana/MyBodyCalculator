import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textHeight: UITextField!
    //신장 입력하는 텍스트 필드
    
    @IBOutlet weak var textWeight: UITextField!
    //체중 입력하는 텍스트 필드
    
    @IBOutlet weak var lblResult: UILabel!
    //판정결과 알려주는 라벨
    
    @IBAction func calcBMI(_ sender: UIButton) {
        if textHeight.text == "" || textWeight.text == "" {
            print("Input Error")
            lblResult.text = "신장과 체중을 입력하세요."
            return
        }
        let height = Double(textHeight.text!)!
        let weight = Double(textWeight.text!)!
        let bmi = weight/(height*height*0.0001)
        let shortenedBmi = String(format: "%.1f", bmi)
        var body = ""
        var color = UIColor.white
        if bmi >= 40 {
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "3단계 비만"
        } else if bmi >= 30 && bmi < 40 {
            color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "2단계 비만"
        } else if bmi >= 25 && bmi < 30 {
            color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "1단계 비만"
        } else if bmi >= 18.5 && bmi < 25 {
            color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            body = "정상"
        } else {
            color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
            body = "저체중"
        }
        lblResult.text = ("BMI:\(shortenedBmi), 판정:\(body)")
        lblResult.backgroundColor = color // 배경색을 color이라는 변수로 지정!
        lblResult.clipsToBounds = true
        lblResult.layer.cornerRadius = 20
        //계산하기 버튼
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
