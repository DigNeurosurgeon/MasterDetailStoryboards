//
//  MasterViewController.swift
//  MasterDetailStoryboards
//
//  Created by Pieter Kubben on 27-11-15.
//  Copyright © 2015 DigitalNeurosurgeon.com. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    let items = ["Apple Watch", "iMac", "iPad", "iPhone", "Macbook", "Other"]

    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel!.text = items[indexPath.row]
        return cell
    }
    

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailStoryboard = UIStoryboard(name: "DetailView", bundle: nil)
        let detailViewController = detailStoryboard.instantiateInitialViewController() as! DetailViewController
        
        let additionalStoryboard = UIStoryboard(name: "AdditionalView", bundle: nil)
        let additionalViewConroller = additionalStoryboard.instantiateInitialViewController() as! AdditionalViewController
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        if let textValue = cell?.textLabel?.text {
            detailViewController.labelText = textValue
        }
        
        var navigationController: UINavigationController!
        if indexPath.row == items.count - 1 {
            navigationController = UINavigationController(rootViewController:additionalViewConroller)
        } else {
            navigationController = UINavigationController(rootViewController:detailViewController)
        }
        
        splitViewController?.showDetailViewController(navigationController!, sender: nil)
    }

}

