import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    Widget _draw1 = Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: _size.width / 2,
            color: Colors.indigo,
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/zoul.jpg"),
              radius: 100.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "DRAWER 1",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.indigo,
        height: 50.0,
      ),
    );
    
    Widget _draw2 = Container(
      child: Column(
        children: <Widget>[
          Container(
            height: _size.height / 3,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.9),
              image: DecorationImage(
                  image: AssetImage("assets/images/zoul.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
              child: Container(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 40.0,
                  left: 10.0,
                  right: 10.0,
                ),
                color: Colors.white,
                child: Center(
                  child: Text(
                    "DRAWER 2",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.indigo,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.overline,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );

    Drawer _buildDrawer() {
      List _listDrawers = [
        _draw1,
        _draw2,
      ];
      return new Drawer(
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return _listDrawers[index];
          },
          itemCount: _listDrawers.length,
          pagination: new SwiperPagination(),
        ),
      );
    }

    return _buildDrawer();
  }
}