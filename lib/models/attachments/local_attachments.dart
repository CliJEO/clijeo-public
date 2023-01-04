import 'package:clijeo_public/controllers/core/file/file_controller.dart';

class LocalAttachments {
  String name;
  String path;
  String filetype;
  LocalAttachments({required String filename, required this.path})
      : filetype = FileController.getFileType(filename),
        name = FileController.getAttachmentName(filename);
}
