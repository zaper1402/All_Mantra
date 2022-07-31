package com.musthave.allmantra.home

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme.colorScheme
import androidx.compose.material3.MaterialTheme.typography
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import com.musthave.allmantra.FileReaderUtils
import com.musthave.allmantra.navigation.Screen
import com.musthave.allmantra.ui.theme.Shapes

@Composable
fun HomeFragment(navController: NavController, homeViewModel: HomeViewModel = HomeViewModel()) {
    Box(contentAlignment = Alignment.Center) {
        DeityList(homeViewModel, navController)
    }
}

@Composable
fun DeityList(homeViewModel: HomeViewModel, navController: NavController) {
    val context = LocalContext.current
//    val list = remember {homeViewModel.fetchReminderList(context = context)}
    val list = remember {
        listOf(
            DietyName.GAYATRI.name,
            DietyName.PARVATI.name,
            DietyName.SHIV.name,
            DietyName.VISHNU.name
        )
    }
    LazyVerticalGrid(
        GridCells.Adaptive(128.dp),
        modifier = Modifier
            .padding(0.dp, 10.dp, 0.dp, 0.dp)
    ) {
        items(list) { item ->
            DeityListItem(item, navController)
        }
    }
}

@Composable
fun DeityListItem(data: String, navController: NavController) {
    val context = LocalContext.current
    Button(
        onClick = {
            FileReaderUtils.getDBLIST(context)
            navController.navigate("${Screen.MantraScreen.route}/$data") },
        modifier = Modifier
            .padding(10.dp, 10.dp)
            .background(colorScheme.onSurface, shape = Shapes.large),
    ) {
        Text(
            text = data,
            modifier = Modifier.fillMaxSize(),
            style = typography.headlineSmall,
            softWrap = true,
            textAlign = TextAlign.Center
        )
    }
}

@Preview("DietyListPreview", showBackground = true, showSystemUi = true)
@Composable
fun DeityListPreview() {
    val navController = rememberNavController()
    val list = remember { listOf("Gayatri", "Ganesh", "Vishnu", "Shiv") }
    LazyVerticalGrid(
        GridCells.Fixed(2),
        modifier = Modifier
            .fillMaxSize()
            .padding(0.dp, 10.dp, 0.dp, 0.dp)
    ) {
        items(list) { item ->
            DeityListItem(item, navController)
        }
    }
}