//
//  ViewController.swift
//  (7)imageview_gallary
//
//  Created by jenish on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview_1: UIImageView!
    
    @IBOutlet weak var imageview_2: UIImageView!
    @IBOutlet weak var imageview_3: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
    }

    @IBAction func f_set_btn(_ sender: Any) {
        
        let photo=UIImagePickerController()
        photo .delegate=self
        present(photo, animated: true, completion: nil)
    }
    
}

extension ViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        let img=info[.originalImage] as! UIImage
        
        imageview_1.image=img
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func s_set_btn(_ sender: Any) {
        

    }
    
    
    
    @IBAction func t_set_btn(_ sender: Any) {
        
        
        
    }
}

