

import UIKit

class HomeController: UIViewController, HomeViewDelegate {
    // MARK: - VARIABLES

    let tableView = UITableView()
    let cellIndentifier = "cellId"
    var redditArray = [Child]()
    var redditObjC = RedditObjectiveCModel()
    var alert = UIAlertController()

    // MARK: - LIFECYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
        displayMessage(title: "Fetching data.......", message: "")
        view.backgroundColor = .white
        setupNav()

        let homeVM = HomeViewModel()
        homeVM.delegate = self
        homeVM.fetchData()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupTableView()
    }

    // MARK: - HANDLES

    func setupNav() {
        navigationItem.title = "Reddit"
    }

    func setupTableView() {
        tableView.register(RedditViewCell.self, forCellReuseIdentifier: cellIndentifier)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension HomeController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return redditArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as! RedditViewCell
        cell.selectionStyle = .none

        guard let redditData = redditArray[indexPath.row].data
        else {
            return cell
        }
        cell.child = redditData 
        return cell
    }

    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let redditData = redditArray[indexPath.row].data, let title = redditData.title,
              let likes = redditData.score, let comments = redditData.numComments, let image = redditArray[indexPath.row].data?.thumbnail
        else { return }

        redditObjC = RedditObjectiveCModel()

        redditObjC.commnets = "\(comments)"
        redditObjC.title = "\(title)"
        redditObjC.upsVotes = "\(likes)"
        redditObjC.imageUrl = "\(image)"

        let detailsVC = DetailedViewController()
        detailsVC.data = redditObjC
        navigationController?.pushViewController(detailsVC, animated: true)
    }

    func didFetchDataSuccessfully(reddit: Reddit22) {
        guard let child = reddit.data?.children else {
            displayMessage(title: "Error Fetching Data", message: "")
            return
        }
        redditArray = child
        tableView.reloadData()
        alert.dismiss(animated: true, completion: nil)
    }

    func didFetchDataSuccessfully(err: String) {
        print("err \(err)")
        displayMessage(title: "\(err)", message: "")
    }

    func displayMessage(title: String, message: String) {
        alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        DispatchQueue.main.async {
            self.present(self.alert, animated: true)
        }
    }
}
