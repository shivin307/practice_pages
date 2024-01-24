import 'package:flutter/material.dart';

class AssetsName {
  AssetsName._privateConstructor();

  static final AssetsName _instance = AssetsName._privateConstructor();

  factory AssetsName() {
    return _instance;
  }

  static const String kLogoImagePng = "assets/image/ic_app_logo_dark.png";
  static const String kTicketSvg = "assets/image/ic_booking_dash.svg";
  static const String kCancelTicketSvg = "assets/image/ic_cancel_ticket.svg";
  static const String kFromShipSvg = "assets/image/ic_from_ship.svg";
  static const String kToShipSvg = "assets/image/ic_to_ship.svg";
  static const String kPnrEnquirySvg = "assets/image/ic_pnr_enquiry.svg";
  static const String kRoundTripArrowSvg = "assets/image/ic_round_trip_arrow.svg";
  static const String kInquiryImagePng = "assets/image/inquiry_bg_blur.png";
  static const String kFacebookSvg = "assets/image/ic_facebook.svg";
  static const String kInstagramSvg = "assets/image/ic_instagram.svg";
  static const String kLinkedInSvg = "assets/image/ic_linkedin.svg";
  static const String kTwitterSvg = "assets/image/ic_twitter.svg";
  static const String kYouTubeSvg = "assets/image/ic_youtube.svg";
  static const String kShipSvg = "assets/image/ic_ship.svg";

}

class IconsName {
  IconsName._privateConstructor();

  static final IconsName _instance = IconsName._privateConstructor();

  factory IconsName() {
    return _instance;
  }

  static const IconData kPerson = Icons.person;
  static const IconData kLock = Icons.lock_rounded;
  static const IconData kEye = Icons.visibility;
  static const IconData kHideEye = Icons.visibility_off;
  static const IconData kCalendar = Icons.calendar_month_outlined;
  static const IconData kClose = Icons.close;
  static const IconData kEdit = Icons.edit;
  static const IconData kLeftArrow = Icons.arrow_back;
  static const IconData kInfo = Icons.info;
  static const IconData kDropDown = Icons.arrow_drop_down;
}