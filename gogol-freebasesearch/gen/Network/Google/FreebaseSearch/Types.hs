{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

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
    -- * Service Configuration
      freebaseSearch

    -- * FreebaseSearchFormat
    , FreebaseSearchFormat (..)

    -- * ReconcileGetWarningItem
    , ReconcileGetWarningItem
    , reconcileGetWarningItem
    , rgwiLocation
    , rgwiReason
    , rgwiMessage

    -- * FreebaseSearchScoring
    , FreebaseSearchScoring (..)

    -- * ReconcileGetCosts
    , ReconcileGetCosts
    , reconcileGetCosts
    , rgcHits
    , rgcMs

    -- * ReconcileGet
    , ReconcileGet
    , reconcileGet
    , rgCandidate
    , rgCosts
    , rgWarning
    , rgMatch

    -- * FreebaseSearchEncode
    , FreebaseSearchEncode (..)

    -- * ReconcileCandidateNotable
    , ReconcileCandidateNotable
    , reconcileCandidateNotable
    , rcnName
    , rcnId

    -- * ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- * FreebaseSearchHelp
    , FreebaseSearchHelp (..)

    -- * FreebaseSearchSpell
    , FreebaseSearchSpell (..)
    ) where

import           Network.Google.FreebaseSearch.Types.Product
import           Network.Google.FreebaseSearch.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Freebase Search. This contains the host and root path used as a starting point for constructing service requests.
freebaseSearch :: Service
freebaseSearch
  = defaultService (ServiceId "freebase:v1")
      "www.googleapis.com"
      "freebase/v1/"
