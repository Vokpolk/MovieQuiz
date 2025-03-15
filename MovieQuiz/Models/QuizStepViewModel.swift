//
//  QuizStepViewModel.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 09.03.2025.
//
import UIKit

// вью модель для состояние "Вопрос показан"
struct QuizStepViewModel {
    // картинка с афишей фильма с типом UIImage
    let image: UIImage
    // вопрос о рейтинге фильма
    let question: String
    // строка с порядковым номером этого вопроса ("1/10")
    let questionNumber: String
}
