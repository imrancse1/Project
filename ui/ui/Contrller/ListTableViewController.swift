//
//  ListTableViewController.swift
//  ui
//
//  Created by Imran Hossain on 19/1/20.
//  Copyright © 2020 Imran Hossain. All rights reserved.
//

import UIKit



class ListTableViewController: UITableViewController {
    
    
    var quotes = [QuoteList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quoteItem1 = QuoteList()
        quoteItem1.quote = "The power of the white world is threatened whenever a black man refuses to accept the white world's definitions."
        quoteItem1.author = "James Baldwin"
        quoteItem1.favouright = true
        
        quotes.append(quoteItem1)
        
        let quoteItem2 = QuoteList()
        quoteItem2.quote = "Your understanding of what you read and hear is, to a very large degree, determined by your vocabulary, so improve your vocabulary daily."
        quoteItem2.author = "Zig Ziglar"
        quoteItem2.favouright = false
        quotes.append(quoteItem2)
        
        let quoteItem3 = QuoteList()
        quoteItem3.quote = "I groan daily under a body of sin and corruption. Oh for the time when I shall drop this flesh, and be free from sin!"
        quoteItem3.author = "Charles Spurgeon"
        quoteItem3.favouright = true
        quotes.append(quoteItem3)
        
        
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return quotes.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 324
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomeTableViewCellController
        cell.delegate = self
        cell.index = indexPath
        let quoteItem = quotes[indexPath.row]
        
        cell.quoteText.text = quoteItem.quote
        cell.quoteAuthor.text = quoteItem.author
        
        if quoteItem.favouright {
            cell.favouriteButton.setImage(#imageLiteral(resourceName: "fullheart"), for: .normal)
        } else {
            cell.favouriteButton.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
        }
        
        
        return cell
    }
    
}


//extension ListTableViewController: ButtonPressOnCellDelegate{
//    func FavorughtButtonPressOnCell(index: Int) {
//        quotes[index].onFavourightPress()
//        print(quotes[index].favouright)
//        tableView.reloadData()
//    }
//
//    func ShareButtonPressOnCell(index: Int) {
//        let text = "\u{22} " + "\(quotes[index].quote)" + "\u{22}" + "\n -" + "\(quotes[index].author)"
//        print(text)
//        let shareActivity = UIActivityViewController.init(activityItems: [text], applicationActivities: nil)
//        self.present(shareActivity, animated: true, completion: nil)
//    }
//
//}

extension ListTableViewController: ButtonPressOnCellDelegate{
    func FavorughtButtonPressOnCell(index: Int) {
        print(quotes[index].quote)
        quotes[index].onFavourightPress()
        tableView.reloadData()
    }
    
    func ShareButtonPressOnCell(index: Int) {
         let text = "\u{22} " + "\(quotes[index].quote)" + "\u{22}" + "\n -" + "\(quotes[index].author)"
        let shareActivity = UIActivityViewController.init(activityItems: [text], applicationActivities: nil)
        self.present(shareActivity, animated: true, completion: nil)
    }
}
