package com.musthave.allmantra.roomDatabase

import android.content.Context
import android.util.Log
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.sqlite.db.SupportSQLiteDatabase
import com.musthave.allmantra.roomDatabase.dao.LanguageDao
import com.musthave.allmantra.roomDatabase.dao.MantraCategoryDao
import com.musthave.allmantra.roomDatabase.dao.MantraDao
import com.musthave.allmantra.roomDatabase.entity.*
import java.io.IOException
import java.io.InputStream
import java.sql.SQLException


@Database(entities = [Language::class,Mantra::class,MantraCategory::class,MantraCategoryTranslation::class,MantraTranslation::class], version = 1, exportSchema = true)
abstract class AppDatabase : RoomDatabase(){
    abstract fun MantraDao() : MantraDao
    abstract fun LanguageDao() : LanguageDao
    abstract fun MantraCategoryDao() : MantraCategoryDao

    companion object {
        private var INSTANCE: AppDatabase? = null

        fun getInstance(context: Context): AppDatabase {
            synchronized(this) {
                var instance = INSTANCE
                if (instance == null) {
                    instance = Room.databaseBuilder(
                        context.applicationContext,
                        AppDatabase::class.java,
                        "appDatabase"
                    ).fallbackToDestructiveMigration().build()

                    INSTANCE = instance
                }
                return instance
            }
        }
    }
}