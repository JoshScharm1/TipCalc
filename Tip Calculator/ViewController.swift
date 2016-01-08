
import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var myTotalLabel: UILabel!
    @IBOutlet weak var myTipLabel: UILabel!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var twentyfiveButton: UIButton!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var splitTotalLabel: UILabel!
    @IBOutlet weak var splitTipLabel: UILabel!
    
    var people = 1.0
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "orange_bg")!)

    }
    
    func calculateTip(tipPercent: Double) -> (Tip: String, Total: String, SplitTipLAmount: String, SplitTotalAmount : String )
    {
    let billTotalDouble = Double(billTotalTextField.text!)
    let tipAmount = tipPercent * billTotalDouble!
    let totalPrice = tipAmount + billTotalDouble!
    let splitTipAmount = tipAmount / people
    let splitTotalPrice = totalPrice / people
        
    myTipLabel.text = String(format: "$ %.2f", tipAmount) // %.2f tells you how many decimal places there are
    myTotalLabel.text = String(format: "$ %.2f", totalPrice)
    splitTipLabel.text = String(format: "$ %.2f", splitTipAmount)
    splitTotalLabel.text = String(format: "$ %.2f", splitTotalPrice)
    
        
        
    return (myTipLabel.text!, myTotalLabel.text!, splitTipLabel.text!, splitTotalLabel.text!)
    
    }

    
    @IBAction func tenButtonPressed(sender: UIButton)
    {
        resetImage()
        tenButton.setImage(UIImage(named: "10_selected_image"), forState: UIControlState.Normal)
        calculateTip(0.10)
    }
    
    
    @IBAction func fifteenButtonPressed(sender: UIButton)
    {
        resetImage()
        fifteenButton.setImage(UIImage(named: "15_selected_image"), forState: UIControlState.Normal)
        calculateTip(0.15)
    
    
    }
    
    
    @IBAction func twentyButtonPressed(sender: UIButton)
    {
        resetImage()
        twentyButton.setImage(UIImage(named: "20_selected_image"), forState: UIControlState.Normal)
        calculateTip(0.20)
       

        
    }
    
    @IBAction func twentyfiveButtonTapped(sender: UIButton)
    {
        resetImage()
        twentyfiveButton.setImage(UIImage(named: "25_selected_image"), forState: UIControlState.Normal)
        calculateTip(0.25)
       
        
    }
    
    @IBAction func upButtonPressed(sender: AnyObject)
    {
       numberOfPeopleLabel.text = String(people++)
       
    }
    
    
    @IBAction func downButtonPressed(sender: AnyObject)
    {
        
        if people >= 1
        {
        numberOfPeopleLabel.text = String(people--)
        }
        else
        {
            people = 1
        }
    }
    
    func resetImage()
    {
    tenButton.setImage(UIImage(named: "10_unselected_image"), forState: UIControlState.Normal)
    fifteenButton.setImage(UIImage(named: "15_unselected_image"), forState: UIControlState.Normal)
    twentyButton.setImage(UIImage(named: "20_unselected_image"), forState: UIControlState.Normal)
    twentyfiveButton.setImage(UIImage(named: "25_unselected_image"), forState: UIControlState.Normal)
    }
    
    
    
    

    
    override func didReceiveMemoryWarning()
    
    {
        super.didReceiveMemoryWarning()
        
    }


}

