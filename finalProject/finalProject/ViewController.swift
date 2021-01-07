//
//  ViewController.swift
//  finalProject
//
//  Created by RaheelUser on 12/30/20.
//

import UIKit
import UserNotifications


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        
        // Step 2: Create the notification content
        let content = UNMutableNotificationContent()
        content.title = "Hey I'm a notification!"
        content.body = "Look at me!"
        
        // Step 3: Create the notification trigger
        let date = Date().addingTimeInterval(10)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        // Step 4: Create the request
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Step 5: Register the request
        center.add(request) { (error) in
            // Check the error parameter and handle any errors
        }
        
       
    }
    
    /*private func openHomeScreenViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "tabBarViewController")
        let navController = UINavigationController(rootViewController: viewController)
        navController.modalPresentationStyle = .overFullScreen
        self.present(navController, animated: true, completion: nil)
    }*/
}


  



