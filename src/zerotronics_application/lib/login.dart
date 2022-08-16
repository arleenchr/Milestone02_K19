import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zerotronics_application/home.dart';

// FUNGSI UTAMA
void main() async {
  runApp(MaterialApp(
    title: "Login",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen()
};

class LoginScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: LoginComponent(),
    );
  }
}

class LoginComponent extends StatefulWidget {
  @override
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Image.asset(
                  "assets/login.png",
                  height: 200,
                  width: 300,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: mTitleStyleLogin,
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                SignInform()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInform> {
  final _formkey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remember = false;

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          DefaultButtonCustomeColor(
            color: Color(0xFF1F1656),
            text: "Login",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Belum Punya Akun ? Daftar Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukan username anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}

// AKHIR FUNGSI UTAMA

// UTILS, CONFIG, THEME
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

class SizeConfig2 {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double horizontalBloc;
  static late double verticalBloc;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    horizontalBloc = screenWidth / 100;
    verticalBloc = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(1000, 241, 240, 248),
    fontFamily: "Muli",
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

const kPrimaryColor = Color(0xFF1DB9C3);
const kSecondaryColor = Color(0xFF398AB9);
const kThirdColor = Color(0xFFD8D2CB);
const kFourthColor = Color(0xFFEEEEEE);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kColorTeal = Color(0xFF008080);
const kColorTealSlow = Color(0xFF159897);
const kColorTealToSlow = Color(0xFF03c0c1);
const kColorBlue = Color(0xFF3EB2FF);
const kColorGreen = Color(0xFF00FCA6);
const kColorRedSlow = Color(0xFFf55f60);
const kColorYellow = Color(0xFFFFC654);

const mBackgroundColor = Color(0xFFFAFAFA);
const mBlueColor = Color(0xFF2C53B1);
const mGreyColor = Color(0xFFC5C5C5);
const mTitleColor = Color(0xFF23374D);
const mSubtitleColor = Color(0xFF8E8E8E);
const mBorderColor = Color(0xFFE8E8F3);
const mFillColor = Color(0xFFFFFFFF);
const mCardTitleColor = Color(0xFF2E4ECF);
const mCardSubtitleColor = mTitleColor;

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
// const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kUsernameNullError = "Please Enter your username";
const String kKategoryNullError = "Please Enter your category";
const String kJudulBahanyNullError = "Judul bahan ajar tidak boleh kosong";
const String kKeteranganNullError = "Keterangan tidak boleh kosong";
const String kPersentaseBobotNullError = "Please Enter your weight percentage";
const String kInvalidUsernameError = "Please Enter Valid username";
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  fillColor: kPrimaryColor,
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

// Style for title
var mTitleStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 14);

var mTitleStyleLogin = GoogleFonts.nunito(
    fontWeight: FontWeight.w900, color: Color(0xFF1F1656), fontSize: 30);

var mTitleStyleButton = GoogleFonts.nunito(
    fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20);

var mTitleStyleColorWhite = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mFillColor, fontSize: 12);

var mTitleStyle16 = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 16);

var mTitleStyleColorTeal = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: kColorTeal, fontSize: 10);

var mTitleStyleColorRed = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: kColorRedSlow, fontSize: 10);

var mTitle = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: kFourthColor, fontSize: 14);

var mTitle2 = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 14);

// Style for title Name
var mTitleStyleNameApps = GoogleFonts.inter(
  fontWeight: FontWeight.bold,
  color: mTitleColor,
  fontSize: 18,
);

var mTitleStyletugas = GoogleFonts.inter(
  fontWeight: FontWeight.bold,
  color: mTitleColor,
  fontSize: 12,
);

// Style for Discount Section
var mMoreDiscountStyle = GoogleFonts.inter(
    fontSize: 12, fontWeight: FontWeight.w700, color: mBlueColor);

// Style for Service Section
var mServiceTitleStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w500, fontSize: 12, color: mTitleColor);

var mServiceTitleStyleBold = GoogleFonts.inter(
    fontWeight: FontWeight.bold, fontSize: 12, color: mTitleColor);

var mServiceSubtitleStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w400, fontSize: 10, color: mSubtitleColor);

var mServiceSubtitleStyle12 = GoogleFonts.inter(
    fontWeight: FontWeight.w400, fontSize: 12, color: mSubtitleColor);

var mServiceSeeAll = GoogleFonts.inter(
    fontWeight: FontWeight.w400, fontSize: 12, color: mSubtitleColor);

// Style for Popular Destination Section
var mPopularDestinationTitleStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w700,
  fontSize: 16,
  color: mCardTitleColor,
);
var mPopularDestinationSubtitleStyle = GoogleFonts.inter(
  fontWeight: FontWeight.w500,
  fontSize: 10,
  color: mCardSubtitleColor,
);

// Style for Travlog Section
var mTravlogTitleStyle = GoogleFonts.inter(
    fontSize: 14, fontWeight: FontWeight.w900, color: mFillColor);
var mTravlogContentStyle = GoogleFonts.inter(
    fontSize: 10, fontWeight: FontWeight.w500, color: mTitleColor);
var mTravlogPlaceStyle = GoogleFonts.inter(
    fontSize: 10, fontWeight: FontWeight.w500, color: mBlueColor);

// DateTime _parseDateStr(String inputString) {
//   DateFormat format = DateFormat.yMMMMd();
//   return format.parse(inputString);
// }
//
// parseDateIndo (tanggal) {
//   initializeDateFormatting('id_ID', null);
//   var dateValue = new DateFormat("yyyy-MM-ddTHH:mm:ssZ", "id_ID")
//       .parseUTC(tanggal);
//   String formattedDate =
//   DateFormat("dd MMM yyyy - HH:mm", "id_ID").format(dateValue);
//
//   return formattedDate;
// }
//

// nameDay(data) {
//   initializeDateFormatting('id_ID', null);
//   var nameDate = new DateFormat('EEEE', "id_ID").format(data);
//   // String formattedDate =
//   // DateFormat("EEEE").format(dateValue);
//   return nameDate;
// }
//
// kodeDay(data) {
//   initializeDateFormatting('id_ID', null);
//   var nameDate = new DateFormat('EEEE', "id_ID").format(data);
//   var kodeDate;
//   if(nameDate == 'Senin') {
//     kodeDate = 1;
//   }else if(nameDate == 'Selasa') {
//     kodeDate = 2;
//   }else if(nameDate == 'rabu') {
//     kodeDate = 3;
//   }else if(nameDate == 'Kamis') {
//     kodeDate = 4;
//   }else if(nameDate == 'Jumat') {
//     kodeDate = 5;
//   }else if(nameDate == 'Sabtu') {
//     kodeDate = 6;
//   }
//
//   return kodeDate;
// }

//
// parseDateIndoFullNameMount (tanggal) {
//   initializeDateFormatting('id_ID', null);
//   print(tanggal);
//   var dateValue = DateFormat("yyyy-MM-ddTHH:mm:ssZ", "id_ID")
//       .parseUTC(tanggal);
//   print(dateValue);
//   String formattedDate =
//   DateFormat("dd MMMM yyyy - HH:mm", "id_ID").format(dateValue);
//
//   return formattedDate;
// }
//
// parseDate (tanggal) {
//   initializeDateFormatting('id_ID', null);
//   var dateValue = new DateFormat("yyyy-MMMM-ddTHH:mm:ssZ", "id_ID")
//       .parseUTC(tanggal);
//   String formattedDate =
//   DateFormat("dd-mm-yyyy HH:mm", "id_ID").format(dateValue);
//
//   return formattedDate;
// }

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

// var perseDate = (){
//   var today = new DateTime.now();
//   var formatedTanggal = new DateFormat.MMMM().format(today);
//   return formatedTanggal;
// };

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}

class DefaultButtonCustomeColor extends StatelessWidget {
  const DefaultButtonCustomeColor({
    Key? key,
    this.text,
    this.color,
    this.press,
  }) : super(key: key);
  final String? text;
  final Color? color;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: color,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: mTitleStyleButton,
        ),
      ),
    );
  }
}
