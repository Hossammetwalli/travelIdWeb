abstract class FreelancerFireStore {
  static String get userID => "userID";

  static String get freelancerName => "freelancerName";

  static String get speciality => "speciality";

  static String get serviceShortDescription => "serviceShortDescription";

  static String get aboutYou => "aboutYou";

  static String get serviceDestinationCountry => "serviceDestinationCountry";

  static String get businessEmail => "businessEmail";

  static String get requestApproved => "requestApproved";

  static String get timeStamp => "timeStamp";
}

abstract class CollectionsFireStore {
  static String get usersData => 'userData';

  static String get properties => 'properties';

  static String get messages => 'messages';

  static String get requestAccess => 'requestAccess';

  static String get freelancerRequestAccess => 'freelancerRequestAccess';

  static String get admin => 'admins';
}

abstract class PropertyFireStore {
  static String get approved => 'approved';

  static String get documentId => "documentId";

  static String get propertyId => 'propertyId';

  static String get imageUrl => "imageUrl";

  static String get propertyName => 'propertyName';

  static String get address => 'address';

  static String get city => 'city';

  static String get state => 'state';

  static String get country => 'country';

  static String get starRating => "starRating";

  static String get propertyCategory => 'propertyCategory';

  static String get telephone => 'telephone';

  static String get bookingEmail => 'bookingEmail';

  static String get infoEmail => 'infoEmail';

  static String get contactName => 'contactName';

  static String get propertyWebsite => 'propertyWebSite';

  static String get bookingLink => 'bookingLink';

  static String get discountCode => 'discountCode';

  static String get sellingMessage => 'sellingMessage';

  static String get travelerIdDiscount => 'travelerIdDiscount';

  static String get directBookingPrivileges => 'directBookingPrivileges';

  static String get termsAndConditions => "termsAndConditions";

  static String get propertyDescription => "propertyDescription";

  static String get nearbyLandmarks => 'nearByLandmarks';

  static String get nearbyAirport => 'nearByAirports';

  static String get distanceByKM => 'nearByAirportDistance';

  static String get availableLanguages => "availableLanguages";

  static String get propertyFacilities => 'propertyFacilities';

  static String get inHouseActivities => "inHouseActivities";

  static String get checkInTime => "checkInTime";

  static String get checkOutTime => "checkOutTime";

  static String get roomAmenities => 'roomAmenities';

  static String get timeStamp => 'timeStamp';

  static String get isAdmin => 'admin';

  static String get password => 'password';
}
