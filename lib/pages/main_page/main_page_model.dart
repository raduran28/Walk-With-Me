import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  Local state fields for this page.

  String home = 'home';

  String map = 'Map';

  String locations = 'Locations';

  String favorites = 'Favorites';

  String profile = 'Profile';

  List<BusinessFeatureStruct> suggestionsList = [];
  void addToSuggestionsList(BusinessFeatureStruct item) =>
      suggestionsList.add(item);
  void removeFromSuggestionsList(BusinessFeatureStruct item) =>
      suggestionsList.remove(item);
  void removeAtIndexFromSuggestionsList(int index) =>
      suggestionsList.removeAt(index);
  void insertAtIndexInSuggestionsList(int index, BusinessFeatureStruct item) =>
      suggestionsList.insert(index, item);
  void updateSuggestionsListAtIndex(
          int index, Function(BusinessFeatureStruct) updateFn) =>
      suggestionsList[index] = updateFn(suggestionsList[index]);

  List<String> stops = [];
  void addToStops(String item) => stops.add(item);
  void removeFromStops(String item) => stops.remove(item);
  void removeAtIndexFromStops(int index) => stops.removeAt(index);
  void insertAtIndexInStops(int index, String item) =>
      stops.insert(index, item);
  void updateStopsAtIndex(int index, Function(String) updateFn) =>
      stops[index] = updateFn(stops[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetBusinesses)] action in MainPage widget.
  ApiCallResponse? apiResult9fj;
  // State field(s) for Home widget.
  TabController? homeController;
  int get homeCurrentIndex =>
      homeController != null ? homeController!.index : 0;
  int get homePreviousIndex =>
      homeController != null ? homeController!.previousIndex : 0;

  // State field(s) for Intro widget.
  PageController? introController;

  int get introCurrentIndex => introController != null &&
          introController!.hasClients &&
          introController!.page != null
      ? introController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (GetBusinesses)] action in Map widget.
  ApiCallResponse? mapBusinesses;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    homeController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
