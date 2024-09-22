//
//  DataViewModel.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-22.
//

import Foundation

class DataViewModel: ObservableObject {
    @Published var dataString: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    func fetchData() {
        isLoading = true
        NetworkManager.shared.fetchData(from: <#T##String#>, completion: <#T##(Result<Data, Error>) -> Void#>)
    }
}
