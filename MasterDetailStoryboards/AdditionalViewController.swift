//
//  AdditionalViewController.swift
//  MasterDetailStoryboards
//
//  Created by Pieter Kubben on 27-11-15.
//  Copyright © 2015 DigitalNeurosurgeon.com. All rights reserved.
//

import UIKit

class AdditionalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // let isPhone = (UIDevice.currentDevice().userInterfaceIdiom == .Phone) ? true : false
        
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        navigationItem.leftItemsSupplementBackButton = true
    }

}
