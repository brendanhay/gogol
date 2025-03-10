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
-- Module      : Gogol.FusionTables.Query.SqlGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.query.sqlGet@.
module Gogol.FusionTables.Query.SqlGet
  ( -- * Resource
    FusionTablesQuerySqlGetResource,

    -- ** Constructing a Request
    FusionTablesQuerySqlGet (..),
    newFusionTablesQuerySqlGet,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.query.sqlGet@ method which the
-- 'FusionTablesQuerySqlGet' request conforms to.
type FusionTablesQuerySqlGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "query"
    Core.:> Core.QueryParam "sql" Core.Text
    Core.:> Core.QueryParam "hdrs" Core.Bool
    Core.:> Core.QueryParam "typed" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Sqlresponse
    Core.:<|> "fusiontables"
    Core.:> "v2"
    Core.:> "query"
    Core.:> Core.QueryParam "sql" Core.Text
    Core.:> Core.QueryParam "hdrs" Core.Bool
    Core.:> Core.QueryParam "typed" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
--
-- /See:/ 'newFusionTablesQuerySqlGet' smart constructor.
data FusionTablesQuerySqlGet = FusionTablesQuerySqlGet
  { -- | Whether column names are included (in the first row). Default is true.
    hdrs :: (Core.Maybe Core.Bool),
    -- | A SQL statement which can be any of - SELECT - SHOW - DESCRIBE
    sql :: Core.Text,
    -- | Whether typed values are returned in the (JSON) response: numbers for numeric values and parsed geometries for KML values. Default is true.
    typed :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesQuerySqlGet' with the minimum fields required to make a request.
newFusionTablesQuerySqlGet ::
  -- |  A SQL statement which can be any of - SELECT - SHOW - DESCRIBE See 'sql'.
  Core.Text ->
  FusionTablesQuerySqlGet
newFusionTablesQuerySqlGet sql =
  FusionTablesQuerySqlGet
    { hdrs = Core.Nothing,
      sql = sql,
      typed = Core.Nothing
    }

instance Core.GoogleRequest FusionTablesQuerySqlGet where
  type Rs FusionTablesQuerySqlGet = Sqlresponse
  type
    Scopes FusionTablesQuerySqlGet =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesQuerySqlGet {..} =
    go
      (Core.Just sql)
      hdrs
      typed
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesQuerySqlGetResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload FusionTablesQuerySqlGet)
  where
  type Rs (Core.MediaDownload FusionTablesQuerySqlGet) = Core.Stream
  type
    Scopes (Core.MediaDownload FusionTablesQuerySqlGet) =
      Core.Scopes FusionTablesQuerySqlGet
  requestClient (Core.MediaDownload FusionTablesQuerySqlGet {..}) =
    go
      (Core.Just sql)
      hdrs
      typed
      (Core.Just Core.AltMedia)
      fusionTablesService
    where
      _ Core.:<|> go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesQuerySqlGetResource)
          Core.mempty
