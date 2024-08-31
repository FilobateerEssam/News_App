import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            "https://th.bing.com/th/id/OIP.bQ8Zx_pjlyhUXyyBjom_IAHaE8?rs=1&pid=ImgDetMain",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            'اخبار الزمالك اليوم | مفاجأة جديدة مرتضى ينفي هذا الامر في ملف خالد بو طيب على الزمالك',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          ),
        ),
       
        SizedBox(
          height: 8,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            '   الزمالك اليوم , قناة الزمالك ، اخبار الزمالك اليوم قناة متخصصة في تقديم اخبار نادي الزمالك اليوم واخبار مرتضى منصور رئيس نادي الزمالك ، حيث نسعى في قناة الزمالك لتقديم متابعة يومية شاملة لكل ما يخص الزمالك واخبار الزمالك لحظة بلحظة حيث ان الزمالك فريق القرن',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
