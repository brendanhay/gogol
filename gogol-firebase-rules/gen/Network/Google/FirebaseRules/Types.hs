{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseRules.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseRules.Types
    (
    -- * Service Configuration
      firebaseRulesService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * SourcePosition
    , SourcePosition
    , sourcePosition
    , spLine
    , spColumn
    , spFileName

    -- * Empty
    , Empty
    , empty

    -- * ListReleasesResponse
    , ListReleasesResponse
    , listReleasesResponse
    , lrrNextPageToken
    , lrrReleases

    -- * TestRulesetResponse
    , TestRulesetResponse
    , testRulesetResponse
    , trrIssues

    -- * Release
    , Release
    , release
    , rRulesetName
    , rUpdateTime
    , rName
    , rCreateTime

    -- * Ruleset
    , Ruleset
    , ruleset
    , rulName
    , rulSource
    , rulCreateTime

    -- * Xgafv
    , Xgafv (..)

    -- * IssueSeverity
    , IssueSeverity (..)

    -- * Source
    , Source
    , source
    , sFiles

    -- * TestRulesetRequest
    , TestRulesetRequest
    , testRulesetRequest
    , trrSource

    -- * File
    , File
    , file
    , fFingerprint
    , fContent
    , fName

    -- * ListRulesetsResponse
    , ListRulesetsResponse
    , listRulesetsResponse
    , lRulesets
    , lNextPageToken

    -- * Issue
    , Issue
    , issue
    , iSourcePosition
    , iSeverity
    , iDescription
    ) where

import           Network.Google.FirebaseRules.Types.Product
import           Network.Google.FirebaseRules.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Firebase Rules API. This contains the host and root path used as a starting point for constructing service requests.
firebaseRulesService :: ServiceConfig
firebaseRulesService
  = defaultService (ServiceId "firebaserules:v1")
      "firebaserules.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
