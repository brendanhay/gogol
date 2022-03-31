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
-- Module      : Gogol.FusionTables.Table.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.insert@.
module Gogol.FusionTables.Table.Insert
  ( -- * Resource
    FusionTablesTableInsertResource,

    -- ** Constructing a Request
    newFusionTablesTableInsert,
    FusionTablesTableInsert,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.table.insert@ method which the
-- 'FusionTablesTableInsert' request conforms to.
type FusionTablesTableInsertResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Table
    Core.:> Core.Post '[Core.JSON] Table

-- | Creates a new table.
--
-- /See:/ 'newFusionTablesTableInsert' smart constructor.
newtype FusionTablesTableInsert = FusionTablesTableInsert
  { -- | Multipart request metadata.
    payload :: Table
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableInsert' with the minimum fields required to make a request.
newFusionTablesTableInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Table ->
  FusionTablesTableInsert
newFusionTablesTableInsert payload = FusionTablesTableInsert {payload = payload}

instance Core.GoogleRequest FusionTablesTableInsert where
  type Rs FusionTablesTableInsert = Table
  type
    Scopes FusionTablesTableInsert =
      '[Fusiontables'FullControl]
  requestClient FusionTablesTableInsert {..} =
    go
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTableInsertResource
          )
          Core.mempty
