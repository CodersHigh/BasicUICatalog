//
//  NavigationBar.swift
//  BasicUICatalog
//
//  Created by Lingostar on 2015. 12. 28..
//  Copyright © 2015년 CodersHigh. All rights reserved.
//

import UIKit

class CatalogController : UITableViewController {
    
    
    @IBAction func changeGlobalTint(sender: AnyObject) {
        guard let segControl = sender as? UISegmentedControl else {
            return
        }
        
        let selectedSegment = segControl.selectedSegmentIndex
        let selectedColor:UIColor?
        switch selectedSegment {
        case 1:
            selectedColor = UIColor.redColor()
        case 2:
            selectedColor = UIColor.orangeColor()
        case 3:
            selectedColor = UIColor.greenColor()
        default:
            selectedColor = nil
        }
        self.view.window?.tintColor = selectedColor
    }
    
}


class NavigationBarController : UITableViewController {
    
    @IBOutlet weak var toolbarSwitch: UISwitch!
    
    override func viewWillAppear(animated: Bool) {
        toggleToolbar(toolbarSwitch)
    }
    
    @IBAction func changeNavigationBarColor(sender: AnyObject) {
        let navigationBar = self.navigationController?.navigationBar
        navigationBar?.backgroundColor = anyColor()
    }
    
    @IBAction func changeNavigationImage(sender: AnyObject) {
        
    }
    
    @IBAction func toggleToolbar(sender: AnyObject) {
        
        let toolbarHidden:Bool = toolbarSwitch.on
        self.navigationController?.toolbarHidden = (toolbarHidden) ? false : true
    }
    
    @IBAction func followNavigationColor(sender: AnyObject) {
        let navigationColor = self.navigationController?.navigationBar.backgroundColor
        let toolbar = self.navigationController?.toolbar
        toolbar?.barTintColor = navigationColor
    }
    
    
    @IBAction func changeToolbarColor(sender: AnyObject) {
        
        
    }

    @IBAction func changeToolbarImage(sender: AnyObject) {
        
        
    }
    
    func anyColor() -> UIColor {
        let colors : [UIColor] = [UIColor.blueColor(), UIColor.brownColor(), UIColor.redColor(), UIColor.yellowColor(), UIColor.orangeColor(), UIColor.purpleColor(), UIColor.darkGrayColor(), UIColor.greenColor(), UIColor.lightGrayColor(), UIColor.magentaColor()]
        
        
        let i :Int = Int(NSDate.timeIntervalSinceReferenceDate() % 10)
        return colors[i]
    }
    
}
