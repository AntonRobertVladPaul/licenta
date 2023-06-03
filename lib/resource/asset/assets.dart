import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum Asset {
  // General
  logo('Logo.svg'),
  whiteLoader('shoutout_white_loading_indicator.json'),
  blackLoader('shoutout_black_loading_indicator.json'),

  // Icons
  eye('eye.svg'),
  eyeClosed('eye-closed.svg'),
  heart('heart.svg'),
  checkCircle('check-circle.svg'),
  alert('alert.svg'),
  info('info.svg'),
  error('error.svg'),
  warning('warning.svg'),
  warningAlertIcon('warning-alert-icon.svg'),
  check('check.svg'),
  clock('clock.svg'),
  lock('lock.svg'),
  share('share.svg'),
  chevronUp('chevron-up.svg'),
  chevronRight('chevron-right.svg'),
  chevronDown('chevron-down.svg'),
  connected('wifi.svg'),
  notConnected('no-wifi.svg'),
  emailAlertIcon('email_alert_icon.svg'),
  pinIcon('pin-icon.svg'),
  errorImage('error-image.svg'),
  easyBookingBig('easy-booking-big-icon.svg'),

  // Authentication Methods
  phone('phone.svg'),
  email('email.svg'),
  google('google.svg'),
  facebook('facebook.svg'),
  tiktok('tiktok.svg'),
  apple('apple.svg'),

  // Social Accounts
  instagramSocial('instagram-social.svg'),
  tiktokSocial('tiktok-social.svg'),
  plug('plug.svg'),
  instagramAlertIcon('instagram-alert-icon.svg'),
  instagramAlertIconRed('instagram-alert-icon-red.svg'),
  tiktokAlertIconRed('tiktok-alert-icon-red.svg'),
  tiktokAlertIcon('tiktok-alert-icon.svg'),
  instagramAlertIconSuccess('instagram-alert-icon-success.svg'),
  tiktokAlertIconSuccess('tiktok-alert-icon-success.svg'),

  // Navigation
  backButton('arrow-left.svg'),
  closeButton('icon-close.svg'),
  unPaddedClose('unpadded-close.svg'),

  // Account Types
  business('business.svg'),

  // Main
  explore('explore.svg'),
  shoutouts('shoutouts.svg'),
  orders('orders.svg'),
  notifications('notifications.svg'),
  myAccount('notifications.svg'),
  guest('guest.svg'),
  update('update.svg'),

  // Interest fields
  iconChecked('icon-checked.svg'),

  // Onboarding
  onboardingCongrats('onboarding-congrats.png'),
  addLogo('add-logo-icon.svg'),
  closeAlert('close-alert.svg'),
  send('send.svg'),
  calendarPermission('calendar-plus.svg'),
  notificationPermission('bell-ringing.svg'),

  // Explore
  userAlertCircle('user-alert-circle.svg'),
  instagramFollowers('instagram-followers.svg'),
  tiktokFollowers('tiktok-followers.svg'),
  playButton('play_button.svg'),
  sort('sort.svg'),
  sortDescending('sort-descending.svg'),
  sortAscending('sort-ascending.svg'),
  filter('filter.svg'),
  changeUser('user-change.svg'),
  unpaddedChangeUser('unpadded-user-change.svg'),
  closeChip('close-chip.svg'),
  favoriteFilled('favorite-filled.svg'),
  favoriteFilledWhite('favorite-filled-white.svg'),
  favoriteUnfilled('favorite-unfilled.svg'),
  favoriteThickUnfilled('favorite-thick-unfilled.svg'),
  favoriteMenuAction('favorite-menu-action.svg'),

  // Orders
  instagramPost('instagram-post.svg'),
  instagramStory('instagram-story.svg'),
  instagramReel('instagram-reel.svg'),
  tiktokVideo('tiktok-video.svg'),
  instagramButtonIcon('instagram-button-icon.svg'),
  tiktokButtonIcon('tiktok-button-icon.svg'),
  closeCircle('close-circle.svg'),
  user('user-icon.svg'),
  location('location-icon.svg'),
  bin('bin-icon.svg'),
  deleteAlertIcon('delete_alert_icon.svg'),
  plus('icon-plus.svg'),
  visa('visa-logo.svg'),
  masterCard('mastercard-logo.svg'),
  history('history.svg'),
  dollarAlertIcon('dollar-alert-icon.svg'),
  dollarInfoAlertIcon('dollar-info.svg'),
  dollarInfoIcon('dollar-info.svg'),
  checkAlertIcon('check-alert-icon.svg'),
  searchIcon('search_icon.svg'),
  bookmark('bookmark.svg'),
  telegram('telegram.svg'),
  smallPlay('small-play.svg'),
  reply('reply.svg'),
  copyIcon('copy-icon.svg'),

  // Campaigns
  calendarIcon('calendar-icon.svg'),
  logoUpload('logo-upload.svg'),
  giftIcon('gift-icon.svg'),
  sparklesIcon('sparkles-icon.svg'),
  timer('timer.svg'),
  clipboardIcon('clipboard-icon.svg'),
  candidates('candidates.svg'),
  dots('dots-horizontal.svg'),
  notebookIcon('notebook-icon.svg'),
  cancelAlert('alert-cancel.svg'),
  userCrossIcon('user-cross.svg'),

  // Profile
  defaultProfileIcon('default-profile-icon.svg'),
  defaultProfileIconAdd('default-profile-icon-add.svg'),
  information('information.svg'),
  profileUser('profile-user.svg'),
  videoStory('video-story.png'),
  accountIcon('account-icon.svg'),
  connectedIcon('connected-icon.svg'),
  logoutIcon('logout-icon.svg'),
  logoutSheet('logout-sheet.svg'),
  payoutIcon('payout-icon.svg'),
  paypal('paypal.svg'),
  venmo('venmo.svg'),
  balanceCard('payout-card.png'),
  payments('dollar.svg'),
  notificationsSettings('bell.svg'),
  myBusiness('my-business.svg'),
  addPhotoIcon('add-photo-icon.svg'),
  profilePhotoSnackBar('profile-photo-snackbar.svg'),
  offersSnackBar('offers-snackbar.svg'),
  interestsSnackBar('interests-snackbar.svg'),
  bioSnackBar('bio-snackbar.svg'),
  portfolioSnackBar('portfolio-snackbar.svg'),
  completedProfile('completed-profile.svg'),
  lockIcon('lock-icon.svg'),
  galleryPermissionIcon('gallery_permission_icon.svg'),
  addDeviceMedia('info-device.svg'),
  addMedia('info-media.svg'),
  photo('photo.svg'),
  video('video.svg'),
  device('device.svg'),
  deleteAccountIcon('delete_account_alert_icon.svg'),
  clockAlertIcon('clock_alert_icon.svg'),
  swipeAnimation('swipe-gesture.json'),
  tapAnimation('tap-gesture.json'),
  userAlert('user-alert.svg'),
  deleteAlert('alert-delete-orange.svg'),

  // Notifications
  push('push.svg'),
  sms('message.svg'),
  notificationAlert('alert-notification.svg'),
  notificationExpired('notification-expired.svg'),
  notificationFinished('notification-finished.svg'),
  notificationRejected('notification-rejected.svg'),
  notificationRequested('notification-requested.svg'),
  notificationStarted('notification-started.svg'),
  notificationLivestream('notification-livestream.svg'),
  notificationAnalytics('notification-analytics.svg'),
  notificationUsers('notification-users.svg'),
  notificationWaiting('notification-waiting.svg'),
  notificationShout('notification-shout.svg'),
  settings('settings.svg');

  const Asset(this.path);

  final String path;

  String get imagePath => 'asset/image/$path';

  String get animationPath => 'asset/animation/$path';

  Widget sizedWidget({required Size size, Color? color}) =>
      SizedBox.fromSize(size: size, child: widget(color: color));

  Widget widget({Color? color, BoxFit? fit}) {
    return path.endsWith('.svg')
        ? SvgPicture.asset(
            imagePath,
            color: color,
            fit: fit ?? BoxFit.contain,
          )
        : Image.asset(
            imagePath,
            color: color,
            fit: fit ?? BoxFit.cover,
          );
  }

  Widget leadingButton(
    BuildContext context, {
    Color? color,
    EdgeInsetsGeometry? padding,
    VoidCallback? onPressed,
  }) =>
      IconButton(
        padding: padding ?? const EdgeInsets.only(left: 8),
        icon: widget(color: color),
        onPressed: onPressed ?? () => context.router.pop(),
      );

  AssetImage asBackgroundImage() => AssetImage('asset/image/$path');

  static Asset? fromPath(String path) =>
      Asset.values.firstWhereOrNull((asset) => asset.path == path);
}
