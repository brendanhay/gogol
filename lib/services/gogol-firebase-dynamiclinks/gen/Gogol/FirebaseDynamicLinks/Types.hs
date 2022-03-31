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
-- Module      : Gogol.FirebaseDynamicLinks.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FirebaseDynamicLinks.Types
  ( -- * Configuration
    firebaseDynamicLinksService,

    -- * OAuth Scopes
    Firebase'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AnalyticsInfo
    AnalyticsInfo (..),
    newAnalyticsInfo,

    -- ** AndroidInfo
    AndroidInfo (..),
    newAndroidInfo,

    -- ** CreateManagedShortLinkRequest
    CreateManagedShortLinkRequest (..),
    newCreateManagedShortLinkRequest,

    -- ** CreateManagedShortLinkResponse
    CreateManagedShortLinkResponse (..),
    newCreateManagedShortLinkResponse,

    -- ** CreateShortDynamicLinkRequest
    CreateShortDynamicLinkRequest (..),
    newCreateShortDynamicLinkRequest,

    -- ** CreateShortDynamicLinkResponse
    CreateShortDynamicLinkResponse (..),
    newCreateShortDynamicLinkResponse,

    -- ** DesktopInfo
    DesktopInfo (..),
    newDesktopInfo,

    -- ** DeviceInfo
    DeviceInfo (..),
    newDeviceInfo,

    -- ** DynamicLinkEventStat
    DynamicLinkEventStat (..),
    newDynamicLinkEventStat,

    -- ** DynamicLinkEventStat_Event
    DynamicLinkEventStat_Event (..),

    -- ** DynamicLinkEventStat_Platform
    DynamicLinkEventStat_Platform (..),

    -- ** DynamicLinkInfo
    DynamicLinkInfo (..),
    newDynamicLinkInfo,

    -- ** DynamicLinkStats
    DynamicLinkStats (..),
    newDynamicLinkStats,

    -- ** DynamicLinkWarning
    DynamicLinkWarning (..),
    newDynamicLinkWarning,

    -- ** DynamicLinkWarning_WarningCode
    DynamicLinkWarning_WarningCode (..),

    -- ** GetIosPostInstallAttributionRequest
    GetIosPostInstallAttributionRequest (..),
    newGetIosPostInstallAttributionRequest,

    -- ** GetIosPostInstallAttributionRequest_RetrievalMethod
    GetIosPostInstallAttributionRequest_RetrievalMethod (..),

    -- ** GetIosPostInstallAttributionRequest_VisualStyle
    GetIosPostInstallAttributionRequest_VisualStyle (..),

    -- ** GetIosPostInstallAttributionResponse
    GetIosPostInstallAttributionResponse (..),
    newGetIosPostInstallAttributionResponse,

    -- ** GetIosPostInstallAttributionResponse_AttributionConfidence
    GetIosPostInstallAttributionResponse_AttributionConfidence (..),

    -- ** GetIosPostInstallAttributionResponse_RequestIpVersion
    GetIosPostInstallAttributionResponse_RequestIpVersion (..),

    -- ** GetIosReopenAttributionRequest
    GetIosReopenAttributionRequest (..),
    newGetIosReopenAttributionRequest,

    -- ** GetIosReopenAttributionResponse
    GetIosReopenAttributionResponse (..),
    newGetIosReopenAttributionResponse,

    -- ** GooglePlayAnalytics
    GooglePlayAnalytics (..),
    newGooglePlayAnalytics,

    -- ** ITunesConnectAnalytics
    ITunesConnectAnalytics (..),
    newITunesConnectAnalytics,

    -- ** IosInfo
    IosInfo (..),
    newIosInfo,

    -- ** ManagedShortLink
    ManagedShortLink (..),
    newManagedShortLink,

    -- ** ManagedShortLink_FlaggedAttributeItem
    ManagedShortLink_FlaggedAttributeItem (..),

    -- ** ManagedShortLink_Visibility
    ManagedShortLink_Visibility (..),

    -- ** NavigationInfo
    NavigationInfo (..),
    newNavigationInfo,

    -- ** SocialMetaTagInfo
    SocialMetaTagInfo (..),
    newSocialMetaTagInfo,

    -- ** Suffix
    Suffix (..),
    newSuffix,

    -- ** Suffix_Option
    Suffix_Option (..),
  )
where

import Gogol.FirebaseDynamicLinks.Internal.Product
import Gogol.FirebaseDynamicLinks.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Firebase Dynamic Links API. This contains the host and root path used as a starting point for constructing service requests.
firebaseDynamicLinksService :: Core.ServiceConfig
firebaseDynamicLinksService =
  Core.defaultService
    (Core.ServiceId "firebasedynamiclinks:v1")
    "firebasedynamiclinks.googleapis.com"

-- | View and administer all your Firebase data and settings
type Firebase'FullControl = "https://www.googleapis.com/auth/firebase"
