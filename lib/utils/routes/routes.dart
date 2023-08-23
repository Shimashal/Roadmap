
import 'package:flutter/material.dart';
import 'package:map_app_task/view/OTP_Auth/otp_auth.dart';
import 'package:map_app_task/view/OTP_Auth/otp_new.dart';
import 'package:map_app_task/view/fogot_password/forgot_pass.dart';
import 'package:map_app_task/view/pages/bottombar.dart';
import 'package:map_app_task/view/pages/roadmap/ASPDOTNET/roadmap_aspnet.dart';
import 'package:map_app_task/view/pages/roadmap/Angular/roadmap_angular.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level1/built_in_types.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level1/dartpad.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level1/variables.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/firebase_authentication.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/firebase_storage.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/firebase_storing.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/firestore_firebase.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/push_notification.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/remote_config_firebase.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/sharedprefrences.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/sqlite_storage.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/async_await.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/collections_advance.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/core_libraries.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/functional_programming.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/futures_advance.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/isolates.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/lambdas_advance.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/list_advance.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/sublevels/streams.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/sublevel/bloc_state.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/sublevel/change_notifier.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/sublevel/provider_state.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/sublevel/redux_state.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/sublevel/riverpod_state.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/sublevel/value_notifier.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level13/rxdart_reactive.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/sublevels.dart/animated_widget.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/sublevels.dart/animation_builder.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/sublevels.dart/animation_controller.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/sublevels.dart/curved_animation.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/sublevels.dart/hero_animation.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/sublevels.dart/opacity_animation.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level15/sublevel/bdd.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level15/sublevel/integration_testing.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level15/sublevel/tdd.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level15/sublevel/unit_testing.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level15/sublevel/widget_testing.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level16/sublevels/flutter_inspector.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level16/sublevels/flutter_outline.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level16/sublevels/memory_allocation.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level17/sublevel/3_trees.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level17/sublevel/_immutability.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level17/sublevel/render_objects.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level18/sublevel/bitrise_.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level18/sublevel/codemagic.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level18/sublevel/fast_lane.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level18/sublevel/firebase_app_dist.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level18/sublevel/github_actions.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level19/sublevel/mix_panel.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level19/sublevel/segmentt.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level2/flutter_cli.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level2/fvm.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level2/ides.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level20/sublevel/_appstore.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level20/sublevel/guidelines_protocols.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level20/sublevel/playstore.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/cupertino_widget.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/inherit_widget.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/material_widget.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/state_ful.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/stateless.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/style_widget.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level4/fonts_.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level4/images_.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level4/other_file_types.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level5/git_l5.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level6/github_flutter.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level7/dependency_injec.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level7/design_patterns.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level7/oop_flutter.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level7/solid_principles.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level8/flutter_pub.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level8/pub_dev.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level9/graphql.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level9/json_ser_de.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level9/restful_apis.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level9/websocket.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/roadmap_flutter.dart';
import 'package:map_app_task/view/pages/roadmap/Python/roadmap_python.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level1/sublevel/create_react_app.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level1/sublevel/vite.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/class_comp.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/com_basics.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/composition_inh.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/conditional_rendering.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/func_comp.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/jsx_comp.dart';
import 'package:map_app_task/view/pages/roadmap/React/Level2/sublevel/prop_vs_state.dart';
import 'package:map_app_task/view/pages/roadmap/React/roadmap_react.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level1/sublevels/history_java.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level1/sublevels/how_torun.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level1/sublevels/java_l1.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level1/sublevels/java_version.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/arguments_obj.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/arrow_func.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/built_in_func.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/defining_calling.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/function_param_java.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/iife_func.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/sublevels/scope_func.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/sublevels/binding_explicit.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/sublevels/event_handlers.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/sublevels/function_borrowing.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/sublevels/this_alone.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/sublevels/this_function.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/sublevels/this_method.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level13/sublevel/_callbacks.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level13/sublevel/event_loop.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level13/sublevel/promises.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level13/sublevel/set_interval.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level13/sublevel/set_timeout.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level14/sublevel/fetch_api.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level14/sublevel/xml_http_request.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level17/sublevel/common_js.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level17/sublevel/es_modules.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level18/garbage_collection.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level18/memory_lifecycle.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level19/sublevels/debug_issues.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level19/sublevels/debug_memory_leaks.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level19/sublevels/debug_performance.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/block_scope.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/const_keyword.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/function_scope.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/global_scopes.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/hoisting.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/let_keyword.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/var_java.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/var_naming.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/var_scopes.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/sublevels/variable_dec.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/sublevels/builtin_objects.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/sublevels/object_datatype.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/sublevels/object_prototypal_inheritance.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/sublevels/object_prototypes.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/sublevels/primitive_types.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/sublevels/typeof.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level4/sublevels/explicit_typecasting.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level4/sublevels/implicit_typecasting.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level4/sublevels/type_conversion.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/arrays_java.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/indexed_collection.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/json_java.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/keyed_collection.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/map_keyed.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/set_keyedcollection.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/structured_data.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/typed_arrays.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/weakSet_keyedcollection.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/sublevel/weak_map_keyedcollection.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/sublevels/equality_algo.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/sublevels/islooselyequals.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/sublevels/isstrictlyequal.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/sublevels/same_value.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/sublevels/samevalue_zero.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/sublevels/value_comparison.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/break_continue.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/conditional_statement.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/do_while.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/for_in.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/for_loop.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/for_of.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/exception_handling.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/if_else.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/labeled_statements.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/switch.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/sublevels/while_statement.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/throw_statement.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/try_catch_finally.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/sublevels/utilizing_error.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/arithmetic_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/assignmnet_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/bigint.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/bitwise.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/comma_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/comparison_operator.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/conditional_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/logical_operator.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/relational_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/string_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/sublevels/unary_op.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/roadmap_javascript.dart';
import 'package:map_app_task/view/signup/sign_up_screen.dart';
import 'package:map_app_task/view/splash/splash_screen.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import '../../view/login/login_screen.dart';
import '../../view/pages/myprofile_screen.dart';


class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final arguments = settings.arguments;
    switch (settings.name) {
      case RouteName.splashScreen:

        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.loginView:
        return MaterialPageRoute(builder: (_) => const Login_Screen());

      case RouteName.signUpScreen:
        return MaterialPageRoute(builder: (_) => const Signup_Screen());

      case RouteName.otpPhoneScreen:
        return MaterialPageRoute(builder: (_) => const OtpMyPhone()); 

      case RouteName.otpScreenTwo:
        return MaterialPageRoute(builder: (_) => const AuthotpScreen());  
      case RouteName.forgotPassScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case RouteName.BottomScreen:
        return MaterialPageRoute(builder: (_) => const BottomBar());
      case RouteName.MyProfile_screen:
        return MaterialPageRoute(builder: (_) => const MyProfileScreen());
      case RouteName.FirstFLutter:
        return MaterialPageRoute(builder: (_) => const FlutterGuide());  
      // case RouteName.FlutterBasics:
      //   return MaterialPageRoute(builder: (_) => const BasicsDart());
      case RouteName.DartpadScreen:
        return MaterialPageRoute(builder: (_) => const DartPad());  
      case RouteName.VariablesScreen:
        return MaterialPageRoute(builder: (_) => const VariableDart());
      case RouteName.BuiltinTypesScreen:
        return MaterialPageRoute(builder: (_) => const BuiltTypes());  
      case RouteName.Flutter_CLI:
        return MaterialPageRoute(builder: (_) => const FlutterCLI()); 
      case RouteName.idesLevel2:
        return MaterialPageRoute(builder: (_) => const IDES());   
       case RouteName.fvmLevel2:
        return MaterialPageRoute(builder: (_) => const FVMLevel2()); 
      case RouteName.Inherited_widget:
        return MaterialPageRoute(builder: (_) => const InheritedWidgets());   
      case RouteName.STATELESS_WIDGET:
        return MaterialPageRoute(builder: (_) => const StatelessWidgets());
      case RouteName.STATE_FULL_WIDGET:
        return MaterialPageRoute(builder: (_) => const StatefulWidgets()); 
      case RouteName.Style_Widgets:
        return MaterialPageRoute(builder: (_) => const StyleWidgets());
      case RouteName.Material_Widgets:
        return MaterialPageRoute(builder: (_) => const MaterialWidgets());   
      case RouteName.Cupertino_Widgets:
        return MaterialPageRoute(builder: (_) => const CupertinoWidgets()); 
      case RouteName.Fonts_Level4:
        return MaterialPageRoute(builder: (_) => const FontsL4());  
      case RouteName.Images_Level4:
        return MaterialPageRoute(builder: (_) => const ImagesL4());  
      case RouteName.Othre_File_Level4:
        return MaterialPageRoute(builder: (_) => const OTHERFileL4());
      case RouteName.GitL5:
        return MaterialPageRoute(builder: (_) => const GitL5());
      case RouteName.GitHubL6:
        return MaterialPageRoute(builder: (_) => const GitHubL6());
      case RouteName.OOPDartL7:
        return MaterialPageRoute(builder: (_) => const OOPDart());
      case RouteName.DesignPatternsL7:
        return MaterialPageRoute(builder: (_) => const DesignPatterns());
      case RouteName.SOLIDPrincipleL7:
        return MaterialPageRoute(builder: (_) => const SolidPrinciples());
      case RouteName.DependencyInject:
        return MaterialPageRoute(builder: (_) => const DependencyInjection());
      case RouteName.PubDev:
        return MaterialPageRoute(builder: (_) => const PubDart());
      case RouteName.Flutter_Pub:
        return MaterialPageRoute(builder: (_) => const FlutterDartt());
      case RouteName.Web_SocketL9:
        return MaterialPageRoute(builder: (_) => const WebSocketL9());
      case RouteName.Graph_QL:
        return MaterialPageRoute(builder: (_) => const GraphQL());
      case RouteName.RestAPiL9:
        return MaterialPageRoute(builder: (_) => const RestfulAPI());
      case RouteName.JSONL9:
        return MaterialPageRoute(builder: (_) => const JSON_API());
      case RouteName.SQLiteStorage:
        return MaterialPageRoute(builder: (_) => const SQLite_Storage());
      case RouteName.FirebaseStorage:
        return MaterialPageRoute(builder: (_) => const FirebaseStorage()); 
      case RouteName.SharedprefStorage:
        return MaterialPageRoute(builder: (_) => const SharedprefrencesStorage());
      case RouteName.FirebaseAuthStorage:
        return MaterialPageRoute(builder: (_) => const FirebaseAuthStore());
      case RouteName.Storagefirebase:
        return MaterialPageRoute(builder: (_) => const StoreageFirebase());
      case RouteName.PushNotifyfirebase:
        return MaterialPageRoute(builder: (_) => const PushNotificationFirebase());
      case RouteName.FireStore_Firebase:
        return MaterialPageRoute(builder: (_) => const FireStoreFirebase());
      case RouteName.RemoteConfigfirebase:
        return MaterialPageRoute(builder: (_) => const RemoteConfigFirebase());
      case RouteName.CoreLibrary:
        return MaterialPageRoute(builder: (_) => const CoreLib());
      case RouteName.StreamsAdvance:
        return MaterialPageRoute(builder: (_) => const StreamAdvance());
      case RouteName.Futures_Advance:
        return MaterialPageRoute(builder: (_) => const FutureAdvance());
      case RouteName.Lists_Advance:
        return MaterialPageRoute(builder: (_) => const ListsAdvance());
      case RouteName.Collections_Advance:
        return MaterialPageRoute(builder: (_) => const CollectionsAdvance());
      case RouteName.Lambdas_Advance:
        return MaterialPageRoute(builder: (_) => const LambdasAdvance());
      case RouteName.FunctionalProg:
        return MaterialPageRoute(builder: (_) => const FuncProg());
      case RouteName.IsoLates:
        return MaterialPageRoute(builder: (_) => const IsolatesAdvance());
      case RouteName.asyncawait:
        return MaterialPageRoute(builder: (_) => const AsyncAwait());
      case RouteName.ReduxStates:
        return MaterialPageRoute(builder: (_) => const ReduxState());
      case RouteName.Value_Notify_States:
        return MaterialPageRoute(builder: (_) => const ValueNotifierState());
      case RouteName.Change_Notify:
        return MaterialPageRoute(builder: (_) => const ChangeNotifierState());
      case RouteName.Riverpod_State:
        return MaterialPageRoute(builder: (_) => const RiverpodState());
      case RouteName.Bloc_State:
        return MaterialPageRoute(builder: (_) => const BlocState());
      case RouteName.Provider_State:
        return MaterialPageRoute(builder: (_) => const ProviderState());
      case RouteName.RxDartProgramming:
        return MaterialPageRoute(builder: (_) => const RxDartProgram());
      case RouteName.Curved_Animations:
        return MaterialPageRoute(builder: (_) => const CurvedAnimations());
      case RouteName.animation_controller:
        return MaterialPageRoute(builder: (_) => const AnimationsController());
      case RouteName.Animated_Widgets:
        return MaterialPageRoute(builder: (_) => const AnimatedWidgets());
      case RouteName.Animated_Builders:
        return MaterialPageRoute(builder: (_) => const AnimatedBuilders());
      case RouteName.HeroAnimations:
        return MaterialPageRoute(builder: (_) => const HeroAnimation());
      case RouteName.OpaciityAnimations:
        return MaterialPageRoute(builder: (_) => const OpacityAnimation());
      case RouteName.unittestings:
        return MaterialPageRoute(builder: (_) => const UnitTestings());
      case RouteName.widgettestings:
        return MaterialPageRoute(builder: (_) => const WidgetTestings());
      case RouteName.integrationtestings:
        return MaterialPageRoute(builder: (_) => const IntegrationTest());
      case RouteName.bddtestings:
        return MaterialPageRoute(builder: (_) => const BDDTest());
      case RouteName.tddtestings:
        return MaterialPageRoute(builder: (_) => const TDDTest()); 
      case RouteName.flutterinspector:
        return MaterialPageRoute(builder: (_) => const FlutterInspect()); 
      case RouteName.flutterOutline:
        return MaterialPageRoute(builder: (_) => const FlutterOutline()); 
      case RouteName.memoryAllocation:
        return MaterialPageRoute(builder: (_) => const Memoryallocation()); 
      case RouteName.renderObject:
        return MaterialPageRoute(builder: (_) => const RendersObjects()); 
      case RouteName.appStore:
        return MaterialPageRoute(builder: (_) => const AppStores());
      case RouteName.guidelineprotocols:
        return MaterialPageRoute(builder: (_) => const GuidelineProtocols());
      case RouteName.playstores:
        return MaterialPageRoute(builder: (_) => const PlayStores()); 
      case RouteName.fastLane:
        return MaterialPageRoute(builder: (_) => const FastLane());
      case RouteName.codemagic:
        return MaterialPageRoute(builder: (_) => const Codemagic());
      case RouteName.bitrise_:
        return MaterialPageRoute(builder: (_) => const Bitrise());
      case RouteName.gitHubActions:
        return MaterialPageRoute(builder: (_) => const GitHubActions());
      case RouteName.firebaseAppDistribution:
        return MaterialPageRoute(builder: (_) => const FirebaseAppDistribution());
      case RouteName.mixPanel:
        return MaterialPageRoute(builder: (_) => const MixPanel());
      case RouteName.segments:
        return MaterialPageRoute(builder: (_) => const Segments());
      case RouteName.immutabilityInternal:
        return MaterialPageRoute(builder: (_) => const ImmutabilityInternal());
      case RouteName.threeTrees:
        return MaterialPageRoute(builder: (_) => const ThreeTrees());
      case RouteName.roadmapReact:
        return MaterialPageRoute(builder: (_) => const ReactGuide());
      case RouteName.roadmapAngular:
        return MaterialPageRoute(builder: (_) => const AngularGuide());
      case RouteName.roadmapASP:
        return MaterialPageRoute(builder: (_) => const ASPGuide());
      case RouteName.pythonroadmap:
        return MaterialPageRoute(builder: (_) => const PythonGuide());
      case RouteName.roadmapJavaScript:
        return MaterialPageRoute(builder: (_) => const JavaScriptGuide());
      case RouteName.whatJava:
        return MaterialPageRoute(builder: (_) => const WhatJava());
      case RouteName.historyJava:
        return MaterialPageRoute(builder: (_) => const HistoryJava());
      case RouteName.versionJava:
        return MaterialPageRoute(builder: (_) => const JavaVersion());
      case RouteName.howToRunJava:
        return MaterialPageRoute(builder: (_) => const HowToRunJava());
      case RouteName.varDeclarations:
        return MaterialPageRoute(builder: (_) => const VariableDec());
      case RouteName.varKeyword:
        return MaterialPageRoute(builder: (_) => const VarKeyword());
      case RouteName.letKeyword:
        return MaterialPageRoute(builder: (_) => const LetKeyword());
      case RouteName.constKeyword:
        return MaterialPageRoute(builder: (_) => const ConstKeyword());
      case RouteName.hoistingJava:
        return MaterialPageRoute(builder: (_) => const HoistingJava());
      case RouteName.varNaming:
        return MaterialPageRoute(builder: (_) => const VarNamingJava());
      case RouteName.varScopes:
        return MaterialPageRoute(builder: (_) => const VarScopes());
      case RouteName.blockScopes:
        return MaterialPageRoute(builder: (_) => const BlockScope());
      case RouteName.functionScopes:
        return MaterialPageRoute(builder: (_) => const FunctionScope());
      case RouteName.globalScopes:
        return MaterialPageRoute(builder: (_) => const GlobalScope());
      case RouteName.typeofOperator:
        return MaterialPageRoute(builder: (_) => const TypeOfOperator());
      case RouteName.objectOperator:
        return MaterialPageRoute(builder: (_) => const OperatorDataType());
      case RouteName.objectPrototype:
        return MaterialPageRoute(builder: (_) => const PrototypesObject());
      case RouteName.prototypalInheritance:
        return MaterialPageRoute(builder: (_) => const PrototypalInheritance());
      case RouteName.primitiveTypes:
        return MaterialPageRoute(builder: (_) => const PrimitiveTypes());
      case RouteName.builtinObjects:
        return MaterialPageRoute(builder: (_) => const BuiltinObjects());
      case RouteName.typeConversion:
        return MaterialPageRoute(builder: (_) => const TypeConversion());
      case RouteName.explicitType:
        return MaterialPageRoute(builder: (_) => const ExplicitTypeCasting());
      case RouteName.implicitType:
        return MaterialPageRoute(builder: (_) => const ImplicitTypeCasting());
      case RouteName.keyedCollections:
        return MaterialPageRoute(builder: (_) => const KeyedCollection());
      case RouteName.mapkeyedCollections:
        return MaterialPageRoute(builder: (_) => const MapKeyedCollection());
      case RouteName.weakMapkeyedCollections:
        return MaterialPageRoute(builder: (_) => const WeakMapKeyedCollection());
      case RouteName.setKeyedCollections:
        return MaterialPageRoute(builder: (_) => const SetKeyedCollection());
      case RouteName.weakSetkeyedCollections:
        return MaterialPageRoute(builder: (_) => const WeakSetKeyedCollection());
      case RouteName.structuredData:
        return MaterialPageRoute(builder: (_) => const StructuredData());
      case RouteName.jsonData:
        return MaterialPageRoute(builder: (_) => const JSONdata());
      case RouteName.indexedCollections:
        return MaterialPageRoute(builder: (_) => const IndexedCollections());
      case RouteName.arrayCollections:
        return MaterialPageRoute(builder: (_) => const ArraysIndexedCollections());
      case RouteName.typedArrayCollections:
        return MaterialPageRoute(builder: (_) => const TypedArraysCollections());
      case RouteName.valueComparisons:
        return MaterialPageRoute(builder: (_) => const ValueComparison());
      case RouteName.equalityAlgo:
        return MaterialPageRoute(builder: (_) => const EqualityAlgorithm());
      case RouteName.isLooselyEquals:
        return MaterialPageRoute(builder: (_) => const IsLooselyEquals());
      case RouteName.isstrictlyEquals:
        return MaterialPageRoute(builder: (_) => const IsStrictlyEquals());
      case RouteName.samevalueZero:
        return MaterialPageRoute(builder: (_) => const SamevalueZero());
      case RouteName.sameValue:
        return MaterialPageRoute(builder: (_) => const SameValue());
      case RouteName.forLoop:
        return MaterialPageRoute(builder: (_) => const ForLoopState());
      case RouteName.doWhileLoop:
        return MaterialPageRoute(builder: (_) => const DoWhileState());
      case RouteName.whileStatement:
        return MaterialPageRoute(builder: (_) => const WhileStatement());
      case RouteName.conditionalStatement:
        return MaterialPageRoute(builder: (_) => const ConditionalStatement());
      case RouteName.ifElseStatement:
        return MaterialPageRoute(builder: (_) => const IFelse());
      case RouteName.switchCase:
        return MaterialPageRoute(builder: (_) => const SwitchCase());
      case RouteName.forIn_:
        return MaterialPageRoute(builder: (_) => const ForInState());
      case RouteName.forOF_:
        return MaterialPageRoute(builder: (_) => const ForOFState());
      case RouteName.breakContinue:
        return MaterialPageRoute(builder: (_) => const BreakContinue());
      case RouteName.labeledState:
        return MaterialPageRoute(builder: (_) => const LabeledState());
      case RouteName.exceptionHandling:
        return MaterialPageRoute(builder: (_) => const ExceptionHandlings());
      case RouteName.throwState:
        return MaterialPageRoute(builder: (_) => const ThrowStatement());
      case RouteName.tryCatchFinally:
        return MaterialPageRoute(builder: (_) => const TryCatch());
      case RouteName.utlizingError:
        return MaterialPageRoute(builder: (_) => const UtilizingErrorObj());
      case RouteName.assignOperator:
        return MaterialPageRoute(builder: (_) => const AssignmentOperator());
      case RouteName.compareOperator:
        return MaterialPageRoute(builder: (_) => const ComparisonOperator());
      case RouteName.arithmeticOperator:
        return MaterialPageRoute(builder: (_) => const ArithmeticOperator());
      case RouteName.bitwiseOperator:
        return MaterialPageRoute(builder: (_) => const BitwiseOperator());
      case RouteName.bigIntOperator:
        return MaterialPageRoute(builder: (_) => const BigIntOperator());
      case RouteName.logicalOperator:
        return MaterialPageRoute(builder: (_) => const LogicalOperator());
      case RouteName.stringOperator:
        return MaterialPageRoute(builder: (_) => const StringOperator());
      case RouteName.conditionalOperator:
        return MaterialPageRoute(builder: (_) => const ConditionalOperator());
      case RouteName.commaOperator:
        return MaterialPageRoute(builder: (_) => const CommaOperator());
      case RouteName.unaryOperator:
        return MaterialPageRoute(builder: (_) => const UnaryOperator());
      case RouteName.relationalOperator:
        return MaterialPageRoute(builder: (_) => const RelationalOperator());
      case RouteName.definingCalling:
        return MaterialPageRoute(builder: (_) => const DefiningCallingFunctions());
      case RouteName.functionParam:
        return MaterialPageRoute(builder: (_) => const FunctionParameter());
      case RouteName.arrowfunction:
        return MaterialPageRoute(builder: (_) => const ArrowFunction());
      case RouteName.iifefunc:
        return MaterialPageRoute(builder: (_) => const IIFEFunction());
      case RouteName.argumentObj:
        return MaterialPageRoute(builder: (_) => const ArgumentsObject());
      case RouteName.funcScopeStack:
        return MaterialPageRoute(builder: (_) => const ScopefunctionStack());
      case RouteName.builtinFunction:
        return MaterialPageRoute(builder: (_) => const BuiltinFunction());
      case RouteName.thisMethod:
        return MaterialPageRoute(builder: (_) => const ThisMethod());
      case RouteName.thisFunction:
        return MaterialPageRoute(builder: (_) => const ThisFunction());
      case RouteName.thisAlone:
        return MaterialPageRoute(builder: (_) => const ThisAlone());
      case RouteName.thisEventHandler:
        return MaterialPageRoute(builder: (_) => const EventHaandling());
      case RouteName.arrowFunction:
        return MaterialPageRoute(builder: (_) => const ArrowFunction());
      case RouteName.explicitBind:
        return MaterialPageRoute(builder: (_) => const ExplicitBining());
      case RouteName.eventLoop:
        return MaterialPageRoute(builder: (_) => const EventLoop());
      case RouteName.callBacks:
        return MaterialPageRoute(builder: (_) => const CallBacks());
      case RouteName.promises_:
        return MaterialPageRoute(builder: (_) => const Promises());
      case RouteName.setTimeOut:
        return MaterialPageRoute(builder: (_) => const SetTimeout());
      case RouteName.setInterval:
        return MaterialPageRoute(builder: (_) => const SetInterval());
      case RouteName.functionBorrow:
        return MaterialPageRoute(builder: (_) => const BorrowingFunction());
      case RouteName.xmlHTTPReq:
        return MaterialPageRoute(builder: (_) => const XMLHTTPReq());
      case RouteName.fetchAPi:
        return MaterialPageRoute(builder: (_) => const FetchAPI());
      case RouteName.commonaJS:
        return MaterialPageRoute(builder: (_) => const CommonJS());
      case RouteName.ecmaScriptModule:
        return MaterialPageRoute(builder: (_) => const ESModules());
      case RouteName.memoryLifecycle:
        return MaterialPageRoute(builder: (_) => const MemoryLifecycle());
      case RouteName.garbageCollect:
        return MaterialPageRoute(builder: (_) => const GarbageCollection());
      case RouteName.debugIssues:
        return MaterialPageRoute(builder: (_) => const DebuggingIssues());
      case RouteName.debugMemoryLeak:
        return MaterialPageRoute(builder: (_) => const DebuggingMemoryLeaks());
      case RouteName.debugPerformance:
        return MaterialPageRoute(builder: (_) => const DebuggingPerformance());
      case RouteName.viteCLI:
        return MaterialPageRoute(builder: (_) => const ViteCLI());
      case RouteName.createReactApp:
        return MaterialPageRoute(builder: (_) => const CreateReactApp());
      case RouteName.classComponents:
        return MaterialPageRoute(builder: (_) => const ClassComponents());
      case RouteName.functionalComponents:
        return MaterialPageRoute(builder: (_) => const FunctionalComponents());
      case RouteName.componentBasics:
        return MaterialPageRoute(builder: (_) => const ComponentsBasics());
      case RouteName.jsxCom:
        return MaterialPageRoute(builder: (_) => const JSXComponents());
      case RouteName.propVSstate:
        return MaterialPageRoute(builder: (_) => const PropsState());
      case RouteName.conditionalRendering:
        return MaterialPageRoute(builder: (_) => const ConditionalRendering());
      case RouteName.compositionInherit:
        return MaterialPageRoute(builder: (_) => const CompositionvsInheritance());
      case RouteName.javaScriptGuide:
        return MaterialPageRoute(builder: (_) => const JavaScriptGuide());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}