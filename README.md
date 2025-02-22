# Project Title
This application fetches the most popular articles from The New York Times and displays them in a user-friendly list. Users can tap on an article to see additional details, such as the article’s byline, publication date, and source. The app is designed with a clean, maintainable architecture, leveraging best practices in state management (using Bloc or Cubit), dependency injection, and responsive UI elements.

## Getting Started

1. **Install Flutter** ([link to official docs](https://flutter.dev/))
2. **Clone the repository**: `git clone [https://...](https://github.com/KarimRaouf/Galaxy_Task.git)`
3. **Install dependencies**: `flutter pub get`
4. **Run the app**: `flutter run`

## Architecture

- **Core**: Shared utilities, theming, networking, routing
- **Features**: Each feature has data, domain, presentation
- **Shared**: Common widgets

## State Management

- **Bloc(Cubit)** used to separate UI from business logic
- **Why**: Predictable state, easier to test, etc.

## Folder Structure

lib/
├─ core/
│  ├─ app_strings.dart
│  ├─ helper/
│  │  ├─ network_constants.dart
│  │  ├─ extentions.dart
│  │  ├─ spacing.dart
│  │  └─ ...
│  ├─ networking/
│  │  ├─ error/
│  │  │  ├─ dio_error_handler.dart
│  │  │  ├─ exceptions.dart
│  │  │  └─ failures.dart
│  │  ├─ dio_network.dart
│  │  └─ logger_interceptor.dart
│  ├─ routing/
│  │  └─ app_router.dart
│  ├─ theming/
│  │  ├─ app_colors.dart
│  │  ├─ font_weight_helper.dart
│  │  └─ styles.dart
│  └─ utils/
│     └─ log/
│        └─ app_logger.dart
├─ features/
│  ├─ articles/
│  │  ├─ data/
│  │  │  ├─ data_sources/...
│  │  │  └─ repositories/...
│  │  ├─ domain/
│  │  │  ├─ models/
│  │  │  └─ usecases/
│  │  ├─ presentation/
│  │  │  ├─ cubit/
│  │  │  └─ views/
│  │  │     ├─ article_details_view.dart
│  │  │     ├─ article_view.dart
│  │  │     └─ ...
│  │  ├─ widgets/
│  │  │  ├─ article_list_view.dart
│  │  │  ├─ times_image_and_description_item.dart
│  │  │  └─ ...
│  │  └─ article_injections.dart
│  └─ ...
├─ shared/
│  ├─ widgets/
│  │  ├─ app_loader.dart
│  │  └─ cached_image_widget.dart
│  └─ ...
├─ generated/
├─ main.dart
└─ bloc_observer.dart


## Key Decisions

- **Bloc vs other solutions**
- **Dio for networking**
- **Use of `cached_network_image`** for image caching
- **Clean Architecture** for maintainability


## Screens
![Screenshot_20250222_214238](https://github.com/user-attachments/assets/3ebda182-6817-4a8f-95f3-8846f2d0fe6c)
![Screenshot_20250222_214326](https://github.com/user-attachments/assets/236455c5-f8d9-435d-ae6a-dd51afd0e651)
