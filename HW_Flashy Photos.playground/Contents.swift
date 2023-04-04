import UIKit

// 藉 UIImageView 顯示圖片
let mainImage = UIImage(named: "mainImage.jpeg")
let mainImageView = UIImageView(image: mainImage)

// 設置 frame 調整位置大小
mainImageView.frame = CGRect(x: 0, y: 0, width: 1500, height: 2200)

// contentMode 使用 .scaleAspectFill （維持比例並填滿 frame 的框框，超出的部分被切掉。）
mainImageView.contentMode = .scaleAspectFill

// layer 用於渲染的。 borderWidth 邊框寬度。 borderColor 邊框顏色 (想看效果要最後設置 mainImageView)
mainImageView.layer.borderWidth = 30
mainImageView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)

// cornerRadius 圓角弧度。 clipsToBounds 顯示圓角效果。
mainImageView.layer.cornerRadius = 50
mainImageView.clipsToBounds = true


// 蝙蝠俠對話框: dialogBoxImage 對話框要放置在 batmanMessageLabel文字 的上方
let dialogBoxImage = UIImage(named: "DialogBoxImage.png")
let dialogBoxImageView = UIImageView(image: dialogBoxImage)
dialogBoxImageView.contentMode = .scaleAspectFit
dialogBoxImageView.frame = CGRect(x: 700, y: -150, width: 800, height: 800)

// addSubview 將 dialogBoxImageView 添加到 mainImageView
mainImageView.addSubview(dialogBoxImageView)

// text 展示出文字Label。 font 調整字體大小。 textColor 字體顏色
let batmanMessageLabel = UILabel(frame: CGRect(x: 850, y: 90, width: 1000, height: 200))
batmanMessageLabel.text = "喵喵喵喵電感應!"
batmanMessageLabel.font = UIFont.systemFont(ofSize: 70)
batmanMessageLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)

// addSubview 將 batmanMessageLabel 添加到 mainImageView
mainImageView.addSubview(batmanMessageLabel)

// 小丑對話框
let dialogboxOhterImage = UIImage(named: "mirror.png")
let dialogboxOhterImageView = UIImageView(image: dialogboxOhterImage)
dialogboxOhterImageView.frame = CGRect(x: 100, y: 600, width: 1000, height: 400)
mainImageView.addSubview(dialogboxOhterImageView)

// 小丑說的話
let jokerMessageLabel = UILabel(frame: CGRect(x: 300, y: 580, width: 800, height: 400))
jokerMessageLabel.text = "有沒有心動一看喵喵就知道"
jokerMessageLabel.font = UIFont.systemFont(ofSize: 50)
jokerMessageLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
mainImageView.addSubview(jokerMessageLabel)

// 舉手虎斑貓
let catImage = UIImage(named: "cat.png")
let catImageView = UIImageView(image: catImage)
catImageView.frame = CGRect(x: 5, y: 1750, width: 500, height: 500)
catImageView.contentMode = .scaleAspectFit

// catImageView 旋轉 從 UIView 的 property transform 設定，.pi 代表 180 度，所以 30 度是 .pi / 180 * 30。
catImageView.transform = CGAffineTransform(rotationAngle: .pi / 180 * 30)
mainImageView.addSubview(catImageView)

// 趴著貓
let catBreakImage = UIImage(named: "catset.png")
let catBreakImageView = UIImageView(image: catBreakImage)
catBreakImageView.frame = CGRect(x: 200, y: 470, width: 280, height: 326)
catBreakImageView.contentMode = .scaleAspectFit
mainImageView.addSubview(catBreakImageView)

// 一群貓
let catTogtherImage = UIImage(named: "cattogther.png")
let catTogtherImageView = UIImageView(image: catTogtherImage)
catTogtherImageView.frame = CGRect(x: 820, y: 1700, width: 846, height: 545)
catTogtherImageView.transform = CGAffineTransform(rotationAngle: .pi / 180 * -30)
catTogtherImageView.contentMode = .scaleAspectFit
mainImageView.addSubview(catTogtherImageView)

// 黑貓
let blackCatImage = UIImage(named: "blackcat.png")
let blackCatImageView = UIImageView(image: blackCatImage)
blackCatImageView.frame = CGRect(x: 40, y: 20, width: 532, height: 357)
blackCatImageView.contentMode = .scaleAspectFit

// 若是將 scale 的 y 設為 -1，則會變成圖片維持原本的高度，但變成鏡像上下翻轉。
blackCatImageView.transform = CGAffineTransform(scaleX: 1, y: -1)
mainImageView.addSubview(blackCatImageView)

// 貓的對話框
let catDialogBoxImage = UIImage(named: "mirror.png")
let catDialogBoxImageView = UIImageView(image: catDialogBoxImage)
catDialogBoxImageView.contentMode = .scaleAspectFit
catDialogBoxImageView.frame = CGRect(x: 250, y: 1400, width: 800, height: 800)
mainImageView.addSubview(catDialogBoxImageView)

// 測試利用 sizeToFit 讓 label 的大小剛好顯示文字，以及多行文字
let catMessageLabel = UILabel()
catMessageLabel.text = "他們到底嗑了什麼！\n也給我來一點！"
catMessageLabel.font = .systemFont(ofSize: 50)
catMessageLabel.numberOfLines = 0

// 呼叫 sizeToFit，label 的高度剛好等於多行文字的高度。
catMessageLabel.sizeToFit()

// catMessageLabel 利用 CGAffineTransform 的 init(translationX:y:) 產生位移的 CGAffineTransform
catMessageLabel.transform = CGAffineTransform(translationX: 450, y: 1700)

mainImageView.addSubview(catMessageLabel)


mainImageView

