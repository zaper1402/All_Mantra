package com.musthave.allmantra

import android.annotation.SuppressLint
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.musthave.allmantra.home.HomeFragment
import com.musthave.allmantra.navigation.Screen
import com.musthave.allmantra.ui.theme.AllMantraTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            NavComposeApp()
        }
    }
}

@SuppressLint("UnusedMaterial3ScaffoldPaddingParameter")
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NavComposeApp() {
    Scaffold {
        val navController = rememberNavController()
        AllMantraTheme {
            NavHost(navController = navController, startDestination = Screen.Home.route) {
                composable(route = Screen.Home.route) {
                    HomeFragment(navController)
                    // todo mention error state
                }
                composable(route = Screen.SplashScreen.route) {
                    SplashScreen()
                }
                composable(route = "${Screen.MantraScreen.route}/{deityName}",
                    arguments = listOf(
                        navArgument("deityName") { type = NavType.StringType }
                    )) {
                    MantraPage(navController, it.arguments?.getString("deityName") ?: "")
                }
            }
        }
    }
}
