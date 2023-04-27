//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Davit Margaryan on 24.04.23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
