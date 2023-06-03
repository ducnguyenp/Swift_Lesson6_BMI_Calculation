import UIKit

class SecondViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        adviceLabel.text = advice ?? "No advice"
        background.backgroundColor = color ?? UIColor.clear
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
