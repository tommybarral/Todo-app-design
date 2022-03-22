import 'section.dart';

 List _sectionsData = [
  Section(status: 'Winner', text: 'Financial mobile app', img: 'https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6', time: '2 days ago'),
  Section(status: 'Winner', text: 'E-commerce logo design', img: 'https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6', time: '3 days ago'),
  Section(status: 'Winner', text: 'Tech app', img: 'https://us.123rf.com/450wm/kritchanut/kritchanut1401/kritchanut140100054/25251050-photo-de-profil-d-affaires-de-l-avatar.jpg?ver=6', time: '2 days ago'),
];

 List<Section> get section {
   return [..._sectionsData];
 }
