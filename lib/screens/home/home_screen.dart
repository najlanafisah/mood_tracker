import 'package:flutter/material.dart';
import 'package:freud_app/screens/assesment/mental_health_assesment_score.dart';
import 'package:freud_app/screens/home/widgets/bottom_nav.dart';
import 'package:freud_app/screens/home/widgets/floating_button_on_image.dart';
import 'package:freud_app/screens/home/widgets/header_section.dart';
import 'package:freud_app/screens/home/widgets/horizontal_card.dart';
import 'package:freud_app/screens/home/widgets/horizontal_scrollable_cards.dart';
import 'package:freud_app/screens/home/widgets/mindful_resources_card.dart';
import 'package:freud_app/screens/home/widgets/mindful_tracker_card.dart';
import 'package:freud_app/screens/home/widgets/title_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    //TODO: nanti route ke screen sesuai index bottom nav
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4F2),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: currentIndex,
        onTap: onTap,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 24),
          child: Column(
            children: [
              HeaderSection(),
              SizedBox(height: 12),
              TitleRow(
                title: 'Mental Health Metrics',
                trailing: Icon(Icons.more_vert),
              ),
              HorizontalScrollableCards(
                showDots: true,
                cards: [
                  HorizontalCard(
                    image: 'assets/freud_score_image.png',
                    title: 'Freud Score',
                    icon: Icons.favorite,
                    backgroundColor: Color(0xFF9BB167),
                    boxShadow: BoxShadow(
                      color: Color(0xFF9BB167),
                      blurRadius: 8,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentalHealthAssesmentScore(),
                        ),
                      );
                    },
                  ),
                  HorizontalCard(
                    image: 'assets/mood_image.png',
                    title: 'Mood',
                    icon: Icons.sentiment_dissatisfied_outlined,
                    backgroundColor: Color(0xFFED7E1C),
                    boxShadow: BoxShadow(
                      color: Color(0xFFED7E1C),
                      blurRadius: 8,
                    ),
                  ),
                  HorizontalCard(
                    image: 'assets/freud_score_image.png',
                    title: 'Stress Level',
                    icon: Icons.energy_savings_leaf,
                    backgroundColor: Color(0xFFA694F5),
                    boxShadow: BoxShadow(
                      color: Color(0xFFA694F5),
                      blurRadius: 8,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TitleRow(
                title: 'Mindful Tracker',
                trailing: Icon(Icons.more_vert),
              ),
              Column(
                children: [
                  MindfulTrackerCard(
                    icon: Icons.access_time_filled,
                    title: 'Mindful Hours',
                    subtitle: '2.5/8h Today',
                    trailing: Image.asset('assets/mindful1.png'),
                    iconColor: Color(0xFF9BB167),
                    backgroundColor: Color(0xFF9BB167).withValues(alpha: .1),
                    onPressed: () {}, //TODO: arahin ke mindful hours
                  ),

                  MindfulTrackerCard(
                    iconImage: 'icons/hospital_bed.png',
                    title: 'Sleep Quality',
                    subtitle: 'Insomniac (~2h Avg)',
                    trailing: Image.asset('assets/mindful2.png'),
                    backgroundColor: Color(0xFFC2B1FF).withValues(alpha: .1),
                  ),

                  MindfulTrackerCard(
                    iconImage: 'icons/journal_plus.png',
                    title: 'Mindful Journal',
                    subtitle: '64 Day Streak',
                    trailing: Image.asset('assets/mindful3.png'),
                    backgroundColor: Color(0xFFED7E1C).withValues(alpha: .1),
                    onPressed: () {}, //TODO: arahin ke mindful journal
                  ),

                  MindfulTrackerCard(
                    iconImage: 'icons/head_heart.png',
                    title: 'Stress Level',
                    subtitle: '64 Day Streak',
                    backgroundColor: Color(0xFFFFBD19).withValues(alpha: .1),
                    middle: Row(
                      children: [
                        bar(Color(0xFFFFBD19)),
                        bar(Color(0xFFFFBD19)),
                        bar(Color(0xFFFFBD19)),
                        bar(Colors.grey.shade300),
                        bar(Colors.grey.shade300),
                      ],
                    ),
                    onPressed: () {}, //TODO: arahin ke stress level
                  ),

                  MindfulTrackerCard(
                    icon: Icons.sentiment_neutral_sharp,
                    iconColor: Color(0xFF926247),
                    title: 'Mood Tracker',
                    backgroundColor: Color(0xFF926247).withValues(alpha: .1),
                    middle: Row(children: moodRow()),
                    onPressed: () {}, //TODO: arahin ke mood tracker
                  ),
                ],
              ),
              SizedBox(height: 16),
              TitleRow(
                title: 'AI Therapy Chatbot',
                trailing: Icon(Icons.settings),
              ),
              FloatingButtonOnImage(image: 'assets/ai_banner.png'),
              SizedBox(height: 46),
              TitleRow(
                title: 'Mindful Resources',
                trailing: Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFF9BB167),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              HorizontalScrollableCards(
                height: 230,
                showDots: false,
                cards: [
                  MindfulResourcesCard(
                    onPressed: () {},
                  ), //TODO: arahin ke article
                  MindfulResourcesCard(),
                  MindfulResourcesCard(),
                ],
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget bar(Color color) {
    return Container(
      height: 6,
      width: 40,
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  List<Widget> moodRow() {
    return [
      tag('Sad', Color(0xFFED7E1C)),
      Image.asset('icons/arrow_forward.png'),
      tag('Happy', Color(0xFF9BB167)),
      Image.asset('icons/arrow_forward.png'),
      tag('Neutral', Color(0xFF926247)),
    ];
  }

  Widget tag(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
