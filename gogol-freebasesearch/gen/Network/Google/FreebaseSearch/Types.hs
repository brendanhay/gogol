{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.FreebaseSearch.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FreebaseSearch.Types
    (
    -- * API Definition
      freebase


    -- * ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- * ReconcileCandidateNotable
    , ReconcileCandidateNotable
    , reconcileCandidateNotable
    , rcnName
    , rcnId

    -- * ReconcileGet
    , ReconcileGet
    , reconcileGet
    , rgCandidate
    , rgCosts
    , rgWarning
    , rgMatch

    -- * ReconcileGetCosts
    , ReconcileGetCosts
    , reconcileGetCosts
    , rgcHits
    , rgcMs

    -- * ReconcileGetItemWarning
    , ReconcileGetItemWarning
    , reconcileGetItemWarning
    , rgiwLocation
    , rgiwReason
    , rgiwMessage
    ) where

import           Network.Google.FreebaseSearch.Types.Product
import           Network.Google.FreebaseSearch.Types.Sum
import           Network.Google.Prelude

freebase :: a
freebase = error "freebase"
