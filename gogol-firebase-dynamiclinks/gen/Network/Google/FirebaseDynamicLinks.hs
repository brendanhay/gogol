{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FirebaseDynamicLinks
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Firebase Dynamic Links API enables third party developers to
-- programmatically create and manage Dynamic Links.
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

    -- ** firebasedynamiclinks.shortLinks.create
    , module Network.Google.Resource.FirebaseDynamicLinks.ShortLinks.Create

    -- * Types

    -- ** Suffix
    , Suffix
    , suffix
    , sOption

    -- ** DynamicLinkWarning
    , DynamicLinkWarning
    , dynamicLinkWarning
    , dlwWarningCode
    , dlwWarningMessage

    -- ** CreateShortDynamicLinkRequest
    , CreateShortDynamicLinkRequest
    , createShortDynamicLinkRequest
    , csdlrLongDynamicLink
    , csdlrSuffix
    , csdlrDynamicLinkInfo

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

    -- ** IosInfo
    , IosInfo
    , iosInfo
    , iiIosBundleId
    , iiIosIPadBundleId
    , iiIosAppStoreId
    , iiIosIPadFallbackLink
    , iiIosCustomScheme
    , iiIosFallbackLink

    -- ** DynamicLinkInfo
    , DynamicLinkInfo
    , dynamicLinkInfo
    , dliSocialMetaTagInfo
    , dliDynamicLinkDomain
    , dliLink
    , dliIosInfo
    , dliIsAd
    , dliAndroidInfo
    , dliAnalyticsInfo

    -- ** SuffixOption
    , SuffixOption (..)

    -- ** Xgafv
    , Xgafv (..)

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

    -- ** GooglePlayAnalytics
    , GooglePlayAnalytics
    , googlePlayAnalytics
    , gpaUtmContent
    , gpaUtmMedium
    , gpaUtmTerm
    , gpaUtmCampaign
    , gpaGclid
    , gpaUtmSource
    ) where

import           Network.Google.FirebaseDynamicLinks.Types
import           Network.Google.Prelude
import           Network.Google.Resource.FirebaseDynamicLinks.ShortLinks.Create

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Firebase Dynamic Links API service.
type FirebaseDynamicLinksAPI =
     ShortLinksCreateResource
