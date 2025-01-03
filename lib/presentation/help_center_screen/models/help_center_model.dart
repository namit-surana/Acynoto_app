class HelpCenterModel {
  String? que;

  HelpCenterModel({
    this.que,
  });
}

List<HelpCenterModel> helpDataList = [
  HelpCenterModel(
    que: 'Do you experience these symptoms?',
  ),
  HelpCenterModel(
    que: 'Symptoms getting better or worse?',
  ),
  HelpCenterModel(
    que: 'Are you taking any medications?',
  ),
  HelpCenterModel(
    que: 'Are you allergic to any medications?',
  ),
  HelpCenterModel(
    que: 'What are your health goals?',
  ),
  HelpCenterModel(
    que: 'When did the symptoms start?',
  ),
  HelpCenterModel(
    que: 'What are your expectations for this visit?',
  ),
];
