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
-- Module      : Network.Google.FusionTables.Style.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.get@.
module Network.Google.FusionTables.Style.Get
  ( -- * Resource
    FusionTablesStyleGetResource,

    -- ** Constructing a Request
    newFusionTablesStyleGet,
    FusionTablesStyleGet,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.style.get@ method which the
-- 'FusionTablesStyleGet' request conforms to.
type FusionTablesStyleGetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "styles"
    Core.:> Core.Capture "styleId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StyleSetting

-- | Gets a specific style.
--
-- /See:/ 'newFusionTablesStyleGet' smart constructor.
data FusionTablesStyleGet = FusionTablesStyleGet
  { -- | Identifier (integer) for a specific style in a table
    styleId :: Core.Int32,
    -- | Table to which the requested style belongs
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStyleGet' with the minimum fields required to make a request.
newFusionTablesStyleGet ::
  -- |  Identifier (integer) for a specific style in a table See 'styleId'.
  Core.Int32 ->
  -- |  Table to which the requested style belongs See 'tableId'.
  Core.Text ->
  FusionTablesStyleGet
newFusionTablesStyleGet styleId tableId =
  FusionTablesStyleGet {styleId = styleId, tableId = tableId}

instance Core.GoogleRequest FusionTablesStyleGet where
  type Rs FusionTablesStyleGet = StyleSetting
  type
    Scopes FusionTablesStyleGet =
      '[ "https://www.googleapis.com/auth/fusiontables",
         "https://www.googleapis.com/auth/fusiontables.readonly"
       ]
  requestClient FusionTablesStyleGet {..} =
    go
      tableId
      styleId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesStyleGetResource
          )
          Core.mempty
