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
-- Module      : Gogol.AppState.States.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the data corresponding to the passed key. If the key does not exist on the server, an HTTP 404 will be returned.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.get@.
module Gogol.AppState.States.Get
  ( -- * Resource
    AppStateStatesGetResource,

    -- ** Constructing a Request
    AppStateStatesGet (..),
    newAppStateStatesGet,
  )
where

import Gogol.AppState.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appstate.states.get@ method which the
-- 'AppStateStatesGet' request conforms to.
type AppStateStatesGetResource =
  "appstate"
    Core.:> "v1"
    Core.:> "states"
    Core.:> Core.Capture "stateKey" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetResponse

-- | Retrieves the data corresponding to the passed key. If the key does not exist on the server, an HTTP 404 will be returned.
--
-- /See:/ 'newAppStateStatesGet' smart constructor.
newtype AppStateStatesGet = AppStateStatesGet
  { -- | The key for the data to be retrieved.
    stateKey :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppStateStatesGet' with the minimum fields required to make a request.
newAppStateStatesGet ::
  -- |  The key for the data to be retrieved. See 'stateKey'.
  Core.Int32 ->
  AppStateStatesGet
newAppStateStatesGet stateKey = AppStateStatesGet {stateKey = stateKey}

instance Core.GoogleRequest AppStateStatesGet where
  type Rs AppStateStatesGet = GetResponse
  type
    Scopes AppStateStatesGet =
      '[Appstate'FullControl]
  requestClient AppStateStatesGet {..} =
    go
      stateKey
      (Core.Just Core.AltJSON)
      appStateService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AppStateStatesGetResource)
          Core.mempty
