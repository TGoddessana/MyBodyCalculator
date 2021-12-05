import UIKit

class FFMIViewController: UIViewController {

    
    @IBOutlet weak var ffmiHeight: UITextField!
    //신장 입력하는 텍스트 필드
    @IBOutlet weak var ffmiWeight: UITextField!
    //체중 입력하는 텍스트 필드
    @IBOutlet weak var ffmiBodyfat: UITextField!
    //체지방률 입력하는 텍스트 필드
    
    @IBOutlet weak var ffmiResult: UILabel!
    //결과 알려주는 라벨
    
    @IBAction func ffmiCalc(_ sender: UIButton) {
        if (ffmiHeight.text == "" || ffmiWeight.text == "") || ffmiBodyfat.text == "" {
            print("input error")
            ffmiResult.text = "값을 모두 입력해주세요!"
            return
        } else {
            let height = Double(ffmiHeight.text!)!
            let weight = Double(ffmiWeight.text!)!
            let bodyfat = Double(ffmiBodyfat.text!)!
            let ffmi = (weight*(1-bodyfat/100))/(height*0.01*height*0.01)
            let finalffmi = String(format: "%.1f", ffmi)
            
            ffmiResult.text = "FFMI수치 : \(finalffmi)"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
