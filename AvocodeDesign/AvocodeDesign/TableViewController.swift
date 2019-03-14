//
//  TableViewController.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 12.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit
import Alamofire


class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mainResponse = [Results]()
    var dataList = [Items]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.register(UINib(nibName: "MainPageTableViewCell", bundle: nil), forCellReuseIdentifier: "MainPageTableViewCell")
        
        Alamofire.request("https://randomuser.me/api/?gender=female&results=20").responseJSON { (responseData) -> Void in
            
            if ((responseData.result.value) != nil ){
                
                let decoder = JSONDecoder()
                let response = try! decoder.decode(MainResponse.self, from: responseData.data!)
                
                self.mainResponse = response.results
                self.tableView.reloadData()
    
                return
            }
            
        }
        
        Alamofire.request("https://jsonplaceholder.typicode.com/todos").responseJSON { (responseItems) -> Void in
            if(responseItems.result.value) != nil{
                let decoder = JSONDecoder()
                let response = try! decoder.decode([Items].self, from: responseItems.data!)
                self.dataList = response
                self.tableView.reloadData()
            }
        }
        
        
        
        
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newView = storyBoard.instantiateViewController(withIdentifier: "friendsView") as! InviteFriendsViewController
        self.present(newView, animated: true, completion: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainResponse.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 125
        }
        return 375
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            cell.mainResponse = mainResponse
            cell.items = dataList
            return cell
        }else if indexPath.row != 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainPageTableViewCell", for: indexPath) as! MainPageTableViewCell
            return cell
        }
        return UITableViewCell()
    }
}
