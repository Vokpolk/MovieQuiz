//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 09.03.2025.
//
import UIKit

final class AlertPresenter: AlertPresenterProtocol {
    
    weak var delegate: AlertPresenterDelegate?
    
    func setup(delegate: AlertPresenterDelegate) {
        self.delegate = delegate
    }
    
    func requestAlert(model: AlertModel) {
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: model.buttonText,
            style: .default
        ) { _ in
            model.completion()
        }
        
        alert.addAction(action)
        
        delegate?.didReceiveAlert(alert: alert)
    }
}
