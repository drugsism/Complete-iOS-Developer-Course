//
//  toDetailsVC.swift
//  DinoDictionary
//
//  Created by James Roh on 2022/09/28.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var dinosaursNameLabel: UILabel!
    @IBOutlet weak var dinosaursImageView: UIImageView!
    @IBOutlet weak var dinosaursDesTextView: UITextView!
    
    
    var selectDinoName = ""
    var selectDinoImage = UIImage()
    var selectDinoDescripton = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dinosaursNameLabel.text = selectDinoName
        dinosaursImageView.image = selectDinoImage
        dinosaursDesTextView.text = selectDinoDescripton
    }
    


}
