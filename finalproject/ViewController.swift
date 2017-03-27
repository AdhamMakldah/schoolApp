//
//  ViewController.swift
//  finalproject
//
//  Created by Adham Maklda on 23.3.2017.
//  Copyright © 2017 Adham Maklda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let b = Backendless.sharedInstance()!;
    let appId="BFEDE1F2-0A0A-0481-FF83-15D7A7201E00";
    let key="37E31FDC-6045-DA07-FFB4-25922FB3BC00";
    let v="v1";
    
    override func viewDidLoad() {

        self.view.backgroundColor = UIColor.blue
        //initilize with backendless
        
        b.initApp(appId, secret: key, version: v);
        
        //send data
        let entity:[String:Any]=["group_name":"fu fu", "course_id":"123"];
        b.data.ofTable("Groups").save(entity, response: {(res)in
            print("successfully saved");
        }, error: {(e)in
            print("failed \(e?.faultCode)");
        });
        
        b.data.ofTable("Groups").find({(res)in
            let data = res!.data! as! [[String:Any]];
            for d in data{
                print(d);
            }
        }, error: {(e)in
            print(e?.faultCode);
        })
        
    }


}

