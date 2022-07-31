package com.musthave.allmantra

import android.content.Context
import com.musthave.allmantra.roomDatabase.AppDatabase
import com.musthave.allmantra.roomDatabase.DbInitData
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch

object FileReaderUtils {

     fun getDBLIST(context: Context){
        val db = AppDatabase.getInstance(context)
        GlobalScope.launch {
            db.LanguageDao().insertAll(*DbInitData.languageList)
        }
    }
}