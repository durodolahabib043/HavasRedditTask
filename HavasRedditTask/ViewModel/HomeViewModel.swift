//
//  HomeViewModel.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-10.
//

import Foundation

protocol HomeViewDelegate: AnyObject {
    func didFetchDataSuccessfully(reddit: Reddit)
    func didFetchDataSuccessfully(err: String)
}

class HomeViewModel {
    weak var delegate: HomeViewDelegate?
    func fetchData() {
        let apiClient = ApiClient()

        apiClient.getCartPromise().done {
            [weak self] result in
            guard let self = self else { return }
            print("this is result \(result)")
            self.delegate?.didFetchDataSuccessfully(reddit: result)

        }.catch {
            err in
            self.delegate?.didFetchDataSuccessfully(err: err.localizedDescription)
        }
    }
}
