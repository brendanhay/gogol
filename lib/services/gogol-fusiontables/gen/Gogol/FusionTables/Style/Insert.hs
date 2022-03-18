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
-- Module      : Gogol.FusionTables.Style.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new style for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.insert@.
module Gogol.FusionTables.Style.Insert
  ( -- * Resource
    FusionTablesStyleInsertResource,

    -- ** Constructing a Request
    newFusionTablesStyleInsert,
    FusionTablesStyleInsert,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.style.insert@ method which the
-- 'FusionTablesStyleInsert' request conforms to.
type FusionTablesStyleInsertResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "styles"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StyleSetting
    Core.:> Core.Post '[Core.JSON] StyleSetting

-- | Adds a new style for the table.
--
-- /See:/ 'newFusionTablesStyleInsert' smart constructor.
data FusionTablesStyleInsert = FusionTablesStyleInsert
  { -- | Multipart request metadata.
    payload :: StyleSetting,
    -- | Table for which a new style is being added
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStyleInsert' with the minimum fields required to make a request.
newFusionTablesStyleInsert ::
  -- |  Multipart request metadata. See 'payload'.
  StyleSetting ->
  -- |  Table for which a new style is being added See 'tableId'.
  Core.Text ->
  FusionTablesStyleInsert
newFusionTablesStyleInsert payload tableId =
  FusionTablesStyleInsert {payload = payload, tableId = tableId}

instance Core.GoogleRequest FusionTablesStyleInsert where
  type Rs FusionTablesStyleInsert = StyleSetting
  type
    Scopes FusionTablesStyleInsert =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesStyleInsert {..} =
    go
      tableId
      (Core.Just Core.AltJSON)
      payload
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesStyleInsertResource
          )
          Core.mempty
