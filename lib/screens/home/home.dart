import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lemonsensei_home/components/headerMobile.dart';

import '../../components/drawerMenu.dart';
import '../../components/footer.dart';
import '../../components/header.dart';
import '../../components/testimonial.dart';
import '../../components/textDescription.dart';
import 'homeSkill.dart';
import '../../components/textTitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    SystemChrome.setApplicationSwitcherDescription(
        const ApplicationSwitcherDescription(label: "LemonSensei - Home"));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: screenWidth < 600 ? const HeaderMobile() : const Header(),
      ),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      AssetImage("assets/images/lemonsensei-profile.jpg"),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "I'm Inthad",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 10),
              Text(
                'A Technical Software Developer',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 30),
              Divider(
                thickness: 3,
                color: Colors.black,
                indent: MediaQuery.of(context).size.width * 0.4,
                endIndent: MediaQuery.of(context).size.width * 0.4,
              ),
              const SizedBox(height: 30),
              const TextDescription(
                  text:
                      "Who working in the most burning sensation atmosphere in the world at Bangkok, Thailand. I am passionate about creating beautiful and functional mobile applications using Flutter. Feel free to explore!"),
              const SizedBox(height: 50),
              const TextTitle(text: 'Favorite Skills'),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  width: 600,
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      HomeSkill(name: 'Flutter'),
                      HomeSkill(name: 'Dart'),
                      HomeSkill(name: 'Python'),
                      HomeSkill(name: 'HTML'),
                      HomeSkill(name: 'CSS'),
                      HomeSkill(name: 'JavaScript'),
                      HomeSkill(name: 'Firebase'),
                      HomeSkill(name: 'SvelteKit'),
                      HomeSkill(name: 'Unity3D'),
                      HomeSkill(name: 'C#'),
                      HomeSkill(name: 'Google Cloud'),
                      HomeSkill(name: 'Data Engineer'),
                      HomeSkill(name: 'Data Analytic'),
                      HomeSkill(name: 'Data Visualization'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Testimonial(path: 'assets/images/galleries/'),
              const SizedBox(height: 50),
              const TextDescription(
                  text:
                      "I was graduated as a Game Developer. In the earliest moment, My team and I form a small local software business which bring our life a real experience dealing a contract. And now I'm became a contractor with Thai Parliament."),
              const SizedBox(height: 30),
              const TextDescription(
                  text:
                      "Working here involve me to develop skills further to the web era. I was met with Flutter since it was an early stage which is awkward. But keeping momentum in learning and found that it can perform a multiplatform framework by a single codebase blessing my mind. And now I'm become a Flutter (addict) Lover."),
              const SizedBox(height: 30),
              const TextDescription(
                  text:
                      "Outside work, I enjoy a richful story Genshin Impact with a good cup of coffee. Sometimes listening to an anime piano song is an awesome selection as well."),
              const SizedBox(height: 30),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
