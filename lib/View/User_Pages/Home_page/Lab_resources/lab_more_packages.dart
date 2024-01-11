import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/Resources/AppColors/app_colors.dart';
import 'package:health/View/User_Pages/Home_page/payment.dart';

class LabMorePackages extends StatelessWidget {
  const LabMorePackages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
            color: Colors.black,
          ),
          title: Text(
            "All packages",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Get.to(() => PaymentDetailsPage(
                      providerData: {},
                      packageName: "Health check package",
                      packagePrice: "200"));
                },
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          crossAxisCount: 2),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                color: MyColors.greenColorauth,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Health Check",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Packages",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset("assets/images/1.png"),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 12),
                                      child: Container(
                                        height: 22,
                                        width: 135,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            "Starting at 200 SAR",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
