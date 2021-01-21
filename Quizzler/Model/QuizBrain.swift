//
//  AppDelegate.swift
//  Quizzler
//
//  Created by Aleksandr Seminov on 12/09/2020.
//  Copyright © 2020 The Aleksandr802. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Кто из президентов США написал свой собственный рассказ про Шерлока Холмса?", a: ["Джон Кеннеди", "Франклин Рузвельт", "Рональд Рейган"], correctAnswer: "Франклин Рузвельт"),
        Question(q: "Какую пошлину ввели в XII  веке в Англии для того чтобы заставить мужчин пойти на войну?", a: ["Налог на тунеядство", "Налог на трусость", "Налог на отсутствие сапог"], correctAnswer: "Налог на трусость"),
        Question(q: "Откуда пошло выражение «деньги не пахнут?", a: ["От подателей за провоз парфюмерии", "От сборов за нестиранные носки", "От налога на туалеты"], correctAnswer: "От налога на туалеты"),
        Question(q: "Туристы, приезжающие на Майорку, обязаны заплатить налог…", a: ["На плавки", "На пальмы", "На солнце"], correctAnswer: "На солнце"),
        Question(q: "У индейцев из немногочисленного североамериканского племени квакиутл есть традиция: беря деньги в долг, они оставляют в залог…", a: ["Душу", "Имя", "Амулет"], correctAnswer: "Имя"),
        Question(q: "Кто из знаменитых художников за жизнь продал всего одну картину?", a: ["Винсент Ван Гог", "Пьер Огюст Ренуар", "Поль Сезан"], correctAnswer: "Винсент Ван Гог"),
        Question(q: "Основой для «Сказки о рыбаке и рыбке Пушкина послужила сказка братьев Гримм «Рыбак и его жена». В ней немецкая «коллега» нашей старухи превратилась в:", a: ["Папу Римского", "Королеву", "Директора рыбзавода"], correctAnswer: "Папу Римского"),
        Question(q: "Сколько океанов на нашей планете", a: ["4", "5", "6"], correctAnswer: "5"),
        Question(q: "Единица измерения силы тока - это:", a: ["Ампер", "Вольт", "Ватт"], correctAnswer: "Ампер"),
        Question(q: "Какой элемент периодической таблицы обозначается Ag", a: ["Золото", "Серебро", "Аргон"], correctAnswer: "Серебро")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

