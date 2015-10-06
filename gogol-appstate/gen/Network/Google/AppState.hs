{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AppState
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Network.Google.AppState
    (
    -- * API
      AppStateAPI
    , appStateAPI
    , appStateURL

    -- * Service Methods

    -- * REST Resources

    -- ** AppStateStatesClear
    , module Network.Google.Resource.AppState.States.Clear

    -- ** AppStateStatesDelete
    , module Network.Google.Resource.AppState.States.Delete

    -- ** AppStateStatesGet
    , module Network.Google.Resource.AppState.States.Get

    -- ** AppStateStatesList
    , module Network.Google.Resource.AppState.States.List

    -- ** AppStateStatesUpdate
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

import           Network.Google.AppState.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AppState.States.Clear
import           Network.Google.Resource.AppState.States.Delete
import           Network.Google.Resource.AppState.States.Get
import           Network.Google.Resource.AppState.States.List
import           Network.Google.Resource.AppState.States.Update

{- $resources
TODO
-}

type AppStateAPI =
     StatesListResource :<|> StatesGetResource :<|>
       StatesClearResource
       :<|> StatesDeleteResource
       :<|> StatesUpdateResource

appStateAPI :: Proxy AppStateAPI
appStateAPI = Proxy
