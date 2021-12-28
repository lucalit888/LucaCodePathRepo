//
//  SettingsViewController.swift
//  prework
//
//  Created by Luca Lit on 12/3/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var colorModeSwitch: UISegmentedControl!
    
    @IBOutlet weak var tip1: UILabel!
    @IBOutlet weak var tip2: UILabel!
    @IBOutlet weak var tip3: UILabel!
    @IBOutlet weak var tip4: UILabel!
    @IBOutlet weak var colormode: UILabel!
    
    
    let userdefaults = UserDefaults.standard
    
    let THEME_KEY = "themekey"
    let DARK_THEME = "darktheme"
    let MEDIUM_THEME = "mediumtheme"
    let LIGHT_THEME = "lighttheme"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTheme()
        // Do any additional setup after loading the view.
    }
    
    func updateTheme()
    {
        let theme = userdefaults.string(forKey: THEME_KEY)
        if (theme == LIGHT_THEME) {
            colorModeSwitch.selectedSegmentIndex = 0
            view.backgroundColor = UIColor.white
            tip1.textColor = UIColor.black
            tip2.textColor = UIColor.black
            tip3.textColor = UIColor.black
            tip4.textColor = UIColor.black
            colormode.textColor = UIColor.black
        }
        else if (theme == MEDIUM_THEME) {
            colorModeSwitch.selectedSegmentIndex = 1
            view.backgroundColor = UIColor.systemGroupedBackground
            tip1.textColor = UIColor.black
            tip2.textColor = UIColor.black
            tip3.textColor = UIColor.black
            tip4.textColor = UIColor.black
            colormode.textColor = UIColor.black
        }
        else if (theme == DARK_THEME) {
            colorModeSwitch.selectedSegmentIndex = 2
            view.backgroundColor = UIColor.gray
            tip1.textColor = UIColor.white
            tip2.textColor = UIColor.white
            tip3.textColor = UIColor.white
            tip4.textColor = UIColor.white
            colormode.textColor = UIColor.white
        }
    }
    
    @IBAction func switchChange(_ sender: Any) {
        switch colorModeSwitch.selectedSegmentIndex {
        case 0:
            userdefaults.set(LIGHT_THEME, forKey: THEME_KEY)
        case 1:
            userdefaults.set(MEDIUM_THEME, forKey: THEME_KEY)
        case 2:
            userdefaults.set(DARK_THEME, forKey: THEME_KEY)
        default:
            userdefaults.set(LIGHT_THEME, forKey: THEME_KEY)
        }
        updateTheme()
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
