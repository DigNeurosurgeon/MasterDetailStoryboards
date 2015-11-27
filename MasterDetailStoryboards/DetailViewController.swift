//
//  DetailViewController.swift
//  MasterDetailStoryboards
//
//  Created by Pieter Kubben on 27-11-15.
//  Copyright © 2015 DigitalNeurosurgeon.com. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailLabel: UILabel!
    var labelText = "Choose item from wish list first"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = labelText
        navigationItem.title = "Xmas Present Choice"
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        navigationItem.leftItemsSupplementBackButton = true
    }
    

    @IBAction func nextButtonTapped(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "AdditionalView", bundle: nil)
        let additionalViewController = storyboard.instantiateInitialViewController() as! AdditionalViewController
        additionalViewController.title = "Wait for Santa!"
        navigationController?.pushViewController(additionalViewController, animated: true)
    }
}
