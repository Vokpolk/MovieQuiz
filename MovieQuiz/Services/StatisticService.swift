//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 15.03.2025.
//
import UIKit

final class StatisticService {
    private let storage: UserDefaults = .standard
}

extension StatisticService: StatisticServiceProtocol {
    private enum Keys: String {
        case questionsCount
        case correctAnswers
        case correctCurrent
        case total
        case date
        case gamesCount
    }
    
    private var correctAnswers: Int {
        get {
            storage.integer(forKey: Keys.correctAnswers.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.correctAnswers.rawValue)
        }
    }
    private var questionsCount: Int {
        get {
            storage.integer(forKey: Keys.questionsCount.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.questionsCount.rawValue)
        }
    }
    
    var gamesCount: Int {
        get {
            storage.integer(forKey: Keys.gamesCount.rawValue)
        }
        set {
            storage.set(newValue, forKey: Keys.gamesCount.rawValue)
        }
    }
    
    var bestGame: GameResult {
        get {
            GameResult(correct: storage.integer(forKey: Keys.correctCurrent.rawValue),
                       total: storage.integer(forKey: Keys.total.rawValue),
                       date: (storage.object(forKey: Keys.date.rawValue) as? Date ?? Date()))
        }
        set {
            storage.set(newValue.correct, forKey: Keys.correctCurrent.rawValue)
            storage.set(newValue.total, forKey: Keys.total.rawValue)
            storage.set(newValue.date, forKey: Keys.date.rawValue)
        }
    }
    
    var totalAccuracy: Double {
        if gamesCount == 0 {
            return 0
        }
        return Double(correctAnswers) / (Double(questionsCount)/*10.0 * Double(gamesCount)*/) * 100.0
    }
    
    // метод для сохранения текущего результата игры
    func store(correct count: Int, total amount: Int) {
        correctAnswers += count
        questionsCount += amount
        gamesCount += 1
        let gameResult = GameResult(correct: count, total: amount, date: Date())
        if !bestGame.isBetterThan(gameResult) {
            bestGame = gameResult
        }
    }
}
