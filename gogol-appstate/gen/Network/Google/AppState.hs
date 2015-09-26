-- |
-- Module      : Network.Google.AppState
-- Copyright   : (c) 2015 Brendan Hay
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
    -- * API Definition
      AppState



    -- * Types

    -- ** GetResponse
    , GetResponse
    , getResponse
    , grCurrentStateVersion
    , grKind
    , grData
    , grStateKey

    -- ** ListResponse
    , ListResponse
    , listResponse
    , lrMaximumKeyCount
    , lrKind
    , lrItems

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
    ) where

import           Network.Google.AppState.Types

{- $resources
TODO
-}

type AppState = ()

appState :: Proxy AppState
appState = Proxy




