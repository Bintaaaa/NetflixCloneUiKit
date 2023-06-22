//
//  TrenddingMovieResponse.swift
//  NetflixCloneSwiftUI
//
//  Created by Bijantyum on 21/06/23.
//

import Foundation
struct TrenddingResponseModel: Codable{
    let results: [MovieModel]
    enum CodingKeys: String, CodingKey {
        case  results
    }
}


struct MovieModel: Codable{
   
    let id: Int
    let posterPath: String?
    let overview: String?
    let title: String?
    
    enum CodingKeys: String, CodingKey {
         
            case id, title
         
            case overview
            case posterPath = "poster_path"
          
        }
    
   
   
    
}
