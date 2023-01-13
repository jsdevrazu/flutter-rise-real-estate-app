class FaqItem {
  final String expandedValue, headerValue;
  bool isExpanded;

  FaqItem(
      {this.expandedValue = "",
      this.headerValue = "",
      this.isExpanded = false});
}

List<FaqItem> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (index) {
    return FaqItem(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index');
  });
}
