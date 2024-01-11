//
//  AppDelegate.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        /*let data = Data()
        data.name = "Rashdan"
        data.age = 3
        */
        do{
            let realm = try Realm()
            try realm.write {
                //realm.add(data)
            }
            
        } catch {
            print("Error initialising new realm \(error)")
        }
        
        
        return true
    }

}


