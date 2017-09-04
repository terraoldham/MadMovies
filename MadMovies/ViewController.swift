//
//  ViewController.swift
//  MadMovies
//
//  Created by Terra Oldham on 9/2/17.
//  Copyright © 2017 HearsaySocial. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var moviesView: UIView!
    @IBOutlet weak var moviesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.rowHeight = 100.0

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        cell.textLabel?.text = "Row \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = FilmDetailViewController(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

class FilmDetailViewController:
    UIViewController {
    override func loadView() {
        let detailView = UIView(frame: CGRect.zero)
        detailView.backgroundColor = UIColor.blue
        self.view = detailView
    }}}
