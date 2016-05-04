//
//  DefaultsViewController.swift
//  ExampleProject
//
//  Created by Jon Manning on 3/05/2016.
//  Copyright © 2016 Secret Lab. All rights reserved.
//

import UIKit

class DefaultsViewController: UIViewController, UITextFieldDelegate {
    
    
    var documentURL : NSURL {
        
        let documentsFolder = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        
        let documentFolderURL = documentsFolder.last!
        
        let fileName = "File.txt"
        
        return documentFolderURL.URLByAppendingPathComponent(fileName)
        
    }
    
    
    @IBAction func textChanged(sender: AnyObject) {
       
        let text = textfield.text ?? ""
        
        guard let data = text.dataUsingEncoding(NSUTF8StringEncoding) else {
            return
        }
        
        do {
            try data.writeToURL(documentURL, options: NSDataWritingOptions())
        } catch {
            print("Error writing to \(documentURL)")
        }

//        NSUserDefaults.standardUserDefaults().setObject(textfield.text, forKey:"text")
        // NSUserDefaults.standardUserDefaults().synchronize()

        
    }

    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = NSData(contentsOfURL: documentURL) {
            
            let text = String(data: data, encoding: NSUTF8StringEncoding)
            
            textfield.text = text
            
        } else {
            textfield.text = "Hello"
        }
        
        
//        let text = NSUserDefaults.standardUserDefaults().objectForKey("text") as? String ?? "Hello"
//        
//        textfield.text = text
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
