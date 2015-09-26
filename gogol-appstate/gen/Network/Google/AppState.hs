{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The Google App State API.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference>
module Network.Google.AppState
    (
    -- * Resources
      AppState
    , StatesAPI
    , StatesList
    , StatesGet
    , StatesClear
    , StatesDelete
    , StatesUpdate

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
import           Network.Google.Prelude

{- $resources
TODO
-}

type AppState = StatesAPI

type StatesAPI =
     StatesGet :<|>
       StatesClear :<|>
         StatesDelete :<|> StatesUpdate :<|> StatesList

-- | Lists all the states keys, and optionally the state data.
type StatesList =
     "appstate" :> "v1" :> "states" :>
       QueryParam "includeData" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the data corresponding to the passed key. If the key does not
-- exist on the server, an HTTP 404 will be returned.
type StatesGet =
     "appstate" :> "v1" :> "states" :>
       Capture "stateKey" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
type StatesClear =
     "appstate" :> "v1" :> "states" :>
       Capture "stateKey" Int32
       :> "clear"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "currentDataVersion" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a key and the data associated with it. The key is removed and no
-- longer counts against the key quota. Note that since this method is not
-- safe in the face of concurrent modifications, it should only be used for
-- development and testing purposes. Invoking this method in shipping code
-- can result in data loss and data corruption.
type StatesDelete =
     "appstate" :> "v1" :> "states" :>
       Capture "stateKey" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
type StatesUpdate =
     "appstate" :> "v1" :> "states" :>
       Capture "stateKey" Int32
       :> QueryParam "currentStateVersion" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
