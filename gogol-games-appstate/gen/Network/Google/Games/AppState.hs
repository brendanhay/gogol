{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Games.AppState
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Network.Google.Games.AppState
    (
    -- * REST Resources

    -- ** Google App State API
      GamesAppState
    , gamesAppState
    , gamesAppStateURL

    -- ** appstate.states.clear
    , module Network.Google.API.Appstate.States.Clear

    -- ** appstate.states.delete
    , module Network.Google.API.Appstate.States.Delete

    -- ** appstate.states.get
    , module Network.Google.API.Appstate.States.Get

    -- ** appstate.states.list
    , module Network.Google.API.Appstate.States.List

    -- ** appstate.states.update
    , module Network.Google.API.Appstate.States.Update

    -- * Types

    -- ** Alt
    , Alt (..)

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
    ) where

import           Network.Google.API.Appstate.States.Clear
import           Network.Google.API.Appstate.States.Delete
import           Network.Google.API.Appstate.States.Get
import           Network.Google.API.Appstate.States.List
import           Network.Google.API.Appstate.States.Update
import           Network.Google.Games.AppState.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type GamesAppState =
     StatesListAPI :<|> StatesGetAPI :<|> StatesDeleteAPI
       :<|> StatesUpdateAPI
       :<|> StatesClearAPI

gamesAppState :: Proxy GamesAppState
gamesAppState = Proxy
