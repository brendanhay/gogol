{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SearchConsole
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides tools for running validation tests against single URLs
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console URL Testing Tools API Reference>
module Network.Google.SearchConsole
    (
    -- * Service Configuration
      searchConsoleService

    -- * API Declaration
    , SearchConsoleAPI

    -- * Resources

    -- ** searchconsole.urlTestingTools.mobileFriendlyTest.run
    , module Network.Google.Resource.SearchConsole.URLTestingTools.MobileFriendlyTest.Run

    -- * Types

    -- ** RunMobileFriendlyTestResponseMobileFriendliness
    , RunMobileFriendlyTestResponseMobileFriendliness (..)

    -- ** Image
    , Image
    , image
    , iData
    , iMimeType

    -- ** BlockedResource
    , BlockedResource
    , blockedResource
    , brURL

    -- ** ResourceIssue
    , ResourceIssue
    , resourceIssue
    , riBlockedResource

    -- ** TestStatusStatus
    , TestStatusStatus (..)

    -- ** RunMobileFriendlyTestRequest
    , RunMobileFriendlyTestRequest
    , runMobileFriendlyTestRequest
    , rmftrURL
    , rmftrRequestScreenshot

    -- ** TestStatus
    , TestStatus
    , testStatus
    , tsStatus
    , tsDetails

    -- ** Xgafv
    , Xgafv (..)

    -- ** MobileFriendlyIssueRule
    , MobileFriendlyIssueRule (..)

    -- ** RunMobileFriendlyTestResponse
    , RunMobileFriendlyTestResponse
    , runMobileFriendlyTestResponse
    , rmftrScreenshot
    , rmftrResourceIssues
    , rmftrMobileFriendliness
    , rmftrTestStatus
    , rmftrMobileFriendlyIssues

    -- ** MobileFriendlyIssue
    , MobileFriendlyIssue
    , mobileFriendlyIssue
    , mfiRule
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.SearchConsole.URLTestingTools.MobileFriendlyTest.Run
import           Network.Google.SearchConsole.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Search Console URL Testing Tools API service.
type SearchConsoleAPI =
     URLTestingToolsMobileFriendlyTestRunResource
