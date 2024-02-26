import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemonsensei_home/components/header.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/drawerMenu.dart';
import '../components/headerMobile.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _contactFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: screenWidth < 600 ? const HeaderMobile() : const Header(),
      ),
      drawer: screenWidth < 600 ? const DrawerMenu() : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Center(
              child: Text(
                "LemonSensei • Work Hard • Play Harder",
                style: TextStyle(
                  fontFamily: "KodeMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "Contact Information",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            screenWidth > 600 ? DesktopContact() : MobileContact(),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Or",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Leave me a message",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            screenWidth > 600 ? desktopForm(context) : mobileForm(context),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 50,
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (_contactFormKey.currentState!.validate()) {}
                },
                child: Text(
                  "Upload Data",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Form desktopForm(BuildContext context) {
    return Form(
      key: _contactFormKey,
      child: SizedBox(
        width: 800,
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 50,
                      right: 25,
                    ),
                    child: TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        label: Text(
                          "Title",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        hintText: "I will always be respect to all humankind",
                        hintStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 25,
                      right: 50,
                    ),
                    child: TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        label: Text(
                          "Name",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        hintText: "What should I call you",
                        hintStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
              ),
              child: TextFormField(
                validator: (value) {},
                decoration: InputDecoration(
                  label: Text(
                    "Company",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  hintText: "In case if you are an organization",
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 50,
                      right: 25,
                    ),
                    child: TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        label: Text(
                          "Email Address",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        hintText: "Please provide your most favorite one",
                        hintStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 25,
                      right: 50,
                    ),
                    child: TextFormField(
                      validator: (value) {},
                      decoration: InputDecoration(
                        label: Text(
                          "Phone Number",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        hintText: "I will use this only in urgency",
                        hintStyle: Theme.of(context).textTheme.bodySmall,
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
              ),
              child: TextFormField(
                validator: (value) {},
                decoration: InputDecoration(
                  label: Text(
                    "Subject",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  hintText: "Give me some clear topic",
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
              ),
              child: TextFormField(
                validator: (value) {},
                decoration: InputDecoration(
                  label: Text(
                    "Detail",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  hintText: "Finally! hand me a brief detail",
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                ),
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Form mobileForm(BuildContext context) {
    return Form(
      key: _contactFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Title",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "I will always be respect to all humankind",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Name",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "What should I call you",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Company",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "In case if you are an organization",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Email Address",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "Please provide your most favorite one",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Phone Number",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "I will use this only in urgency",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Subject",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "Give me some clear topic",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 50,
              right: 50,
            ),
            child: TextFormField(
              validator: (value) {},
              decoration: InputDecoration(
                label: Text(
                  "Detail",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hintText: "Finally! hand me a brief detail",
                hintStyle: Theme.of(context).textTheme.bodySmall,
              ),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class MobileContact extends StatelessWidget {
  const MobileContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Contact(
          contactIcon: Icon(Icons.email),
          contactURL: 'mailto:${'inthad.yu@gmail.com'}',
          contactLabel: 'inthad.yu@gmail.com',
        ),
        Contact(
          contactIcon: Icon(FontAwesomeIcons.linkedin),
          contactURL: 'https://www.linkedin.com/in/inthad-yuvajita/',
          contactLabel: 'Inthad Yuvajita',
        ),
        Contact(
          contactIcon: Icon(FontAwesomeIcons.line),
          contactURL: 'https://line.me/ti/p/fXB9iIeXfB',
          contactLabel: 'laventine777',
        ),
        Contact(
          contactIcon: Icon(Icons.facebook),
          contactURL: 'https://www.facebook.com/inthad.yu/',
          contactLabel: 'facebook.com/inthad.yu',
        ),
        Contact(
          contactIcon: Icon(FontAwesomeIcons.instagram),
          contactURL: 'https://www.instagram.com/lemon__sensei/',
          contactLabel: 'lemon__sensei',
        ),
        Contact(
          contactIcon: Icon(Icons.web),
          contactURL: 'http://www.lemonsensei.me',
          contactLabel: 'lemonsensei.me',
        ),
      ],
    );
  }
}

class DesktopContact extends StatelessWidget {
  const DesktopContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Contact(
              contactIcon: Icon(Icons.email),
              contactURL: 'mailto:${'inthad.yu@gmail.com'}',
              contactLabel: 'inthad.yu@gmail.com',
            ),
            Contact(
              contactIcon: Icon(FontAwesomeIcons.linkedin),
              contactURL: 'https://www.linkedin.com/in/inthad-yuvajita/',
              contactLabel: 'Inthad Yuvajita',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Contact(
              contactIcon: Icon(FontAwesomeIcons.line),
              contactURL: 'https://line.me/ti/p/fXB9iIeXfB',
              contactLabel: 'laventine777',
            ),
            Contact(
              contactIcon: Icon(Icons.facebook),
              contactURL: 'https://www.facebook.com/inthad.yu/',
              contactLabel: 'facebook.com/inthad.yu',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Contact(
              contactIcon: Icon(FontAwesomeIcons.instagram),
              contactURL: 'https://www.instagram.com/lemon__sensei/',
              contactLabel: 'lemon__sensei',
            ),
            Contact(
              contactIcon: Icon(Icons.web),
              contactURL: 'http://www.lemonsensei.me',
              contactLabel: 'lemonsensei.me',
            ),
          ],
        ),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  @required
  final Icon contactIcon;
  @required
  final String contactURL;
  @required
  final String contactLabel;

  const Contact({
    super.key,
    required this.contactIcon,
    required this.contactURL,
    required this.contactLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: TextButton.icon(
        onPressed: () async {
          if (await canLaunchUrl(Uri.parse(contactURL))) {
            await launchUrl(Uri.parse(contactURL));
          } else {
            throw 'Could not launch ${Uri.parse(contactURL)}';
          }
        },
        icon: contactIcon,
        label: Text(
          contactLabel,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
