{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      freebaseSearchURL

    -- * WarningItem
    , WarningItem
    , warningItem
    , wiLocation
    , wiReason
    , wiMessage

    -- * Costs
    , Costs
    , costs
    , cHits
    , cMs

    -- * ReconcileGet
    , ReconcileGet
    , reconcileGet
    , rgCandidate
    , rgCosts
    , rgWarning
    , rgMatch

    -- * Format
    , Format (..)

    -- * Help
    , Help (..)

    -- * Notable
    , Notable
    , notable
    , nName
    , nId

    -- * Scoring
    , Scoring (..)

    -- * ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- * Spell
    , Spell (..)

    -- * Encode
    , Encode (..)
    ) where

import           Network.Google.FreebaseSearch.Types.Product
import           Network.Google.FreebaseSearch.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Freebase Search.
freebaseSearchURL :: BaseUrl
freebaseSearchURL
  = BaseUrl Https
      "https://www.googleapis.com/freebase/v1/"
      443
