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
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageToLoad = selectedImage {
            imageView = UIImageView(image: UIImage(named: imageToLoad))
            imageView.contentMode = .scaleToFill
            view.addSubview(imageView)
        }
    }
    
    @objc func shareTapped() {
        
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image,"image description: \(selectedImage!)"], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}
