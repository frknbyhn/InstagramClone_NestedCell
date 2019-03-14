//
//  InviteFriendsViewController.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 10.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit
import Alamofire

class InviteFriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
  
    
    var dataList = [Items]()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.delegate = self
            tableView.dataSource = self
            self.tableView.register(UINib(nibName: "InviteFriendsTableViewCell", bundle: nil), forCellReuseIdentifier: "friendsCell")
            
            Alamofire.request("https://jsonplaceholder.typicode.com/todos").responseJSON { (responseData) -> Void in
                if ((responseData.result.value) != nil ){
                    let decoder = JSONDecoder()
                    let response = try! decoder.decode([Items].self, from: responseData.data!)
                    self.dataList = response
                    self.tableView.reloadData()
                    print(response)
                }
            }
        }
    
    @IBAction func crossButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as! InviteFriendsTableViewCell
        
        if dataList[indexPath.row].completed == true{
            cell.checkedButton.setImage(#imageLiteral(resourceName: "check"), for: .normal)
        }else{
            cell.checkedButton.setImage(#imageLiteral(resourceName: "nonCheck"), for: .normal)
        }

        return cell
        
    }
    
    
}
