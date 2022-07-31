package com.musthave.allmantra.roomDatabase.dao

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import com.musthave.allmantra.roomDatabase.entity.Language
import com.musthave.allmantra.roomDatabase.entity.Mantra

@Dao
interface LanguageDao {
    @Query("SELECT * FROM language")
    fun getAll(): List<Mantra>

    @Insert
    fun insertAll(vararg users: Language)

    @Delete
    fun delete(user: Language)
}