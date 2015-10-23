{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      fusionTablesService

    -- * OAuth Scopes
    , fusiontablesReadonlyScope
    , fusiontablesScope

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

    -- * StyleFunctionGradientColorsItem
    , StyleFunctionGradientColorsItem
    , styleFunctionGradientColorsItem
    , sfgciColor
    , sfgciOpacity

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

    -- * Point
    , Point
    , point
    , pCoordinates
    , pType

    -- * Polygon
    , Polygon
    , polygon
    , polCoordinates
    , polType

    -- * TaskList
    , TaskList
    , taskList
    , tTotalItems
    , tNextPageToken
    , tKind
    , tItems

    -- * Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- * TemplateList
    , TemplateList
    , templateList
    , temTotalItems
    , temNextPageToken
    , temKind
    , temItems

    -- * Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- * Task
    , Task
    , task
    , tasProgress
    , tasTaskId
    , tasKind
    , tasType
    , tasStarted

    -- * Template
    , Template
    , template
    , ttAutomaticColumnNames
    , ttTemplateId
    , ttKind
    , ttBody
    , ttName
    , ttTableId

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

    -- * Table
    , Table
    , table
    , tabaIsExportable
    , tabaKind
    , tabaColumnPropertiesJSONSchema
    , tabaTablePropertiesJSONSchema
    , tabaName
    , tabaTablePropertiesJSON
    , tabaColumns
    , tabaBaseTableIds
    , tabaTableId
    , tabaSQL
    , tabaDescription
    , tabaAttribution
    , tabaAttributionLink

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

-- | Default request referring to version 'v2' of the Fusion Tables API. This contains the host and root path used as a starting point for constructing service requests.
fusionTablesService :: Service
fusionTablesService
  = defaultService (ServiceId "fusiontables:v2")
      "www.googleapis.com"

-- | View your Fusion Tables
fusiontablesReadonlyScope :: OAuthScope
fusiontablesReadonlyScope = "https://www.googleapis.com/auth/fusiontables.readonly";

-- | Manage your Fusion Tables
fusiontablesScope :: OAuthScope
fusiontablesScope = "https://www.googleapis.com/auth/fusiontables";
