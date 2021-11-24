//
//  ViewController.swift
//  ulkeler
//
//  Created by Ertuğrul Kulaber on 5.11.2021.
//

import UIKit

class ViewController: UIViewController {

    var ulkelerListe = [Ulkeler]()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var ulkelerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        ulkelerTableView.delegate = self
        ulkelerTableView.dataSource = self
   
        
        let u1 = Ulkeler.init(ulke_ad: "Türkiye", ulke_resim_ad: "TR")
        let u2 = Ulkeler.init(ulke_ad: "Kanada", ulke_resim_ad: "CA")
        let u3 = Ulkeler.init(ulke_ad: "İspanya", ulke_resim_ad: "ES")
        let u4 = Ulkeler.init(ulke_ad: "Rusya", ulke_resim_ad: "RU")
        let u5 = Ulkeler.init(ulke_ad: "İngiltere", ulke_resim_ad: "eng")
        let u6 = Ulkeler.init(ulke_ad: "Azerbaycan", ulke_resim_ad: "AZ")
        let u7 = Ulkeler.init(ulke_ad: "Brezilya", ulke_resim_ad: "BR")
        let u8 = Ulkeler.init(ulke_ad: "Çin", ulke_resim_ad: "CN")
        let u9 = Ulkeler.init(ulke_ad: "Almanya", ulke_resim_ad: "DE")
        let u10 = Ulkeler.init(ulke_ad: "Fransa", ulke_resim_ad: "FR")
        let u11 = Ulkeler.init(ulke_ad: "Gürcistan", ulke_resim_ad: "GE")
        let u12 = Ulkeler.init(ulke_ad: "Suriye", ulke_resim_ad: "SY")
        let u13 = Ulkeler.init(ulke_ad: "Japonya", ulke_resim_ad: "KR")
        let u14 = Ulkeler.init(ulke_ad: "Kore", ulke_resim_ad: "JP")
        ulkelerListe.append(u1)
        ulkelerListe.append(u2)
        ulkelerListe.append(u3)
        ulkelerListe.append(u4)
        ulkelerListe.append(u5)
        ulkelerListe.append(u6)
        ulkelerListe.append(u7)
        ulkelerListe.append(u8)
        ulkelerListe.append(u9)
        ulkelerListe.append(u10)
        ulkelerListe.append(u11)
        ulkelerListe.append(u12)
        ulkelerListe.append(u13)
        ulkelerListe.append(u14)
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkelerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ulke = ulkelerListe[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ulkeHucre", for: indexPath) as! ulkelerVCTableViewCell
        
        cell.ulkelerİmage.image = UIImage (named: ulke.ulke_resim_ad!)
        cell.ulkelerLabel.text = ulke.ulke_ad
    
        return cell
        
    }

    
}

extension ViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonucu \(searchText)")
    }
}
