//
//  DetailViewController.swift
//  PictureViewer
//
//  Created by slava bily on 22/1/20.
//  Copyright © 2020 slava bily. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, Storyboarded {
    
    var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedImage
        let imageView = UIImageView(image: UIImage(named: selectedImage!))
        view.addSubview(imageView)
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
