{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.GamesAppState
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Network.Google.GamesAppState
    (
    -- * API
      GamesAppStateAPI
    , gamesAppStateAPI
    , gamesAppStateURL

    -- * Service Methods

    -- * REST Resources

    -- ** AppstateStatesClear
    , module Appstate.States.Clear

    -- ** AppstateStatesDelete
    , module Appstate.States.Delete

    -- ** AppstateStatesGet
    , module Appstate.States.Get

    -- ** AppstateStatesList
    , module Appstate.States.List

    -- ** AppstateStatesUpdate
    , module Appstate.States.Update

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

import           Network.Google.GamesAppState.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Appstate.States.Clear
import           Network.Google.Resource.Appstate.States.Delete
import           Network.Google.Resource.Appstate.States.Get
import           Network.Google.Resource.Appstate.States.List
import           Network.Google.Resource.Appstate.States.Update

{- $resources
TODO
-}

type GamesAppStateAPI = States

gamesAppStateAPI :: Proxy GamesAppStateAPI
gamesAppStateAPI = Proxy
