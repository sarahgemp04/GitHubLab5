//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Sarah Gemperle on 2/17/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderVal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var value = slider.value
        value.round(FloatingPointRoundingRule.down)
        sliderVal.text = "\(value)"
    }
    
    @IBAction func sliderValChanged(_ sender: AnyObject) {
        var value = slider.value
        value.round()
        sliderVal.text = "\(value)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
