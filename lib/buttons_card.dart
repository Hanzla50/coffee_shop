import 'package:fake_coffe_app/slurp_card.dart';
import 'package:flutter/material.dart';

class ButtonsCard extends StatelessWidget {
  const ButtonsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Color.fromRGBO(241, 242, 233, 1),
      child: Column(
        children: [
          IntrinsicWidth(
            child: Column(children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      'WHY SLURP?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
                          decorationThickness: 10,
                          backgroundColor: Color.fromRGBO(241, 242, 233, 1),
                          decorationColor: Color.fromRGBO(26, 187, 156, 1),
                          color: Color.fromRGBO(26, 187, 156, 1),
                          height: 1.5),
                    ),
                    Container(
                      height: 10,
                      color: Color.fromRGBO(26, 187, 156, 1),
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SlurpCard(
                      title: "Why SLURP?",
                      description:
                          " SLURP is the first and only coffee membership",
                      imageUrl:
                          "https://s3-alpha-sig.figma.com/img/6dc4/5e57/656f5d5304ee091f3e6961721b43da06?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Xc6LnchXPLClOky8TK2p7MN36rbhQU50nlZMd9Be12QuSjjcgQbM4QkgnG5Kaa7IcS8jYw3ta8mRdbx65lRYVqTMGKfluIPtwttCKFNixEtYZHrP29HVz9uoBQk6ybd~4up3OjeacLwvNLohQd4yzmPCyA-h~-iToaSUnoetRgbBSqQ9dMzZUO0PvrwFsC6VwjxVJWWhH787wxR5kvv-jCBILSfS5ODrGCTFiZkmLmNd1p9EEtW0R-J9CxWT2pnT03-StZrDRDlUnD9GNrIXOCSlAAVk20WQN0SHjfIczYySleeSKuzLxn~UU24HbHYdXbI1v6QphQ7~0~r4hGhQSw__",
                      onTap: () {
                        Navigator.pushNamed(context, "/whySlurpScreen");
                      }),
                  SlurpCard(
                      title: "Endless Coffee",
                      description:
                          " You can get your desired size of coffee, or",
                      imageUrl:
                          "https://s3-alpha-sig.figma.com/img/86cb/7481/2fbc9b40d7baf5b9da3593985d6739d1?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NaJMpZABJDl7ElkeuG6HhrPiP0bWuEAsKV9nknEqHnYsymya22mZwXMMmFqgaxVA4BsEmK~uwyDIVKjI8D-lFkazCwyv7ontEXtKHjCIOE9y-lJg4~1gT0peEtVxdtsUivfnH6ievuKd1fPy8rYOEIDamciYCoL~TBP8PXilc-vzn7npe3zfDZ61ILof1FnnqbzgDSsFCnI0xsXM0Y3L5Sp1XuOlnEfYLm3LIwesLvS6zDpwtRbLJpgeCdUX-P2wXt2SmPNqfI2OABNUp6GfkZkMgo2q4GpHleEmze7qCVzQOowlDPJVekXFvNluspZNUuAwFRDirrBpzh1z86EAdg__",
                      onTap: () {
                        Navigator.pushNamed(context, "/endlessCodee");
                      }),
                  SlurpCard(
                      title: "Order",
                      description:
                          "Order from afar if you wish, and your coffee will",
                      imageUrl:
                          "https://s3-alpha-sig.figma.com/img/355c/1680/18bacdc7dc70cb1c831de03eb9a3d1b1?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hUNW02ZG0kTtAfkdOD2r4DAHqXdq3llYtmAvEbc3~o6ILP31Y4QFfpyvBIELgggVuTPSzWg1iVMsGtHObQI4q2YaJRYiIXECgrp49gZY7cWIZKXv0KJSZTE9BzjDjNcMbVOM1BJSw9rvt~gvcJinskZYlGFJ-fBQl-unzRjzRafXLHHGg8ZJIifj6CcpJyMBSrUwrmWcns-90~4WoZtgwgWq~is9axLzUBXSg-Im7LgWwCtWxn5tsRauBwT1-Y-uKkFzrNaj6g8mIlFuAUWaYZBUUgsqJonYgyyUNqttQ-Zg1XVeh-FI61NcrWvGcPls~nXtdw2VXoWKSNeJTRYtyQ__",
                      onTap: () {
                        Navigator.pushNamed(context, "/orderScreen");
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
