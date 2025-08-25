plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    // Add the Performance Monitoring Gradle plugin
    id("com.google.firebase.firebase-perf")
}

android {
    namespace = "com.example.e_commerce_app"
    compileSdk = 36
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.e_commerce_app"
        minSdk = (project.findProperty("flutter.minSdkVersion")?.toString()?.toInt() ?: 23)
        targetSdk = (project.findProperty("flutter.targetSdkVersion")?.toString()?.toInt() ?: 35)
        versionCode = (project.findProperty("flutter.versionCode")?.toString()?.toInt() ?: 1)
        versionName = project.findProperty("flutter.versionName")?.toString() ?: "0.1.0"
        multiDexEnabled = true
    }

    signingConfigs {
        create("release") {
            storeFile = file("keys/my-release-key.jks")
            storePassword = "ShadowFruitHub"
            keyAlias = "my-key-alias"
            keyPassword = "ShadowCompany"
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Import the BoM for the Firebase platform
    implementation(platform("com.google.firebase:firebase-bom:34.1.0"))
    // Add the dependency for the Performance Monitoring library
    // When using the BoM, you don't specify versions in Firebase library dependencies
    implementation("com.google.firebase:firebase-perf")

    // Firebase App Check (Play Integrity)
    implementation("com.google.firebase:firebase-appcheck-playintegrity")
}
