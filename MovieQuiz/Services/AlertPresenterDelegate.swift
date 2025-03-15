//
//  AlertPresenterDelegate.swift
//  MovieQuiz
//
//  Created by Александр Клопков on 09.03.2025.
//
import UIKit

protocol AlertPresenterDelegate: AnyObject {
    func didReceiveAlert(alert: UIAlertController)
}
