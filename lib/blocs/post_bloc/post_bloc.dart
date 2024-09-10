import 'package:api_assignment/models/comment.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<DisplayComments>((event, emit) {
      emit(SuccessfullCommentState(comments: event.comments));
    });
  }
}