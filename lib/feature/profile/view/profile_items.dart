import 'package:licenta/core/core.dart';
import 'package:licenta/resource/asset/assets.dart';

enum ProfileItem {
  wallet(AccountType.owner),
  bookedLocations(AccountType.client),
  logout(null);

  const ProfileItem(this.accountType);

  final AccountType? accountType;

  String get uiName {
    switch (this) {
      case ProfileItem.wallet:
        return 'Wallet';
      case ProfileItem.bookedLocations:
        return 'Booked locations';
      case ProfileItem.logout:
        return 'Log out';
    }
  }

  Asset get icon {
    switch (this) {
      case ProfileItem.wallet:
        return Asset.payoutIcon;
      case ProfileItem.bookedLocations:
        return Asset.location;
      case ProfileItem.logout:
        return Asset.logoutIcon;
    }
  }
}
