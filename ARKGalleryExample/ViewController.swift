//
//  ViewController.swift
//  ARKGalleryExample
//
//  Created by Aswin Raj Kharel on 12/28/18.
//

import UIKit
import ARKGallery

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupUI()
    }

    fileprivate func setupUI(){
        self.view.backgroundColor = .white
        
        let gallery = ARKGalleryView()
        gallery.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(gallery)
        gallery.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        gallery.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        gallery.heightAnchor.constraint(equalToConstant: 500).isActive = true
        gallery.widthAnchor.constraint(equalToConstant: 350).isActive = true
        
        let slide1 = ARKSlide()
        slide1.title = "Slide1 - Title"
        slide1.subtitle = "Slide1 - Subtitle"
        slide1.image = UIImage(named: "image1")
        
        let slide2 = ARKSlide()
        slide2.title = "Slide2 - Title"
        slide2.subtitle = "Slide2 - Subtitle"
        slide2.image = UIImage(named: "image2")
        
        let slide3 = ARKSlide()
        slide3.title = "Slide3 - Title"
        slide3.subtitle = "Slide3 - Subtitle"
        slide3.image = UIImage(named: "image3")
        
        let slide4 = ARKSlide()
        slide4.title = "Slide4 - Title"
        slide4.subtitle = "Slide4 - Subtitle"
        slide4.image = UIImage(named: "image4")
        
        let slide5 = ARKSlide()
        slide5.title = "Slide5 - Title"
        slide5.subtitle = "Slide5 - Subtitle"
        slide5.image = UIImage(named: "image5")
        
        let model = ARKGalleryViewModel()
        //model.slides = [slide1, slide2, slide3, slide4, slide5]
        gallery.model = model
    }

}

