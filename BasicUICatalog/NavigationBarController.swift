//
//  NavigationBar.swift
//  BasicUICatalog
//
//  Created by Lingostar on 2015. 12. 28..
//  Copyright © 2015년 CodersHigh. All rights reserved.
//

import UIKit

class CatalogController : UITableViewController {
    
    
    @IBAction func changeGlobalTint(_ sender: AnyObject) {
        guard let segControl = sender as? UISegmentedControl else {
            return
        }
        
        let selectedSegment = segControl.selectedSegmentIndex
        let selectedColor:UIColor?
        switch selectedSegment {
        case 1:
            selectedColor = UIColor.red
        case 2:
            selectedColor = UIColor.orange
        case 3:
            selectedColor = UIColor.green
        default:
            selectedColor = nil
        }
        self.view.window?.tintColor = selectedColor
    }
    
}


class NavigationBarController : UITableViewController {
    
    @IBOutlet weak var toolbarSwitch: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        toggleToolbar(toolbarSwitch)
    }
    
    @IBAction func changeNavigationBarColor(_ sender: AnyObject) {
        let navigationBar = self.navigationController?.navigationBar
        navigationBar?.backgroundColor = anyColor()
    }
    
    @IBAction func changeNavigationImage(_ sender: AnyObject) {
        
    }
    
    @IBAction func toggleToolbar(_ sender: AnyObject) {
        
        let toolbarHidden:Bool = toolbarSwitch.isOn
        self.navigationController?.isToolbarHidden = (toolbarHidden) ? false : true
    }
    
    @IBAction func followNavigationColor(_ sender: AnyObject) {
        let navigationColor = self.navigationController?.navigationBar.backgroundColor
        let toolbar = self.navigationController?.toolbar
        toolbar?.barTintColor = navigationColor
    }
    
    
    @IBAction func changeToolbarColor(_ sender: AnyObject) {
        
        
    }

    @IBAction func changeToolbarImage(_ sender: AnyObject) {
        
        
    }
    
    func anyColor() -> UIColor {
        let colors : [UIColor] = [UIColor.blue, UIColor.brown, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.purple, UIColor.darkGray, UIColor.green, UIColor.lightGray, UIColor.magenta]
        
        
        let i :Int = Int(NSDate.timeIntervalSinceReferenceDate.truncatingRemainder(dividingBy: 10))
        return colors[i]
    }
    
}
