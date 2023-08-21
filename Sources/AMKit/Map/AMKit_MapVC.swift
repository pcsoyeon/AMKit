//
//  MapViewController.swift
//  
//
//  Created by 김소연 on 2023/08/21.
//

import UIKit

/// AMKit Map 화면
public class AMKit_MapVC: UIViewController {
    
    // MARK: - Views
    /// Map View
    private lazy var mapView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    
    // MARK: - Properties
    
    private var lat: Double
    private var lng: Double
    
    // MARK: - Initializer
    
    public init(lat: Double, lng: Double) {
        self.lat = lat
        self.lng = lng
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
}

// MARK: - Configure UI

extension AMKit_MapVC {
    
    private func configureUI() {
        view.backgroundColor = .lightGray
        
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            mapView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
