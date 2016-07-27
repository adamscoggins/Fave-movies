//
//  DetailsVC.swift
//  Fave-Movies
//
//  Created by Mac Owner on 7/26/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var movieTitle: String!
    
    @IBOutlet weak var movieTitleLbl: UILabel!
    
    @IBOutlet weak var movieDescLbl: UILabel!
    
    @IBOutlet weak var movieUrlLbl: UILabel!
    
    @IBOutlet weak var moviePlotLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }


    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}
