//
//  ulkelerA.swift
//  ulkeler
//
//  Created by Ertuğrul Kulaber on 5.11.2021.
//

import Foundation

class Ulkeler {
 
    var ulke_ad:String?
    var ulke_resim_ad:String?
 
    init () {
        
    }
    init(ulke_ad:String,ulke_resim_ad:String){
        self.ulke_ad = ulke_ad
        self.ulke_resim_ad = ulke_resim_ad
    }
}
