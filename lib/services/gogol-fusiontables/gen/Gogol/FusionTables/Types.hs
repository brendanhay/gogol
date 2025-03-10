{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FusionTables.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FusionTables.Types
  ( -- * Configuration
    fusionTablesService,

    -- * OAuth Scopes
    Fusiontables'FullControl,
    Fusiontables'Readonly,

    -- * Types

    -- ** Bucket
    Bucket (..),
    newBucket,

    -- ** Column
    Column (..),
    newColumn,

    -- ** Column_BaseColumn
    Column_BaseColumn (..),
    newColumn_BaseColumn,

    -- ** ColumnList
    ColumnList (..),
    newColumnList,

    -- ** Geometry
    Geometry (..),
    newGeometry,

    -- ** Import
    Import (..),
    newImport,

    -- ** Line
    Line (..),
    newLine,

    -- ** LineStyle
    LineStyle (..),
    newLineStyle,

    -- ** Point
    Point (..),
    newPoint,

    -- ** PointStyle
    PointStyle (..),
    newPointStyle,

    -- ** Polygon
    Polygon (..),
    newPolygon,

    -- ** PolygonStyle
    PolygonStyle (..),
    newPolygonStyle,

    -- ** Sqlresponse
    Sqlresponse (..),
    newSqlresponse,

    -- ** StyleFunction
    StyleFunction (..),
    newStyleFunction,

    -- ** StyleFunction_Gradient
    StyleFunction_Gradient (..),
    newStyleFunction_Gradient,

    -- ** StyleFunction_Gradient_ColorsItem
    StyleFunction_Gradient_ColorsItem (..),
    newStyleFunction_Gradient_ColorsItem,

    -- ** StyleSetting
    StyleSetting (..),
    newStyleSetting,

    -- ** StyleSettingList
    StyleSettingList (..),
    newStyleSettingList,

    -- ** Table
    Table (..),
    newTable,

    -- ** TableList
    TableList (..),
    newTableList,

    -- ** Task
    Task (..),
    newTask,

    -- ** TaskList
    TaskList (..),
    newTaskList,

    -- ** Template
    Template (..),
    newTemplate,

    -- ** TemplateList
    TemplateList (..),
    newTemplateList,
  )
where

import Gogol.FusionTables.Internal.Product
import Gogol.FusionTables.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Fusion Tables API. This contains the host and root path used as a starting point for constructing service requests.
fusionTablesService :: Core.ServiceConfig
fusionTablesService =
  Core.defaultService
    (Core.ServiceId "fusiontables:v2")
    "www.googleapis.com"

-- | Manage your Fusion Tables
type Fusiontables'FullControl =
  "https://www.googleapis.com/auth/fusiontables"

-- | View your Fusion Tables
type Fusiontables'Readonly =
  "https://www.googleapis.com/auth/fusiontables.readonly"
