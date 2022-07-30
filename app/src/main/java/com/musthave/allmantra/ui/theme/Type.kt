package com.musthave.allmantra.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp
import com.musthave.allmantra.R

private val Sailec = FontFamily(
    Font(R.font.sailec_regular),
    Font(R.font.sailec_medium, FontWeight.W500),
    Font(R.font.sailec_bold, FontWeight.Bold)
)
// Set of Material typography styles to start with
val typography = Typography(
    displayLarge = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W600,
        fontSize = 30.sp
    ),
    displayMedium = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W600,
        fontSize = 24.sp
    ),
    displaySmall = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W600,
        fontSize = 20.sp
    ),
    headlineMedium = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W500,
        fontSize = 16.sp
    ),
    headlineSmall = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W500,
        fontSize = 14.sp
    ),
    bodyMedium = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.Normal,
        fontSize = 16.sp
    ),
    bodyLarge = TextStyle(
        fontFamily = Sailec,
        fontSize = 14.sp,
        lineHeight = 20.sp
    ),
    labelLarge = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W500,
        fontSize = 14.sp
    ),
    labelMedium = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.Normal,
        fontSize = 12.sp
    ),
    labelSmall = TextStyle(
        fontFamily = Sailec,
        fontWeight = FontWeight.W500,
        fontSize = 12.sp
    )
)