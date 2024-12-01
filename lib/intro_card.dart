import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(26, 187, 156, 1),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SLURP",
                  style: TextStyle(
                    fontFamily: 'bungee',
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 26.0,
                    letterSpacing: 0.52,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Ultimate',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'food',
                    fontWeight: FontWeight.normal,
                    fontSize: 32.55,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Stack(children: [
              Container(
                width: 130,
                height: 130,
                margin: const EdgeInsets.only(top: 20, left: 20),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(241, 242, 233, 0.6),
                  shape: BoxShape.circle,
                ),
              ),
              Image.network(
                'https://s3-alpha-sig.figma.com/img/2a48/a7ec/338588da23fa65b1b77cc56e0dddff74?Expires=1733097600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BxvRpJ10wmrStYIMLlLCvqmb~WBg6KXPJdBQbZso2kCjBuwsFjKFIXgjC9YxgeHl3U~Q-Ev97fzzl7du6vWSdp5qw-BtEI28w6fR~Vg5o43ci1Lf8BVCgIBGCL4kzGDNtdY-ji6NjTrLehMZu3~G8sm2H4YYIMUqYYYqvBScjB~ocCJwxQptSL7dtuGI~XBbl7dncBojrh97Phz40zuhepNgMoPxQ138oqhDR0eyRmOAMI-AJOT0m82~A2EY4qsXYKSqxFcMfPPyzaj3-bBsMn4oAQbEGfdvrr36K2Qa5wUsZ70b3Jo6P5sVYPkptvaPA~F4aet4Ij4ZBI5DuqvHEQ__',
                height: 170,
              ),
            ]),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'coffee',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 83.29,
              height: 63.1 / 83.29,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ]),
    );
  }
}
