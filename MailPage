import 'package:flutter/material.dart';
import './buildTextField.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key, required this.title});
  final String title;

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Home'),
              content: const Text(
                  'Click OK if you want to go back to the home menu. Click CANCEL if you want to stay in the Mail.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'CENCEL'),
                  child: const Text('CANCEL'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
          icon: const Icon(
            Icons.home,
            color: Colors.white,
            size: 30.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buildTextField(title: 'Subject', controller: controllerSubject),
            const SizedBox(height: 6),
            buildTextField(
                title: 'Message', controller: controllerMessage, maxLines: 10),
            const SizedBox(height: 50),
            TextButton.icon(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Archive'),
                  content: const Text(
                      'Want to save your letter? Click \'SAVE\' to save it into your Archive! Click \'CANCEL\' if not.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'CANCEL'),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'SAVE');
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: Text('Successfully saved!'),
                            actions: <Widget>[
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  controllerSubject.clear();
                                  controllerMessage.clear();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Text('SAVE'),
                    ),
                  ],
                ),
              ),
              icon: const Icon(
                Icons.save,
                size: 30.0,
                color: Colors.black,
              ),
              label: const Text(
                'Archive',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton.icon(
              icon: Icon(
                Icons.send,
                size: 30.0,
                color: Colors.black,
              ),
              label: Text(
                'Send',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('SEND'),
                  content: const Text(
                      'Click \'SEND\' to make your letter visible to other users! Notice that your letter will then be randomly sent to another user. Click \'CANCEL\' if not.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'CANCEL'),
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'SEND');
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: Text('Successfully sent!'),
                            actions: <Widget>[
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  controllerSubject.clear();
                                  controllerMessage.clear();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Text('SEND'),
                    ),
                  ],
                ),
              ), // <-- Text
            ),
            TextButton.icon(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Blackhole'),
                  content: const Text(
                      'Don\'t want to keep this letter nor send it? Click \'YES\' to throw it away into the blackhole! If you want to take a second thought, feel free to click \'One moment please...\''),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () =>
                          Navigator.pop(context, 'One moment please...'),
                      child: const Text('One moment please...'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'YES');
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: Text(
                                'Successfully thrown away now! Have a good day!'),
                            actions: <Widget>[
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  controllerSubject.clear();
                                  controllerMessage.clear();
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Text('YES'),
                    ),
                  ],
                ),
              ),
              icon: Icon(
                Icons.delete_forever_rounded,
                size: 30.0,
                color: Colors.black,
              ),
              label: Text(
                'Blackhole',
                style: TextStyle(color: Colors.black),
              ), // <-- Text
            ),
          ],
        ),
      ),
    );
  }
}
