//
//  Model.swift
//  20-SearchBarInTableView
//
//  Created by 玉皇大亮 on 8/26/16.
//  Copyright © 2016 aaron. All rights reserved.
//

import UIKit

let model = Model()

class Model: NSObject {
    let featuredBanners = [
        ["image": "banner 1"],
        ["image": "banner 2"],
        ["image": "banner 3"],
        ["image": "banner 4"],
        ["image": "banner 5"],
        ["image": "banner 6"],
        ["image": "banner 7"],
        ["image": "banner 8"],
        ["image": "banner 9"],
        ["image": "banner 10"]
    ]
    
    let featuredPosters = [
        [
            "image": "poster 1",
            "title": "Dubai",
            "description": "Dubai, United Arab Emirates",
            "photographer": "Tim Gouw",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 2",
            "title": "Eiffel Tower",
            "description": "Eiffel Tower, Paris, France",
            "photographer": "Felipe Dolce",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 3",
            "title": "Statue of Liberty",
            "description": "Statue of Liberty, New York United States",
            "photographer": "Ximena Torres Rodríguez",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 4",
            "title": "Kyoto, Japan",
            "description": "Kyoto, Fushimi-ku, Japan",
            "photographer": "Chris Lu",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 5",
            "title": "Vietnam",
            "description": "Sa Pa, Vietnam",
            "photographer": "Siamak Djamei",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 6",
            "title": "Utah",
            "description": "Oljato-Monument Valley, United States",
            "photographer": "Dawn Armfield",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 7",
            "title": "Vietnam",
            "description": "Đà Nẵng, An Hải Tây, Vietnam",
            "photographer": "NGO TUNG",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 8",
            "title": "Angor Wat",
            "description": "Angor Wat, Cambodia",
            "photographer": "Cristian Moscoso",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 9",
            "title": "El Nido, Palawan",
            "description": "El Nido, Palawan Philippines",
            "photographer": "MC Guisona",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 10",
            "title": "Epcot",
            "description": "Epcot, Orlando, United States",
            "photographer": "Frances Gunn",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 11",
            "title": "Los Angeles",
            "description": "Los Angeles, United States",
            "photographer": "John Salzarulo",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 12",
            "title": "Austria",
            "description": "Hahnenkammbahn Kitzbühel, Kitzbühel, Austria",
            "photographer": "Lukas Budimaier",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 13",
            "title": "Germany",
            "description": "Langenzenn, Germany",
            "photographer": "Sebastian Engler",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 14",
            "title": "Peru",
            "description": "Aguas Calientes, Peru",
            "photographer": "John Salzarulo",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 15",
            "title": "Thailand",
            "description": "Ko Phi Phi Lee, Thailand",
            "photographer": "Rafa Prada",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 16",
            "title": "The Louvre",
            "description": "The Louvre, Paris, France",
            "photographer": "Stacy Wyss",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 17",
            "title": "South Africa",
            "description": "Hout Bay, Cape Town, South Africa",
            "photographer": "Carolinie Cavalli",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 18",
            "title": "San Francisco",
            "description": "San Francisco, United States",
            "photographer": "Michael Hirsch",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 19",
            "title": "Taj Mahal Mosque",
            "description": "Taj Mahal Mosque, India",
            "photographer": "Varshesh Joshi",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 20",
            "title": "Hong Kong",
            "description": "Victoria Peak, Hong Kong",
            "photographer": "Sven Scheuermeier",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 21",
            "title": "Ha Long Bay",
            "description": "Ha Long Bay, Vietnam",
            "photographer": "Rafa Prada",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 22",
            "title": "Yosemite",
            "description": "Yosemite National Park, United States",
            "photographer": "Yang Song",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 23",
            "title": "France",
            "description": "La Clusaz, France",
            "photographer": "Gérôme Bruneau",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 24",
            "title": "Russia",
            "description": "Новосиль, Chernskiy rayon, Russia",
            "photographer": "Sergey Zolkin",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 25",
            "title": "London",
            "description": "Tower Bridge, London, United Kingdom",
            "photographer": "Susan Yin",
            "rating": "★★★★✩"
        ]
    ]
    
    let charts = [
        [
            "image": "poster 4",
            "title": "Kyoto, Japan",
            "description": "Kyoto, Fushimi-ku, Japan",
            "photographer": "Chris Lu",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 1",
            "title": "Dubai",
            "description": "Dubai, United Arab Emirates",
            "photographer": "Tim Gouw",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 2",
            "title": "Eiffel Tower",
            "description": "Eiffel Tower, Paris, France",
            "photographer": "Felipe Dolce",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 16",
            "title": "The Louvre",
            "description": "The Louvre, Paris, France",
            "photographer": "Stacy Wyss",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 19",
            "title": "Taj Mahal Mosque",
            "description": "Taj Mahal Mosque, India",
            "photographer": "Varshesh Joshi",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 9",
            "title": "El Nido, Palawan",
            "description": "El Nido, Palawan Philippines",
            "photographer": "MC Guisona",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 25",
            "title": "London",
            "description": "Tower Bridge, London, United Kingdom",
            "photographer": "Susan Yin",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 3",
            "title": "Statue of Liberty",
            "description": "Statue of Liberty, New York United States",
            "photographer": "Ximena Torres Rodríguez",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 5",
            "title": "Vietnam",
            "description": "Sa Pa, Vietnam",
            "photographer": "Siamak Djamei",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 6",
            "title": "Oljato-Monument Valley",
            "description": "Oljato-Monument Valley, United States",
            "photographer": "Dawn Armfield",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 7",
            "title": "Vietnam",
            "description": "Đà Nẵng, An Hải Tây, Vietnam",
            "photographer": "NGO TUNG",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 8",
            "title": "Angor Wat",
            "description": "Angor Wat, Cambodia",
            "photographer": "Cristian Moscoso",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 10",
            "title": "Epcot",
            "description": "Epcot, Orlando, United States",
            "photographer": "Frances Gunn",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 11",
            "title": "Los Angeles",
            "description": "Los Angeles, United States",
            "photographer": "John Salzarulo",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 12",
            "title": "Austria",
            "description": "Kitzbühel, Austria",
            "photographer": "Lukas Budimaier",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 13",
            "title": "Germany",
            "description": "Langenzenn, Germany",
            "photographer": "Sebastian Engler",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 14",
            "title": "Peru",
            "description": "Aguas Calientes, Peru",
            "photographer": "John Salzarulo",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 15",
            "title": "Thailand",
            "description": "Ko Phi Phi Lee, Thailand",
            "photographer": "Rafa Prada",
            "rating": "★★★★★"
        ],
        [
            "image": "poster 17",
            "title": "South Africa",
            "description": "Hout Bay, Cape Town, South Africa",
            "photographer": "Carolinie Cavalli",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 18",
            "title": "San Francisco",
            "description": "San Francisco, United States",
            "photographer": "Michael Hirsch",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 20",
            "title": "Hong Kong",
            "description": "Victoria Peak, Hong Kong",
            "photographer": "Sven Scheuermeier",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 21",
            "title": "Ha Long Bay",
            "description": "Ha Long Bay, Vietnam",
            "photographer": "Rafa Prada",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 22",
            "title": "Yosemite National Park",
            "description": "Yosemite National Park, United States",
            "photographer": "Yang Song",
            "rating": "★★★★✩"
        ],
        [
            "image": "poster 23",
            "title": "France",
            "description": "La Clusaz, France",
            "photographer": "Gérôme Bruneau",
            "rating": "★★★✩✩"
        ],
        [
            "image": "poster 24",
            "title": "Russia",
            "description": "Новосиль, Chernskiy rayon, Russia",
            "photographer": "Sergey Zolkin",
            "rating": "★★★✩✩"
        ]
    ]
}
