<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과페이지</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/result.css">
</head>
<body>
<%
String selectOne = (String) request.getAttribute("selectOne");
String selectTwo = (String) request.getAttribute("selectTwo");
String selectThree = (String) request.getAttribute("selectThree");
String selectFour = (String) request.getAttribute("selectFour");
String selectFive = (String) request.getAttribute("selectFive");

String algorithmResult = selectOne + selectTwo + selectThree + selectFour + selectFive;
String plantName = "";
String plantContent = "";
String plantImg = "";


if (algorithmResult.equals("00000")) {
    plantName = "극락조";
    plantContent = "이국적 분위기를 연상케 하는 극락조는 인테리어 식물로 인기가 많아요. 병충해도 적어서 초보자들도 키우기 쉽답니다. 극락조 중 잎이 큰 친구는 여인초 라고 불려요. 여인초는 꽃이 안핀답니다.직사광선을 받으면 잎 끝이 탈 수 있어요. 밝은 곳이나 반음지에서 키우는걸 추천합니다. 👍극락조는 뿌리가 굵은 식물이에요. 뿌리가 물을 많이 저장할 수 있어서 화분의 흙이 빠삭하게 말랐을 때 물 주는게 좋아요.";
    plantImg = "../../assets/img/algorithm/00000.jpg";
} else if (algorithmResult.equals("00001")) {
    plantName = "자미오쿨카스";
    plantContent = "돈이 들어오는 나무 라는 뜻을 가진 금전수는 돈나무로도 불리고 있어요. 이름 덕분에 개업식, 집들이용으로 인기만점이랍니다! 👍선물용으로 인기 많은 이유는 키우기 쉽기 때문이기도 해요. 어느정도의 빛이 있으면 어디에서도 잘 자라요. 금전수는 알뿌리 식물로, 뿌리에 물을 저장하기 때문에 물을 자주 주면 안돼요! 🙅‍♀️ 속 흙까지 말랐을 때 흠뻑 주세요. 금전수는 작은 화분에 심으면 뿌리 때문에 화분이 깨질 수 있어요. 키운지 오래됐다면 꼭 분갈이 해주세요!";
    plantImg = "../../assets/img/algorithm/00001.jpg";
} else if (algorithmResult.equals("00010")) {
    plantName = "드라세나 마지나타";
    plantContent = "드라세나 마지나타는 길게 뻗은 줄기가 매력적인 식물이에요. 줄기에 상처가 나면 빨갛게 수액이 흘러서 용혈수라고도 불려요. 식물엔 문제없으니 걱정마세요! 🙌 빛이 부족하면 잎이 노랗게 변하고 떨어져요. 실내에서 키울 땐 적당한 빛이 있어야 한답니다. 마지나타는 겉 흙이 충분히 말랐을 때 흠뻑 물 주는게 좋아요. 배수가 중요한 식물이니 분갈이 할 땐 흙에 난석을 섞어주는게 좋답니다. ";
    plantImg = "../../assets/img/algorithm/00010.jpg";
} else if (algorithmResult.equals("00011")) {
    plantName = "호야";
    plantContent = "호야는 덩굴성 식물로 나무나 바위에 붙어서 자랄 수 있는 식물이에요. 행잉플랜트로 키울수 있답니다 👍 직사광선을 싫어해서 반음지에 키우기 적합해요. 무늬의 색상이 핑크색, 흰색, 연두색 등 다양하게 존재해요! 물은 흙이 빠삭하게 말랐을 때 흠뻑 주는게 좋아요. 여러 해 키우다 보면 예쁜 꽃도 볼 수 있답니다 🌺";
    plantImg = "../../assets/img/algorithm/00011.jpg";
} else if (algorithmResult.equals("00100")) {
    plantName = "칼라데아 진저";
    plantContent = "진녹색의 잎에 선명한 분홍색의 빗살무늬가 매력적인 칼라데아 진저는 따뜻한 남아메리카가 고향이기 때문에 추위에는 약한 편이고, 촉촉한 공중습도를 좋아해요. 가끔 샤워하실 때 화장실로 데려가 스팀을 맞게 해주시면 아주 좋아할거예요. 칼라데아 진저는 낮에는 햇빛을 많이 받기 위해 잎을 내려 활짝 펴고 밤에는 다시 하늘 위로 오므리는 변화를 보인답니다. 움직임을 관찰하는 재미가 있는 식물이예요.";
    plantImg = "../../assets/img/algorithm/00100.jpg";
} else if (algorithmResult.equals("00101")) {
    plantName = "문샤인 산세베리아";
    plantContent = "문샤인은 산세베리아 종류 중 하나에요. 은빛의 토끼 귀를 닮은 잎 때문에 선물용으로 인기있답니다. 빛을 좋아해서 양지나 반음지에 키우는 것을 추천해요. 그늘에서 오래 키울 경우 잎이 얇아져요! 문샤인은 남아메리카에서 온 친구에요. 추위에 약하답니다. 겨울엔 따뜻한 곳으로 옮겨주세요. 과습에 취약해서 화분의 흙이 빠삭하게 말랐을 때 물 주는게 좋아요! 🙌";
    plantImg = "../../assets/img/algorithm/00101.jpg";
}else if (algorithmResult.equals("00110")) {
    plantName = "에크메아 파시아타";
    plantContent = "에크메아 파시아타는 파인애플과 아나나스 종류중 하나에요. 잎에 뽀얀가루가 묻어있는데 가루분이 닦이지 않도록 관리해야 해요. 과습에 약해서 겉흙이 빠삭하게 말랐을 때 물 주는게 좋아요!빛을 좋아하지만 직사광선은 싫어해요. 반양지에서 키워 주세요. 👏";
    plantImg = "../../assets/img/algorithm/00110.jpg";
}else if (algorithmResult.equals("00111")) {
    plantName = "러브체인";
    plantContent = "러브체인은 하트모양의 잔잔한 잎이 매력적인 친구에요. 부부의 금슬이 좋으면 잘 자란다는 속설이 있어요 💖 음지에서 키우면 줄기가 가늘어지고 끊어져요. 양지에서 해를 많이 보면 잎이 자주빛으로 물든답니다. 러브체인은 알뿌리 식물이라 물을 많이 주면 안돼요! 화분의 흙이 완전히 마르면 물을 주세요 🙌";
    plantImg = "../../assets/img/algorithm/00111.jpg";
}else if (algorithmResult.equals("01000")) {
    plantName = "몬스테라";
    plantContent = "몬스테라는 잎이 자랄 수록 크고 멋스럽게 갈라지는 식물입니다. 몬스테라는 빛이 부족하면 성장이 더디고 마디가 길어져 밉게 자랍니다. 해를 직접보면 잎이 탈수 있어요! 해가 걸러들어오는 반음지에서 키워 주세요. 겨울철이 되면 생장이 둔화되어 겨울잠을 잔답니다. 물은 2주일에 한 번씩 흠뻑 주시는게 좋아요! 👏";
    plantImg = "../../assets/img/algorithm/01000.jpg";
}else if (algorithmResult.equals("01001")) {
    plantName = "필레아 페페로미아";
    plantContent = "필레아 페페로미아는 페페종류중 하나에요. 물과 빛을 좋아하는 식물이랍니다. 필레아는 해를 많이 받을수록 잎이 작고 촘촘하게 자라요. 그렇지 않으면 잎줄기는 길어자고 잎이 커지면서 미워진답니다.직사광선은 잎이 화상을 입을 수 있으니 해가 걸러들어오는 곳에 두는게 좋아요 👍물은 겉 흙이 빠삭하게 말랐을 때 주는게 좋아요.";
    plantImg = "../../assets/img/algorithm/01001.jpg";
}else if (algorithmResult.equals("01010")) {
    plantName = "루비 고무나무";
    plantContent = "루비 고무나무는 수채화처럼 붉게 물든 잎이 매력적인 식물이에요. 고무나무 종류는 초보자도 쉽게 키울 수 있어서 인기도 많답니다! 과습에 예민해서 겉 흙이 바싹 말랐을 때 흠뻑 물주는게 좋아요. 분갈이 할 땐 난석을 섞어서 배수층을 만들어 주는걸 추천해요. 👍어디서든 잘 자라는 편 이지만 적당한 빛을 보는게 좋아요. 빛을 못 보면 색이 옅어진답니다.";
    plantImg = "../../assets/img/algorithm/01010.jpg";
}else if (algorithmResult.equals("01011")) {
    plantName = "알로카시아 아마조니카";
    plantContent = "아마조니카는 알로카시아 종류 중 하나에요. 우리나라에선 거북 알로카시아로도 불려요. 뾰족한 잎모양에 흰 무늬가 매력적인 친구에요. 밝은 곳에 두면 잎이 탈 수 있어요! 반음지에 두고 키우는게 좋답니다. 👍물은 겉 흙이 빠삭하게 말랐을 때 흠뻑 주는게 좋아요!";
    plantImg = "../../assets/img/algorithm/01011.jpg";
}else if (algorithmResult.equals("01100")) {
    plantName = "올리브나무";
    plantContent = "올리브나무는 인테리어용 식물로 급부상하면서 카페에 가면 많이 볼 수 있는 식물이에요. 항상 푸른 잎을 유지하면서 열매도 맺으니 고마운 친구에요!👍 빛이 부족하면 웃자라거나 잎이 크게 자란답니다. 물이 부족하면 잎이 동그랗게 말리고 끝이 까맣게 타요. 속 흙이 바싹 말랐을 때 충분한 물을 줘야해요. 가지치기는 2~3월에 해주는게 좋아요. 너무 자주하면 열매를 보기 힘들 수 있어요!";
    plantImg = "../../assets/img/algorithm/01100.jpg";
}else if (algorithmResult.equals("01101")) {
    plantName = "유칼립투스";
    plantContent = "유칼립투스는 상쾌한 향이 나서 청량감을 느낄 수 있는 식물이에요. 종류도 700여 종이 넘고 향도 다양해요. 유칼립투스는 햇빛과 바람을 좋아하는 친구에요. 실내에서 키울경우 꼭 바람이 잘 통하는 곳에서 키워야 해요! 건조에 강한 친구지만 물이 부족하면 잎이 고꾸라지고 말라요. 겉 흙이 바싹 말랐을 때 흠뻑 물 주세요. 유칼립투스는 배수가 중요해요. 실내에서 카운다면 통기성 좋은 토분에 심는걸 추천드려요! 👍";
    plantImg = "../../assets/img/algorithm/01101.jpg";
}else if (algorithmResult.equals("01110")) {
    plantName = "뱅갈고무나무";
    plantContent = "뱅갈고무나무는 인테리어용 화분 선물로 가장 인기 많은 식물이에요. 레몬빛 잎이 매력적인 식물이랍니다. 만약 잎이 점점 초록빛으로 변한다면 빛이 부족한지 살펴봐야 해요. 뱅갈고무나무는 목 마를 때 잎이 쳐지는 친구에요. 잎이 쳐져있을 때 물을 주는게 좋아요! 🙌";
    plantImg = "../../assets/img/algorithm/01110.jpg";
}else if (algorithmResult.equals("01111")) {
    plantName = "필로덴드론 버킨";
    plantContent = "버킨은 필로덴드론과 식물중 하나로 잎의 흰 무늬가 매력적인 식물이에요. 하얀 무늬는 빛이 부족할 때 초록빛으로 변해요. 적당한 빛을 받고 자라면 오밀조밀 짱짱하게 자란답니다. 천남성과 식물로 줄기에서 뿌리가 자랄 수 있어요. 걱정하지 마세요! 잘못된게 아닌 자연스러운 현상이에요! 🙌 버킨은 목 마를 때 줄기부분이 말라요. 겉 흙이 바싹 말랐을 때 흠뻑 주세요.";
    plantImg = "../../assets/img/algorithm/01111.jpg";
}else if (algorithmResult.equals("10000")) {
    plantName = "아레카야자";
    plantContent = "아레카야자는 잘게 갈라진 잎 덕분에 이국적인 매력을 느낄 수 있는 식물이에요. 🌴 잎이 얇아서 햇빛을 바로 보게되면 끝이 탈 수 있어요. 반음지에서 키우는걸 추천합니다! 물이 부족하면 잎부터 줄기가 마르면서 쪼그라들어요. 겉 흙이 말랐을 때 충분히 주세요. 물을 너무 자주 준다면 잎이 노랗게 변할 수 있어요!";
    plantImg = "../../assets/img/algorithm/10000.jpg";
}else if (algorithmResult.equals("10001")) {
    plantName = "에크메아 파시아타";
    plantContent = "에크메아 파시아타는 파인애플과 아나나스 종류중 하나에요. 잎에 뽀얀가루가 묻어있는데 가루분이 닦이지 않도록 관리해야 해요. 과습에 약해서 겉흙이 빠삭하게 말랐을 때 물 주는게 좋아요! 빛을 좋아하지만 직사광선은 싫어해요. 반양지에서 키워 주세요. 👏";
    plantImg = "../../assets/img/algorithm/10001.jpg";
}else if (algorithmResult.equals("10010")) {
    plantName = "맛상게아나";
    plantContent = "맛상게아나는 옥수수 잎을 닮았다고 Corn plant라고 불리는 식물이에요. 병충해에도 강화고 공기정화 능력도 최고에요! 적당한 빛만 있어도 잘 자라는 친구랍니다. 👍 실내에서 키운다면 과습에 주의해야해요. 물은 겉 흙이 바싹 말랐을 때, 흠뻑 주세요. 조금씩 자주 주면 웃자랄 수 있어요!";
    plantImg = "../../assets/img/algorithm/10010.jpg";
}else if (algorithmResult.equals("10011")) {
    plantName = "스파트필름";
    plantContent = "스파트필름은 계절마다 매력적인 흰 꽃이 피는 식물이에요. 생명력이 강해서 처음 식물을 키우는 사람에게 강력 추천하는 식물 1순위랍니다. 👍 꽃이 보고 싶다면 꼭 양지에서 키워야해요. 빛이 충분하지 않다면 꽃을 피울 힘이 사라져요. 스파트필름은 물이 부족할 때 잎이 축 쳐져요. 걱정마세요! 죽은게 아니에요! 🙌 잎이 쳐져있을 때 물을 흠뻑 주면 줄기가 다시 빳빳해진답니다.";
    plantImg = "../../assets/img/algorithm/10011.jpg";
}else if (algorithmResult.equals("10100")) {
    plantName = "필로덴드론 콩고";
    plantContent = "콩고는 크고 무성한 푸른 잎이 매력적인 식물이에요. 생명력이 강해서 초보자에게 강추하는 친구에요 👍 콩고는 천남성과라서 가끔 줄기에서 뿌리가 자랄 수 있어요. 걱정하지 마세요! 식물에겐 문제 없답니다. 줄기에서 뻗어나온 뿌리가 너무 보기 싫다면? 잘라내주셔도 괜찮아요. 적당한 햇빛을 보는게 좋아요. 물은 겉 흙이 말랐을 때 흠뻑 주세요. 👏";
    plantImg = "../../assets/img/algorithm/10100.jpg";
}else if (algorithmResult.equals("10101")) {
    plantName = "아이스톤";
    plantContent = "아이스톤은 크로톤 종류 중 하나로, 화려한 핑크빛 잎을 자랑하는 식물이에요. 충분한 햇빛을 받아야만 잎이 빨갛게 물들어요. 만약 잎이 초록빛으로 변한다면 빛이 부족한지 살펴봐야 해요. 아이스톤은 목 마르면 잎을 추욱 늘어뜨리는 친구에요. 잎이 쳐져있을 때 물을 주는게 좋아요! 🙌";
    plantImg = "../../assets/img/algorithm/10101.jpg";
}else if (algorithmResult.equals("10110")) {
    plantName = "스투키";
    plantContent = "스투키는 산세베리아의 한 종류로, 건조한 아프리카 동부가 원산지인 다육식물이에요. 스투키는 해당 형상 이상으로 잘 자라지 못하며 점점 굵기도 가늘어지게되는데, 번식욕구인지 계속 키우다 보면 굵은 구근화 뿌리를 옆으로 치솟게 만들어 새싹을 형성해요.  참고로 분갈이 때 뿌리에 잔상처가 생기기에 1~2주 정도는 물을 주지 말아야 무난하게 잘 큰답니다👍";
    plantImg = "../../assets/img/algorithm/10110.jpg";
}else if (algorithmResult.equals("10111")) {
    plantName = "립살리스 트리고나";
    plantContent = "립살리스 트리고나는 잎 단면이 세모 모양인 특이한 식물이에요. 삐죽삐죽 세모모양의 기둥이 아래로 흘러 내리면서 자라는 모습이 특이해 많은 사랑을 받고 있어요. 립살리스는 물을 자주 주지 않아도 되고 키우기 까다롭지 않은 순둥이 식물이랍니다.  독성이 없어 반려동물이 있는 집에서도 안심하고 키울 수 있어요. 🙌";
    plantImg = "../../assets/img/algorithm/10111.jpg";
}else if (algorithmResult.equals("11000")) {
    plantName = "바로크 벤자민";
    plantContent = "둥글게 말린 잎이 특징이에요 공기 정화 역할을 해주고 빛 조절이 까다롭지 않아 실내에서 키우기 매우 좋아요! 단, 줄기를 잘랐을 때 독성을 가진 유액이 나오므로 유아, 반려동물을 키운다면 주의하셔야 해요🙌 햇빛 조절이 까다롭지 않아 반양지에서도 잘 자란답니다.";
    plantImg = "../../assets/img/algorithm/11000.jpg";
}else if (algorithmResult.equals("11001")) {
    plantName = "율마";
    plantContent = "북아메리카가 원산지인 관엽식물로, 본래는 몬테레이 사이프러스라고 부르는 종을 라임색을 띄는 품종으로 만든 것이에요. 물과 햇빛 및 통풍관리를 소홀히하면 간단하게 시들어버리기 때문에 육성 난이도가 다소 높은 식물이에요 햇빛을 좋아하지만 저온지대를 선호하고, 습기를 유지해줘야 하지만 통풍 역시 잘 되어야 잘 자란답니다.🙌";
    plantImg = "../../assets/img/algorithm/11001.jpg";
}else if (algorithmResult.equals("11010")) {
    plantName = "파키라";
    plantContent = "원산지는 멕시코와 남아메리카 지역이고 주로 실내 공기정화식물로 많이 키워요. 화초 중에서 가장 이국적인 맛을 풍기며 잘 알려지지 않은 사실로, 나무 중에 가장 큰 꽃을 피워요. 뿌리가 매우 부실하고 줄기가 굵은 나무라서 물을 너무 많이 주면 오히려 독이 된다고 하며, 화분이 작아야 과습을 피할 수 있답니다.";
    plantImg = "../../assets/img/algorithm/11010.jpg";
}else if (algorithmResult.equals("11011")) {
    plantName = "스킨답서스";
    plantContent = "세계에서 가장 인기 있는 화초로, 대한민국에서는 국민 화초라고 불릴 정도로 많이 키웁니다. 키우기가 쉬워 입문자에게 좋습니다. 스킨답서스은 습윤한 환경을 필요로 합니다. 봄, 여름, 가을에는 화분 토양을 촉촉하게 유지하고 여름에는 스킨답서스에게 매일 물을 주세요. 🙌";
    plantImg = "../../assets/img/algorithm/11011.jpg";
}else if (algorithmResult.equals("11100")) {
    plantName = "피토니아";
    plantContent = "피토니아는 남미와 페루의 열대우림에 서식하는 식물이에요. 빛이 적은 실내에서도 잘 자라고, 공기 중의 톨루엔을 제거하는 능력이 뛰어난 공기정화식물이랍니다.  음이온 방출량이 많고 상대습도 증가량도 높아 공부방에 놓으면 집중력을 높여주고, 침실에 놓으면 습도를 조절해주는 팔방미인 식물이에요. 식물체에 독성이 없어 반려동물에게도 안전하고, 실내 온도만 따뜻하게 유지해주시면 초보가드너도 건강하게 잘 키울 수 있는 식물입니다.🙌";
    plantImg = "../../assets/img/algorithm/11100.jpg";
}else if (algorithmResult.equals("11101")) {
    plantName = "아글라오네마 스노우 사파이어";
    plantContent = "아글라오네마는 따뜻한 온도와 촉촉한 습도를 좋아해요. 주변 공기를 촉촉하게 관리해주고, 직접적인 강한 빛은 피해주면 누구나 쉽게 키울 수 있답니다. 동남아시아에서 온 스노우 사파이어는 따뜻한 온도를 좋아하고 촉촉한 습도를 좋아하는 공기정화 식물이에요. 공기중의 포름알데히드와 자일렌을 제거하고, 실내 습도를 높여주는 능력을 가지고 있어요.  부귀, 행운, 행복을 뜻해 선물로도 아주 좋은 식물이랍니다.🙌";
    plantImg = "../../assets/img/algorithm/11101.jpg";
}else if (algorithmResult.equals("11110")) {
    plantName = "후마타 고사리";
    plantContent = "후마타 고사리는 털이 있는 근경 부분이 독특한 고사리에요. 성장하면서 점점 근경이 퍼져 나가는데, 거미발을 닮았어요. 습한 곳을 좋아하지만 다소 건조한 곳에서도 적응을 잘 하는 편이에요.  물만 말리지 않는다면 사계절 푸르고 하늘하늘한 후마타 고사리를 볼 수 있을거에요.";
    plantImg = "../../assets/img/algorithm/11110.jpg";
}else if (algorithmResult.equals("11111")) {
    plantName = "마오리 코로키아";
    plantContent = "마오리 코로키아는 원산지인 뉴질랜드에서는 야생에서 자라는 식물로, 지그재그로 얽혀있는 검은색 줄기와 은빛을 띄는 반질반질한 작은 잎이 매력적이에요. 햇빛을 많이 받을 수 있고, 바람이 잘 부는 환경을 좋아하는 마오리 코로키아는 작은 화분 하나만으로도 공간에 은은하고 깔끔한 매력을 더해 줄 수 있는 식물이에요.";
    plantImg = "../../assets/img/algorithm/11111.jpg";
}
%>
<c:set var="imageFileName" value="${plantImg}.jpg"/>

<section id="result">
  <div>
    <div class="result-name"><%=plantName%> </div>
<img src="<%=plantImg%>" alt="Image" class="img1"/>
    <div class="result-desc">
      <ul class="content">
        <li><%=plantContent%></li>
      </ul>
    </div>
    <div class="result-tip">
      <h6>💖 알아두면 좋은 TIP!
        <ul class="sub-content">
          <li>물을 조금씩 자주 주면 과습의 원인이 될 수 있어요</br>
          흙이 말랐을 때 밑에 물이 빠질 정도로 흠뻑 주세요! </li>           
          <li>갑자기 잎이 노래지거나 줄기만 보기 싫게 자랐나요?</br></li>
          빛이 부족해서 그럴 수 있어요! 밝은 곳으로 옮겨 주세요</li>
        </ul>
      </h6>
      <button type="btn" class="btn1"onclick="location.href= 'http://localhost:8085/algorithm/index.ag';">다시하기</button>
      <button type="btn" class="btn1"onclick="location.href= 'http://localhost:8085/mainOk/main.ma';">홈페이지</button>
    </div>
    </div>
  </section>
<!--   <script type="text/javascript"></script> -->
</body>
</html> 