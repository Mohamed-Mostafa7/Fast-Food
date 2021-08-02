//
//  Welcome.swift
//  Fast Food
//
//  Created by Mohamed Mostafa on 02/08/2021.
//

import Foundation

struct Welcome {
    let imageName: String
    let title: String
    let detials: String
    let dotsImage: String
    
}


var welcomeScreens: [Welcome] =
    [Welcome(imageName: "welcome_1", title: "variety", detials: "Choose your favorite food and we will provide it to you as soon as possible", dotsImage: "welcome_1_dots"),
     Welcome(imageName: "welcome_2", title: "Speed", detials: "When ordering from you, we have an important advantage, which is the speed of arrival. You will not go hungry.We have arrived.", dotsImage: "welcome_2_dots"),
     Welcome(imageName: "welcome_3", title: "Delivery", detials: "Stay in your place, we will take him home, be safe", dotsImage: "welcome_3_dots")]
