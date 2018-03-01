//
//  AOPSSHomePresenter.swift
//  AOPSmartStay
//  Purpose: Responsible for displaying the generic information about the hotel
//           Contains pictures and description of hotel.
//  Created by Arun on 21/02/18.
//  Copyright © 2018 ArtOfProgramming. All rights reserved.
//

import UIKit

class AOPSSHomePresenter: AOPSSBasePresenter
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setTitleAndNavigationButtons(title: "Home View", navigationType: 1);
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

