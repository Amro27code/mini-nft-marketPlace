class TableRowModel {
  String leading, title, subtitle, rankAverage;
  double seller;
  bool isRed;
  int id;

  TableRowModel({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.rankAverage,
    required this.seller,
    required this.id,
    this.isRed = false,
  });
}
