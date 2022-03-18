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
-- Module      : Gogol.FusionTables.Table.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific table by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.get@.
module Gogol.FusionTables.Table.Get
  ( -- * Resource
    FusionTablesTableGetResource,

    -- ** Constructing a Request
    newFusionTablesTableGet,
    FusionTablesTableGet,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.table.get@ method which the
-- 'FusionTablesTableGet' request conforms to.
type FusionTablesTableGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Table

-- | Retrieves a specific table by its ID.
--
-- /See:/ 'newFusionTablesTableGet' smart constructor.
newtype FusionTablesTableGet = FusionTablesTableGet
  { -- | Identifier for the table being requested.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableGet' with the minimum fields required to make a request.
newFusionTablesTableGet ::
  -- |  Identifier for the table being requested. See 'tableId'.
  Core.Text ->
  FusionTablesTableGet
newFusionTablesTableGet tableId = FusionTablesTableGet {tableId = tableId}

instance Core.GoogleRequest FusionTablesTableGet where
  type Rs FusionTablesTableGet = Table
  type
    Scopes FusionTablesTableGet =
      '[ "https://www.googleapis.com/auth/fusiontables",
         "https://www.googleapis.com/auth/fusiontables.readonly"
       ]
  requestClient FusionTablesTableGet {..} =
    go
      tableId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTableGetResource
          )
          Core.mempty
