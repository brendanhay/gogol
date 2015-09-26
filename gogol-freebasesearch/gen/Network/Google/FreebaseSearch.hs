-- |
-- Module      : Network.Google.FreebaseSearch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Find Freebase entities using textual queries and other constraints.
--
-- /See:/ <https://developers.google.com/freebase/ Freebase Search Reference>
module Network.Google.FreebaseSearch
    (
    -- * API Definition
      FreebaseSearch



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

import           Network.Google.FreebaseSearch.Types

{- $resources
TODO
-}

type FreebaseSearch = ()

freebaseSearch :: Proxy FreebaseSearch
freebaseSearch = Proxy




