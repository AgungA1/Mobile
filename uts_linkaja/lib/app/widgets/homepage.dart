import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:uts_linkaja/app/widgets/navbar.dart';

final List<String> imgList = [
  'https://static.republika.co.id/uploads/images/inpicture_slide/pt-bank-negara-indonesia-persero-tbk-atau-bni-memberikan_230705104532-614.jpg',
  'https://lelogama.go-jek.com/post_featured_image/promo-hangout-bandung-1png.png',
  'https://web.pln.co.id/statics/uploads/2023/05/WhatsApp-Image-2023-05-03-at-10.06.01.jpeg',
  'https://tri.co.id/image/files/20220208TurunanMochanECommerceekstraKuota5GBWebsiteDekstopIND.jpg',
  'https://www.online-pajak.com/wp-content/uploads/2023/09/promo-page_New-Visa.png',
  'https://bankmega.com/media/filer_public/ba/d6/bad689bb-68cd-4cf3-8650-15e0734bb6f7/visacontactless-bmnew-01.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => FractionallySizedBox(
          widthFactor: 1.0,
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Image.network(
                item,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ))
    .toList();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://www.creativefabrica.com/wp-content/uploads/2020/03/19/City-silhouette-with-gray-color-gradient-Graphics-3680313-1-580x348.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png'),
                        width: 40,
                      ),
                    ),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: EdgeInsets.all(10),
                        child: CustomIcon(
                          imageUrl:
                              'https://cdn-icons-png.flaticon.com/128/2089/2089363.png',
                          width: 24,
                          height: 24,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0)),
                      padding: EdgeInsets.all(10),
                      child: CustomIcon(
                        imageUrl:
                            'https://cdn-icons-png.flaticon.com/128/707/707680.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 255, 21, 0),
                        Color.fromARGB(255, 190, 16, 0),
                        Color.fromARGB(255, 180, 12, 0),
                        Color.fromARGB(255, 160, 0, 0),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                      child: Text(
                        'Hi, Agung Malik Al Qindy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 75,
                          margin: EdgeInsets.only(top: 5, left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 12),
                                    child: Text(
                                      'Your Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, top: 5, left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Rp.10.184',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 75,
                          margin: EdgeInsets.only(top: 5, left: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 12),
                                    child: Text(
                                      'Bonus Balance',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 15, top: 5, left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          '0',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add_card_outlined,
                              size: 25,
                            ),
                            Text(
                              'Top Up',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.money,
                              size: 25,
                            ),
                            Text(
                              'Send Money',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.airplane_ticket_outlined,
                              size: 25,
                            ),
                            Text(
                              'Ticket Code',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.grid_view,
                              size: 25,
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width,
                height: 150, // Tinggi kontainer
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add_card_outlined,
                              size: 30,
                            ),
                            Text(
                              'Pulsa/Data',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.electrical_services,
                              size: 30,
                            ),
                            Text(
                              'Electrecity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.local_hospital,
                              size: 30,
                            ),
                            Text(
                              'BPJS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.games,
                              size: 30,
                            ),
                            Text(
                              'mgames',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.cable,
                              size: 30,
                            ),
                            Text(
                              'Cable TV',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '& Internet',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.water_damage_outlined,
                              size: 30,
                            ),
                            Text(
                              'PDAM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              size: 30,
                            ),
                            Text(
                              'Kartu Uang',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Elektronik',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                            Text(
                              'More',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 150.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval:
                          Duration(seconds: 3), // Set auto-play interval
                      autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    ),
                    items: imageSliders,
                  )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

class CustomIcon extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  CustomIcon({
    required this.imageUrl,
    this.width = 30,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the tap event for the custom icon here
      },
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
      ),
    );
  }
}
