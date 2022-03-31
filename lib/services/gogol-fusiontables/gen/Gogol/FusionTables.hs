{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FusionTables
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for working with Fusion Tables data.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference>
module Gogol.FusionTables
  ( -- * Configuration
    fusionTablesService,

    -- * OAuth Scopes
    Fusiontables'FullControl,
    Fusiontables'Readonly,

    -- * Resources

    -- ** fusiontables.column.delete
    FusionTablesColumnDeleteResource,
    newFusionTablesColumnDelete,
    FusionTablesColumnDelete,

    -- ** fusiontables.column.get
    FusionTablesColumnGetResource,
    newFusionTablesColumnGet,
    FusionTablesColumnGet,

    -- ** fusiontables.column.insert
    FusionTablesColumnInsertResource,
    newFusionTablesColumnInsert,
    FusionTablesColumnInsert,

    -- ** fusiontables.column.list
    FusionTablesColumnListResource,
    newFusionTablesColumnList,
    FusionTablesColumnList,

    -- ** fusiontables.column.patch
    FusionTablesColumnPatchResource,
    newFusionTablesColumnPatch,
    FusionTablesColumnPatch,

    -- ** fusiontables.column.update
    FusionTablesColumnUpdateResource,
    newFusionTablesColumnUpdate,
    FusionTablesColumnUpdate,

    -- ** fusiontables.query.sql
    FusionTablesQuerySqlResource,
    newFusionTablesQuerySql,
    FusionTablesQuerySql,

    -- ** fusiontables.query.sqlGet
    FusionTablesQuerySqlGetResource,
    newFusionTablesQuerySqlGet,
    FusionTablesQuerySqlGet,

    -- ** fusiontables.style.delete
    FusionTablesStyleDeleteResource,
    newFusionTablesStyleDelete,
    FusionTablesStyleDelete,

    -- ** fusiontables.style.get
    FusionTablesStyleGetResource,
    newFusionTablesStyleGet,
    FusionTablesStyleGet,

    -- ** fusiontables.style.insert
    FusionTablesStyleInsertResource,
    newFusionTablesStyleInsert,
    FusionTablesStyleInsert,

    -- ** fusiontables.style.list
    FusionTablesStyleListResource,
    newFusionTablesStyleList,
    FusionTablesStyleList,

    -- ** fusiontables.style.patch
    FusionTablesStylePatchResource,
    newFusionTablesStylePatch,
    FusionTablesStylePatch,

    -- ** fusiontables.style.update
    FusionTablesStyleUpdateResource,
    newFusionTablesStyleUpdate,
    FusionTablesStyleUpdate,

    -- ** fusiontables.table.copy
    FusionTablesTableCopyResource,
    newFusionTablesTableCopy,
    FusionTablesTableCopy,

    -- ** fusiontables.table.delete
    FusionTablesTableDeleteResource,
    newFusionTablesTableDelete,
    FusionTablesTableDelete,

    -- ** fusiontables.table.get
    FusionTablesTableGetResource,
    newFusionTablesTableGet,
    FusionTablesTableGet,

    -- ** fusiontables.table.importRows
    FusionTablesTableImportRowsResource,
    newFusionTablesTableImportRows,
    FusionTablesTableImportRows,

    -- ** fusiontables.table.importTable
    FusionTablesTableImportTableResource,
    newFusionTablesTableImportTable,
    FusionTablesTableImportTable,

    -- ** fusiontables.table.insert
    FusionTablesTableInsertResource,
    newFusionTablesTableInsert,
    FusionTablesTableInsert,

    -- ** fusiontables.table.list
    FusionTablesTableListResource,
    newFusionTablesTableList,
    FusionTablesTableList,

    -- ** fusiontables.table.patch
    FusionTablesTablePatchResource,
    newFusionTablesTablePatch,
    FusionTablesTablePatch,

    -- ** fusiontables.table.refetchSheet
    FusionTablesTableRefetchSheetResource,
    newFusionTablesTableRefetchSheet,
    FusionTablesTableRefetchSheet,

    -- ** fusiontables.table.replaceRows
    FusionTablesTableReplaceRowsResource,
    newFusionTablesTableReplaceRows,
    FusionTablesTableReplaceRows,

    -- ** fusiontables.table.update
    FusionTablesTableUpdateResource,
    newFusionTablesTableUpdate,
    FusionTablesTableUpdate,

    -- ** fusiontables.task.delete
    FusionTablesTaskDeleteResource,
    newFusionTablesTaskDelete,
    FusionTablesTaskDelete,

    -- ** fusiontables.task.get
    FusionTablesTaskGetResource,
    newFusionTablesTaskGet,
    FusionTablesTaskGet,

    -- ** fusiontables.task.list
    FusionTablesTaskListResource,
    newFusionTablesTaskList,
    FusionTablesTaskList,

    -- ** fusiontables.template.delete
    FusionTablesTemplateDeleteResource,
    newFusionTablesTemplateDelete,
    FusionTablesTemplateDelete,

    -- ** fusiontables.template.get
    FusionTablesTemplateGetResource,
    newFusionTablesTemplateGet,
    FusionTablesTemplateGet,

    -- ** fusiontables.template.insert
    FusionTablesTemplateInsertResource,
    newFusionTablesTemplateInsert,
    FusionTablesTemplateInsert,

    -- ** fusiontables.template.list
    FusionTablesTemplateListResource,
    newFusionTablesTemplateList,
    FusionTablesTemplateList,

    -- ** fusiontables.template.patch
    FusionTablesTemplatePatchResource,
    newFusionTablesTemplatePatch,
    FusionTablesTemplatePatch,

    -- ** fusiontables.template.update
    FusionTablesTemplateUpdateResource,
    newFusionTablesTemplateUpdate,
    FusionTablesTemplateUpdate,

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

import Gogol.FusionTables.Column.Delete
import Gogol.FusionTables.Column.Get
import Gogol.FusionTables.Column.Insert
import Gogol.FusionTables.Column.List
import Gogol.FusionTables.Column.Patch
import Gogol.FusionTables.Column.Update
import Gogol.FusionTables.Query.Sql
import Gogol.FusionTables.Query.SqlGet
import Gogol.FusionTables.Style.Delete
import Gogol.FusionTables.Style.Get
import Gogol.FusionTables.Style.Insert
import Gogol.FusionTables.Style.List
import Gogol.FusionTables.Style.Patch
import Gogol.FusionTables.Style.Update
import Gogol.FusionTables.Table.Copy
import Gogol.FusionTables.Table.Delete
import Gogol.FusionTables.Table.Get
import Gogol.FusionTables.Table.ImportRows
import Gogol.FusionTables.Table.ImportTable
import Gogol.FusionTables.Table.Insert
import Gogol.FusionTables.Table.List
import Gogol.FusionTables.Table.Patch
import Gogol.FusionTables.Table.RefetchSheet
import Gogol.FusionTables.Table.ReplaceRows
import Gogol.FusionTables.Table.Update
import Gogol.FusionTables.Task.Delete
import Gogol.FusionTables.Task.Get
import Gogol.FusionTables.Task.List
import Gogol.FusionTables.Template.Delete
import Gogol.FusionTables.Template.Get
import Gogol.FusionTables.Template.Insert
import Gogol.FusionTables.Template.List
import Gogol.FusionTables.Template.Patch
import Gogol.FusionTables.Template.Update
import Gogol.FusionTables.Types
