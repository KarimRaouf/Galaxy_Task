# Overview
This Flutter application fetches and displays the most popular articles from The New York Times. It follows a clean architecture approach using Cubit/BLoC for state management.

## Getting Started

1. **Install Flutter** ([link to official docs](https://flutter.dev/))
2. **Clone the repository**: `git clone https://github.com/KarimRaouf/Galaxy_Task.git`
3. **Install dependencies**: `flutter pub get`
4. **Run the app**: `flutter run`

## Architecture

1. Core Layer

- **Core**: Shared utilities, theming, networking, routing
- **Features**: Each feature has data, domain, presentation
- **Shared**: Common widgets

## Project Structure

```lib/
├─ core/
│  ├─ app_strings.dart
│  ├─ helper/
│  │  ├─ network_constants.dart
│  │  ├─ extensions.dart
│  │  ├─ spacing.dart
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
│  ├─ utils/
│  │  └─ log/
│  │     └─ app_logger.dart
├─ features/
│  ├─ articles/
│  │  ├─ data/
│  │  │  ├─ data_sources/
│  │  │  └─ repositories/
│  │  ├─ domain/
│  │  │  ├─ models/
│  │  │  └─ usecases/
│  │  ├─ presentation/
│  │  │  ├─ cubit/
│  │  │  ├─ views/
│  │  │  │  ├─ article_details_view.dart
│  │  │  │  ├─ article_view.dart
│  │  ├─ widgets/
│  │  │  ├─ article_list_view.dart
│  │  │  ├─ times_image_and_description_item.dart
│  │  ├─ article_injections.dart
├─ shared/
│  ├─ widgets/
│  │  ├─ app_loader.dart
│  │  ├─ cached_image_widget.dart
├─ generated/
├─ main.dart
└─ bloc_observer.dart
```

## State Management

- **Bloc(Cubit)** used to separate UI from business logic
- **Why**: Predictable state, easier to test, etc.

## Key Decisions

- **Bloc vs other solutions**
- **Dio for networking**
- **Use of `cached_network_image`** for image caching
- **Clean Architecture** for maintainability


## Screens

![Screenshot_20250222_214238](https://github.com/user-attachments/assets/8eff3d6b-e2e5-4391-a4b2-00d84edfa932)
![Screenshot_20250222_214326](https://github.com/user-attachments/assets/bd8f46be-8cc6-4b01-b4d3-22eda09178fd)

[📥 Download the APK]([https://drive.google.com/your-apk-link](https://drive.google.com/file/d/1GA4VdehvQYwlOBnnPOQfyX3rnknE-_1W/view?usp=sharing)



