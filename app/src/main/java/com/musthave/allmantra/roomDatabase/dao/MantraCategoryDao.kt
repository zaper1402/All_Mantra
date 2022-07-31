package com.musthave.allmantra.roomDatabase.dao

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import com.musthave.allmantra.roomDatabase.entity.Language
import com.musthave.allmantra.roomDatabase.entity.Mantra
import com.musthave.allmantra.roomDatabase.entity.MantraCategory

@Dao
interface MantraCategoryDao {
    @Query("SELECT * FROM mantra_category")
    fun getAll(): List<Mantra>

    @Insert
    fun insertAll(vararg users: MantraCategory)

    @Delete
    fun delete(user: MantraCategory)
}