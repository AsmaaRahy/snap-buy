// import 'package:dio/dio.dart';
// class DioHelper{
//   static Dio dio =Dio();
//   static init(){
//     dio=Dio(
//       BaseOptions(
//         baseUrl: 'https://student.valuxapps.com/api/',
//         receiveDataWhenStatusError: true,
//
//       ),
//     );
//   }
//
//   static Future<Response> getData({
//     required String url,
//     query,
//     String lang = 'en',
//     token,
//   }) async
//   {
//     dio.options.headers =
//     {
//       'lang':lang,
//       'Authorization': token??'',
//       'Content-Type': 'application/json',
//     };
//
//     return await dio.get(
//       url,
//       queryParameters: query,
//     );
//   }
//
//   static Future<Response> postData({
//     required String url,
//     required Map<String, dynamic> data,
//     query,
//     String lang = 'en',
//     token,
//   }) async
//   {
//     dio.options.headers =
//     {
//       'lang':lang,
//       'Authorization': token??'',
//       'Content-Type': 'application/json',
//     };
//
//     return dio.post(
//       url,
//       queryParameters: query,
//       data: data,
//     );
//   }
//
//   static Future<Response> putData({
//     required String url,
//     required Map<String, dynamic> data,
//     query,
//     String lang = 'en',
//     token,
//   }) async
//   {
//     dio.options.headers =
//     {
//       'lang':lang,
//       'Authorization': token??'',
//       'Content-Type': 'application/json',
//     };
//
//     return dio.put(
//       url,
//       queryParameters: query,
//       data: data,
//     );
//   }
// }