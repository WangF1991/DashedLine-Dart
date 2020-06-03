import 'package:flutter/material.dart';

class WFDashedLine extends StatelessWidget {

  final Axis axis;//虚线的方向
  final double dashedWidth;//虚线的宽度
  final double dashedHieght;//虚线的高度
  final int count;//虚线的密度
  final Color color;//虚线的颜色

  WFDashedLine({
    @required this.axis,
    this.dashedWidth = 10,
    this.dashedHieght = 1,
    this.count = 10,
    this.color = const Color(0xffbbbbbb),
  }): assert(axis != null);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(//获取到父Widget的宽度和高度
      builder: (BuildContext context, BoxConstraints constraints) {
        //根据宽度计算个数
        return Flex(
          direction: this.axis,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(this.count, (index){
            return SizedBox(
              width: this.dashedWidth,
              height: this.dashedHieght,
              child: DecoratedBox(
                decoration: BoxDecoration(color: this.color),
              ),
            );
          }),
        );
      },
    );
  }
}
