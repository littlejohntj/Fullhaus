//
//  SearchViewController.swift
//  NewHaus
//
//  Created by Mike Martin on 11/5/16.
//  Copyright © 2016 Mike Martin. All rights reserved.
//

import UIKit

var globalCommunity:Community?

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    // MARK: Outlets 
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: View Variables
    
    var communities:[Community] = [Community]()
    var communitiesToShow:[Community] = [Community]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let c1 = Community("Appleyard Park", "true.chains")
        let c2 = Community("Newberry Meadow", "boi.bio")
        let c3 = Community("Bella Isola", "www.getfukt.edu")
        let c4 = Community("Bella Medow", "www.m8.org")
        communities.append(c1)
        communities.append(c2)
        communities.append(c3)
        communities.append(c4)
    }
    
    // MARK: UITableView Functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return communitiesToShow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let community = communitiesToShow[indexPath.row]
        cell.textLabel?.text = community.name
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var tempComminities:[Community] = [Community]()
        for community in communities {
            if community.isSubstringInName(searchText) {
                tempComminities.append(community)
            }
        }
        communitiesToShow = tempComminities
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        globalCommunity = communitiesToShow[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toApplicationPage", sender:nil)
    }
    
    

}
