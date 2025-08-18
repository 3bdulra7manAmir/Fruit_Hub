package com.example.e_commerce_app

import android.os.Bundle
import androidx.annotation.NonNull
import com.google.android.gms.security.ProviderInstaller
import com.google.firebase.FirebaseApp
import com.google.firebase.appcheck.FirebaseAppCheck
import com.google.firebase.appcheck.playintegrity.PlayIntegrityAppCheckProviderFactory
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Fix ProviderInstaller warning
        try {
            ProviderInstaller.installIfNeeded(this)
        } catch (e: Exception) {
            e.printStackTrace()
        }

        // Initialize Firebase
        FirebaseApp.initializeApp(this)

        // Initialize Firebase App Check with Play Integrity
        FirebaseAppCheck.getInstance().installAppCheckProviderFactory(
            PlayIntegrityAppCheckProviderFactory.getInstance()
        )
    }
}
