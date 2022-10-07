//
//  ViewController.swift
//  DinoDictionary
//
//  Created by James Roh on 2022/09/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dinoNames = [String]()
    var dinoImages = [UIImage]()
    var dinoDesc = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        dinoNames.append("알로사우르스")
        dinoNames.append("브라키오사우르스")
        dinoNames.append("오비랍토르")
        dinoNames.append("파키케팔로사우르스")
        dinoNames.append("프테라노돈")
        dinoNames.append("스피노사우르스")
        dinoNames.append("스테고사우르스")
        dinoNames.append("티라노사우르스")
        dinoNames.append("트리케라톱스")
        dinoNames.append("벨로시랍토르")
 
        dinoDesc.append("""
        알로사우르스
         1869년 미국 콜로라도에서 처음으로 화석이 발견되었으며 쥐라기 시대의 제왕이라고 불리는 공룡입니다. 머리와 입이 커서 작은 동물은 통째로 삼킬 수 있었습니다. 또 성격이 아주 포악하여 자신보다 몸집이 큰 초식공룡도 잡아먹었고 심지어 작은 육식공룡까지 잡아 먹었습니다.

         거대한 초식공룡인 아파토사우루스의 뼈에 알로사우루스의 이빨 자국이 나 있는 화석이 발견되기도 했습니다. 그래서 학자들이 지금까지와는 다른 도마뱀, 특별한 도마뱀이라는 뜻으로 이름을 지었습니다.

         몸길이는 11-12m 정도이고 몸무게는 1-1.5톤 정도로 추정됩니다. 튼튼한 발톱이 3개씩 달려 있어서 먹이를 꽉 붙잡을 수 있었습니다. 2족 보행을 하며 눈두덩이를 이루는 뼈가 부풀어 올라 있습니다. 이는 햇빛으로부터 커다란 눈을 보호해주는 역할을 한 것으로 보입니다. 알로사우루스는 백악기가 되면서 기가노토사우루스(남아메리카)나 아크로칸토사우루스(북아메리카)로 진화했을 것이라는 주장도 있습니다.

         발견된 화석으로 보아 큰 몸집의 리더를 중심으로 5-6마리가 떼지어 다니며 사냥했을 것으로 추측됩니다. 쥐라기에 살았던 육식공룡 중에는 가장 큰 편에 속합니다.
        """)
        dinoDesc.append("""
        브라키오사우르스
         대개 공룡은 앞다리가 뒷다리에 비해 짧은데 비해 이 공룡은 앞다리가 더 길어 ‘팔 도마뱀’이라는 이름이 붙었습니다. 아주 무거운 공룡으로 긴 목과 긴 꼬리를 가지고 있었습니다. 긴 목으로는 높은 곳의 나뭇잎을 잘 먹을 수 잇었고 꼬리로는 육식공룡으로부터 자신을 방어했습니다.

         브라키오사우루스는 머리 부분에 튀어나온 콧구멍을 가지고 있습니다. 이 콧구멍은 냄새를 맡는 데 사용하기도 했지만 목이 길어 강한 햇빛을 그대로 받아야 했던 머리를 식히기 위해 콧구멍이 커진 것으로 보입니다.

         몸에 비해 머리는 작고 목은 비정상적으로 깁니다. 몸무게는 20톤 정도로 추정되며 몸집으로 보면 하루에 1,500kg의 먹이를 먹었다는 계산이 나옵니다. 보통 나무 꼭대기의 잎을 따 먹었으며, 먹이를 찾아 새로운 곳으로 무리를 지어 이동했습니다.
        """)
        dinoDesc.append("""
        오비랍토르
        오비랍토르는 몽골에서 발견된 백악기 공룡입니다. 처음에 화석이 발견되었을 때 다른 공룡의 알과 함께 발견되어 ‘알 도둑’이라는 이름이 붙여졌습니다. 하지만 나중에 그 알이 오비랍토르의 알임이 밝혀졌습니다.

         또 알을 품고 있는 다른 화석이 발견되기도 했습니다. 결국 알 도둑이 아니라 모성애가 강한 공룡이었던 셈입니다. 주둥이가 새의 부리처럼 생겼고 이빨이 없으며 턱이 강해 알을 파먹기에 알맞게 생겨서 알 도둑으로 오해하게 되었습니다.

         육식 또는 잡식성 공룡으로 2족 보행을 했으며 가볍게 몸을 움직일 수 있었습니다. 머리 위에는 뼈로 된 볏을 가지고 있으며 이빨이 없는 새의 부리와 비슷한 주둥이를 가졌습니다. 앞발가락에는 긴 발톱이 있어서 물건을 잡기에 유용했습니다.
        """)
        dinoDesc.append("""
        파키케팔로사우르스
         백악기 후기의 초식 공룡으로 머리뼈의 두께가 20cm이상 되는 아주 단단한 머리를 가지고 있습니다. 벗겨진 머리가 위로 둥글게 튀어 나와 있으며 머리 주변에는 혹같이 생긴 돌기가 돋아나 있습니다. 딱딱하고 튼튼한 머리뼈는 화석으로 남기 쉬워서 상당수가 발견되고 있습니다.

         이 특이한 머리의 용도는 무리의 대장을 뽑을 때 싸움에서 사용한 것이라는 설과 육식 공룡의 공격에 대한 방어용 무기라는 설이 있습니다.
        """)
        dinoDesc.append("""
        프테라노돈
         익룡 중 가장 널리 알려져 있으며, ‘날개가 있고 이빨이 없다’는 이름을 가졌습니다. 이빨이 없었기 때문에 머리가 가벼웠고 평형을 위한 긴 꼬리가 필요치 않았을 것으로 보입니다. 글라이더처럼 바람을 타고 오랜 시간 동안 날 수 있었던 것 같습니다.

         바닷가 절벽에서 살던 프테라노돈은 굉장히 먼 바다까지 날아가서 물고기를 잡아먹었습니다. 육지에서 100km나 떨어진 바다에서 사는 물고기를 잡아먹은 흔적이 발견되기도 했습니다.

         이빨이 없어서 턱 근육이 발달하지는 않았습니다. 머리 뒤쪽으로 꽤 길고 뾰족한 볏이 있었는데 이 볏은 하늘을 날 때 방향과 균형을 잡는 역할을 했습니다. 사냥을 할 땐 수면 위를 낮게 날다가 긴 주둥이로 수면 가까이 올라온 물고기를 낚아채 먹었습니다.

         부리는 길고 뿔처럼 단단한 꼬투리로 덮여 있으며 펠리컨처럼 물고기를 저장할 수 있는 주머니를 갖고 있습니다. 일부 학자들은 프테라노돈이 단순히 기류나 온도로 인한 상승운동으로 날았던 것이 아니라 나는 동안 스스로 에너지를 발생시킬 수 있는 온혈 동물이었다고 보고 있습니다.
        """)
        dinoDesc.append("""
        스피노사우르스
        서아프라카 지역과 이집트에서 화석이 발견되었는데 몸길이는 약 12m 정도이며 등뼈가 솟아서 생긴 부채 모양의 돌기는 1.8m 정도 됩니다. 이 돌기는 근육과 근육을 연결시켜 주고 실핏줄이 많이 있어서 체온을 조절하는 역할을 했던 것으로 보입니다.

         몸매가 날씬하고 뒷다리가 튼튼해서 사냥할 때 매우 재빠르게 움직였습니다. 주로 물가에 살면서 물고기를 잡아 먹었습니다. 머리는 악어처럼 길쭉하게 생겼고 이빨은 송곳처럼 날카롭습니다.
        """)
        dinoDesc.append("""
        스테고사우르스
        알려진 검룡류 중 가장 큰 초식동물로 쥐라기 후기에 북아메리카에서 살았습니다. 몸집에 비해 가장 작은 뇌를 가지고 있는 공룡입니다. 등에 뼈로 된 골판이 늘어서 있는데 이 골판은 오각형 모양의 열쌍 정도가 나 있었습니다. 골판 중 가장 긴 것은 80cm 정도 입니다.

        이 골판에는 근육이 붙어 있어 움직일 수 있었고, 실핏줄의 흔적이 남아 있어 체온을 조절하는 구실을 하였을 것으로 추정됩니다. 꼬리는 단단한 근육질로 되어 있어서 상당히 강인했지만 유연하지는 않았습니다. 꼬리 끝에 뼈로 된 가시는 자신을 지키기 위한 무기로 보입니다.
        """)
        dinoDesc.append("""
        티라노사우르스
        티라노사우루스는 현재 우리가 알고 있는 공룡 중에서 가장 큰 공룡입니다. 북아메리카와 아시아에서 발견됩니다. 몸길이가 14m, 키는 5.5m, 머리크기만 1.5m에 달하며 몸무게는 7톤에 이릅니다. 이름은 폭군 도마뱀이라는 뜻으로 이름만으로도 대단히 난폭하게 날뛰는 무시무시한 공룡이었음을 알 수 있습니다.

         시속 7-8km로 돌아다니거나 시속 45-50km로 먹이를 뒤쫓았을 것으로 추정됩니다. 최대 길이가 20cm나 되는 날카로운 이를 가지고 있었습니다. 크고 튼튼한턱을 벌려 커다랗고 흰 이빨로 먹잇감을 깊숙이 물었습니다. 이빨 가장자리는 톱처럼 삐죽삐죽해서 먹잇감의 뼈까지도 우적우적 씹어 먹을 수 있었던 것으로 보입니다.

         1990년에 미국에서 거의 완전한 골격이 발굴되었는데 뒷다리는 사람 키의 두 배 정도로 큰 데 비해 앞다리는 사람의 팔과 거의 비슷한 크기였습니다. 앞다리는 도망가는 먹이를 잡아두는 갈고랑이 역할을 했다는 설이 유력합니다. 앞다리가 짧은 이유는 강력한 입과 거대한 뒷다리만으로도 먹이 사냥이 충분했기 때문이라는 설과 엎드렸다가 일어날 때에 미끄러지지 않도록 앞다리로 땅을 짚기 위해 짧아졌다는 설이 있습니다.

         티라노사우루스의 덩치가 크기 때문에 스스로 사냥할 수 없었을 것이라고 생각하는 사람들도 있지만 뒷다리와 꼬리에 강한 근육이 있었고 눈도 앞쪽을 향해 있어 사물을 입체적으로 볼 수 있었으므로 적극적으로 사냥을 했을 것으로 생각됩니다.

        """)
        dinoDesc.append("""
        트리케라톱스
        트리케라톱스는 뿔이 있는 공룡들 중에서 가장 몸집이 크고 만화나 영화에 자주 등장하는 유며한 공룡입니다. 무섭게 생긴 모습과 달리 성격은 온순합니다. 눈 위에 뿔이 2개 있고 코 위에 뿔이 1개 있어 ‘세 개의 뿔이 있는 얼굴’이라는 이름이 붙었습니다.

         목 주변의 프릴에는 삐죽삐죽한 돌기가 솟아나 있습니다. 트리케라톱스는 프릴까지 포함하면 머리 길이만 2m나 되는 굉장한 머리를 가졌습니다.

         머리에 난 3개의 예리한 뿔은 적을 위협하는데 사용되었을 것으로 보입니다. 네 다리로 걸었는데 네 다리 모두 튼튼하여 무거운 몸을 지탱할 수 있었습니다. 공격자에 맞서기 위해 무리지어 생활하였습니다.

         거대한 몸에 엄청난 돌진력까지 가지고 있었던 트리케라톱스는 초식공룡이었지만 매우 강한 공룡이었습니다. 얼굴 모양이 조금씩 다른 종류가 15 종류나 확인되었고 병을 앓았거나 상처를 입은 흔적이 있는 화석도 발견되었습니다.
        """)
        dinoDesc.append("""
        벨로시랍토르
         1971년 몽골에서 벨로키랍토르가 프로토케라톱스의 머리를 꽉 쥐고 있는 모습이 화석으로 발견되었습니다. 아마도 벨로키랍토르가 프로토케라톱스를 잡아먹으려고 공격할 때 갑작스러운 모래 폭퐁에 덮여 죽었던 것으로 보입니다.

         몸집은 작지만 날쌘돌이인 벨로키랍토르는 무리를 지어 사냥을 했으며 먹잇감을 구석에 몰아넣고 뒷다리의 날카로운 발톱을 이용하여 높이 뛰어올라 내려찍었습니다. 머리도 좋고 성질이 사나워 ‘날쌘 도둑’이라는 이름이 붙었습니다.

         머리부분이 길고 날씬한 모습으로 날카로운 이빨을 가지며 뒷다리의 두 번째 쇠고랑이 발톱을 가지고 재빠르게 움직였습니다. 가벼운 몸과 큰 눈 등의 특징에서 맹렬한 사냥꾼으로 추측됩니다.
        """)
        
        
        dinoImages.append(UIImage(named: "alosa.jpg")!)
        dinoImages.append(UIImage(named: "brakio.png")!)
        dinoImages.append(UIImage(named: "obirap.jpeg")!)
        dinoImages.append(UIImage(named: "paki.jpeg")!)
        dinoImages.append(UIImage(named: "ptera.jpeg")!)
        dinoImages.append(UIImage(named: "spino.jpg")!)
        dinoImages.append(UIImage(named: "stego.jpg")!)
        dinoImages.append(UIImage(named: "tirano.jpg")!)
        dinoImages.append(UIImage(named: "trikera.jpg")!)
        dinoImages.append(UIImage(named: "velosi.jpg")!)
        
        for dino in dinoNames {
            print(dino)
        }
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dinoNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //textView의 컨텐츠 설정
        var content = cell.defaultContentConfiguration()
        content.text = dinoNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    /*
     tableView로 segue를 사용하여 다른 ViewController에 데이터를 보내는 방법
     */
    
    //2. VC로 보낼 데이터를 담을 변수 선언
    var chosenDinoName = ""
    var chosenDinoImage = UIImage()
    var chosenDinoDesc = ""
    
    //0. tableView의 선택한 row의 이벤트를 선언 - didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //3. 선언한 변수에 선택된 데이터를 담는다
        chosenDinoName = dinoNames[indexPath.row]
        chosenDinoImage = dinoImages[indexPath.row]
        chosenDinoDesc = dinoDesc[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)//1. segue로 viewContoller를 연결
    }

    //4. segue가 호출될때 미리 실행되는 함수 선언
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //5. segue가 toDetailsVC일 경우 - 다른 VC에 연결할수도 있으므로 명시적으로 선언
        if segue.identifier == "toDetailsVC" {
            //6. 연결되는 VC의 변수에 데이터를 보낸다
            let destinationVc = segue.destination as! DetailsVC
            destinationVc.selectDinoName = chosenDinoName
            destinationVc.selectDinoImage = chosenDinoImage
            destinationVc.selectDinoDescripton = chosenDinoDesc
        }
    }
    
    /*
     tableView row delete
     */
    //tableView - commit
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.dinoNames.remove(at: indexPath.row)
            self.dinoImages.remove(at: indexPath.row)
            self.dinoDesc.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    
    
}

