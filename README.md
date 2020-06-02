# WFDashedLine

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
    this.color = Colors.grey,
  }): assert(axis != null);
