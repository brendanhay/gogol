{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SearchConsole.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SearchConsole.Types
    (
    -- * Service Configuration
      searchConsoleService

    -- * RunMobileFriendlyTestResponseMobileFriendliness
    , RunMobileFriendlyTestResponseMobileFriendliness (..)

    -- * Image
    , Image
    , image
    , iData
    , iMimeType

    -- * BlockedResource
    , BlockedResource
    , blockedResource
    , brURL

    -- * ResourceIssue
    , ResourceIssue
    , resourceIssue
    , riBlockedResource

    -- * TestStatusStatus
    , TestStatusStatus (..)

    -- * RunMobileFriendlyTestRequest
    , RunMobileFriendlyTestRequest
    , runMobileFriendlyTestRequest
    , rmftrURL
    , rmftrRequestScreenshot

    -- * TestStatus
    , TestStatus
    , testStatus
    , tsStatus
    , tsDetails

    -- * Xgafv
    , Xgafv (..)

    -- * MobileFriendlyIssueRule
    , MobileFriendlyIssueRule (..)

    -- * RunMobileFriendlyTestResponse
    , RunMobileFriendlyTestResponse
    , runMobileFriendlyTestResponse
    , rmftrScreenshot
    , rmftrResourceIssues
    , rmftrMobileFriendliness
    , rmftrTestStatus
    , rmftrMobileFriendlyIssues

    -- * MobileFriendlyIssue
    , MobileFriendlyIssue
    , mobileFriendlyIssue
    , mfiRule
    ) where

import           Network.Google.Prelude
import           Network.Google.SearchConsole.Types.Product
import           Network.Google.SearchConsole.Types.Sum

-- | Default request referring to version 'v1' of the Google Search Console URL Testing Tools API. This contains the host and root path used as a starting point for constructing service requests.
searchConsoleService :: ServiceConfig
searchConsoleService
  = defaultService (ServiceId "searchconsole:v1")
      "searchconsole.googleapis.com"
