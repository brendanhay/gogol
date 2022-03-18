{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.YouTubeAnalytics.Types
  ( -- * Configuration
    youTubeAnalyticsService,

    -- * OAuth Scopes
    youtubeScope,
    youtubeReadOnlyScope,
    youtubepartnerScope,
    youtubeAnalyticsMonetaryReadOnlyScope,
    youtubeAnalyticsReadOnlyScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** EmptyResponse
    EmptyResponse (..),
    newEmptyResponse,

    -- ** ErrorProto
    ErrorProto (..),
    newErrorProto,

    -- ** ErrorProto_LocationType
    ErrorProto_LocationType (..),

    -- ** Errors
    Errors (..),
    newErrors,

    -- ** Errors_Code
    Errors_Code (..),

    -- ** Group
    Group (..),
    newGroup,

    -- ** GroupContentDetails
    GroupContentDetails (..),
    newGroupContentDetails,

    -- ** GroupItem
    GroupItem (..),
    newGroupItem,

    -- ** GroupItemResource
    GroupItemResource (..),
    newGroupItemResource,

    -- ** GroupSnippet
    GroupSnippet (..),
    newGroupSnippet,

    -- ** ListGroupItemsResponse
    ListGroupItemsResponse (..),
    newListGroupItemsResponse,

    -- ** ListGroupsResponse
    ListGroupsResponse (..),
    newListGroupsResponse,

    -- ** QueryResponse
    QueryResponse (..),
    newQueryResponse,

    -- ** ResultTableColumnHeader
    ResultTableColumnHeader (..),
    newResultTableColumnHeader,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.YouTubeAnalytics.Internal.Product
import Network.Google.YouTubeAnalytics.Internal.Sum

-- | Default request referring to version @v2@ of the YouTube Analytics API. This contains the host and root path used as a starting point for constructing service requests.
youTubeAnalyticsService :: Core.ServiceConfig
youTubeAnalyticsService =
  Core.defaultService
    (Core.ServiceId "youtubeAnalytics:v2")
    "youtubeanalytics.googleapis.com"

-- | Manage your YouTube account
youtubeScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube"]
youtubeScope = Core.Proxy

-- | View your YouTube account
youtubeReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/youtube.readonly"]
youtubeReadOnlyScope = Core.Proxy

-- | View and manage your assets and associated content on YouTube
youtubepartnerScope :: Core.Proxy '["https://www.googleapis.com/auth/youtubepartner"]
youtubepartnerScope = Core.Proxy

-- | View monetary and non-monetary YouTube Analytics reports for your YouTube content
youtubeAnalyticsMonetaryReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"]
youtubeAnalyticsMonetaryReadOnlyScope = Core.Proxy

-- | View YouTube Analytics reports for your YouTube content
youtubeAnalyticsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/yt-analytics.readonly"]
youtubeAnalyticsReadOnlyScope = Core.Proxy
