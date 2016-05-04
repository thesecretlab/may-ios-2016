//
//  ImageViewController.swift
//  ExampleProject
//
//  Created by Jon Manning on 3/05/2016.
//  Copyright © 2016 Secret Lab. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let imageURLString = "https://www.fillmurray.com/500/300"
        
        guard let url = NSURL(string: imageURLString) else {
            print ("Bad URL!")
            return
        }
        
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithURL(url){ (data, response, error) in
            guard let imageData = data else
            {
                print("Oops")
                return
            }
            
            guard let theImage = UIImage(data: imageData) else {
                return
            }
            
            NSOperationQueue.mainQueue().addOperationWithBlock({
                self.imageView.image = theImage
            })
        
        }
        task.resume()
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
