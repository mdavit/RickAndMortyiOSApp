//
//  RMCaracterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Davit Margaryan on 23.04.23.
//

import Foundation

final class RMCaracterCollectionViewCellViewModel {
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImgeUrl: URL?
    
    // MARK: - Init
    
    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImgeUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImgeUrl = characterImgeUrl
    }
    
    public var characterStatusText: String {
        return "Status \(characterStatus.text)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        // TODO: Abstract to Image Manager
        guard let url = characterImgeUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
    
}

