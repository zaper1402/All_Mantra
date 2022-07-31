package com.musthave.allmantra.roomDatabase

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.ForeignKey

@Entity(
    foreignKeys = [ForeignKey(
        Mantra::class,
        ["id"],
        ["mantra_id"],
        onDelete = ForeignKey.CASCADE
    ), ForeignKey(Language::class, ["id"], ["language"], onDelete = ForeignKey.CASCADE)]
)
data class MantraTranslation(
    @ColumnInfo(name = "title") val title: String,
    @ColumnInfo(name = "mantra") val mantra: String,
    @ColumnInfo(name = "language") val language: Int,
    @ColumnInfo(name = "mantra_id") val mantraId: Int
)
