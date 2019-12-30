//
//  MemeTableViewController.swift
//  MemeMe
//
//  Created by Irina on 26/06/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit
import Photos

class SentMemeTableViewController: UITableViewController {
    
        var meme: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.meme
    }
    
    @IBAction func openmeme(_ sender: Any) {
        let controller = self.storyboard!.instantiateViewController(withIdentifier: "MemeViewController") as! MemeViewController
        
        self.present(controller, animated: true, completion: nil)
    }
    
     @IBOutlet var memeTable: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        memeTable.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.meme.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SentMemeTableViewCell") as! SentMemeTableViewCell
        let memeForRow = self.meme[(indexPath as NSIndexPath).row]
        
        cell.tableUILabel?.text = memeForRow.topText + memeForRow.bottomText
        cell.tableViewCell?.image = memeForRow.memedImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        
        detailController.meme = self.meme[(indexPath as NSIndexPath).row]
        
        self.navigationController!.pushViewController(detailController, animated: true)
        
    } 
    
}
