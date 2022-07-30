package com.musthave.allmantra.navigation

object Destinations {
    const val Home = "home"
    const val SplashScreen = "splashscreen"
    const val MantraScreen = "mantra_screen"
}

sealed class Screen(val route : String){
    object SplashScreen : Screen(Destinations.SplashScreen)
    object Home : Screen(Destinations.Home)
    object MantraScreen : Screen(Destinations.MantraScreen)
}
