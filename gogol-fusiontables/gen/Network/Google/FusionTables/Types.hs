{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FusionTables.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FusionTables.Types
    (
    -- * Service URL
      fusionTablesURL

    -- * Polygon
    , Polygon
    , polygon
    , pCoordinates
    , pType

    -- * Point
    , Point
    , point
    , poiCoordinates
    , poiType

    -- * TaskList
    , TaskList
    , taskList
    , tlTotalItems
    , tlNextPageToken
    , tlKind
    , tlItems

    -- * Alt
    , Alt (..)

    -- * Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- * Task
    , Task
    , task
    , tProgress
    , tTaskId
    , tKind
    , tType
    , tStarted

    -- * Template
    , Template
    , template
    , temAutomaticColumnNames
    , temTemplateId
    , temKind
    , temBody
    , temName
    , temTableId

    -- * StyleFunctionItemColorsGradient
    , StyleFunctionItemColorsGradient
    , styleFunctionItemColorsGradient
    , sficgColor
    , sficgOpacity

    -- * PointStyle
    , PointStyle
    , pointStyle
    , psIconName
    , psIconStyler

    -- * PolygonStyle
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

    -- * Bucket
    , Bucket
    , bucket
    , bMax
    , bColor
    , bWeight
    , bIcon
    , bOpacity
    , bMin

    -- * Line
    , Line
    , line
    , lCoordinates
    , lType

    -- * LineStyle
    , LineStyle
    , lineStyle
    , lsStrokeColorStyler
    , lsStrokeWeight
    , lsStrokeOpacity
    , lsStrokeWeightStyler
    , lsStrokeColor

    -- * ColumnList
    , ColumnList
    , columnList
    , clTotalItems
    , clNextPageToken
    , clKind
    , clItems

    -- * TableList
    , TableList
    , tableList
    , tabNextPageToken
    , tabKind
    , tabItems

    -- * TemplateList
    , TemplateList
    , templateList
    , tllTotalItems
    , tllNextPageToken
    , tllKind
    , tllItems

    -- * Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- * StyleFunction
    , StyleFunction
    , styleFunction
    , sfBuckets
    , sfKind
    , sfGradient
    , sfColumnName

    -- * Sqlresponse
    , Sqlresponse
    , sqlresponse
    , sKind
    , sRows
    , sColumns

    -- * StyleFunctionGradient
    , StyleFunctionGradient
    , styleFunctionGradient
    , sfgMax
    , sfgMin
    , sfgColors

    -- * StyleSettingList
    , StyleSettingList
    , styleSettingList
    , sslTotalItems
    , sslNextPageToken
    , sslKind
    , sslItems

    -- * Table
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

    -- * ColumnBaseColumn
    , ColumnBaseColumn
    , columnBaseColumn
    , cbcTableIndex
    , cbcColumnId

    -- * Column
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

    -- * StyleSetting
    , StyleSetting
    , styleSetting
    , ssPolylineOptions
    , ssPolygonOptions
    , ssMarkerOptions
    , ssKind
    , ssName
    , ssStyleId
    , ssTableId
    ) where

import           Network.Google.FusionTables.Types.Product
import           Network.Google.FusionTables.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Fusion Tables API.
fusionTablesURL :: BaseUrl
fusionTablesURL
  = BaseUrl Https
      "https://www.googleapis.com/fusiontables/v2/"
      443
