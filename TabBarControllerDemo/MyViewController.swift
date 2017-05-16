//
//  MyViewController.swift
//  TabBarControllerDemo
//
//  Created by Frank.Chen on 2017/5/16.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var movieName = ["玩命關頭8", "柯羅索巨獸", "拆彈專家"]
    var movieReleaseTime = ["2017-04-12", "2017-04-21", "2017-04-21"]
    var movieEvaluation = ["這集開始，正式成為巨石強森的系列，馮迪索從第五集走樣的身材，似乎也沒打算練回來了，連身手也跟著再見，不知道導演是不太會拍肉搏戰，還是馮迪索真的打不動，很乾脆的不幫他排打戲，大多數時候都是皺著眉頭，反觀巨石強森，那超硬派的力量打法，一拳一個把雜魚配角當沙包丟，看了超爽，真的是這次唯一撐住場面的亮點。", "《柯羅索巨獸》的催生過程可說是非常坎坷，首先因為與「哥吉拉」太過相似，而在開發過程與東寶發生版權衝突，接著在拍攝階段面臨資金不足的問題，最後還是靠募資團體 Legion M 集合 10000 名粉絲投資，才順利將電影推上大銀幕。《柯羅索巨獸》想必也早已寫在很多人的必看清單中，只不過搶先看過的筆者，必須先已經準備搶票的觀眾打預防針，因為有別於預告的娛樂搞笑風格，本片其實不只是一部怪獸電影，抱持著錯誤期待可能會影響各位的觀影心得——以下就列出史上最 ㄎㄧㄤ 怪獸電影《柯羅索巨獸》看前須知，大家一定要做好心理準備啊。", "香港導演邱禮濤算是近年相當多產的導演，除了去年拍有諷刺香港特首選舉的《選老頂》、懸疑驚悚片《兇手還未睡》2 部，今年更是祭出 5 部新作等待上映，分別是與劉德華的《拆彈專家》《原諒他七十七次》《重生》《常在你左右》，以及再次攜手黃秋生的 Cult 片《失眠》。"]
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - DataSource
    // ---------------------------------------------------------------------
    // 設定表格section的列數
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieName.count
    }
    
    // 表格的儲存格設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        }
        cell?.selectionStyle = UITableViewCellSelectionStyle.none // 選取的時侯無背景色
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator // 細節型態
        cell?.textLabel?.text = self.movieName[indexPath.row]
        cell?.detailTextLabel?.text = self.movieReleaseTime[indexPath.row]
        return cell!
    }
    
    
    // MARK: - Delegate
    // ---------------------------------------------------------------------
    // 點選儲存格事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detailSegueID", sender: nil);        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegueID" {
            let detailViewController: DetailViewController = segue.destination as! DetailViewController
            detailViewController.movieEvaluation = self.movieEvaluation[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
 

}





