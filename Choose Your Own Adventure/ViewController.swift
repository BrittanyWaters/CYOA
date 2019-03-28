//
//  ViewController.swift
//  Choose Your Own Adventure
//
//  Created by Brittany.Waters on 2/20/19.
//  Copyright © 2019 Brittany.Waters. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

///////////////////// THE GAME WILL NOT WORK UNLESS I FIX THIS OR COMMENT IT OUT

    
    var urlIntermediary = "https://www.youtube.com/watch?v=ksXwtOCYrfU"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func theInspoLink(_ sender: Any) {
//    urlIntermediary += String(theInspirationLink.text ?? "simulation theory")
    let myurl = URL(string: urlIntermediary)
    let searchView = SFSafariViewController(url: myurl!)
    present(searchView, animated: true)

    }

///////////////////////
   

    
    
    @IBAction func startButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "startSegue", sender: nil)
    }
  
    
    class ViewControllerAlert: ViewController {
        

        @IBAction func alertPlayer(_ sender: Any) {
            let alert = UIAlertController(title: "ALERT PLAYER", message: "Your character has become self-aware. Proceed with caution.", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "I understand.", style: UIAlertAction.Style.default, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
    }


}
    


