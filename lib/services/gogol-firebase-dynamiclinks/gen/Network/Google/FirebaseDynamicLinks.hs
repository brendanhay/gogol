{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseDynamicLinks
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Programmatically creates and manages Firebase Dynamic Links.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference>
module Network.Google.FirebaseDynamicLinks
    (
    -- * Service Configuration
      firebaseDynamicLinksService

    -- * OAuth Scopes
    , firebaseScope

    -- * API Declaration
    , FirebaseDynamicLinksAPI

    -- * Resources

    -- ** firebasedynamiclinks.getLinkStats
    , module Network.Google.Resource.FirebaseDynamicLinks.GetLinkStats

    -- ** firebasedynamiclinks.installAttribution
    , module Network.Google.Resource.FirebaseDynamicLinks.InstallAttribution

    -- ** firebasedynamiclinks.managedShortLinks.create
    , module Network.Google.Resource.FirebaseDynamicLinks.ManagedShortLinks.Create

    -- ** firebasedynamiclinks.reopenAttribution
    , module Network.Google.Resource.FirebaseDynamicLinks.ReopenAttribution

    -- ** firebasedynamiclinks.shortLinks.create
    , module Network.Google.Resource.FirebaseDynamicLinks.ShortLinks.Create

    -- * Types

    -- ** NavigationInfo
    , NavigationInfo
    , navigationInfo
    , niEnableForcedRedirect

    -- ** DesktopInfo
    , DesktopInfo
    , desktopInfo
    , diDesktopFallbackLink

    -- ** DynamicLinkEventStatPlatform
    , DynamicLinkEventStatPlatform (..)

    -- ** Suffix
    , Suffix
    , suffix
    , sCustomSuffix
    , sOption

    -- ** DynamicLinkWarning
    , DynamicLinkWarning
    , dynamicLinkWarning
    , dlwWarningCode
    , dlwWarningDocumentLink
    , dlwWarningMessage

    -- ** ManagedShortLink
    , ManagedShortLink
    , managedShortLink
    , mslCreationTime
    , mslLink
    , mslVisibility
    , mslLinkName
    , mslFlaggedAttribute
    , mslInfo

    -- ** CreateShortDynamicLinkRequest
    , CreateShortDynamicLinkRequest
    , createShortDynamicLinkRequest
    , csdlrLongDynamicLink
    , csdlrSuffix
    , csdlrDynamicLinkInfo
    , csdlrSdkVersion

    -- ** SocialMetaTagInfo
    , SocialMetaTagInfo
    , socialMetaTagInfo
    , smtiSocialImageLink
    , smtiSocialDescription
    , smtiSocialTitle

    -- ** CreateShortDynamicLinkResponse
    , CreateShortDynamicLinkResponse
    , createShortDynamicLinkResponse
    , csdlrPreviewLink
    , csdlrWarning
    , csdlrShortLink

    -- ** DynamicLinkEventStat
    , DynamicLinkEventStat
    , dynamicLinkEventStat
    , dlesEvent
    , dlesPlatform
    , dlesCount

    -- ** IosInfo
    , IosInfo
    , iosInfo
    , iiIosBundleId
    , iiIosIPadBundleId
    , iiIosAppStoreId
    , iiIosMinimumVersion
    , iiIosIPadFallbackLink
    , iiIosCustomScheme
    , iiIosFallbackLink

    -- ** DynamicLinkInfo
    , DynamicLinkInfo
    , dynamicLinkInfo
    , dliNavigationInfo
    , dliDesktopInfo
    , dliSocialMetaTagInfo
    , dliDynamicLinkDomain
    , dliLink
    , dliIosInfo
    , dliDomainURIPrefix
    , dliAndroidInfo
    , dliAnalyticsInfo

    -- ** GetIosPostInstallAttributionRequestVisualStyle
    , GetIosPostInstallAttributionRequestVisualStyle (..)

    -- ** DynamicLinkStats
    , DynamicLinkStats
    , dynamicLinkStats
    , dlsLinkEventStats

    -- ** SuffixOption
    , SuffixOption (..)

    -- ** ManagedShortLinkFlaggedAttributeItem
    , ManagedShortLinkFlaggedAttributeItem (..)

    -- ** DynamicLinkEventStatEvent
    , DynamicLinkEventStatEvent (..)

    -- ** CreateManagedShortLinkRequest
    , CreateManagedShortLinkRequest
    , createManagedShortLinkRequest
    , cmslrLongDynamicLink
    , cmslrSuffix
    , cmslrDynamicLinkInfo
    , cmslrSdkVersion
    , cmslrName

    -- ** GetIosReopenAttributionResponse
    , GetIosReopenAttributionResponse
    , getIosReopenAttributionResponse
    , girarIosMinAppVersion
    , girarDeepLink
    , girarUtmContent
    , girarResolvedLink
    , girarUtmMedium
    , girarInvitationId
    , girarUtmTerm
    , girarUtmCampaign
    , girarUtmSource

    -- ** GetIosPostInstallAttributionResponseRequestIPVersion
    , GetIosPostInstallAttributionResponseRequestIPVersion (..)

    -- ** GetIosPostInstallAttributionRequest
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** GetIosPostInstallAttributionResponseAttributionConfidence
    , GetIosPostInstallAttributionResponseAttributionConfidence (..)

    -- ** AndroidInfo
    , AndroidInfo
    , androidInfo
    , aiAndroidMinPackageVersionCode
    , aiAndroidFallbackLink
    , aiAndroidLink
    , aiAndroidPackageName

    -- ** DynamicLinkWarningWarningCode
    , DynamicLinkWarningWarningCode (..)

    -- ** AnalyticsInfo
    , AnalyticsInfo
    , analyticsInfo
    , aiItunesConnectAnalytics
    , aiGooglePlayAnalytics

    -- ** ITunesConnectAnalytics
    , ITunesConnectAnalytics
    , iTunesConnectAnalytics
    , itcaAt
    , itcaMt
    , itcaPt
    , itcaCt

    -- ** GetIosPostInstallAttributionResponse
    , GetIosPostInstallAttributionResponse
    , getIosPostInstallAttributionResponse
    , gipiarDeepLink
    , gipiarRequestIPVersion
    , gipiarAppMinimumVersion
    , gipiarAttributionConfidence
    , gipiarExternalBrowserDestinationLink
    , gipiarUtmContent
    , gipiarResolvedLink
    , gipiarRequestedLink
    , gipiarUtmMedium
    , gipiarFallbackLink
    , gipiarInvitationId
    , gipiarIsStrongMatchExecutable
    , gipiarUtmTerm
    , gipiarUtmCampaign
    , gipiarMatchMessage
    , gipiarUtmSource

    -- ** CreateManagedShortLinkResponse
    , CreateManagedShortLinkResponse
    , createManagedShortLinkResponse
    , cmslrManagedShortLink
    , cmslrPreviewLink
    , cmslrWarning

    -- ** GetIosReopenAttributionRequest
    , GetIosReopenAttributionRequest
    , getIosReopenAttributionRequest
    , girarRequestedLink
    , girarSdkVersion
    , girarBundleId

    -- ** GooglePlayAnalytics
    , GooglePlayAnalytics
    , googlePlayAnalytics
    , gpaUtmContent
    , gpaUtmMedium
    , gpaUtmTerm
    , gpaUtmCampaign
    , gpaGclid
    , gpaUtmSource

    -- ** GetIosPostInstallAttributionRequestRetrievalMethod
    , GetIosPostInstallAttributionRequestRetrievalMethod (..)

    -- ** DeviceInfo
    , DeviceInfo
    , deviceInfo
    , diLanguageCodeFromWebview
    , diScreenResolutionWidth
    , diLanguageCode
    , diDeviceModelName
    , diScreenResolutionHeight
    , diLanguageCodeRaw
    , diTimezone

    -- ** ManagedShortLinkVisibility
    , ManagedShortLinkVisibility (..)
    ) where

import Network.Google.Prelude
import Network.Google.FirebaseDynamicLinks.Types
import Network.Google.Resource.FirebaseDynamicLinks.GetLinkStats
import Network.Google.Resource.FirebaseDynamicLinks.InstallAttribution
import Network.Google.Resource.FirebaseDynamicLinks.ManagedShortLinks.Create
import Network.Google.Resource.FirebaseDynamicLinks.ReopenAttribution
import Network.Google.Resource.FirebaseDynamicLinks.ShortLinks.Create

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Dynamic Links API service.
type FirebaseDynamicLinksAPI =
     ManagedShortLinksCreateResource :<|>
       InstallAttributionResource
       :<|> GetLinkStatsResource
       :<|> ReopenAttributionResource
       :<|> ShortLinksCreateResource
