const String api = 'https://diesel-api.herokuapp.com/v1';
const String countryListUrl = api + '/user/country-list';
const String servicesListUrl = api + '/service/list';
const String craneListUrl =
    api + '/service-provider-individual/crane-type-list';
const String helpListUrl = api + '/service-provider-individual/help-list';

const String userRegisterByEmailURl = api + '/user/auth/sign-up';
const String userLoginByEmailURl = api + '/user/auth/login';
const String phoneVerificationURl = api + '/user/auth/varify-phone';
const String logoutURl = api + '/user/auth/logout';
const String userDetailsUrl = api + '/user/me';
const String saveUserLocationUrl = api + '/user/save-location';
const String individualRegisterUrl =
    api + '/service-provider-individual/auth/sign-up';
const String individualLoginUrl =
    api + '/service-provider-individual/auth/login';
const String individualLogoutUrl =
    api + '/service-provider-establishment/auth/logout';
const String companyRegisterUrl =
    api + '/service-provider-establishment/auth/sign-up';
const String companyLoginUrl =
    api + '/service-provider-establishment/auth/login';
const String companyLogoutUrl =
    api + '/service-provider-establishment/auth/logout';

//
// await response.stream.bytesToString().asStream().listen((event) {
//   print(event.toString());
// });
