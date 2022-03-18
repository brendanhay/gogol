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
-- Module      : Network.Google.AppState
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Network.Google.AppState
  ( -- * Configuration
    appStateService,

    -- * OAuth Scopes
    appStateScope,

    -- * Resources

    -- ** appstate.states.clear
    AppStateStatesClearResource,
    newAppStateStatesClear,
    AppStateStatesClear,

    -- ** appstate.states.delete
    AppStateStatesDeleteResource,
    newAppStateStatesDelete,
    AppStateStatesDelete,

    -- ** appstate.states.get
    AppStateStatesGetResource,
    newAppStateStatesGet,
    AppStateStatesGet,

    -- ** appstate.states.list
    AppStateStatesListResource,
    newAppStateStatesList,
    AppStateStatesList,

    -- ** appstate.states.update
    AppStateStatesUpdateResource,
    newAppStateStatesUpdate,
    AppStateStatesUpdate,

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

import Network.Google.AppState.States.Clear
import Network.Google.AppState.States.Delete
import Network.Google.AppState.States.Get
import Network.Google.AppState.States.List
import Network.Google.AppState.States.Update
import Network.Google.AppState.Types
