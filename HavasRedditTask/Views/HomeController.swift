

import UIKit

class HomeController: UIViewController, HomeViewDelegate {
    // MARK: - VARIABLES

    let tableView = UITableView()
    let cellIndentifier = "cellId"
    var redditArray = [Child]()

    // MARK: - LIFECYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNav()
        setupTableView()
        let homeVM = HomeViewModel()
        homeVM.delegate = self
        homeVM.fetchData()
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

        cell.voteContText.text = "2"
        guard let data = redditArray[indexPath.row].data?.title else {
            print("cellForRowAt")
            return cell
        }
        cell.titleText.text = data
        return cell
    }

    /// remove and use autolayout
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        return 200
    }

    func didFetchDataSuccessfully(reddit: Reddit22) {
        guard let child = reddit.data?.children else {
            print("didFetchDataSuccessfully")
            return
        }
        redditArray = child
        tableView.reloadData()
    }

    func didFetchDataSuccessfully(err: String) {
        print("err \(err)")
    }
}
