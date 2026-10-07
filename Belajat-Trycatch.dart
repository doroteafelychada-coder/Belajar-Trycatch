import 'dart:convert';
import 'package:http/http.dart' as http;

// void main () async {
//  Future<void> tarikdata() async {
//      var response = await http.get(
//          Uri.parse('https://jsonplaceholder.typicode.com/posts')
//          );

//          var data = jsonDecode(response.body);
//          print(data[0]['title']);
//          }
//          await tarikdata();
//          }  



// fungsi tanpa pengembalian nilai
// void main () async {
//      Future<void> tarikdata() async {
//      var response = await http.get(
//           Uri.parse('https://jsonplaceholder.typicode.com/users')
//           );

//      var data = jsonDecode(response.body);
//          print('nama saya ${data[1]['name']}, username ${data[1]['username']}, kota saya ${data[1]['address']['city']}');
//          }
//   await tarikdata();
// }


// fungsi dengan pengembalian nilai
// void main () async {
//      Future<List<dynamic>> tarikdata() async {
//      try {
//           var response = await http.get(
//           Uri.parse('https://jsonplaceholder.typicode.com/users')
//           );
//           var data = jsonDecode(response.body);
//           return data;
//           } catch (e) {
//             print (e);
//         return [];
//       }
//     }
  
// List<dynamic> hasil = await tarikdata();
// for biasa
//   for (var i = 0; i < hasil.length; i++) {
//     print('=====================================================================================');
//     print(
//       '${hasil[i]['name']} '
//       '${hasil[i]['username']} '
//       '${hasil[i]['address']['city']}'
      
//     );
//   }
     
//for in
  //   for (var element in hasil) {
  //   print('=====================================================================================');
  //   print('${element['name']}     ${element['username']}     ${element['address']['city']}');
  //   }

//for each
//   hasil.forEach((element) {
//     print('====================================================');
//     print('${element['name']}    ${element['username']}    ${element['address']['city']}');
//     }); 
//   }



Future<List<dynamic>> tarikdata() async {
  try {
    var response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
      );
    var data = jsonDecode(response.body);
    
  return data['products']; 
  } catch (e) {
    print('Error: $e');
  return [];
  } 
}
void main() async {
  List<dynamic> hasil = await tarikdata();

  print('--- 1. Standard For Loop ---');
  for (var i = 0; i < hasil.length; i++) {
    print('========================================================================');
    print('${hasil[i]['title']}      ${hasil[i]['price']}       ${hasil[i]['stock']}');
  }
}