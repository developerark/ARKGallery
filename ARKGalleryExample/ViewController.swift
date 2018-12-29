//
//  ViewController.swift
//  ARKGalleryExample
//
//  Created by Aswin Raj Kharel on 12/28/18.
//

import UIKit
import ARKGallery

class ViewController: UIViewController, ARKGalleryDelegate {
    
    let gallery = ARKGalleryView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupUI()
    }

    fileprivate func setupUI(){
        self.view.backgroundColor = .white
        
        self.gallery.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.gallery)
        self.gallery.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.gallery.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.gallery.heightAnchor.constraint(equalToConstant: 400).isActive = true
        self.gallery.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        self.gallery.delegate = self
        
        let slide1 = ARKSlide()
        slide1.title = "Cliff"
        slide1.subtitle = "Enjoying the crystal clear water"
        slide1.image = UIImage(named: "image1")
        
        let slide2 = ARKSlide()
        slide2.title = "Mountain"
        slide2.subtitle = "On top of the mountain"
        slide2.image = UIImage(named: "image2")
        
        let slide3 = ARKSlide()
        slide3.title = "Forest"
        slide3.subtitle = "Dense forests in the mountains"
        slide3.image = UIImage(named: "image3")
        
        let slide4 = ARKSlide()
        slide4.title = "Hotel"
        slide4.subtitle = "At the hotel enjoying the pool"
        slide4.image = UIImage(named: "image4")
        
        let slide5 = ARKSlide()
        slide5.title = "City"
        slide5.subtitle = "Enjoying the view of the whole city"
        slide5.image = UIImage(named: "image5")
        
        let model = ARKGalleryViewModel()
        model.slides = [slide1, slide2, slide3, slide4, slide5]
        gallery.model = model
    }
    
    func galleryTapped(index: Int) {
        print(index)
    }
    
    func galleryLongPressed(index: Int) {
        print(index)
    }
}

