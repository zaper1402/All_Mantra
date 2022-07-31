package com.musthave.allmantra.roomDatabase.entity

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.ForeignKey.CASCADE
import androidx.room.PrimaryKey


@Entity(
    tableName = "mantra",
    foreignKeys = [ForeignKey(
        entity = MantraCategory::class,
        parentColumns = ["id"],
        childColumns = ["mantra_category"],
        onDelete = CASCADE
    )]
)
data class Mantra(
    @PrimaryKey(autoGenerate = true) val id: Int,
    @ColumnInfo(name = "image") val image: String?,
    @ColumnInfo(name = "thumbnail") val thumbnail: String?,
    @ColumnInfo(name = "sound") val sound: String?,
    @ColumnInfo(name = "mantra_category") val mantraCategory: Int?
)
