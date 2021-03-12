//
//  ApiClient.swift
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-10.
//

import Foundation
import PromiseKit

class ApiClient {
    func getCartPromise() -> Promise<Reddit> {
        let urlString = "https://www.reddit.com/.json"

        if let url = URL(string: urlString) {
            return firstly {
                URLSession.shared.dataTask(.promise, with: url)
            }.compactMap {
                try JSONDecoder().decode(Reddit.self, from: $0.data)
            }
        }
        return Promise {
            err in
            let genericError = NSError(
                domain: "PromiseKit",
                code: 0,
                userInfo: [NSLocalizedDescriptionKey: err]
            )
            err.reject(genericError)
        }
    }
}
