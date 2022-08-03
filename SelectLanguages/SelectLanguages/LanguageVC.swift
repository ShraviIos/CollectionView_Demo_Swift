//
//  ViewController.swift
//  SelectLanguages
//
//

import UIKit
var indexPath: Int?
var selcellIndex = 0

class ViewController: UIViewController {
    @IBOutlet var lblBtn: UIButton!
    
    var colorArr:[UIColor] = [.cyan,.brown,.systemBlue,.systemMint,.systemPink,.systemBrown,.systemTeal,.systemIndigo]
    var Arr  = ["English","हिन्दी","मराठी","اردو","தமிழ்","മലയാളം","తెలుగు","ਪੰਜਾਬੀ"]
   var arrDes =  ["I like you","मैं तुम्हें पसंद करता हूं", "मला तुम्ही आवडता","میں تمہیں پسند کرتا ہوں","എനിക്ക് നിന്നെ ഇഷ്ടമാണ്","నువ్వంటే నాకు ఇష్టం","ਮੈਨੂੰ ਤੂੰ ਚੰਗਾ ਲਗਦਾ ਹੈ","నువ్వంటే నాకు ఇష్టం"]
    var ArrSelectLang = ["Seelect Language","भाषा का चयन करें","भाषा निवडा","زبان منتخب کریں","மொழியை தேர்ந்தெடுங்கள்","ഭാഷ തിരഞ്ഞെടുക്കുക","భాషను ఎంచుకోండి","ਭਾਸ਼ਾ ਚੁਣੋ"]
    var btnArr = ["continue in english"]
  
    @IBOutlet var lblSelectLang: UILabel!
    @IBOutlet var buttonContinue: UIButton!
    @IBOutlet var lblLangDes: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    @IBAction func actionContinue(_ sender: Any) {
       
        
        
    }
}
extension ViewController: UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LanguageVCCell", for: indexPath)as! LanguageVCCell
        cell.lblLanguage.text = Arr[indexPath.row]
       
        //cell.languageView.backgroundColor = UIColor[color].indexPath
        cell.selectedImg.image = UIImage(named: "selected")
        cell.selectedImg.isHidden = false
        cell.languageView.backgroundColor = colorArr[indexPath.row]
        
        if indexPath.row == selcellIndex{
            cell.selectedImg.isHidden = false
     
            self.lblSelectLang.text = ArrSelectLang[indexPath.row]
            self.lblLangDes.text = arrDes[indexPath.row]
        }else{
            cell.selectedImg.isHidden = true
        }
        if indexPath.row == selcellIndex{
            //cell.bgContent.backgroundColor = colorArr[indexPath.item]

        }
        else{
            cell.languageView.backgroundColor = colorArr[indexPath.row]
           }

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 185, height:100)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    15
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
       5
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       // let cell1 = collectionView.cellForItem(at: indexPath)
        switch indexPath.row {
        case 0: selcellIndex = 0
            
            collectionView.reloadData()
        case 1: selcellIndex = 1
           
            collectionView.reloadData()
        case 2:selcellIndex = 2
            
            collectionView.reloadData()
        case 3:selcellIndex  = 3
           
            collectionView.reloadData()
        case 4:selcellIndex = 4
        collectionView.reloadData()
        case 5: selcellIndex = 5
          
             collectionView.reloadData()
        case 6 :selcellIndex = 6
           
            collectionView.reloadData()
        case 7:selcellIndex = 7
        
            collectionView.reloadData()
        default: collectionView.reloadData()
        }
        
        
   
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
      let cell = collectionView.cellForItem(at: indexPath)as! LanguageVCCell
        if cell.isCheck == true{
            cell.isCheck = false
            cell.selectedImg.isHidden = true
        }
    }
}

