//
//  ViewController.swift
//  local notification
//
//  Created by jenish on 21/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let notificationcenter =  UNUserNotificationCenter.current()

    override func viewDidLoad() {
        super.viewDidLoad()
        notificationcenter.delegate = self
        // Do any additional setup after loading the view.
        
        notificationcenter.requestAuthorization(options: [.sound, .badge, .alert]) { sucess, error in
            if error == nil {
                print("auth sucessfully")
            }else{
                print("auth faild")
            }
            localnotification()
            
            
        }
        func localnotification(){
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let content = UNMutableNotificationContent()
            content.title = "hellow"
            content.body = "first notification "
            content.sound = UNNotificationSound.default
            
            
            let identifire = UUID().uuidString
            let req = UNNotificationRequest(identifier: identifire, content: content, trigger: trigger)
            
            notificationcenter.add(req) { error in
                if error == nil {
                    print("massage sent sucess")
                }
                
            }
            
        }
        
    }


}

extension ViewController: UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.sound, .badge, .alert])
    }
}

