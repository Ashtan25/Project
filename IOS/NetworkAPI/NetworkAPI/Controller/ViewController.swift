//
//  ViewController.swift
//  NetworkAPI
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var arrayJson = [dataJson]() // it will hold the data that will be retrived by Json

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
        fetchData()
    }
    func fetchData()
    {
        let url = URL(string: "https://picsum.photos/list")
        URLSession.shared.dataTask(with: url!)
        {
            (data, response , error) in
            do
            {
                if error == nil
                {
                    self.arrayJson = try JSONDecoder().decode([dataJson].self, from: data!)
//                    for abc in self.arrayJson
//                    {
//                        print(abc.author)
//                    }
//
                    
                    DispatchQueue.main.async {
                        self.collectionView.reloadData()
                    }
                }
            }
            catch
            {
                print("error in fetchdata")
            }
        }.resume()
    }

}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(arrayJson.count)
        return arrayJson.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        let imageURL = "https://picsum.photos/120/120?image=\(indexPath.row)"
        guard let url = URL(string: imageURL) else
        {
           return cell
        }
         UIImage.loadFrom(url: url)
         {
            image in
            if let image = image {
            cell.getImage(image: image)
            }
        }
    cell.getAuthorName(authorName: arrayJson[indexPath.row].author)
    return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let detail : ImagePoper =  storyBoard.instantiateViewController(withIdentifier: "ImagePoper") as! ImagePoper
        detail.openURL = arrayJson[indexPath.row].author_url
        let imageurl = "https://picsum.photos/240/320?image=\(arrayJson[indexPath.row].id+1)"
        guard let url = URL(string: imageurl) else
        {
            return
        }
        UIImage.loadFrom(url: url) { image in
            detail.imageView.image = image
        }
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
extension UIImage {
    
    public static func loadFrom(url: URL, completion: @escaping (_ image: UIImage?) -> ()) {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    completion(UIImage(data: data))
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
    }
    
}
