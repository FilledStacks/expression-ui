enum TemplateItemType {
  view(
    itemTemplateNameKey: 'viewName',
    outputPath: 'views',
  ),
  component(
    itemTemplateNameKey: 'componentName',
    outputPath: 'components',
  );

  final String itemTemplateNameKey;
  final String outputPath;

  const TemplateItemType({
    required this.itemTemplateNameKey,
    required this.outputPath,
  });
}
