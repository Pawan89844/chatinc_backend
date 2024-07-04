import 'package:realm_dart/realm.dart';
// part 'realm_models.realm.dart';

// NOTE: These models are private and therefore should be copied into the same .dart file.

@RealmModel()
class _Item {
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId id;

  late bool isComplete;

  @MapTo('owner_id')
  late String ownerId;

  late String summary;
}

@RealmModel()
@MapTo('listingsAndReview')
class _ListingsAndReview {
  @PrimaryKey()
  @MapTo('_id')
  late String id;

  String? access;

  int? accommodates;

  _ListingsAndReviewAddress? address;

  late List<String> amenities;

  _ListingsAndReviewAvailability? availability;

  Decimal128? bathrooms;

  @MapTo('bed_type')
  String? bedType;

  int? bedrooms;

  int? beds;

  @MapTo('calendar_last_scraped')
  DateTime? calendarLastScraped;

  @MapTo('cancellation_policy')
  String? cancellationPolicy;

  @MapTo('cleaning_fee')
  Decimal128? cleaningFee;

  String? description;

  @MapTo('extra_people')
  Decimal128? extraPeople;

  @MapTo('first_review')
  DateTime? firstReview;

  @MapTo('guests_included')
  Decimal128? guestsIncluded;

  _ListingsAndReviewHost? host;

  @MapTo('house_rules')
  String? houseRules;

  _ListingsAndReviewImages? images;

  String? interaction;

  @MapTo('last_review')
  DateTime? lastReview;

  @MapTo('last_scraped')
  DateTime? lastScraped;

  @MapTo('listing_url')
  String? listingUrl;

  @MapTo('maximum_nights')
  String? maximumNights;

  @MapTo('minimum_nights')
  String? minimumNights;

  @MapTo('monthly_price')
  Decimal128? monthlyPrice;

  String? name;

  @MapTo('neighborhood_overview')
  String? neighborhoodOverview;

  String? notes;

  @MapTo('number_of_reviews')
  int? numberOfReviews;

  Decimal128? price;

  @MapTo('property_type')
  String? propertyType;

  @MapTo('review_scores')
  _ListingsAndReviewReviewScores? reviewScores;

  late List<_ListingsAndReviewReviews> reviews;

  @MapTo('room_type')
  String? roomType;

  @MapTo('security_deposit')
  Decimal128? securityDeposit;

  String? space;

  String? summary;

  String? transit;

  @MapTo('weekly_price')
  Decimal128? weeklyPrice;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_address')
class _ListingsAndReviewAddress {
  String? country;

  @MapTo('country_code')
  String? countryCode;

  @MapTo('government_area')
  String? governmentArea;

  _ListingsAndReviewAddressLocation? location;

  String? market;

  String? street;

  String? suburb;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_address_location')
class _ListingsAndReviewAddressLocation {
  late List<double> coordinates;

  @MapTo('is_location_exact')
  bool? isLocationExact;

  String? type;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_availability')
class _ListingsAndReviewAvailability {
  @MapTo('availability_30')
  int? availability30;

  @MapTo('availability_365')
  int? availability365;

  @MapTo('availability_60')
  int? availability60;

  @MapTo('availability_90')
  int? availability90;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_host')
class _ListingsAndReviewHost {
  @MapTo('host_about')
  String? hostAbout;

  @MapTo('host_has_profile_pic')
  bool? hostHasProfilePic;

  @MapTo('host_id')
  String? hostId;

  @MapTo('host_identity_verified')
  bool? hostIdentityVerified;

  @MapTo('host_is_superhost')
  bool? hostIsSuperhost;

  @MapTo('host_listings_count')
  int? hostListingsCount;

  @MapTo('host_location')
  String? hostLocation;

  @MapTo('host_name')
  String? hostName;

  @MapTo('host_neighbourhood')
  String? hostNeighbourhood;

  @MapTo('host_picture_url')
  String? hostPictureUrl;

  @MapTo('host_response_rate')
  int? hostResponseRate;

  @MapTo('host_response_time')
  String? hostResponseTime;

  @MapTo('host_thumbnail_url')
  String? hostThumbnailUrl;

  @MapTo('host_total_listings_count')
  int? hostTotalListingsCount;

  @MapTo('host_url')
  String? hostUrl;

  @MapTo('host_verifications')
  late List<String> hostVerifications;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_images')
class _ListingsAndReviewImages {
  @MapTo('medium_url')
  String? mediumUrl;

  @MapTo('picture_url')
  String? pictureUrl;

  @MapTo('thumbnail_url')
  String? thumbnailUrl;

  @MapTo('xl_picture_url')
  String? xlPictureUrl;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_review_scores')
class _ListingsAndReviewReviewScores {
  @MapTo('review_scores_accuracy')
  int? reviewScoresAccuracy;

  @MapTo('review_scores_checkin')
  int? reviewScoresCheckin;

  @MapTo('review_scores_cleanliness')
  int? reviewScoresCleanliness;

  @MapTo('review_scores_communication')
  int? reviewScoresCommunication;

  @MapTo('review_scores_location')
  int? reviewScoresLocation;

  @MapTo('review_scores_rating')
  int? reviewScoresRating;

  @MapTo('review_scores_value')
  int? reviewScoresValue;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('listingsAndReview_reviews')
class _ListingsAndReviewReviews {
  @MapTo('_id')
  String? id;

  String? comments;

  DateTime? date;

  @MapTo('listing_id')
  String? listingId;

  @MapTo('reviewer_id')
  String? reviewerId;

  @MapTo('reviewer_name')
  String? reviewerName;
}
