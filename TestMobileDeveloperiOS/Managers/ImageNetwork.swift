//
//  ImageNetwork.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 26.10.2023.
//

import Foundation
import Alamofire

//MARK: - ImageManager
class ImageManager {
    static func getImage(from url: String, completion: @escaping (Data) -> Void){
        AF.request(url)
            .validate()
            .responseData { (response) in
                switch response.result {
                case .success(let imageData):
                    completion(imageData)
                case .failure(let error):
                    print(error)
                }
            }
    }
}
