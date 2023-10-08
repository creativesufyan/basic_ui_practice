import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: <Widget>[
            Image(
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.75,
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSPo9G7YUODCh1dPTmLqB_n-juK_qcEd7bhw&usqp=CAU'),
            ),
            Positioned(
                bottom: -30,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLG8XyiZ40xxteC5AIuz5B09uK0DRw6KfG0w&usqp=CAU'),
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Card(
          child: ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const ContactInfo();
                  });
            },
            title: Text('Md Abu Sufyan'),
            subtitle: Text("Native Android and Flutter Developer"),
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          child: SizedBox(
            height: 30,
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Hire Me",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: Text("About Me"),
            subtitle: Text(
                "I'm A Student department of CSE , Rajshahi University of Engineering & Technology. I'm a Native Android and Flutter Developer."),
          ),
        )
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  launchEmail() async {
    const email = 'abusufyan421@gmail.com';
    final Uri emailLaunchUri = Uri(scheme: 'mailto', path: email);

    if (await canLaunchUrl(emailLaunchUri.toString() as Uri)) {
      await launchUrl(emailLaunchUri.toString() as Uri);
    } else {
      throw 'Could not launch email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Contact Information",
              style: Theme.of(context).textTheme.titleLarge,),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
        ),
        SizedBox(height: 16,),
        ListTile(
          title: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'Contact Information\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Name: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Md.Abu Sufyan\n',
                ),
                TextSpan(
                  text: 'University Name: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Rajshahi University Of Engineering & Technology\n',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: 'Email: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'abusufyan421@gmail.com\n',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: 'Contact: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '01776669345',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        )

      ],
    );
  }
}
