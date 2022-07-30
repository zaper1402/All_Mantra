package com.musthave.allmantra

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.NavController


@Composable
fun MantraPage(navController: NavController, deityName: String) {
    val text = "$deityName \n dsgsdfsdf"
    MantraLyricsView(text)
}

@Composable
private fun MantraLyricsView(text : String){
    Column(Modifier.verticalScroll(rememberScrollState())) {
        Text(text, Modifier
            .fillMaxSize()
                .background(MaterialTheme.colorScheme.primary), textAlign = TextAlign.Center)
    }

}

@Preview("MantraLyricsPreview",showBackground = true)
@Composable
private fun MantraLyricsPreview() {
    val text = "Usually Lazy lists have many items, and they occupy more than the size of the scrolling container. However, when your list is populated with few items, your design can have more specific requirements for how these should be positioned in the viewport.\n" +
            "\n" +
            "To achieve this, you can use custom vertical Arrangement and pass it to the LazyColumn. In the following example, the TopWithFooter object only needs to implement the arrange method. Firstly, it will position items one after another. Secondly, if the total used height is lower than the viewport height, it will position the footer at the bottom:Usually Lazy lists have many items, and they occupy more than the size of the scrolling container. However, when your list is populated with few items, your design can have more specific requirements for how these should be positioned in the viewport.\n" +
            "\n" +
            "To achieve this, you can use custom vertical Arrangement and pass it to the LazyColumn. In the following example, the TopWithFooter object only needs to implement the arrange method. Firstly, it will position items one after another. Secondly, if the total used height is lower than the viewport height, it will position the footer at the bottom:Usually Lazy lists have many items, and they occupy more than the size of the scrolling container. However, when your list is populated with few items, your design can have more specific requirements for how these should be positioned in the viewport.\n" +
            "\n" +
            "To achieve this, you can use custom vertical Arrangement and pass it to the LazyColumn. In the following example, the TopWithFooter object only needs to implement the arrange method. Firstly, it will position items one after another. Secondly, if the total used height is lower than the viewport height, it will position the footer at the bottom:Usually Lazy lists have many items, and they occupy more than the size of the scrolling container. However, when your list is populated with few items, your design can have more specific requirements for how these should be positioned in the viewport.\n" +
            "\n" +
            "To achieve this, you can use custom vertical Arrangement and pass it to the LazyColumn. In the following example, the TopWithFooter object only needs to implement the arrange method. Firstly, it will position items one after another. Secondly, if the total used height is lower than the viewport height, it will position the footer at the bottom:Usually Lazy lists have many items, and they occupy more than the size of the scrolling container. However, when your list is populated with few items, your design can have more specific requirements for how these should be positioned in the viewport.\n" +
            "\n" +
            "To achieve this, you can use custom vertical Arrangement and pass it to the LazyColumn. In the following example, the TopWithFooter object only needs to implement the arrange method. Firstly, it will position items one after another. Secondly, if the total used height is lower than the viewport height, it will position the footer at the bottom:"
    MantraLyricsView(text)
}