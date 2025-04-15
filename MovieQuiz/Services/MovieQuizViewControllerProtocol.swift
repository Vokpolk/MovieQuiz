//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 08.04.2025.
//

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(quiz result: QuizResultsViewModel)
    
    func highlightImageBorder(isCorrectAnswer: Bool)
    func setImageViewDefault()
    
    func showLoadingIndicator()
    func hideLoadingIndicator()
    
    func showNetworkError(message: String)
}
