//
//  ARKGalleryViewModel.swift
//  ARKGallery
//
//  Created by Aswin Raj Kharel on 12/28/18.
//

import UIKit

public class ARKGalleryViewModel {
    //MARK:- Properties
    public var slides: [ARKSlide]? = nil
    
    var index: Int = 0 {
        didSet{
            self.indexObserver?(self.index)
        }
    }
    
    var indexObserver: ((Int) -> ())?
    
    //MARK:- Inits
    public init(){}
    
    //MARK:- Pagination Handlers
    func next(){
        guard let slides = self.slides else {return}
        self.index = min(self.index + 1, slides.count - 1)
    }
    
    func previous(){
        self.index = max(0, self.index - 1)
    }
}
