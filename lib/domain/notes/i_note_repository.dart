import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:resonote/domain/notes/note.dart';
import 'package:resonote/domain/notes/note_failure.dart';

abstract class iNoteRepository {
	Stream<Either<NoteFailure, KtList<Note>>> watchAll();
	Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
	Future<Either<NoteFailure, Unit>> create(Note note);
	Future<Either<NoteFailure, Unit>> update(Note note);
	Future<Either<NoteFailure, Unit>> delete(Note note);
}