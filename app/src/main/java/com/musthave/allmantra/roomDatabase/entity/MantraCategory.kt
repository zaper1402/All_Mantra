package com.musthave.allmantra.roomDatabase.entity

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "mantra_category",
    indices = [Index(value = ["category_keyword"], unique = true)])
data class MantraCategory(
    @PrimaryKey(autoGenerate = true) val id: Int,
    @ColumnInfo(name = "position") val position: Int?,
    @ColumnInfo(name = "category_keyword") val categoryKeyword: String
)
