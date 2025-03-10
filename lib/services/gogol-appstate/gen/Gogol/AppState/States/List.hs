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
-- Module      : Gogol.AppState.States.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the states keys, and optionally the state data.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.list@.
module Gogol.AppState.States.List
  ( -- * Resource
    AppStateStatesListResource,

    -- ** Constructing a Request
    AppStateStatesList (..),
    newAppStateStatesList,
  )
where

import Gogol.AppState.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @appstate.states.list@ method which the
-- 'AppStateStatesList' request conforms to.
type AppStateStatesListResource =
  "appstate"
    Core.:> "v1"
    Core.:> "states"
    Core.:> Core.QueryParam "includeData" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListResponse

-- | Lists all the states keys, and optionally the state data.
--
-- /See:/ 'newAppStateStatesList' smart constructor.
newtype AppStateStatesList = AppStateStatesList
  { -- | Whether to include the full data in addition to the version number
    includeData :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppStateStatesList' with the minimum fields required to make a request.
newAppStateStatesList ::
  AppStateStatesList
newAppStateStatesList =
  AppStateStatesList {includeData = Core.False}

instance Core.GoogleRequest AppStateStatesList where
  type Rs AppStateStatesList = ListResponse
  type Scopes AppStateStatesList = '[Appstate'FullControl]
  requestClient AppStateStatesList {..} =
    go
      (Core.Just includeData)
      (Core.Just Core.AltJSON)
      appStateService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AppStateStatesListResource)
          Core.mempty
