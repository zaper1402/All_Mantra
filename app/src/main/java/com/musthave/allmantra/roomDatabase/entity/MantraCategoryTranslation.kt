package com.musthave.allmantra.roomDatabase.entity

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.ForeignKey.CASCADE
import androidx.room.PrimaryKey

@Entity(
    foreignKeys = [ForeignKey(
        entity = MantraCategory::class,
        parentColumns = ["id"],
        childColumns = ["mantra_category"],
        onDelete = CASCADE
    ), ForeignKey(entity = Language::class, parentColumns = ["id"], childColumns = ["language"], onDelete = CASCADE)]
)
data class MantraCategoryTranslation(
    @PrimaryKey(autoGenerate = true)  val _id: Int,
    @ColumnInfo val title: String?,
    @ColumnInfo(name = "mantra_category") val mantraCategory: Int?,
    @ColumnInfo(name = "language") val language: Int?
)
