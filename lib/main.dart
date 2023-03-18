import 'package:figmaproject/main_screen.dart';
import 'package:figmaproject/screenspart2/addressscreen.dart';
import 'package:figmaproject/screenspart2/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:figmaproject/screens/splashscreen.dart';
import 'package:figmaproject/screens/signinscreen.dart';
import 'package:figmaproject/screens/registerformscreen.dart';
import 'package:figmaproject/screens/accountscreen.dart';
import 'package:figmaproject/screens/changenamescreen.dart';
import 'package:figmaproject/screens/genderscreen.dart';
import 'package:figmaproject/screens/birthdayscreen.dart';
import 'package:figmaproject/screens/emailscreen.dart';
import 'package:figmaproject/screens/phonenumberscreen.dart';
import 'package:figmaproject/screens/changepasswordscreen.dart';
import 'package:figmaproject/screens/addaddressscreen.dart';
import 'package:figmaproject/screens/editaddressscreen.dart';
import 'package:figmaproject/screens/deleteaddressscreen.dart';
import 'package:figmaproject/screens/addpaymentscreen.dart';
import 'package:figmaproject/screens/creditcardscreen.dart';
import 'package:figmaproject/screens/addcardscreen.dart';
import 'package:figmaproject/screens/sucssesscreen.dart';
import 'package:figmaproject/screens/lailyfafebrina.dart';
import 'package:figmaproject/screenspart2/notificationscreen.dart';
import 'package:figmaproject/screenspart2/notificationofferscreen.dart';
import 'package:figmaproject/screenspart2/feedscreen.dart';
import 'package:figmaproject/screenspart2/notificationactivityscreen.dart';
import 'package:figmaproject/screenspart2/explorescreen.dart';
import 'package:figmaproject/screenspart2/searchscreen.dart';
import 'package:figmaproject/screenspart2/searchresultscreen.dart';
import 'package:figmaproject/screenspart2/searchresultgridscreen.dart';
import 'package:figmaproject/screenspart2/listcategoryscreen.dart';
import 'package:figmaproject/screenspart2/shortbyscreen.dart';
import 'package:figmaproject/screenspart2/filterscreen.dart';
import 'package:figmaproject/screenspart2/onboardingscreen.dart';
import 'package:figmaproject/screenspart2/orderscreen.dart';
import 'package:figmaproject/screenspart2/orderdetailsscreen.dart';
import 'package:figmaproject/screenspart2/addressscreen.dart';
import 'package:figmaproject/screenspart2/profilescreen.dart';
import 'package:figmaproject/screenspart2/choosecreditscreen.dart';
import 'package:figmaproject/screenspart2/paymentmethodscreen.dart';
import 'package:figmaproject/screenspart2/shiptoscreen.dart';
import 'package:figmaproject/screenspart2/cartscreen.dart';
import 'package:figmaproject/screenspart2/reviewproductscreen.dart';
import 'package:figmaproject/screenspart2/writereviewscreen.dart';
import 'package:figmaproject/screenspart2/offerscreen.dart';
import 'package:figmaproject/screenspart2/offertowscreen.dart';
import 'package:figmaproject/screenspart2/favoriteproductscreen.dart';
import 'package:figmaproject/screenspart2/homescreen.dart';
import 'package:figmaproject/screenspart2/productdetailscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main_screen',
      routes: {
        '/main_screen':(context)=>MainScreen(),
        '/splashscreen':(context)=>SplashScreen(),
        '/signinscreen':(context)=>SigninScreen(),
        '/registerformscreen':(context)=>RegisterFormScreen(),
        '/accountscreen':(context)=>AccountScreen(),
        '/changenamescreen':(context)=>ChangeNameScreen(),
        '/genderscreen':(context)=>GenderScreen(),
        '/birthdayscreen':(context)=>BirthdayScreen(),
        '/emailscreen':(context)=>EmailScreen(),
        '/phonenumberscreen':(context)=>PhoneNumberScreen(),
        '/changepasswordscreen':(context)=>ChangePasswordScreen(),
        '/addaddressscreen':(context)=>AddAddressScreen(),
        '/editaddressscreen':(context)=>EditAddressScreen(),
        '/deleteaddressscreen':(context)=>DeleteAddressScreen(),
        '/addpaymentsscreen':(context)=>AddPaymentScreen(),
        '/creditcardscreen':(context)=>CreditCardScreen(),
        '/addcardscreen':(context)=>AddCardScreen(),
        '/sucssesscreen':(context)=>SucssesScreen(),
        '/lailyfafebrinascreen':(context)=>LailyfaFebrinaScreen(),
        '/notificationscreen':(context)=>NotificationScreen(),
        '/notificationofferscreen':(context)=>NotificationOfferScreen(),
        '/feedscreen':(context)=>FeedScreen(),
        '/notificationactivityscreen':(context)=>NotificationActivityScreen(),
        '/explorescreen':(context)=>ExploreScreen(),
        '/searchscreen':(context)=>SearchScreen(),
        '/searchresultscreen':(context)=>SearchResultScreen(),
        '/searchresultgridscreen':(context)=>SearchResultGridScreen(),
        '/listcategoryscreen':(context)=>ListCategoryScreen(),
        '/shortbyscreen':(context)=>ShortByScreen(),
        '/filterscreen':(context)=>FilterScreen(),
        '/onboardingscreen':(context)=>OnBoardingScreen(),
        '/orderscreen':(context)=>OrderScreen(),
        '/orderdetailsscreen':(context)=>OrderDetailsScreen(),
        '/addressscreen':(context)=>AddressScreen(),
        '/profilescreen':(context)=>ProfileScreen(),
        '/choosecreditscreen':(context)=>ChooseCreditScreen(),
        '/paymentmethodscreen':(context)=>PaymentMethodScreen(),
        '/shiptoscreen':(context)=>ShipToScreen(),
        '/cartscreen':(context)=>CartScreen(),
        '/writereviewscreen':(context)=>WriteReviewScreen(),
        '/offerscreen':(context)=>OfferScreen(),
        '/offertowscreen':(context)=>OfferTowScreen(),
        '/favoriteproductscreen':(context)=>FavoriteProductScreen(),
        '/homescreen':(context)=>HomeScreen(),
        '/productdetailscreen':(context)=>ProductDetailScreen(),
      }
    );
  }
}
