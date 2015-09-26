-- |
-- Module      : Network.Google.FusionTables
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for working with Fusion Tables data.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference>
module Network.Google.FusionTables
    (
    -- * API Definition
      FusionTables



    -- * Types

    -- ** Bucket
    , Bucket
    , bucket
    , bMax
    , bColor
    , bWeight
    , bIcon
    , bOpacity
    , bMin

    -- ** Column
    , Column
    , column
    , cColumnJsonSchema
    , cGraphPredicate
    , cKind
    , cBaseColumn
    , cColumnPropertiesJson
    , cName
    , cType
    , cFormatPattern
    , cColumnId
    , cValidValues
    , cValidateData
    , cDescription

    -- ** ColumnBaseColumn
    , ColumnBaseColumn
    , columnBaseColumn
    , cbcTableIndex
    , cbcColumnId

    -- ** ColumnList
    , ColumnList
    , columnList
    , clTotalItems
    , clNextPageToken
    , clKind
    , clItems

    -- ** Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- ** Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- ** Line
    , Line
    , line
    , lCoordinates
    , lType

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStrokeColorStyler
    , lsStrokeWeight
    , lsStrokeOpacity
    , lsStrokeWeightStyler
    , lsStrokeColor

    -- ** Point
    , Point
    , point
    , poiCoordinates
    , poiType

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIconName
    , psIconStyler

    -- ** Polygon
    , Polygon
    , polygon
    , pCoordinates
    , pType

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , psFillColorStyler
    , psFillColor
    , psStrokeColorStyler
    , psStrokeWeight
    , psStrokeOpacity
    , psFillOpacity
    , psStrokeWeightStyler
    , psStrokeColor

    -- ** Sqlresponse
    , Sqlresponse
    , sqlresponse
    , sKind
    , sRows
    , sColumns

    -- ** StyleFunction
    , StyleFunction
    , styleFunction
    , sfBuckets
    , sfKind
    , sfGradient
    , sfColumnName

    -- ** StyleFunctionGradient
    , StyleFunctionGradient
    , styleFunctionGradient
    , sfgMax
    , sfgMin
    , sfgColors

    -- ** StyleFunctionItemColorsGradient
    , StyleFunctionItemColorsGradient
    , styleFunctionItemColorsGradient
    , sficgColor
    , sficgOpacity

    -- ** StyleSetting
    , StyleSetting
    , styleSetting
    , ssPolylineOptions
    , ssPolygonOptions
    , ssMarkerOptions
    , ssKind
    , ssName
    , ssStyleId
    , ssTableId

    -- ** StyleSettingList
    , StyleSettingList
    , styleSettingList
    , sslTotalItems
    , sslNextPageToken
    , sslKind
    , sslItems

    -- ** Table
    , Table
    , table
    , ttIsExportable
    , ttKind
    , ttColumnPropertiesJsonSchema
    , ttTablePropertiesJsonSchema
    , ttName
    , ttTablePropertiesJson
    , ttColumns
    , ttBaseTableIds
    , ttTableId
    , ttSql
    , ttDescription
    , ttAttribution
    , ttAttributionLink

    -- ** TableList
    , TableList
    , tableList
    , tabNextPageToken
    , tabKind
    , tabItems

    -- ** Task
    , Task
    , task
    , tProgress
    , tTaskId
    , tKind
    , tType
    , tStarted

    -- ** TaskList
    , TaskList
    , taskList
    , tlTotalItems
    , tlNextPageToken
    , tlKind
    , tlItems

    -- ** Template
    , Template
    , template
    , temAutomaticColumnNames
    , temTemplateId
    , temKind
    , temBody
    , temName
    , temTableId

    -- ** TemplateList
    , TemplateList
    , templateList
    , tllTotalItems
    , tllNextPageToken
    , tllKind
    , tllItems
    ) where

import           Network.Google.FusionTables.Types

{- $resources
TODO
-}

type FusionTables = ()

fusionTables :: Proxy FusionTables
fusionTables = Proxy




