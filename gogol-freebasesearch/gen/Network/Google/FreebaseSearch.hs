{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
    -- * API
      FreebaseSearchAPI
    , freebaseSearchAPI
    , freebaseSearchURL

    -- * Service Methods

    -- ** FreebaseReconcile
    , module Network.Google.Method.Freebase.Reconcile

    -- ** FreebaseSearch
    , module Network.Google.Method.Freebase.Search

    -- * REST Resources

    -- * Types

    -- ** WarningItem
    , WarningItem
    , warningItem
    , wiLocation
    , wiReason
    , wiMessage

    -- ** Costs
    , Costs
    , costs
    , cHits
    , cMs

    -- ** ReconcileGet
    , ReconcileGet
    , reconcileGet
    , rgCandidate
    , rgCosts
    , rgWarning
    , rgMatch

    -- ** Format
    , Format (..)

    -- ** Help
    , Help (..)

    -- ** Notable
    , Notable
    , notable
    , nName
    , nId

    -- ** Scoring
    , Scoring (..)

    -- ** ReconcileCandidate
    , ReconcileCandidate
    , reconcileCandidate
    , rcLang
    , rcConfidence
    , rcName
    , rcNotable
    , rcMid

    -- ** Spell
    , Spell (..)

    -- ** Encode
    , Encode (..)
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Method.Freebase.Reconcile
import           Network.Google.Method.Freebase.Search
import           Network.Google.Prelude

{- $resources
TODO
-}

type FreebaseSearchAPI =
     ReconcileMethod :<|> SearchMethod

freebaseSearchAPI :: Proxy FreebaseSearchAPI
freebaseSearchAPI = Proxy
