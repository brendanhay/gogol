{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Freebase.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Find Freebase entities using textual queries and other constraints.
--
-- /See:/ <https://developers.google.com/freebase/ Freebase Search Reference>
module Network.Google.Freebase.Search
    (
    -- * Resources
      FreebaseSearch
    , Reconcile
    , Search

    -- * Types

    -- ** ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- ** ReconcileCandidateNotable
    , ReconcileCandidateNotable
    , reconcileCandidateNotable
    , rcnName
    , rcnId

    -- ** ReconcileGet
    , ReconcileGet
    , reconcileGet
    , rgCandidate
    , rgCosts
    , rgWarning
    , rgMatch

    -- ** ReconcileGetCosts
    , ReconcileGetCosts
    , reconcileGetCosts
    , rgcHits
    , rgcMs

    -- ** ReconcileGetItemWarning
    , ReconcileGetItemWarning
    , reconcileGetItemWarning
    , rgiwLocation
    , rgiwReason
    , rgiwMessage
    ) where

import           Network.Google.Freebase.Search.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type FreebaseSearch = ReconcileAPI :<|> SearchAPI

-- | Reconcile entities to Freebase open data.
type Reconcile =
     "freebase" :> "v1" :> "reconcile" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "kind" Text
       :> QueryParam "userIp" Text
       :> QueryParam "lang" Text
       :> QueryParam "confidence" Float
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "limit" Int32
       :> QueryParam "prop" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Search Freebase open data.
type Search =
     "freebase" :> "v1" :> "search" :>
       QueryParam "without" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "cursor" Int32
       :> QueryParam "with" Text
       :> QueryParam "userIp" Text
       :> QueryParam "domain" Text
       :> QueryParam "format" Text
       :> QueryParam "help" Text
       :> QueryParam "lang" Text
       :> QueryParam "indent" Bool
       :> QueryParam "key" Text
       :> QueryParam "output" Text
       :> QueryParam "query" Text
       :> QueryParam "scoring" Text
       :> QueryParam "limit" Int32
       :> QueryParam "filter" Text
       :> QueryParam "mql_output" Text
       :> QueryParam "mid" Text
       :> QueryParam "type" Text
       :> QueryParam "stemmed" Bool
       :> QueryParam "oauth_token" Text
       :> QueryParam "exact" Bool
       :> QueryParam "spell" Text
       :> QueryParam "as_of_time" Text
       :> QueryParam "encode" Text
       :> QueryParam "prefixed" Bool
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
