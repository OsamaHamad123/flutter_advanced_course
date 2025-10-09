plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.doc_doc_app"

    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.doc_doc_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    
    buildTypes {
      getByName("debug") {
        applicationIdSuffix = ".debug"
        versionNameSuffix = "-debug"
        
      }
      getByName("release") {
        signingConfig = signingConfigs.getByName("debug")
        proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        applicationIdSuffix = ".release"
        versionNameSuffix = "-release"
      }
    }
    flavorDimensions += "default"
    productFlavors {
        create("development") {
            dimension = "default"
            applicationIdSuffix = ".staging"  
            resValue("string", "app_name", "Flavors development")
        }
        create("production") {
            dimension = "default"
            applicationIdSuffix = ".production"
            resValue("string", "app_name", "Flavors Production")
        }
    }
}
 


flutter {
    source = "../.."
}
