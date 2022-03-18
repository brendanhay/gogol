{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AppState
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Gogol.AppState
    (
    -- * Configuration
      appStateService

    -- * OAuth Scopes
    , appStateScope

    -- * Resources

    -- ** appstate.states.clear
    , AppStateStatesClearResource
    , newAppStateStatesClear
    , AppStateStatesClear

    -- ** appstate.states.delete
    , AppStateStatesDeleteResource
    , newAppStateStatesDelete
    , AppStateStatesDelete

    -- ** appstate.states.get
    , AppStateStatesGetResource
    , newAppStateStatesGet
    , AppStateStatesGet

    -- ** appstate.states.list
    , AppStateStatesListResource
    , newAppStateStatesList
    , AppStateStatesList

    -- ** appstate.states.update
    , AppStateStatesUpdateResource
    , newAppStateStatesUpdate
    , AppStateStatesUpdate

    -- * Types

    -- ** GetResponse
    , GetResponse (..)
    , newGetResponse

    -- ** ListResponse
    , ListResponse (..)
    , newListResponse

    -- ** UpdateRequest
    , UpdateRequest (..)
    , newUpdateRequest

    -- ** WriteResult
    , WriteResult (..)
    , newWriteResult
    ) where

import Gogol.AppState.States.Clear
import Gogol.AppState.States.Delete
import Gogol.AppState.States.Get
import Gogol.AppState.States.List
import Gogol.AppState.States.Update
import Gogol.AppState.Types
