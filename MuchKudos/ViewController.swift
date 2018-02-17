//
//  ViewController.swift
//  MuchKudos
//
//  Created by cs on 2/17/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sendKudos_body: UITextView!
    @IBOutlet weak var sendKudos_submit: UIButton!
    @IBOutlet weak var sendKudos_cancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func tap(gesture: UITapGestureRecognizer) {
        sendKudos_body.resignFirstResponder()
    }
    
    
    /* Clear the text box when pressing "clear" */
    @IBAction func cancelTapped(_ sender: UIButton) {
        sendKudos_body.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
