import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/features/ai_chatbot/presentation/ai_chatbot_page.dart';
import 'package:nutritrion/app/features/meal_management/presentation/add_new_dish_page.dart';
import 'package:nutritrion/app/features/meal_management/presentation/meal_management_page.dart';
import 'package:nutritrion/app/features/meal_management/presentation/summary_page.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/ai_menu_suggestion_page.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/list_favorite_meal_suggestion_page.dart';
import 'package:nutritrion/app/features/search_foods/presentation/search_foods_page.dart';
import 'package:nutritrion/app/features/user_management/presentation/enter_user_information_page.dart';
import 'package:nutritrion/app/features/view_food_common_details/presentation/view_food_details_page.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/presentation/view_list_favorite_foods_page.dart';
import 'package:nutritrion/app/splash_page.dart';
import 'package:path/path.dart';
import 'package:tuple/tuple.dart';

final routes = [
  /*GoRoute(
    name: "food_common_details",
    path: "/food_common_details",
    builder: (context, state) =>
        FoodCommonDetailsPage(foodCommon: state.extra as FoodCommon),
  ),*/

  GoRoute(path: "/splash_page", name: "splash", builder: (context, state) => SplashPage()),
  GoRoute(path: '/ai_chatbot_page', builder: (context, state) => const AIChatBotPage()),
  GoRoute(
      path: '/favorite_meal_suggestion_page',
      builder: (context, state) =>
          ListFavoriteMealSuggestionPage(mealType: state.extra as MealType)),
  GoRoute(
      path: '/ai_menu_suggestion_page', builder: (context, state) => const AIMenuSuggestionPage()),
  GoRoute(
      path: "/enter_user_information_page",
      name: "enter_user_information_page",
      builder: (context, state) => const EnterUserInformationPage()),
  GoRoute(
      path: "/search_foods_page",
      name: "search_foods_page",
      builder: (context, state) => const SearchFoodsPage()),
  GoRoute(
      path: "/summary_page",
      name: "summary_page",
      builder: (context, state) => const SummaryPage()),
  GoRoute(
      path: "/meal_management_page",
      name: "meal_management_page",
      builder: (context, state) => const MealManagementPage()),
  GoRoute(
      path: "/add_new_dish_page",
      name: "add_new_dish_page",
      builder: (context, state) => AddNewDishPage(
            foodNameAndDataSourceType: state.extra as (String, DataSourceType),
          )),
  GoRoute(
      path: "/view_list_favorite_foods_page",
      name: "view_list_favorite_foods_page",
      builder: (context, state) => ViewListFavoriteFoodsPage(
            isSelectMode: state.extra as bool,
          )),
  GoRoute(
    name: "view_food_common_details_page",
    path: "/view_food_common_details_page",
    builder: (context, state) => ViewFoodDetailsPage(
      tuple: state.extra as Tuple2<String, DataSourceType>,
    ),
  ),
];
