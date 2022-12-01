
import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var cellOrderImage: UIImageView!
    
    @IBOutlet weak var cellCafeName: UILabel!
    
    @IBOutlet weak var cellOrderInfo: UILabel!
    
    @IBOutlet weak var cellOrderInfo2: UILabel!
    
    @IBOutlet weak var cellOrderSum: UILabel!
    
    @IBOutlet weak var cellRepeatButton: UIButton!
    
    override func layoutSubviews() {
        cellOrderImage.layer.cornerRadius = 10
        layer.borderWidth = 0.2
//        cellOrderImage.layer.borderWidth = 0.5
    }

}
//Thread 1: "[<HomeWork_3_4.OrderCell 0x138043600> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key cafeName."
