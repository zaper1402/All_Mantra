package com.musthave.allmantra.roomDatabase

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(indices = [Index(value = ["category_keyword"], unique = true)])
data class MantraCategory(
    @PrimaryKey val id: Int,
    @ColumnInfo(name = "position") val position: Int?,
    @ColumnInfo(name = "category_keyword") val categoryKeyword: String
)
