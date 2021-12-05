import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goWiki(_ sender: UIButton) {
        guard let url = URL(string:"https://ko.wikipedia.org/wiki/%EC%B2%B4%EC%A7%88%EB%9F%89_%EC%A7%80%EC%88%98") else {return}
        let request = URLRequest(url:url)
        webView.load(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string:"https://namu.wiki/w/FFMI") else {return}
        let request = URLRequest(url:url)
        webView.load(request)

    }
    

}
