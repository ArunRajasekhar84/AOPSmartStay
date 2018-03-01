//
//  AOPSSBasePresenter.swift
//  AOPSmartStay
//  Purpose: A base class that handles behaviour common to all view controllers
//           like customisation of navigation bar, setting of title, common alerts etc.
//  Created by Arun on 21/02/18.
//  Copyright © 2018 ArtOfProgramming. All rights reserved.
//

import Foundation
import UIKit

class AOPSSBasePresenter: UIViewController
{
    var revealViewHandler:SWRevealViewController?;
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        
        //Customise navigation bar
        self.customiseNavigationBar();
        //assign instance of reveal view controller so that we can add required gestures
        self.revealViewHandler = self.revealViewController();
        
        //Add PAN gesture to all view controllers for displaying side navigation menu
       self.view.addGestureRecognizer(self.revealViewHandler!.panGestureRecognizer());
    }
    
    
    /// Method to customise the appearance of navigation bar
    func customiseNavigationBar()
    {
        //Adding a hamburger button for revealing the menu
        let image:UIImage? = UIImage(named: ICON_HAMBURGER);
        let leftBarButton:UIBarButtonItem = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self.revealViewHandler, action: #selector(SWRevealViewController.revealToggle(_:)));
        self.navigationItem.leftBarButtonItem = leftBarButton;
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.black;
    }
    
    func setTitleAndNavigationButtons(title:String , navigationType:Int)
    {
        self.navigationItem.title = title;
    }
    
}
