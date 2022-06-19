//
//  DetailedViewController.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var flag: UILabel!
    @IBOutlet weak var capital:UILabel!
    @IBOutlet weak var currencies:UILabel!
    
    var countryViewModel:CountryDetailViewModel?
    
    init(countryViewModel: CountryDetailViewModel) {
        super.init(nibName: "DetailedViewController", bundle: .main)
        self.countryViewModel = countryViewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = countryViewModel?.country?.name.common
        population.text =  "\(countryViewModel?.country?.population ?? 0)"
        flag.text = countryViewModel?.country?.flag
        capital.text = countryViewModel?.country?.capital?.first
        countryViewModel?.country?.currencies?.forEach({ value in
            currencies.text = (currencies.text ?? "") + " " +  (value.value.name ?? "")
        })
    }
}
