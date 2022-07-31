package com.musthave.allmantra.roomDatabase.entity

import androidx.room.*

@Entity(
    foreignKeys = [ForeignKey(
        entity = Mantra::class,
        parentColumns = ["id"],
        childColumns = ["mantra_id"],
        onDelete = ForeignKey.CASCADE
    ), ForeignKey(entity = Language::class, parentColumns = ["id"], childColumns = ["language"], onDelete = ForeignKey.CASCADE)]

)
data class MantraTranslation(
    @PrimaryKey(autoGenerate = true)  val _id: Int,
    @ColumnInfo(name = "title") val title: String,
    @ColumnInfo(name = "mantra") val mantra: String,
    @ColumnInfo(name = "language") val language: Int,
    @ColumnInfo(name = "mantra_id") val mantraId: Int
)
