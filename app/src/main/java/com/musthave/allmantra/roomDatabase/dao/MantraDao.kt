package com.musthave.allmantra.roomDatabase.dao

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import com.musthave.allmantra.roomDatabase.entity.Mantra

@Dao
interface MantraDao {
    @Query("SELECT * FROM mantra")
    fun getAll(): List<Mantra>

    @Insert
    fun insertAll(vararg users: Mantra)

    @Delete
    fun delete(user: Mantra)
}