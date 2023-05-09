import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8164A2),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          const Center(child: Text('0')),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.expand_more, size: 16),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 40,
                ),
                child: Column(
                  children: const [
                    Text(
                      'Витаминдер',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 60),
                    CustomWidget(
                      image: 'assets/omega.webp',
                      text2: 'Omega 3',
                      text3: '1 000 ₽',
                      bottonText: 'Заказать',
                    ),
                    SizedBox(height: 80),
                    CustomWidget(
                      image: 'assets/d.webp',
                      text2: 'Д З',
                      text3: '1 000 ₽',
                      bottonText: 'Заказать',
                    ),
                    SizedBox(height: 80),
                    CustomWidget(
                      image: 'assets/vitamin.webp',
                      text2: 'Витамин C',
                      text3: '1 000 ₽',
                      bottonText: 'Заказать',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 20,
                ),
                width: double.infinity,
                color: const Color(0xffF2F2F2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: Text(
                        'Моя квалификация',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2011-2019',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text('МЕДИЦИНСКИЙ УНИВЕРСИТЕТ'),
                    SizedBox(height: 20),
                    Text(
                      'Кафедра клинической психологии. Я работаю только в контексте официально-доказательном, научно обоснованном подходе к психике человека.',
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2013-2020',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text('ГЕШТАЛЬТ ИНСТИТУТ'),
                    SizedBox(height: 20),
                    Text(
                      'В этом направлении я развиваюсь по сегодняшний день. Защитила диссертацию на тему “Гештальт-подход при депрессивных растройствах личности. Феномен замыкания”.',
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2022',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text('ПОВЫШЕНИЕ КВАЛИФИКАЦИИ ДЛЯ ПСИХОЛОГОВ'),
                    SizedBox(height: 20),
                    Text(
                      'Арт-терапия для детей и взрослых. Нейрографика',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  children: [
                    const Text(
                      'Наши преимущества',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/1.webp'),
                    const Text(
                      'Многолетний опыт',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/2.webp'),
                    const Text(
                      'Надёжность',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/3.webp'),
                    const Text(
                      'Высокое качество',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/4.webp'),
                    const Text(
                      'Молниеносная доставка',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/5.webp'),
                    const Text(
                      'Гарантия на всё',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 60,
                  horizontal: 20,
                ),
                width: double.infinity,
                color: const Color(0xffF2F2F2),
                child: Column(
                  children: [
                    const Text(
                      'Консультация',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Моя помощница свяжется с вами, расскажет всю необходимую информацию и подберет оптимальную форму взаимодействия с вашей ситуацией',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Ф.И.О',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Контактный номер',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Консультация',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff8164A2),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Отправить заявку'),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 20,
                ),
                child: Column(
                  children: const [
                    Text(
                      'Контактная информация',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    Icon(Icons.location_on_outlined),
                    SizedBox(height: 10),
                    Text(
                      'Адрес',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text('Ош, Кыргызстан, 0996'),
                    SizedBox(height: 40),
                    Icon(Icons.phone),
                    SizedBox(height: 10),
                    Text(
                      'Телефон',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text('+996 (0777) 110702'),
                    SizedBox(height: 40),
                    Icon(Icons.telegram_outlined),
                    SizedBox(height: 10),
                    Text(
                      'Telegram',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Text('+996777110702'),
                    SizedBox(height: 10),
                    Text('помощник'),
                    Divider(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Мои статьи в соцсетях',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SotSet(
                          color: Color(0xff4681C2),
                          image: 'assets/vk.svg',
                        ),
                        SotSet(
                          color: Colors.blue,
                          image: 'assets/facebook.svg',
                        ),
                        SotSet(
                          color: Colors.red,
                          image: 'assets/in.svg',
                        ),
                        SotSet(
                          color: Color(0xff4681C2),
                          image: 'assets/tele.svg',
                        ),
                        SotSet(
                          color: Color(0xffF2F2F2),
                          image: 'assets/drop.svg',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Каталог',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const CardImage(
                      name: 'ТУУРА ТАМАКТАНУУ',
                      image: 'assets/11.webp',
                    ),
                    const SizedBox(height: 20),
                    const CardImage(
                      name: 'АЗЫК ТЕКШЕРҮҮ',
                      image: 'assets/22.webp',
                    ),
                    const SizedBox(height: 20),
                    const CardImage(
                      name: 'ПАЙДАЛУУ МААЛЫМАТТАР',
                      image: 'assets/33.webp',
                    ),
                    const SizedBox(height: 20),
                    const CardImage(
                      name: 'КИТЕПТЕР',
                      image: 'assets/44.webp',
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff8164A2),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Отправить заказ'),
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Text('2023 © Моя компания'),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Создано на платформе \nNethouse'),
                        Container(
                          color: Colors.blue,
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Rethous'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: const Color(0xff8164A2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.expand_less,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          SizedBox(
            width: 160,
            child: Image.asset(image),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 150,
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SotSet extends StatelessWidget {
  const SotSet({
    super.key,
    required this.image,
    required this.color,
  });

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        image,
        color: Colors.white,
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.image,
    required this.text2,
    required this.text3,
    required this.bottonText,
  });

  final String image;
  final String text2;
  final String text3;
  final String bottonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 30),
        Text(
          text2,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          text3,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff8164A2),
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text('Заказать'),
        ),
      ],
    );
  }
}
