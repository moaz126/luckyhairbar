import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Lucky Hair Bar',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://static.wixstatic.com/media/3983b0_2b00fc8ece4947599ee44df93064bcae~mv2.png/v1/fill/w_443,h_443,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/3983b0_2b00fc8ece4947599ee44df93064bcae~mv2.png',
                placeholder: (context, url) => Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
                errorWidget: (context, url,
                        error) => /* Icon(Icons
                              .person) */
                    Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://static.wixstatic.com/media/3983b0_287ac0401ce9428a96c44a3d0791afd7~mv2.png/v1/fill/w_451,h_451,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Rules%20and%20Contact.png',
                placeholder: (context, url) => Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
                errorWidget: (context, url,
                        error) => /* Icon(Icons
                              .person) */
                    Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://static.wixstatic.com/media/3983b0_f08aba659faf4dec8bb55a03a79de40f~mv2.png/v1/fill/w_451,h_451,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Policies.png',
                placeholder: (context, url) => Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
                errorWidget: (context, url,
                        error) => /* Icon(Icons
                              .person) */
                    Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://static.wixstatic.com/media/3983b0_09ffb652e95c401cb087f46e67f568f1~mv2.png/v1/fill/w_443,h_443,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Policies%20(2).png',
                placeholder: (context, url) => Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
                errorWidget: (context, url,
                        error) => /* Icon(Icons
                              .person) */
                    Image.asset(
                  'assets/images/luckyhair.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
