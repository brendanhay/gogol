{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseDynamicLinks.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseDynamicLinks.Types
    (
    -- * Service Configuration
      firebaseDynamicLinksService

    -- * OAuth Scopes
    , firebaseScope

    -- * NavigationInfo
    , NavigationInfo
    , navigationInfo
    , niEnableForcedRedirect

    -- * DesktopInfo
    , DesktopInfo
    , desktopInfo
    , diDesktopFallbackLink

    -- * DynamicLinkEventStatPlatform
    , DynamicLinkEventStatPlatform (..)

    -- * Suffix
    , Suffix
    , suffix
    , sCustomSuffix
    , sOption

    -- * DynamicLinkWarning
    , DynamicLinkWarning
    , dynamicLinkWarning
    , dlwWarningCode
    , dlwWarningDocumentLink
    , dlwWarningMessage

    -- * ManagedShortLink
    , ManagedShortLink
    , managedShortLink
    , mslCreationTime
    , mslLink
    , mslVisibility
    , mslLinkName
    , mslFlaggedAttribute
    , mslInfo

    -- * CreateShortDynamicLinkRequest
    , CreateShortDynamicLinkRequest
    , createShortDynamicLinkRequest
    , csdlrLongDynamicLink
    , csdlrSuffix
    , csdlrDynamicLinkInfo
    , csdlrSdkVersion

    -- * SocialMetaTagInfo
    , SocialMetaTagInfo
    , socialMetaTagInfo
    , smtiSocialImageLink
    , smtiSocialDescription
    , smtiSocialTitle

    -- * CreateShortDynamicLinkResponse
    , CreateShortDynamicLinkResponse
    , createShortDynamicLinkResponse
    , csdlrPreviewLink
    , csdlrWarning
    , csdlrShortLink

    -- * DynamicLinkEventStat
    , DynamicLinkEventStat
    , dynamicLinkEventStat
    , dlesEvent
    , dlesPlatform
    , dlesCount

    -- * IosInfo
    , IosInfo
    , iosInfo
    , iiIosBundleId
    , iiIosIPadBundleId
    , iiIosAppStoreId
    , iiIosMinimumVersion
    , iiIosIPadFallbackLink
    , iiIosCustomScheme
    , iiIosFallbackLink

    -- * DynamicLinkInfo
    , DynamicLinkInfo
    , dynamicLinkInfo
    , dliNavigationInfo
    , dliDesktopInfo
    , dliSocialMetaTagInfo
    , dliDynamicLinkDomain
    , dliLink
    , dliIosInfo
    , dliAppPreview
    , dliDomainURIPrefix
    , dliAndroidInfo
    , dliAnalyticsInfo

    -- * AppPreview
    , AppPreview
    , appPreview
    , apOpenButtonText
    , apSavePositionText

    -- * GetIosPostInstallAttributionRequestVisualStyle
    , GetIosPostInstallAttributionRequestVisualStyle (..)

    -- * DynamicLinkStats
    , DynamicLinkStats
    , dynamicLinkStats
    , dlsLinkEventStats

    -- * SuffixOption
    , SuffixOption (..)

    -- * DynamicLinkEventStatEvent
    , DynamicLinkEventStatEvent (..)

    -- * CreateManagedShortLinkRequest
    , CreateManagedShortLinkRequest
    , createManagedShortLinkRequest
    , cmslrLongDynamicLink
    , cmslrSuffix
    , cmslrDynamicLinkInfo
    , cmslrSdkVersion
    , cmslrName

    -- * GetIosReopenAttributionResponse
    , GetIosReopenAttributionResponse
    , getIosReopenAttributionResponse
    , girarIosMinAppVersion
    , girarDeepLink
    , girarResolvedLink
    , girarUtmMedium
    , girarInvitationId
    , girarUtmCampaign
    , girarUtmSource

    -- * GetIosPostInstallAttributionResponseRequestIPVersion
    , GetIosPostInstallAttributionResponseRequestIPVersion (..)

    -- * GetIosPostInstallAttributionRequest
    , GetIosPostInstallAttributionRequest
    , getIosPostInstallAttributionRequest
    , gipiarIosVersion
    , gipiarUniqueMatchLinkToCheck
    , gipiarAppInstallationTime
    , gipiarDevice
    , gipiarSdkVersion
    , gipiarBundleId
    , gipiarRetrievalMethod
    , gipiarVisualStyle

    -- * Xgafv
    , Xgafv (..)

    -- * GetIosPostInstallAttributionResponseAttributionConfidence
    , GetIosPostInstallAttributionResponseAttributionConfidence (..)

    -- * AndroidInfo
    , AndroidInfo
    , androidInfo
    , aiAndroidMinPackageVersionCode
    , aiAndroidFallbackLink
    , aiAndroidLink
    , aiAndroidPackageName

    -- * DynamicLinkWarningWarningCode
    , DynamicLinkWarningWarningCode (..)

    -- * AnalyticsInfo
    , AnalyticsInfo
    , analyticsInfo
    , aiItunesConnectAnalytics
    , aiGooglePlayAnalytics

    -- * ITunesConnectAnalytics
    , ITunesConnectAnalytics
    , iTunesConnectAnalytics
    , itcaAt
    , itcaMt
    , itcaPt
    , itcaCt

    -- * GetIosPostInstallAttributionResponse
    , GetIosPostInstallAttributionResponse
    , getIosPostInstallAttributionResponse
    , gipiarDeepLink
    , gipiarRequestIPVersion
    , gipiarAppMinimumVersion
    , gipiarAttributionConfidence
    , gipiarExternalBrowserDestinationLink
    , gipiarResolvedLink
    , gipiarRequestedLink
    , gipiarUtmMedium
    , gipiarFallbackLink
    , gipiarInvitationId
    , gipiarIsStrongMatchExecutable
    , gipiarUtmCampaign
    , gipiarMatchMessage
    , gipiarUtmSource

    -- * CreateManagedShortLinkResponse
    , CreateManagedShortLinkResponse
    , createManagedShortLinkResponse
    , cmslrManagedShortLink
    , cmslrPreviewLink
    , cmslrWarning

    -- * GetIosReopenAttributionRequest
    , GetIosReopenAttributionRequest
    , getIosReopenAttributionRequest
    , girarRequestedLink
    , girarSdkVersion
    , girarBundleId

    -- * GooglePlayAnalytics
    , GooglePlayAnalytics
    , googlePlayAnalytics
    , gpaUtmContent
    , gpaUtmMedium
    , gpaUtmTerm
    , gpaUtmCampaign
    , gpaGclid
    , gpaUtmSource

    -- * GetIosPostInstallAttributionRequestRetrievalMethod
    , GetIosPostInstallAttributionRequestRetrievalMethod (..)

    -- * DeviceInfo
    , DeviceInfo
    , deviceInfo
    , diLanguageCodeFromWebview
    , diScreenResolutionWidth
    , diLanguageCode
    , diDeviceModelName
    , diScreenResolutionHeight
    , diLanguageCodeRaw
    , diTimezone

    -- * ManagedShortLinkVisibility
    , ManagedShortLinkVisibility (..)
    ) where

import           Network.Google.FirebaseDynamicLinks.Types.Product
import           Network.Google.FirebaseDynamicLinks.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Firebase Dynamic Links API. This contains the host and root path used as a starting point for constructing service requests.
firebaseDynamicLinksService :: ServiceConfig
firebaseDynamicLinksService
  = defaultService
      (ServiceId "firebasedynamiclinks:v1")
      "firebasedynamiclinks.googleapis.com"

-- | View and administer all your Firebase data and settings
firebaseScope :: Proxy '["https://www.googleapis.com/auth/firebase"]
firebaseScope = Proxy
