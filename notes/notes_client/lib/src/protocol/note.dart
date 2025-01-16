/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// Holds a note with a text written by the user.
abstract class Note implements _i1.SerializableModel {
  Note._({required this.text});

  factory Note({required String text}) = _NoteImpl;

  factory Note.fromJson(Map<String, dynamic> jsonSerialization) {
    return Note(text: jsonSerialization['text'] as String);
  }

  /// The contents of the note.
  String text;

  Note copyWith({String? text});
  @override
  Map<String, dynamic> toJson() {
    return {'text': text};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _NoteImpl extends Note {
  _NoteImpl({required String text}) : super._(text: text);

  @override
  Note copyWith({String? text}) {
    return Note(text: text ?? this.text);
  }
}
