# WFDashedLine

  WFDashedLine({
    @required this.axis,//虚线的方向
    this.dashedWidth = 10,//虚线的宽度
    this.dashedHieght = 1,//虚线的高度
    this.count = 10,//虚线的密度
    this.color = Colors.grey,//虚线的颜色
  }): assert(axis != null);
