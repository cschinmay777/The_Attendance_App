// import 'dart:html';
// import 'dart:js';
// import 'dart:ui';
//
// import 'package:pdf/pdf.dart';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/widgets.dart';
//
// class pdfApi {
//   static Future<File>generateCenteredText(String text) async{
//     final pdf = Document();
//     pdf.addPage(Page(
//       build: (context) => Center(
//         child : Text(text,
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           fontStyle: FontStyle.italic,
//         ))
//       )
//     ));
//     return saveDocument(name: 'Leave_Appliation.pdf',pdf:pdf);
//   }
//
//   static Future<File>saveDocument({
//
//   required String name,
//   required Document pdf,
//   })async{
//     final bytes = await pdf.save();
//     final dir= await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/${name}');
//
//   }
// });
// }
