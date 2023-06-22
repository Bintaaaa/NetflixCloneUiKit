//
//  APICaller.swift
//  NetflixCloneSwiftUI
//
//  Created by Bijantyum on 21/06/23.
//

import Foundation
class APICaller{
    static let BASE_URL: String = "https://api.themoviedb.org/"
}

enum ApiError: Error{
    case failedToLoad
}

class MovieNetwork{
    static let shared = MovieNetwork()
    func  getMovie(completion: @escaping (Result<[MovieModel], Error>) -> Void){
        
            guard let url = URL(string: "\(APICaller.BASE_URL)3/trending/all/day?api_key=1ed7923413b28786f130ea6fb5c7a3fe") else {return}
        
        
            let task = URLSession.shared.dataTask(with: URLRequest(url: url)){data, _, error in
                guard let data = data, error == nil else{
                    return
                }
                
                do{
                    let results = try JSONDecoder().decode(TrenddingResponseModel.self, from: data
                    )
                    completion(.success(results.results))
                    print(results.results[0].id)
                }catch{
                    print(error)
                }
            }
        task.resume()
    }
}
