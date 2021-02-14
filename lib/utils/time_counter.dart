class TimeLeft {
    String daysLeft(DateTime due) {
    String daysLeft;


    Duration _timeUntilDue = due.difference(DateTime.now());
    int _daysUntil = _timeUntilDue.inDays;

    if (_daysUntil > 0) {
      daysLeft = _daysUntil.toString();

    } else {
      daysLeft = "00";
    }

    return daysLeft;
  }
  String hoursLeft(DateTime due) {
    String hoursLeft;


    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);


    if (_hoursUntil > 0) {
      hoursLeft = _hoursUntil.toString();
    }else {
      hoursLeft = "00";
    }

    return hoursLeft;
  }
  String minutesLeft(DateTime due) {
    String minutesLeft;


    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);


    if (_minUntil > 0) {
      minutesLeft = _minUntil.toString() ;
    }  else {
      minutesLeft = "00";
    }

    return minutesLeft;
  }
  String secondsLeft(DateTime due) {
    String secondsLeft;


    Duration _timeUntilDue = due.difference(DateTime.now());

    int _daysUntil = _timeUntilDue.inDays;
    int _hoursUntil = _timeUntilDue.inHours - (_daysUntil * 24);
    int _minUntil =
        _timeUntilDue.inMinutes - (_daysUntil * 24 * 60) - (_hoursUntil * 60);
    int _secUntil = _timeUntilDue.inSeconds -
        (_daysUntil * 24 * 60 * 60) -
        (_hoursUntil * 60 * 60) -
        (_minUntil * 60);

    if (_secUntil > 0) {
      secondsLeft = _secUntil.toString() ;
    }
    else {
      secondsLeft = "00";
    }

    return secondsLeft;
  }

}

