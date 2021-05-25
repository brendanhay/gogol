{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppState
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Network.Google.AppState
    (
    -- * Service Configuration
      appStateService

    -- * OAuth Scopes
    , appStateScope

    -- * API Declaration
    , AppStateAPI

    -- * Resources

    -- ** appstate.states.clear
    , module Network.Google.Resource.AppState.States.Clear

    -- ** appstate.states.delete
    , module Network.Google.Resource.AppState.States.Delete

    -- ** appstate.states.get
    , module Network.Google.Resource.AppState.States.Get

    -- ** appstate.states.list
    , module Network.Google.Resource.AppState.States.List

    -- ** appstate.states.update
    , module Network.Google.Resource.AppState.States.Update

    -- * Types

    -- ** WriteResult
    , WriteResult
    , writeResult
    , wrCurrentStateVersion
    , wrKind
    , wrStateKey

    -- ** ListResponse
    , ListResponse
    , listResponse
    , lrMaximumKeyCount
    , lrKind
    , lrItems

    -- ** GetResponse
    , GetResponse
    , getResponse
    , grCurrentStateVersion
    , grKind
    , grData
    , grStateKey

    -- ** UpdateRequest
    , UpdateRequest
    , updateRequest
    , urKind
    , urData
    ) where

import Network.Google.Prelude
import Network.Google.AppState.Types
import Network.Google.Resource.AppState.States.Clear
import Network.Google.Resource.AppState.States.Delete
import Network.Google.Resource.AppState.States.Get
import Network.Google.Resource.AppState.States.List
import Network.Google.Resource.AppState.States.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google App State API service.
type AppStateAPI =
     StatesListResource :<|> StatesGetResource :<|>
       StatesClearResource
       :<|> StatesDeleteResource
       :<|> StatesUpdateResource
