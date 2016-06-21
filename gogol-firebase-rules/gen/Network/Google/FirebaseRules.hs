{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseRules
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages rules that determine when a Firebase Rules-enabled
-- service should permit a request.
--
-- /See:/ <https://firebase.google.com/docs/storage/security/start Firebase Rules API Reference>
module Network.Google.FirebaseRules
    (
    -- * Service Configuration
      firebaseRulesService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , FirebaseRulesAPI

    -- * Resources

    -- ** firebaserules.projects.releases.create
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Create

    -- ** firebaserules.projects.releases.delete
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Delete

    -- ** firebaserules.projects.releases.get
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Get

    -- ** firebaserules.projects.releases.list
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.List

    -- ** firebaserules.projects.releases.update
    , module Network.Google.Resource.FirebaseRules.Projects.Releases.Update

    -- ** firebaserules.projects.rulesets.create
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Create

    -- ** firebaserules.projects.rulesets.delete
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Delete

    -- ** firebaserules.projects.rulesets.get
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.Get

    -- ** firebaserules.projects.rulesets.list
    , module Network.Google.Resource.FirebaseRules.Projects.Rulesets.List

    -- ** firebaserules.projects.test
    , module Network.Google.Resource.FirebaseRules.Projects.Test

    -- * Types

    -- ** SourcePosition
    , SourcePosition
    , sourcePosition
    , spLine
    , spColumn
    , spFileName

    -- ** Empty
    , Empty
    , empty

    -- ** ListReleasesResponse
    , ListReleasesResponse
    , listReleasesResponse
    , lrrNextPageToken
    , lrrReleases

    -- ** TestRulesetResponse
    , TestRulesetResponse
    , testRulesetResponse
    , trrIssues

    -- ** Release
    , Release
    , release
    , rRulesetName
    , rUpdateTime
    , rName
    , rCreateTime

    -- ** Ruleset
    , Ruleset
    , ruleset
    , rulName
    , rulSource
    , rulCreateTime

    -- ** Xgafv
    , Xgafv (..)

    -- ** IssueSeverity
    , IssueSeverity (..)

    -- ** Source
    , Source
    , source
    , sFiles

    -- ** TestRulesetRequest
    , TestRulesetRequest
    , testRulesetRequest
    , trrSource

    -- ** File
    , File
    , file
    , fFingerprint
    , fContent
    , fName

    -- ** ListRulesetsResponse
    , ListRulesetsResponse
    , listRulesetsResponse
    , lRulesets
    , lNextPageToken

    -- ** Issue
    , Issue
    , issue
    , iSourcePosition
    , iSeverity
    , iDescription
    ) where

import           Network.Google.FirebaseRules.Types
import           Network.Google.Prelude
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Create
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Delete
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Get
import           Network.Google.Resource.FirebaseRules.Projects.Releases.List
import           Network.Google.Resource.FirebaseRules.Projects.Releases.Update
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.Create
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.Delete
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.Get
import           Network.Google.Resource.FirebaseRules.Projects.Rulesets.List
import           Network.Google.Resource.FirebaseRules.Projects.Test

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Rules API service.
type FirebaseRulesAPI =
     ProjectsRulesetsListResource :<|>
       ProjectsRulesetsGetResource
       :<|> ProjectsRulesetsCreateResource
       :<|> ProjectsRulesetsDeleteResource
       :<|> ProjectsReleasesListResource
       :<|> ProjectsReleasesGetResource
       :<|> ProjectsReleasesCreateResource
       :<|> ProjectsReleasesDeleteResource
       :<|> ProjectsReleasesUpdateResource
       :<|> ProjectsTestResource
