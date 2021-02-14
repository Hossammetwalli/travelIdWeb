import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webapptrial/const/text_style.dart';
import 'package:webapptrial/utils/time_counter.dart';


class TimeCounterWidget extends StatefulWidget {
  final double width;
  final double height;

  const TimeCounterWidget({Key key, @required this.width, @required this.height}) : super(key: key);


  @override
  _TimeCounterWidgetState createState() => _TimeCounterWidgetState();
}

class _TimeCounterWidgetState extends State<TimeCounterWidget> {
  // String _timeUntil = "00";
  String _daysLeft = "00";
  String _hoursLeft = "00";
  String _minutesLeft = "00";
  String _secondsLeft = "00";


  Timer _timer;




  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (this.mounted) {
        setState(() {
          _daysLeft = TimeLeft().daysLeft(DateTime.utc(2021, 1, 25, 3, 0, 0));
          _hoursLeft = TimeLeft().hoursLeft(DateTime.utc(2021, 1, 25, 3, 0, 0));
          _minutesLeft = TimeLeft().minutesLeft(DateTime.utc(2021, 1, 25, 3, 0, 0));
          _secondsLeft = TimeLeft().secondsLeft(DateTime.utc(2021, 1, 25, 3, 0, 0));
          // _timeUntil = TimeLeft().timeLeft(DateTime.utc(2021, 2, 28, 5, 59, 59));

        });
      }
    });
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
        _startTimer();
    }



  @override
  void dispose() {
    if (_timer != null) {
      _timer.cancel();
    }
    super.dispose();
  }








  @override
  Widget build(BuildContext context) {



    return Container(
      width: widget.width,
      height: widget.height,


      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Expanded(
            flex: 3,
            child:  Column(
              children: [

                Container(
                  width: 35,
                  height: 20,

                  child: Center(
                    child: Text(
                      _daysLeft?? "00",
                      style: AppTextStyles.contentRed
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text("Days", style: AppTextStyles.contentWhiteTime,),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 20,
                  width: 10,
                  child: Center(child: Text(":" , style: AppTextStyles.subTitleWhite,)))),
          Expanded(
            flex: 3,
            child:  Column(
              children: [
                Container(
                  width: 35,
                  height: 20,

                  child: Center(
                    child: Text(
                      _hoursLeft ?? "00",
                      style: AppTextStyles.contentRed
                    ),
                  ),
                ),
                const  SizedBox(height: 5,),

                Text("Hours",style: AppTextStyles.contentWhiteTime,),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 20,
                  width: 10,
                  child: Center(child: Text(":" , style: AppTextStyles.subTitleWhite,)))),
          Expanded(
            flex: 3,
            child:  Column(
              children: [
                Container(
                  width: 35,
                  height: 20,

                  child: Center(
                    child: Text(
                      _minutesLeft ?? "00",
                      style: AppTextStyles.contentRed
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text("Minutes", style: AppTextStyles.contentWhiteTime,),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 20,
                  width: 10,
                  child: Center(child: Text(":" , style: AppTextStyles.subTitleWhite,)))),
          Expanded(
            flex: 3,
            child:  Column(
              children: [
                Container(
                  width: 35,
                  height: 20,

                  child: Center(
                    child: Text(
                      _secondsLeft ?? "00",
                      style: AppTextStyles.contentRed
                    ),
                  ),
                ),
                const  SizedBox(height: 5,),
                Text("Seconds", style: AppTextStyles.contentWhiteTime,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
