//
//  Untitled.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 09.03.2025.
//

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer()
    func didFailToLoadData(with error: Error)
}
