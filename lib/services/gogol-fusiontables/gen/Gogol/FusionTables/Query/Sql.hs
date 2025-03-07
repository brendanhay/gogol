{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.FusionTables.Query.Sql
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a Fusion Tables SQL statement, which can be any of - SELECT - INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.query.sql@.
module Gogol.FusionTables.Query.Sql
  ( -- * Resource
    FusionTablesQuerySqlResource,

    -- ** Constructing a Request
    FusionTablesQuerySql (..),
    newFusionTablesQuerySql,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.query.sql@ method which the
-- 'FusionTablesQuerySql' request conforms to.
type FusionTablesQuerySqlResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "query"
    Core.:> Core.QueryParam "sql" Core.Text
    Core.:> Core.QueryParam "hdrs" Core.Bool
    Core.:> Core.QueryParam "typed" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Sqlresponse
    Core.:<|> "fusiontables"
    Core.:> "v2"
    Core.:> "query"
    Core.:> Core.QueryParam "sql" Core.Text
    Core.:> Core.QueryParam "hdrs" Core.Bool
    Core.:> Core.QueryParam "typed" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Post '[Core.OctetStream] Core.Stream

-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT - INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
--
-- /See:/ 'newFusionTablesQuerySql' smart constructor.
data FusionTablesQuerySql = FusionTablesQuerySql
  { -- | Whether column names are included in the first row. Default is true.
    hdrs :: (Core.Maybe Core.Bool),
    -- | A Fusion Tables SQL statement, which can be any of - SELECT - INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE
    sql :: Core.Text,
    -- | Whether typed values are returned in the (JSON) response: numbers for numeric values and parsed geometries for KML values. Default is true.
    typed :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesQuerySql' with the minimum fields required to make a request.
newFusionTablesQuerySql ::
  -- |  A Fusion Tables SQL statement, which can be any of - SELECT - INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE See 'sql'.
  Core.Text ->
  FusionTablesQuerySql
newFusionTablesQuerySql sql =
  FusionTablesQuerySql
    { hdrs = Core.Nothing,
      sql = sql,
      typed = Core.Nothing
    }

instance Core.GoogleRequest FusionTablesQuerySql where
  type Rs FusionTablesQuerySql = Sqlresponse
  type
    Scopes FusionTablesQuerySql =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesQuerySql {..} =
    go
      (Core.Just sql)
      hdrs
      typed
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesQuerySqlResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload FusionTablesQuerySql)
  where
  type Rs (Core.MediaDownload FusionTablesQuerySql) = Core.Stream
  type
    Scopes (Core.MediaDownload FusionTablesQuerySql) =
      Core.Scopes FusionTablesQuerySql
  requestClient (Core.MediaDownload FusionTablesQuerySql {..}) =
    go
      (Core.Just sql)
      hdrs
      typed
      (Core.Just Core.AltMedia)
      fusionTablesService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesQuerySqlResource)
          Core.mempty
