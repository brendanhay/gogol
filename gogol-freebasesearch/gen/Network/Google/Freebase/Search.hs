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
    -- * REST Resources

    -- ** Freebase Search
      FreebaseSearch
    , freebaseSearch
    , freebaseSearchURL

    -- ** freebase.reconcile
    , module Network.Google.API.Freebase.Reconcile

    -- ** freebase.search
    , module Network.Google.API.Freebase.Search

    -- * Types

    -- ** Search'Spell
    , Search'Spell (..)

    -- ** Search'Encode
    , Search'Encode (..)

    -- ** Alt
    , Alt (..)

    -- ** ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- ** Search'Help
    , Search'Help (..)

    -- ** ReconcileGetCosts
    , ReconcileGetCosts
    , reconcileGetCosts
    , rgcHits
    , rgcMs

    -- ** Search'Format
    , Search'Format (..)

    -- ** ReconcileGetItemWarning
    , ReconcileGetItemWarning
    , reconcileGetItemWarning
    , rgiwLocation
    , rgiwReason
    , rgiwMessage

    -- ** Search'Scoring
    , Search'Scoring (..)

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
    ) where

import           Network.Google.API.Freebase.Reconcile
import           Network.Google.API.Freebase.Search
import           Network.Google.Freebase.Search.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type FreebaseSearch = SearchAPI :<|> ReconcileAPI

freebaseSearch :: Proxy FreebaseSearch
freebaseSearch = Proxy
