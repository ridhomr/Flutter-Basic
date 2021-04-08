/**
 * Menata bagian layout dengan metode privat
 * 
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  Widget _buildTitleSection() {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Lorem Ipsum Dolor Sit Amet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Icon(Icons.star_outline),
          Icon(Icons.share),
        ],
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Text('''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut euismod est sem. Maecenas condimentum non mauris ac accumsan. Proin tempus lorem ut ante vestibulum, ac efficitur orci elementum. Cras laoreet eros ac rutrum venenatis. Praesent ac sodales lorem. Sed ultricies risus eu ante hendrerit commodo. Praesent pretium rhoncus nulla, sit amet viverra tortor suscipit vitae. Aenean mattis eleifend urna a efficitur. Pellentesque sagittis varius velit, sed imperdiet sapien facilisis sit amet. Ut luctus tempus nisl sed molestie. Maecenas laoreet cursus dignissim. Nullam a dui nec erat accumsan rhoncus in et arcu.

Integer eleifend, ante quis molestie dignissim, turpis ante sodales nunc, sed malesuada lorem urna nec massa. Fusce rutrum non leo at lacinia. Vestibulum sodales, metus porttitor consectetur lobortis, nisl tortor viverra velit, ac pulvinar diam lorem in odio. Mauris eget orci commodo, tincidunt nunc vel, facilisis turpis. Suspendisse potenti. Proin metus massa, ullamcorper id ex vitae, vestibulum luctus ante. Cras sit amet tortor eu ipsum rutrum luctus.

Morbi a molestie sapien, nec pharetra sapien. Fusce at elit consequat, semper dolor ut, feugiat eros. Nulla diam nisi, hendrerit eget tincidunt sed, tincidunt ut urna. Aliquam fringilla dignissim quam a ultricies. Duis bibendum sem a felis feugiat tristique. Aenean ut congue turpis, ac eleifend lorem. Nam ullamcorper luctus neque, quis congue tortor suscipit ac.

Nunc pellentesque mattis arcu id auctor. Integer dictum enim tortor. Aenean ut eleifend ex. Morbi eros lectus, mollis vitae aliquet et, consequat sit amet odio. Fusce sit amet ornare quam. Aliquam volutpat, nisl nec cursus dictum, velit diam feugiat tellus, quis accumsan nibh nisi ut dolor. Vestibulum euismod interdum erat, et facilisis quam egestas at. Nam ut sapien quam. Curabitur a ligula rutrum, pharetra neque vitae, iaculis nunc. Phasellus eu lectus nisl. Sed quis felis nulla. Duis sed tortor sit amet velit mattis bibendum. Maecenas a est quis quam mattis ullamcorper scelerisque quis justo. Quisque vulputate fringilla mattis.

Aliquam facilisis imperdiet porttitor. Praesent in iaculis nisl. Ut porta, quam pellentesque dignissim fermentum, lectus felis elementum leo, vel efficitur lorem ipsum ac ipsum. Duis in justo quis felis varius volutpat ac ut tortor. Aliquam laoreet eget magna vitae ultricies. Nullam sit amet tempor enim, euismod condimentum arcu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam tincidunt eros ut lacus cursus, vel suscipit lacus eleifend. Nulla eu tellus augue. Praesent cursus libero et libero aliquet consectetur. Curabitur tincidunt dignissim leo. Quisque quis viverra nulla. Nullam lobortis ipsum sodales eleifend accumsan. Fusce nec augue varius, molestie justo ac, fermentum quam.'''
      ),
    );
  }

  Widget _buildFooterSection() {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Text('Copyright 2021, Choerun Asnawi'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ListView(
          children: [
            _buildTitleSection(),
            _buildContentSection(),
            _buildFooterSection(),
          ],
        ),
      ),
    );
  }
}