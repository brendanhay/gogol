{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.YouTubeAnalytics.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.YouTubeAnalytics.Types
    (
    -- * Configuration
      youTubeAnalyticsService

    -- * OAuth Scopes
    , Youtube'FullControl
    , Youtube'Readonly
    , Youtubepartner'FullControl
    , YtAnalyticsMonetary'Readonly
    , YtAnalytics'Readonly

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** EmptyResponse
    , EmptyResponse (..)
    , newEmptyResponse

    -- ** ErrorProto
    , ErrorProto (..)
    , newErrorProto

    -- ** ErrorProto_LocationType
    , ErrorProto_LocationType (..)

    -- ** Errors
    , Errors (..)
    , newErrors

    -- ** Errors_Code
    , Errors_Code (..)

    -- ** Group
    , Group (..)
    , newGroup

    -- ** GroupContentDetails
    , GroupContentDetails (..)
    , newGroupContentDetails

    -- ** GroupItem
    , GroupItem (..)
    , newGroupItem

    -- ** GroupItemResource
    , GroupItemResource (..)
    , newGroupItemResource

    -- ** GroupSnippet
    , GroupSnippet (..)
    , newGroupSnippet

    -- ** ListGroupItemsResponse
    , ListGroupItemsResponse (..)
    , newListGroupItemsResponse

    -- ** ListGroupsResponse
    , ListGroupsResponse (..)
    , newListGroupsResponse

    -- ** QueryResponse
    , QueryResponse (..)
    , newQueryResponse

    -- ** ResultTableColumnHeader
    , ResultTableColumnHeader (..)
    , newResultTableColumnHeader
    ) where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeAnalytics.Internal.Product
import Gogol.YouTubeAnalytics.Internal.Sum

-- | Default request referring to version @v2@ of the YouTube Analytics API. This contains the host and root path used as a starting point for constructing service requests.
youTubeAnalyticsService :: Core.ServiceConfig
youTubeAnalyticsService
  = Core.defaultService
      (Core.ServiceId "youtubeAnalytics:v2")
      "youtubeanalytics.googleapis.com"

-- | Manage your YouTube account
type Youtube'FullControl = "https://www.googleapis.com/auth/youtube"

-- | View your YouTube account
type Youtube'Readonly = "https://www.googleapis.com/auth/youtube.readonly"

-- | View and manage your assets and associated content on YouTube
type Youtubepartner'FullControl = "https://www.googleapis.com/auth/youtubepartner"

-- | View monetary and non-monetary YouTube Analytics reports for your YouTube content
type YtAnalyticsMonetary'Readonly = "https://www.googleapis.com/auth/yt-analytics-monetary.readonly"

-- | View YouTube Analytics reports for your YouTube content
type YtAnalytics'Readonly = "https://www.googleapis.com/auth/yt-analytics.readonly"
