//
//  StatisticServiceProtocol.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 15.03.2025.
//

protocol StatisticServiceProtocol {
    // количество завершенных игр
    var gamesCount: Int { get }
    // информация о лучшей попытке
    var bestGame: GameResult { get }
    // средняя точность правильных ответов за все игры в процентах
    var totalAccuracy: Double { get }
    
    // метод для сохранения текущего результата игры
    func store(correct count: Int, total amount: Int)
}
