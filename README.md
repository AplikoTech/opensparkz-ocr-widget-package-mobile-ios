
# OpenSparkz Widget Package

An iOS Swift Package exclusively for OpenSparkz that lets you put and save your Credit Card details on OpenSparkz server in a safe and secure manner.

## Installation

````
1. Launch your XCode project
2. Go to File -> Add Packages
3. Put the GitHub address of this repo on the top right search bar of the window (i.e., https://github.com/AplikoTech/opensparkz-ocr-widget-package-mobile-ios )
4. Keep the default settings and tap **Add Package** on the bottom right of the window
5. Build the project
````


## Usage


Import the module where you would like to use it as shown below
```swift
import OpenSparkzFrame
```

Create a ViewController
```swift
let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
ViewController.accessToken = <ACCESS_TOKEN>
self.navigationController?.pushViewController(ViewController, animated: true)
```

Create an instance of CardView
```swift
var cardView = CardView()
```

Attach the frame and delegate of **CardView** in **viewDidLoad**
```swift
cardView = CardView(frame: CGRect(x: 10, y: 150.0, width: self.view.frame.size.width - 20.0, height: 290.0))
cardView.cardDelegate = self
self.view.addSubview(cardView)
```




## API Documentation

#### Delegate Methods

| Name | 
| :-------- | 
| `resultStatus(result: [String : Any]?)` | 
| `networkStatus(status : Bool)` | 

#### CardView Functional Properties

| Name | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `enableDefaultLoader`      | `bool` | Show the loader manually |
| `configureGetAddCardTokenUrl(<url>)`      | `string` | Lets you set the URL for the AddCardToken API |
| `configureRegisterCardUrl(<url>)`      | `string` | Lets you set the URL for the RegisterCard API |
| `registerCard(accessToken: <accessToken>)`      | `string` | Will register the card to backend |

#### CardView UI Properties

| Name | Example     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `defaultTextColor`      | `cardView.defaultTextColor = .black` | Lets you control the text label color |
| `backgroundColor`      | `cardView.backgroundColor = .black` |  Lets you control the background color of the UI  |
| `activeBorderColor`      | `cardView.activeBorderColor = .black` |  Lets you control the border color of focused View |
| `defaultBorderColor`      | `cardView.defaultBorderColor = .black` | Lets you control the border color of completed View |
| `defaultEditTextColor`      | `cardView.defaultEditTextColor = .black` | Lets you control the input text color |
| `errorTextColor`      | `cardView.errorTextColor = .black` | Lets you control the error text label color |
| `fontFamily`      | `cardView.fontFamily = UIFont.init(name: "", size: 12.0)` | Lets you update the font family of the text shown |
