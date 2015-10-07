{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FreebaseSearch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Find Freebase entities using textual queries and other constraints.
--
-- /See:/ <https://developers.google.com/freebase/ Freebase Search Reference>
module Network.Google.FreebaseSearch
    (
    -- * API Declaration
      FreebaseSearchAPI

    -- * Methods

    -- ** FreebaseReconcile
    , module Network.Google.Method.Freebase.Reconcile

    -- ** FreebaseSearch
    , module Network.Google.Method.Freebase.Search

    -- * Types

    -- ** FreebaseSearchFormat
    , FreebaseSearchFormat (..)

    -- ** ReconcileGetWarningItem
    , ReconcileGetWarningItem
    , reconcileGetWarningItem
    , rgwiLocation
    , rgwiReason
    , rgwiMessage

    -- ** FreebaseSearchScoring
    , FreebaseSearchScoring (..)

    -- ** ReconcileGetCosts
    , ReconcileGetCosts
    , reconcileGetCosts
    , rgcHits
    , rgcMs

    -- ** ReconcileGet
    , ReconcileGet
    , reconcileGet
    , rgCandidate
    , rgCosts
    , rgWarning
    , rgMatch

    -- ** FreebaseSearchEncode
    , FreebaseSearchEncode (..)

    -- ** ReconcileCandidateNotable
    , ReconcileCandidateNotable
    , reconcileCandidateNotable
    , rcnName
    , rcnId

    -- ** ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- ** FreebaseSearchHelp
    , FreebaseSearchHelp (..)

    -- ** FreebaseSearchSpell
    , FreebaseSearchSpell (..)
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Method.Freebase.Reconcile
import           Network.Google.Method.Freebase.Search
import           Network.Google.Prelude

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Freebase Search service.
type FreebaseSearchAPI =
     ReconcileMethod :<|> SearchMethod
