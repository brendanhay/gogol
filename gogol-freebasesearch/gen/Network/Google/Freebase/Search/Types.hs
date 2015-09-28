{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Freebase.Search.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Freebase.Search.Types
    (
    -- * Service URL
      freebaseSearchURL

    -- * Search'Spell
    , Search'Spell (..)

    -- * Search'Encode
    , Search'Encode (..)

    -- * Alt
    , Alt (..)

    -- * ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- * Search'Help
    , Search'Help (..)

    -- * ReconcileGetCosts
    , ReconcileGetCosts
    , reconcileGetCosts
    , rgcHits
    , rgcMs

    -- * Search'Format
    , Search'Format (..)

    -- * ReconcileGetItemWarning
    , ReconcileGetItemWarning
    , reconcileGetItemWarning
    , rgiwLocation
    , rgiwReason
    , rgiwMessage

    -- * Search'Scoring
    , Search'Scoring (..)

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
    ) where

import           Network.Google.Freebase.Search.Types.Product
import           Network.Google.Freebase.Search.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Freebase Search.
freebaseSearchURL :: BaseUrl
freebaseSearchURL
  = BaseUrl Https
      "https://www.googleapis.com/freebase/v1/"
      443
