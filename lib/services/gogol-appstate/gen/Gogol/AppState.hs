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
-- Module      : Gogol.AppState
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Gogol.AppState
  ( -- * Configuration
    appStateService,

    -- * OAuth Scopes
    Appstate'FullControl,

    -- * Resources

    -- ** appstate.states.clear
    AppStateStatesClearResource,
    AppStateStatesClear (..),
    newAppStateStatesClear,

    -- ** appstate.states.delete
    AppStateStatesDeleteResource,
    AppStateStatesDelete (..),
    newAppStateStatesDelete,

    -- ** appstate.states.get
    AppStateStatesGetResource,
    AppStateStatesGet (..),
    newAppStateStatesGet,

    -- ** appstate.states.list
    AppStateStatesListResource,
    AppStateStatesList (..),
    newAppStateStatesList,

    -- ** appstate.states.update
    AppStateStatesUpdateResource,
    AppStateStatesUpdate (..),
    newAppStateStatesUpdate,

    -- * Types

    -- ** GetResponse
    GetResponse (..),
    newGetResponse,

    -- ** ListResponse
    ListResponse (..),
    newListResponse,

    -- ** UpdateRequest
    UpdateRequest (..),
    newUpdateRequest,

    -- ** WriteResult
    WriteResult (..),
    newWriteResult,
  )
where

import Gogol.AppState.States.Clear
import Gogol.AppState.States.Delete
import Gogol.AppState.States.Get
import Gogol.AppState.States.List
import Gogol.AppState.States.Update
import Gogol.AppState.Types
