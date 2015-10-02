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
    , tlNextPageToken
    , tlKind
    , tlItems

    -- * StyleFunction
    , StyleFunction
    , styleFunction
    , sfBuckets
    , sfKind
    , sfGradient
    , sfColumnName

    -- * ColumnBaseColumn
    , ColumnBaseColumn
    , columnBaseColumn
    , cbcTableIndex
    , cbcColumnId

    -- * SQLresponse
    , SQLresponse
    , sQLresponse
    , sqlKind
    , sqlRows
    , sqlColumns

    -- * StyleSettingList
    , StyleSettingList
    , styleSettingList
    , sslTotalItems
    , sslNextPageToken
    , sslKind
    , sslItems

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
    , tTotalItems
    , tNextPageToken
    , tKind
    , tItems

    -- * TemplateList
    , TemplateList
    , templateList
    , temTotalItems
    , temNextPageToken
    , temKind
    , temItems

    -- * Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- * StyleFunctionGradientColors
    , StyleFunctionGradientColors
    , styleFunctionGradientColors
    , sfgcColor
    , sfgcOpacity

    -- * Task
    , Task
    , task
    , tasProgress
    , tasTaskId
    , tasKind
    , tasType
    , tasStarted

    -- * Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- * Template
    , Template
    , template
    , temeAutomaticColumnNames
    , temeTemplateId
    , temeKind
    , temeBody
    , temeName
    , temeTableId

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

    -- * StyleFunctionGradient
    , StyleFunctionGradient
    , styleFunctionGradient
    , sfgMax
    , sfgMin
    , sfgColors

    -- * Table
    , Table
    , table
    , tabIsExportable
    , tabKind
    , tabColumnPropertiesJSONSchema
    , tabTablePropertiesJSONSchema
    , tabName
    , tabTablePropertiesJSON
    , tabColumns
    , tabBaseTableIds
    , tabTableId
    , tabSQL
    , tabDescription
    , tabAttribution
    , tabAttributionLink

    -- * Column
    , Column
    , column
    , cColumnJSONSchema
    , cGraphPredicate
    , cKind
    , cBaseColumn
    , cColumnPropertiesJSON
    , cName
    , cType
    , cFormatPattern
    , cColumnId
    , cValidValues
    , cValidateData
    , cDescription

    -- * LineStyle
    , LineStyle
    , lineStyle
    , lsStrokeColorStyler
    , lsStrokeWeight
    , lsStrokeOpacity
    , lsStrokeWeightStyler
    , lsStrokeColor
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
