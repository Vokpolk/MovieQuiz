//
//  GameResultModel.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 15.03.2025.
//
import UIKit

struct GameResult {
    let correct: Int
    let total: Int
    let date: Date
    
    func isBetterThan(_ anotherModel: GameResult) -> Bool {
        correct > anotherModel.correct
    }
}
