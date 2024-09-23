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
    
    static let apiURI = Constants.baseURLOpenWeather + "weather?q=Toronto&units=metric&appid=" + Constants.apiKey
    
    func fetchData(completion: @escaping () -> Void) {
        isLoading = true
        NetworkManager.shared.fetchData(from: DataViewModel.apiURI) {
            [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let data):
                    self?.dataString = String(data: data, encoding: .utf8) ?? "No Data"
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
                completion()
                }
            }
        }
    }

