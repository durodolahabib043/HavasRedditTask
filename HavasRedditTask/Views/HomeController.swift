

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNav()
    }

    func setupNav(){
        navigationItem.title = "Reddit"
    }

}

