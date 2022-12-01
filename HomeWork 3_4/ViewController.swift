//
//  ViewController.swift
//  HomeWork 3_4
//
//  Created by Atai Begaliev on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orderTableView: UITableView!

    var orders: [OrderModel] = [OrderModel(orderImage: "Oasis1", cafeName: "Oasis", orderInfo: "1 x Запеченный донер", orderInfo2: "1 x Запеченный чили донер", orderSum: 435),
                                OrderModel(orderImage: "Begemot1", cafeName: "Begemot", orderInfo: "2 x Чизбургер", orderInfo2: "1 x Роллцезарь", orderSum: 350),
                                OrderModel(orderImage: "Giraffe1", cafeName: "Giraffe", orderInfo: "2 x Латте", orderInfo2: "2 x Твороженный Чизкейк", orderSum: 475),
                                OrderModel(orderImage: "Fakir1", cafeName: "Fakir", orderInfo: "4 x Запеченный донер", orderInfo2: "2 x Бейти Кебаб", orderSum: 960),
                                OrderModel(orderImage: "Begemot1", cafeName: "Begemot", orderInfo: "2 x Чизбургер", orderInfo2: "1 x Роллцезарь", orderSum: 350),
                                OrderModel(orderImage: "Giraffe1", cafeName: "Giraffe", orderInfo: "2 x Латте", orderInfo2: "2 x Твороженный Чизкейк", orderSum: 475),
                                OrderModel(orderImage: "Fakir1", cafeName: "Fakir", orderInfo: "4 x Запеченный донер", orderInfo2: "2 x Бейти Кебаб", orderSum: 960),
                                OrderModel(orderImage: "Begemot1", cafeName: "Begemot", orderInfo: "2 x Чизбургер", orderInfo2: "1 x Роллцезарь", orderSum: 350),
                                OrderModel(orderImage: "Giraffe1", cafeName: "Giraffe", orderInfo: "2 x Латте", orderInfo2: "2 x Твороженный Чизкейк", orderSum: 475),
                                OrderModel(orderImage: "Fakir1", cafeName: "Fakir", orderInfo: "4 x Запеченный донер", orderInfo2: "2 x Бейти Кебаб", orderSum: 960)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(falseTap))
    }
    @objc func falseTap() {
        print("yes")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "order_cell", for: indexPath) as! OrderCell
        
        cell.cellOrderImage.image = UIImage(named: orders[indexPath.row].orderImage)
        cell.cellCafeName.text = orders[indexPath.row].cafeName
        cell.cellOrderInfo.text = orders[indexPath.row].orderInfo
        cell.cellOrderInfo2.text = orders[indexPath.row].orderInfo2
        cell.cellOrderSum.text = "\(orders[indexPath.row].orderSum) KGS"
        
         return cell
    }
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  115
    }
}


