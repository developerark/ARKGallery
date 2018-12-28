//
//  ARKGalleryView.swift
//  ARKGallery
//
//  Created by Aswin Raj Kharel on 12/28/18.
//

import UIKit

public class ARKGalleryView: UIView {
    
    // MARK:- Properties
    public let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .green
        return imageView
    }()
    
    public let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Title Placeholder"
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 24, weight: .heavy)
        return label
    }()
    
    public var title: String? {
        didSet{
            self.titleLabel.text = self.title
        }
    }
    
    public let subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Subtitle Placeholder"
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    public var subtitle: String?{
        didSet{
            self.subtitleLabel.text = self.subtitle
        }
    }
    
    //MARK:- Inits
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.layout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:- Layout
    private func layout(){
        // View properties
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        // Add the imageView
        self.addSubview(self.imageView)
        self.imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        // Setup the pagination bar
        
        // Setup the gradient layer
        
        // Setup the title and sublitle labels
        self.addSubview(self.subtitleLabel)
        self.subtitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        self.subtitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        self.subtitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        self.subtitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        self.addSubview(self.titleLabel)
        self.titleLabel.bottomAnchor.constraint(equalTo: self.subtitleLabel.topAnchor, constant: -8).isActive = true
        self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        self.titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        self.titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
}
