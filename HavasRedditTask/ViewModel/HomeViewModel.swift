//
//  HomeViewModel.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-10.
//

import Foundation

protocol HomeViewDelegate: AnyObject {
    func didFetchDataSuccessfully(reddit: Reddit22)
    func didFetchDataSuccessfully(err: String)
}

class HomeViewModel {
    weak var delegate: HomeViewDelegate?
    func fetchData() {
        let apiClient = ApiClient()

        apiClient.getCartPromise().done {
            [weak self] result in
            guard let self = self else { return }
            self.delegate?.didFetchDataSuccessfully(reddit: result)

        }.catch {
            err in
            self.delegate?.didFetchDataSuccessfully(err: err.localizedDescription)
        }
    }
}
