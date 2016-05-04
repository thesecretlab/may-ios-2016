//
//  AppDelegate.swift
//  ExampleProject
//
//  Created by Jon Manning on 2/05/2016.
//  Copyright © 2016 Secret Lab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        print("willFinishLaunching")
        return true
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        print("didFinishLaunching")
        
        window?.tintColor = UIColor(red: 0.8, green: 0.0, blue: 0, alpha: 1.0)
        
        let backgroundQueue = NSOperationQueue()
        
        backgroundQueue.addOperationWithBlock {
            
            print("Hello from the background queue!")
            
            NSOperationQueue.mainQueue().addOperationWithBlock {
                
                print ("Hello from the main queue, summoned from the background queue!")
                
            }
            
        }
        
        NSOperationQueue.mainQueue().addOperationWithBlock { 
            print ("Hello from the main queue!")
        }
        
        let processingTask = NSBlockOperation { 
            print("I'm processing some data!")
        }
        
        let downloadingTask = NSBlockOperation { 
            print("I'm downloading some data!")
        }
        
        processingTask.addDependency(downloadingTask)
        
        backgroundQueue.addOperations([processingTask, downloadingTask], waitUntilFinished: false)
        
        backgroundQueue.qualityOfService = .UserInteractive
        
        
        
        
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        print("will resign active")
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("did enter background")
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        print("will enter foreground")
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("did become active!")
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

