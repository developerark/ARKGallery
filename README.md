# ARKGallery
Image Showcase Gallery in Swift. This framework allows the user to create an image gallery as shown in the demo. 

## Demo
<img src="ARKGalleryExample/demo/demo.gif" width="250">

## Requirements
iOS 11+

## Setup
### Setup Manually
1.  Drag and drop the `ARKGallery/src` folder to your project

### Setup using CocoaPods
Coming soon...

## Usage
An example of the usage of this frame work can be found in `ViewController.swift` file within the `ARKGalleryExample` project.

First create an instance of the `ARKGallery` or drag and drop an outlet from the storyboard. Also, conform to `ARKGalleryDelegate` if you want to get notified for touch events like tap and long press. 
```swift
class ViewController: UIViewController, ARKGalleryDelegate{
    let gallery: ARKGalleryView = ARKGalleryView()
}
```

Inside `viewDidLoad(),` set the `gallery`'s touch delegate to self. If using storyboard, drag the gallery delegate to your ViewController instance.
```swift
    ...
    func viewDidLoad(){
        self.gallery.delegate = self
    }
    ...
```

Next, setup the layout as you wish using code or storyboard. If you are using storyboard skip the following code snippet. 
```swift
    ...
    func viewDidLoad(){
        self.gallery.delegate = self
        
        // Layout the gallery
        self.gallery.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.gallery)
        self.gallery.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.gallery.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.gallery.heightAnchor.constraint(equalToConstant: 400).isActive = true
        self.gallery.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
        ...
```

Now, all you have to do is create instances of `ARKSlide` and set it to the `slides` attribute of `ARKGalleryViewModel`.
```swift
    ... 
    func viewDidLoad(){
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
```

Finally, implement the following `ARKGalleryDelegate` methods.

```swift
class ViewController: UIViewController, ARKGalleryDelegate{
    ...
    func viewDidLoad(){
        ...
    }
    
    func galleryTapped(index: Int) {
        print(index)
    }

    func galleryLongPressed(index: Int) {
        print(index)
    }
}

```

