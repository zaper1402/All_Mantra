package com.musthave.allmantra.roomDatabase

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import com.musthave.allmantra.roomDatabase.dao.MantraDao
import com.musthave.allmantra.roomDatabase.entity.*

@Database(entities = [Language::class,Mantra::class,MantraCategory::class,MantraCategoryTranslation::class,MantraTranslation::class], version = 1, exportSchema = true)
abstract class AppDatabase : RoomDatabase(){
    abstract fun MantraDao() : MantraDao

    companion object {
        private var INSTANCE: AppDatabase? = null

        fun getInstance(context: Context): AppDatabase {
            synchronized(this) {
                var instance = INSTANCE
                if (instance == null) {
                    instance = Room.databaseBuilder(
                        context.applicationContext,
                        AppDatabase::class.java,
                        "product_database"
                    ).fallbackToDestructiveMigration()
                        .build()

                    INSTANCE = instance
                }
                return instance
            }
        }
    }
}