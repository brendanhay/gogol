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
-- Module      : Gogol.AppState.States.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the data associated with the input key if and only if the passed version matches the currently stored version. This method is safe in the face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.update@.
module Gogol.AppState.States.Update
  ( -- * Resource
    AppStateStatesUpdateResource,

    -- ** Constructing a Request
    newAppStateStatesUpdate,
    AppStateStatesUpdate,
  )
where

import Gogol.AppState.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @appstate.states.update@ method which the
-- 'AppStateStatesUpdate' request conforms to.
type AppStateStatesUpdateResource =
  "appstate"
    Core.:> "v1"
    Core.:> "states"
    Core.:> Core.Capture "stateKey" Core.Int32
    Core.:> Core.QueryParam "currentStateVersion" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateRequest
    Core.:> Core.Put '[Core.JSON] WriteResult

-- | Update the data associated with the input key if and only if the passed version matches the currently stored version. This method is safe in the face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ 'newAppStateStatesUpdate' smart constructor.
data AppStateStatesUpdate = AppStateStatesUpdate
  { -- | The version of the app state your application is attempting to update. If this does not match the current version, this method will return a conflict error. If there is no data stored on the server for this key, the update will succeed irrespective of the value of this parameter.
    currentStateVersion :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: UpdateRequest,
    -- | The key for the data to be retrieved.
    stateKey :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppStateStatesUpdate' with the minimum fields required to make a request.
newAppStateStatesUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  UpdateRequest ->
  -- |  The key for the data to be retrieved. See 'stateKey'.
  Core.Int32 ->
  AppStateStatesUpdate
newAppStateStatesUpdate payload stateKey =
  AppStateStatesUpdate
    { currentStateVersion = Core.Nothing,
      payload = payload,
      stateKey = stateKey
    }

instance Core.GoogleRequest AppStateStatesUpdate where
  type Rs AppStateStatesUpdate = WriteResult
  type
    Scopes AppStateStatesUpdate =
      '[Appstate'FullControl]
  requestClient AppStateStatesUpdate {..} =
    go
      stateKey
      currentStateVersion
      (Core.Just Core.AltJSON)
      payload
      appStateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppStateStatesUpdateResource
          )
          Core.mempty
