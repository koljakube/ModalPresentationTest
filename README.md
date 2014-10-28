# Modal Presentation Test

A minimal, verifiable, complete example of a problem with modal segues and disabled autoresizing mask translation. To recreate the problem, start the app, press the + button, then the unwind button. You should see a black screen with the + on it.

Commenting `view.setTranslatesAutoresizingMaskIntoConstraints(false)` in `ViewController.viewDidLoad()` fixes this, but would prevent me from moving the front view via positioning `NSLayoutConstraints`.
