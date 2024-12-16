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
-- Module      : Gogol.FirebaseDynamicLinks.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseDynamicLinks.Internal.Product
  (

    -- * AnalyticsInfo
    AnalyticsInfo (..),
    newAnalyticsInfo,

    -- * AndroidInfo
    AndroidInfo (..),
    newAndroidInfo,

    -- * CreateManagedShortLinkRequest
    CreateManagedShortLinkRequest (..),
    newCreateManagedShortLinkRequest,

    -- * CreateManagedShortLinkResponse
    CreateManagedShortLinkResponse (..),
    newCreateManagedShortLinkResponse,

    -- * CreateShortDynamicLinkRequest
    CreateShortDynamicLinkRequest (..),
    newCreateShortDynamicLinkRequest,

    -- * CreateShortDynamicLinkResponse
    CreateShortDynamicLinkResponse (..),
    newCreateShortDynamicLinkResponse,

    -- * DesktopInfo
    DesktopInfo (..),
    newDesktopInfo,

    -- * DeviceInfo
    DeviceInfo (..),
    newDeviceInfo,

    -- * DynamicLinkEventStat
    DynamicLinkEventStat (..),
    newDynamicLinkEventStat,

    -- * DynamicLinkInfo
    DynamicLinkInfo (..),
    newDynamicLinkInfo,

    -- * DynamicLinkStats
    DynamicLinkStats (..),
    newDynamicLinkStats,

    -- * DynamicLinkWarning
    DynamicLinkWarning (..),
    newDynamicLinkWarning,

    -- * GetIosPostInstallAttributionRequest
    GetIosPostInstallAttributionRequest (..),
    newGetIosPostInstallAttributionRequest,

    -- * GetIosPostInstallAttributionResponse
    GetIosPostInstallAttributionResponse (..),
    newGetIosPostInstallAttributionResponse,

    -- * GetIosReopenAttributionRequest
    GetIosReopenAttributionRequest (..),
    newGetIosReopenAttributionRequest,

    -- * GetIosReopenAttributionResponse
    GetIosReopenAttributionResponse (..),
    newGetIosReopenAttributionResponse,

    -- * GooglePlayAnalytics
    GooglePlayAnalytics (..),
    newGooglePlayAnalytics,

    -- * ITunesConnectAnalytics
    ITunesConnectAnalytics (..),
    newITunesConnectAnalytics,

    -- * IosInfo
    IosInfo (..),
    newIosInfo,

    -- * ManagedShortLink
    ManagedShortLink (..),
    newManagedShortLink,

    -- * NavigationInfo
    NavigationInfo (..),
    newNavigationInfo,

    -- * SocialMetaTagInfo
    SocialMetaTagInfo (..),
    newSocialMetaTagInfo,

    -- * Suffix
    Suffix (..),
    newSuffix,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.FirebaseDynamicLinks.Internal.Sum

-- | Tracking parameters supported by Dynamic Link.
--
-- /See:/ 'newAnalyticsInfo' smart constructor.
data AnalyticsInfo = AnalyticsInfo
    {
      -- | Google Play Campaign Measurements.
      googlePlayAnalytics :: (Core.Maybe GooglePlayAnalytics)
      -- | iTunes Connect App Analytics.
    , itunesConnectAnalytics :: (Core.Maybe ITunesConnectAnalytics)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsInfo' with the minimum fields required to make a request.
newAnalyticsInfo 
    ::  AnalyticsInfo
newAnalyticsInfo =
  AnalyticsInfo
    {googlePlayAnalytics = Core.Nothing, itunesConnectAnalytics = Core.Nothing}

instance Core.FromJSON AnalyticsInfo where
        parseJSON
          = Core.withObject "AnalyticsInfo"
              (\ o ->
                 AnalyticsInfo Core.<$>
                   (o Core..:? "googlePlayAnalytics") Core.<*>
                     (o Core..:? "itunesConnectAnalytics"))

instance Core.ToJSON AnalyticsInfo where
        toJSON AnalyticsInfo{..}
          = Core.object
              (Core.catMaybes
                 [("googlePlayAnalytics" Core..=) Core.<$>
                    googlePlayAnalytics,
                  ("itunesConnectAnalytics" Core..=) Core.<$>
                    itunesConnectAnalytics])


-- | Android related attributes to the Dynamic Link.
--
-- /See:/ 'newAndroidInfo' smart constructor.
data AndroidInfo = AndroidInfo
    {
      -- | Link to open on Android if the app is not installed.
      androidFallbackLink :: (Core.Maybe Core.Text)
      -- | If specified, this overrides the ‘link’ parameter on Android.
    , androidLink :: (Core.Maybe Core.Text)
      -- | Minimum version code for the Android app. If the installed app’s version code is lower, then the user is taken to the Play Store.
    , androidMinPackageVersionCode :: (Core.Maybe Core.Text)
      -- | Android package name of the app.
    , androidPackageName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidInfo' with the minimum fields required to make a request.
newAndroidInfo 
    ::  AndroidInfo
newAndroidInfo =
  AndroidInfo
    { androidFallbackLink = Core.Nothing
    , androidLink = Core.Nothing
    , androidMinPackageVersionCode = Core.Nothing
    , androidPackageName = Core.Nothing
    }

instance Core.FromJSON AndroidInfo where
        parseJSON
          = Core.withObject "AndroidInfo"
              (\ o ->
                 AndroidInfo Core.<$>
                   (o Core..:? "androidFallbackLink") Core.<*>
                     (o Core..:? "androidLink")
                     Core.<*> (o Core..:? "androidMinPackageVersionCode")
                     Core.<*> (o Core..:? "androidPackageName"))

instance Core.ToJSON AndroidInfo where
        toJSON AndroidInfo{..}
          = Core.object
              (Core.catMaybes
                 [("androidFallbackLink" Core..=) Core.<$>
                    androidFallbackLink,
                  ("androidLink" Core..=) Core.<$> androidLink,
                  ("androidMinPackageVersionCode" Core..=) Core.<$>
                    androidMinPackageVersionCode,
                  ("androidPackageName" Core..=) Core.<$>
                    androidPackageName])


-- | Request to create a managed Short Dynamic Link.
--
-- /See:/ 'newCreateManagedShortLinkRequest' smart constructor.
data CreateManagedShortLinkRequest = CreateManagedShortLinkRequest
    {
      -- | Information about the Dynamic Link to be shortened. <https://firebase.google.com/docs/reference/dynamic-links/link-shortener Learn more>.
      dynamicLinkInfo :: (Core.Maybe DynamicLinkInfo)
      -- | Full long Dynamic Link URL with desired query parameters specified. For example, \"https:\/\/sample.app.goo.gl\/?link=http:\/\/www.google.com&apn=com.sample\", <https://firebase.google.com/docs/reference/dynamic-links/link-shortener Learn more>.
    , longDynamicLink :: (Core.Maybe Core.Text)
      -- | Link name to associate with the link. It\'s used for marketer to identify manually-created links in the Firebase console (https:\/\/console.firebase.google.com\/). Links must be named to be tracked.
    , name :: (Core.Maybe Core.Text)
      -- | Google SDK version. Version takes the form \"$major.$minor.$patch\"
    , sdkVersion :: (Core.Maybe Core.Text)
      -- | Short Dynamic Link suffix. Optional.
    , suffix :: (Core.Maybe Suffix)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateManagedShortLinkRequest' with the minimum fields required to make a request.
newCreateManagedShortLinkRequest 
    ::  CreateManagedShortLinkRequest
newCreateManagedShortLinkRequest =
  CreateManagedShortLinkRequest
    { dynamicLinkInfo = Core.Nothing
    , longDynamicLink = Core.Nothing
    , name = Core.Nothing
    , sdkVersion = Core.Nothing
    , suffix = Core.Nothing
    }

instance Core.FromJSON CreateManagedShortLinkRequest
         where
        parseJSON
          = Core.withObject "CreateManagedShortLinkRequest"
              (\ o ->
                 CreateManagedShortLinkRequest Core.<$>
                   (o Core..:? "dynamicLinkInfo") Core.<*>
                     (o Core..:? "longDynamicLink")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "sdkVersion")
                     Core.<*> (o Core..:? "suffix"))

instance Core.ToJSON CreateManagedShortLinkRequest
         where
        toJSON CreateManagedShortLinkRequest{..}
          = Core.object
              (Core.catMaybes
                 [("dynamicLinkInfo" Core..=) Core.<$>
                    dynamicLinkInfo,
                  ("longDynamicLink" Core..=) Core.<$> longDynamicLink,
                  ("name" Core..=) Core.<$> name,
                  ("sdkVersion" Core..=) Core.<$> sdkVersion,
                  ("suffix" Core..=) Core.<$> suffix])


-- | Response to create a short Dynamic Link.
--
-- /See:/ 'newCreateManagedShortLinkResponse' smart constructor.
data CreateManagedShortLinkResponse = CreateManagedShortLinkResponse
    {
      -- | Short Dynamic Link value. e.g. https:\/\/abcd.app.goo.gl\/wxyz
      managedShortLink :: (Core.Maybe ManagedShortLink)
      -- | Preview link to show the link flow chart. (debug info.)
    , previewLink :: (Core.Maybe Core.Text)
      -- | Information about potential warnings on link creation.
    , warning :: (Core.Maybe [DynamicLinkWarning])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateManagedShortLinkResponse' with the minimum fields required to make a request.
newCreateManagedShortLinkResponse 
    ::  CreateManagedShortLinkResponse
newCreateManagedShortLinkResponse =
  CreateManagedShortLinkResponse
    { managedShortLink = Core.Nothing
    , previewLink = Core.Nothing
    , warning = Core.Nothing
    }

instance Core.FromJSON CreateManagedShortLinkResponse
         where
        parseJSON
          = Core.withObject "CreateManagedShortLinkResponse"
              (\ o ->
                 CreateManagedShortLinkResponse Core.<$>
                   (o Core..:? "managedShortLink") Core.<*>
                     (o Core..:? "previewLink")
                     Core.<*> (o Core..:? "warning"))

instance Core.ToJSON CreateManagedShortLinkResponse
         where
        toJSON CreateManagedShortLinkResponse{..}
          = Core.object
              (Core.catMaybes
                 [("managedShortLink" Core..=) Core.<$>
                    managedShortLink,
                  ("previewLink" Core..=) Core.<$> previewLink,
                  ("warning" Core..=) Core.<$> warning])


-- | Request to create a short Dynamic Link.
--
-- /See:/ 'newCreateShortDynamicLinkRequest' smart constructor.
data CreateShortDynamicLinkRequest = CreateShortDynamicLinkRequest
    {
      -- | Information about the Dynamic Link to be shortened. <https://firebase.google.com/docs/reference/dynamic-links/link-shortener Learn more>.
      dynamicLinkInfo :: (Core.Maybe DynamicLinkInfo)
      -- | Full long Dynamic Link URL with desired query parameters specified. For example, \"https:\/\/sample.app.goo.gl\/?link=http:\/\/www.google.com&apn=com.sample\", <https://firebase.google.com/docs/reference/dynamic-links/link-shortener Learn more>.
    , longDynamicLink :: (Core.Maybe Core.Text)
      -- | Google SDK version. Version takes the form \"$major.$minor.$patch\"
    , sdkVersion :: (Core.Maybe Core.Text)
      -- | Short Dynamic Link suffix. Optional.
    , suffix :: (Core.Maybe Suffix)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateShortDynamicLinkRequest' with the minimum fields required to make a request.
newCreateShortDynamicLinkRequest 
    ::  CreateShortDynamicLinkRequest
newCreateShortDynamicLinkRequest =
  CreateShortDynamicLinkRequest
    { dynamicLinkInfo = Core.Nothing
    , longDynamicLink = Core.Nothing
    , sdkVersion = Core.Nothing
    , suffix = Core.Nothing
    }

instance Core.FromJSON CreateShortDynamicLinkRequest
         where
        parseJSON
          = Core.withObject "CreateShortDynamicLinkRequest"
              (\ o ->
                 CreateShortDynamicLinkRequest Core.<$>
                   (o Core..:? "dynamicLinkInfo") Core.<*>
                     (o Core..:? "longDynamicLink")
                     Core.<*> (o Core..:? "sdkVersion")
                     Core.<*> (o Core..:? "suffix"))

instance Core.ToJSON CreateShortDynamicLinkRequest
         where
        toJSON CreateShortDynamicLinkRequest{..}
          = Core.object
              (Core.catMaybes
                 [("dynamicLinkInfo" Core..=) Core.<$>
                    dynamicLinkInfo,
                  ("longDynamicLink" Core..=) Core.<$> longDynamicLink,
                  ("sdkVersion" Core..=) Core.<$> sdkVersion,
                  ("suffix" Core..=) Core.<$> suffix])


-- | Response to create a short Dynamic Link.
--
-- /See:/ 'newCreateShortDynamicLinkResponse' smart constructor.
data CreateShortDynamicLinkResponse = CreateShortDynamicLinkResponse
    {
      -- | Preview link to show the link flow chart. (debug info.)
      previewLink :: (Core.Maybe Core.Text)
      -- | Short Dynamic Link value. e.g. https:\/\/abcd.app.goo.gl\/wxyz
    , shortLink :: (Core.Maybe Core.Text)
      -- | Information about potential warnings on link creation.
    , warning :: (Core.Maybe [DynamicLinkWarning])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateShortDynamicLinkResponse' with the minimum fields required to make a request.
newCreateShortDynamicLinkResponse 
    ::  CreateShortDynamicLinkResponse
newCreateShortDynamicLinkResponse =
  CreateShortDynamicLinkResponse
    { previewLink = Core.Nothing
    , shortLink = Core.Nothing
    , warning = Core.Nothing
    }

instance Core.FromJSON CreateShortDynamicLinkResponse
         where
        parseJSON
          = Core.withObject "CreateShortDynamicLinkResponse"
              (\ o ->
                 CreateShortDynamicLinkResponse Core.<$>
                   (o Core..:? "previewLink") Core.<*>
                     (o Core..:? "shortLink")
                     Core.<*> (o Core..:? "warning"))

instance Core.ToJSON CreateShortDynamicLinkResponse
         where
        toJSON CreateShortDynamicLinkResponse{..}
          = Core.object
              (Core.catMaybes
                 [("previewLink" Core..=) Core.<$> previewLink,
                  ("shortLink" Core..=) Core.<$> shortLink,
                  ("warning" Core..=) Core.<$> warning])


-- | Desktop related attributes to the Dynamic Link.
--
-- /See:/ 'newDesktopInfo' smart constructor.
newtype DesktopInfo = DesktopInfo
    {
      -- | Link to open on desktop.
      desktopFallbackLink :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DesktopInfo' with the minimum fields required to make a request.
newDesktopInfo 
    ::  DesktopInfo
newDesktopInfo = DesktopInfo {desktopFallbackLink = Core.Nothing}

instance Core.FromJSON DesktopInfo where
        parseJSON
          = Core.withObject "DesktopInfo"
              (\ o ->
                 DesktopInfo Core.<$>
                   (o Core..:? "desktopFallbackLink"))

instance Core.ToJSON DesktopInfo where
        toJSON DesktopInfo{..}
          = Core.object
              (Core.catMaybes
                 [("desktopFallbackLink" Core..=) Core.<$>
                    desktopFallbackLink])


-- | Signals associated with the device making the request.
--
-- /See:/ 'newDeviceInfo' smart constructor.
data DeviceInfo = DeviceInfo
    {
      -- | Device model name.
      deviceModelName :: (Core.Maybe Core.Text)
      -- | Device language code setting.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Device language code setting obtained by executing JavaScript code in WebView.
    , languageCodeFromWebview :: (Core.Maybe Core.Text)
      -- | Device language code raw setting. iOS does returns language code in different format than iOS WebView. For example WebView returns en_US, but iOS returns en-US. Field below will return raw value returned by iOS.
    , languageCodeRaw :: (Core.Maybe Core.Text)
      -- | Device display resolution height.
    , screenResolutionHeight :: (Core.Maybe Core.Int64)
      -- | Device display resolution width.
    , screenResolutionWidth :: (Core.Maybe Core.Int64)
      -- | Device timezone setting.
    , timezone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceInfo' with the minimum fields required to make a request.
newDeviceInfo 
    ::  DeviceInfo
newDeviceInfo =
  DeviceInfo
    { deviceModelName = Core.Nothing
    , languageCode = Core.Nothing
    , languageCodeFromWebview = Core.Nothing
    , languageCodeRaw = Core.Nothing
    , screenResolutionHeight = Core.Nothing
    , screenResolutionWidth = Core.Nothing
    , timezone = Core.Nothing
    }

instance Core.FromJSON DeviceInfo where
        parseJSON
          = Core.withObject "DeviceInfo"
              (\ o ->
                 DeviceInfo Core.<$>
                   (o Core..:? "deviceModelName") Core.<*>
                     (o Core..:? "languageCode")
                     Core.<*> (o Core..:? "languageCodeFromWebview")
                     Core.<*> (o Core..:? "languageCodeRaw")
                     Core.<*>
                     (o Core..:? "screenResolutionHeight" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*>
                     (o Core..:? "screenResolutionWidth" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "timezone"))

instance Core.ToJSON DeviceInfo where
        toJSON DeviceInfo{..}
          = Core.object
              (Core.catMaybes
                 [("deviceModelName" Core..=) Core.<$>
                    deviceModelName,
                  ("languageCode" Core..=) Core.<$> languageCode,
                  ("languageCodeFromWebview" Core..=) Core.<$>
                    languageCodeFromWebview,
                  ("languageCodeRaw" Core..=) Core.<$> languageCodeRaw,
                  ("screenResolutionHeight" Core..=) Core.. Core.AsText
                    Core.<$> screenResolutionHeight,
                  ("screenResolutionWidth" Core..=) Core.. Core.AsText
                    Core.<$> screenResolutionWidth,
                  ("timezone" Core..=) Core.<$> timezone])


-- | Dynamic Link event stat.
--
-- /See:/ 'newDynamicLinkEventStat' smart constructor.
data DynamicLinkEventStat = DynamicLinkEventStat
    {
      -- | The number of times this event occurred.
      count :: (Core.Maybe Core.Int64)
      -- | Link event.
    , event :: (Core.Maybe DynamicLinkEventStat_Event)
      -- | Requested platform.
    , platform :: (Core.Maybe DynamicLinkEventStat_Platform)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicLinkEventStat' with the minimum fields required to make a request.
newDynamicLinkEventStat 
    ::  DynamicLinkEventStat
newDynamicLinkEventStat =
  DynamicLinkEventStat
    {count = Core.Nothing, event = Core.Nothing, platform = Core.Nothing}

instance Core.FromJSON DynamicLinkEventStat where
        parseJSON
          = Core.withObject "DynamicLinkEventStat"
              (\ o ->
                 DynamicLinkEventStat Core.<$>
                   (o Core..:? "count" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "event")
                     Core.<*> (o Core..:? "platform"))

instance Core.ToJSON DynamicLinkEventStat where
        toJSON DynamicLinkEventStat{..}
          = Core.object
              (Core.catMaybes
                 [("count" Core..=) Core.. Core.AsText Core.<$> count,
                  ("event" Core..=) Core.<$> event,
                  ("platform" Core..=) Core.<$> platform])


-- | Information about a Dynamic Link.
--
-- /See:/ 'newDynamicLinkInfo' smart constructor.
data DynamicLinkInfo = DynamicLinkInfo
    {
      -- | Parameters used for tracking. See all tracking parameters in the <https://firebase.google.com/docs/dynamic-links/create-manually documentation>.
      analyticsInfo :: (Core.Maybe AnalyticsInfo)
      -- | Android related information. See Android related parameters in the <https://firebase.google.com/docs/dynamic-links/create-manually documentation>.
    , androidInfo :: (Core.Maybe AndroidInfo)
      -- | Desktop related information. See desktop related parameters in the <https://firebase.google.com/docs/dynamic-links/create-manually documentation>.
    , desktopInfo :: (Core.Maybe DesktopInfo)
      -- | E.g. https:\/\/maps.app.goo.gl, https:\/\/maps.page.link, https:\/\/g.co\/maps More examples can be found in description of getNormalizedUriPrefix in j\/c\/g\/firebase\/dynamiclinks\/uri\/DdlDomain.java Will fallback to dynamic/link/domain is this field is missing
    , domainUriPrefix :: (Core.Maybe Core.Text)
      -- | Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl <https://firebase.google.com/docs/dynamic-links/android/receive Learn more> on how to set up Dynamic Link domain associated with your Firebase project. Required if missing domain/uri/prefix.
    , dynamicLinkDomain :: (Core.Maybe Core.Text)
      -- | iOS related information. See iOS related parameters in the <https://firebase.google.com/docs/dynamic-links/create-manually documentation>.
    , iosInfo :: (Core.Maybe IosInfo)
      -- | The link your app will open, You can specify any URL your app can handle. This link must be a well-formatted URL, be properly URL-encoded, and use the HTTP or HTTPS scheme. See \'link\' parameters in the <https://firebase.google.com/docs/dynamic-links/create-manually documentation>. Required.
    , link :: (Core.Maybe Core.Text)
      -- | Information of navigation behavior of a Firebase Dynamic Links.
    , navigationInfo :: (Core.Maybe NavigationInfo)
      -- | Parameters for social meta tag params. Used to set meta tag data for link previews on social sites.
    , socialMetaTagInfo :: (Core.Maybe SocialMetaTagInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicLinkInfo' with the minimum fields required to make a request.
newDynamicLinkInfo 
    ::  DynamicLinkInfo
newDynamicLinkInfo =
  DynamicLinkInfo
    { analyticsInfo = Core.Nothing
    , androidInfo = Core.Nothing
    , desktopInfo = Core.Nothing
    , domainUriPrefix = Core.Nothing
    , dynamicLinkDomain = Core.Nothing
    , iosInfo = Core.Nothing
    , link = Core.Nothing
    , navigationInfo = Core.Nothing
    , socialMetaTagInfo = Core.Nothing
    }

instance Core.FromJSON DynamicLinkInfo where
        parseJSON
          = Core.withObject "DynamicLinkInfo"
              (\ o ->
                 DynamicLinkInfo Core.<$>
                   (o Core..:? "analyticsInfo") Core.<*>
                     (o Core..:? "androidInfo")
                     Core.<*> (o Core..:? "desktopInfo")
                     Core.<*> (o Core..:? "domainUriPrefix")
                     Core.<*> (o Core..:? "dynamicLinkDomain")
                     Core.<*> (o Core..:? "iosInfo")
                     Core.<*> (o Core..:? "link")
                     Core.<*> (o Core..:? "navigationInfo")
                     Core.<*> (o Core..:? "socialMetaTagInfo"))

instance Core.ToJSON DynamicLinkInfo where
        toJSON DynamicLinkInfo{..}
          = Core.object
              (Core.catMaybes
                 [("analyticsInfo" Core..=) Core.<$> analyticsInfo,
                  ("androidInfo" Core..=) Core.<$> androidInfo,
                  ("desktopInfo" Core..=) Core.<$> desktopInfo,
                  ("domainUriPrefix" Core..=) Core.<$> domainUriPrefix,
                  ("dynamicLinkDomain" Core..=) Core.<$>
                    dynamicLinkDomain,
                  ("iosInfo" Core..=) Core.<$> iosInfo,
                  ("link" Core..=) Core.<$> link,
                  ("navigationInfo" Core..=) Core.<$> navigationInfo,
                  ("socialMetaTagInfo" Core..=) Core.<$>
                    socialMetaTagInfo])


-- | Analytics stats of a Dynamic Link for a given timeframe.
--
-- /See:/ 'newDynamicLinkStats' smart constructor.
data DynamicLinkStats = DynamicLinkStats
    {
      -- | Dynamic Link event stats.
      linkEventStats :: (Core.Maybe [DynamicLinkEventStat])
      -- | Optional warnings associated this API request.
    , warnings :: (Core.Maybe [DynamicLinkWarning])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicLinkStats' with the minimum fields required to make a request.
newDynamicLinkStats 
    ::  DynamicLinkStats
newDynamicLinkStats =
  DynamicLinkStats {linkEventStats = Core.Nothing, warnings = Core.Nothing}

instance Core.FromJSON DynamicLinkStats where
        parseJSON
          = Core.withObject "DynamicLinkStats"
              (\ o ->
                 DynamicLinkStats Core.<$>
                   (o Core..:? "linkEventStats") Core.<*>
                     (o Core..:? "warnings"))

instance Core.ToJSON DynamicLinkStats where
        toJSON DynamicLinkStats{..}
          = Core.object
              (Core.catMaybes
                 [("linkEventStats" Core..=) Core.<$> linkEventStats,
                  ("warnings" Core..=) Core.<$> warnings])


-- | Dynamic Links warning messages.
--
-- /See:/ 'newDynamicLinkWarning' smart constructor.
data DynamicLinkWarning = DynamicLinkWarning
    {
      -- | The warning code.
      warningCode :: (Core.Maybe DynamicLinkWarning_WarningCode)
      -- | The document describing the warning, and helps resolve.
    , warningDocumentLink :: (Core.Maybe Core.Text)
      -- | The warning message to help developers improve their requests.
    , warningMessage :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DynamicLinkWarning' with the minimum fields required to make a request.
newDynamicLinkWarning 
    ::  DynamicLinkWarning
newDynamicLinkWarning =
  DynamicLinkWarning
    { warningCode = Core.Nothing
    , warningDocumentLink = Core.Nothing
    , warningMessage = Core.Nothing
    }

instance Core.FromJSON DynamicLinkWarning where
        parseJSON
          = Core.withObject "DynamicLinkWarning"
              (\ o ->
                 DynamicLinkWarning Core.<$>
                   (o Core..:? "warningCode") Core.<*>
                     (o Core..:? "warningDocumentLink")
                     Core.<*> (o Core..:? "warningMessage"))

instance Core.ToJSON DynamicLinkWarning where
        toJSON DynamicLinkWarning{..}
          = Core.object
              (Core.catMaybes
                 [("warningCode" Core..=) Core.<$> warningCode,
                  ("warningDocumentLink" Core..=) Core.<$>
                    warningDocumentLink,
                  ("warningMessage" Core..=) Core.<$> warningMessage])


-- | Request for iSDK to execute strong match flow for post-install attribution. This is meant for iOS requests only. Requests from other platforms will not be honored.
--
-- /See:/ 'newGetIosPostInstallAttributionRequest' smart constructor.
data GetIosPostInstallAttributionRequest = GetIosPostInstallAttributionRequest
    {
      -- | App installation epoch time (https:\/\/en.wikipedia.org\/wiki\/Unix_time). This is a client signal for a more accurate weak match.
      appInstallationTime :: (Core.Maybe Core.Int64)
      -- | APP bundle ID.
    , bundleId :: (Core.Maybe Core.Text)
      -- | Device information.
    , device :: (Core.Maybe DeviceInfo)
      -- | iOS version, ie: 9.3.5. Consider adding \"build\".
    , iosVersion :: (Core.Maybe Core.Text)
      -- | App post install attribution retrieval information. Disambiguates mechanism (iSDK or developer invoked) to retrieve payload from clicked link.
    , retrievalMethod :: (Core.Maybe GetIosPostInstallAttributionRequest_RetrievalMethod)
      -- | Google SDK version. Version takes the form \"$major.$minor.$patch\"
    , sdkVersion :: (Core.Maybe Core.Text)
      -- | Possible unique matched link that server need to check before performing device heuristics match. If passed link is short server need to expand the link. If link is long server need to vslidate the link.
    , uniqueMatchLinkToCheck :: (Core.Maybe Core.Text)
      -- | Strong match page information. Disambiguates between default UI and custom page to present when strong match succeeds\/fails to find cookie.
    , visualStyle :: (Core.Maybe GetIosPostInstallAttributionRequest_VisualStyle)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIosPostInstallAttributionRequest' with the minimum fields required to make a request.
newGetIosPostInstallAttributionRequest 
    ::  GetIosPostInstallAttributionRequest
newGetIosPostInstallAttributionRequest =
  GetIosPostInstallAttributionRequest
    { appInstallationTime = Core.Nothing
    , bundleId = Core.Nothing
    , device = Core.Nothing
    , iosVersion = Core.Nothing
    , retrievalMethod = Core.Nothing
    , sdkVersion = Core.Nothing
    , uniqueMatchLinkToCheck = Core.Nothing
    , visualStyle = Core.Nothing
    }

instance Core.FromJSON
           GetIosPostInstallAttributionRequest
         where
        parseJSON
          = Core.withObject
              "GetIosPostInstallAttributionRequest"
              (\ o ->
                 GetIosPostInstallAttributionRequest Core.<$>
                   (o Core..:? "appInstallationTime" Core.<&>
                      Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "bundleId")
                     Core.<*> (o Core..:? "device")
                     Core.<*> (o Core..:? "iosVersion")
                     Core.<*> (o Core..:? "retrievalMethod")
                     Core.<*> (o Core..:? "sdkVersion")
                     Core.<*> (o Core..:? "uniqueMatchLinkToCheck")
                     Core.<*> (o Core..:? "visualStyle"))

instance Core.ToJSON
           GetIosPostInstallAttributionRequest
         where
        toJSON GetIosPostInstallAttributionRequest{..}
          = Core.object
              (Core.catMaybes
                 [("appInstallationTime" Core..=) Core.. Core.AsText
                    Core.<$> appInstallationTime,
                  ("bundleId" Core..=) Core.<$> bundleId,
                  ("device" Core..=) Core.<$> device,
                  ("iosVersion" Core..=) Core.<$> iosVersion,
                  ("retrievalMethod" Core..=) Core.<$> retrievalMethod,
                  ("sdkVersion" Core..=) Core.<$> sdkVersion,
                  ("uniqueMatchLinkToCheck" Core..=) Core.<$>
                    uniqueMatchLinkToCheck,
                  ("visualStyle" Core..=) Core.<$> visualStyle])


-- | Response for iSDK to execute strong match flow for post-install attribution. Information of the resolved FDL link.
--
-- /See:/ 'newGetIosPostInstallAttributionResponse' smart constructor.
data GetIosPostInstallAttributionResponse = GetIosPostInstallAttributionResponse
    {
      -- | The minimum version for app, specified by dev through ?imv= parameter. Return to iSDK to allow app to evaluate if current version meets this.
      appMinimumVersion :: (Core.Maybe Core.Text)
      -- | The confidence of the returned attribution.
    , attributionConfidence :: (Core.Maybe
   GetIosPostInstallAttributionResponse_AttributionConfidence)
      -- | The deep-link attributed post-install via one of several techniques (device heuristics, copy unique).
    , deepLink :: (Core.Maybe Core.Text)
      -- | User-agent specific custom-scheme URIs for iSDK to open. This will be set according to the user-agent tha the click was originally made in. There is no Safari-equivalent custom-scheme open URLs. ie: googlechrome:\/\/www.example.com ie: firefox:\/\/open-url?url=http:\/\/www.example.com ie: opera-http:\/\/example.com
    , externalBrowserDestinationLink :: (Core.Maybe Core.Text)
      -- | The link to navigate to update the app if min version is not met. This is either (in order): 1) fallback link (from ?ifl= parameter, if specified by developer) or 2) AppStore URL (from ?isi= parameter, if specified), or 3) the payload link (from required link= parameter).
    , fallbackLink :: (Core.Maybe Core.Text)
      -- | Invitation ID attributed post-install via one of several techniques (device heuristics, copy unique).
    , invitationId :: (Core.Maybe Core.Text)
      -- | Instruction for iSDK to attemmpt to perform strong match. For instance, if browser does not support\/allow cookie or outside of support browsers, this will be false.
    , isStrongMatchExecutable :: (Core.Maybe Core.Bool)
      -- | Describes why match failed, ie: \"discarded due to low confidence\". This message will be publicly visible.
    , matchMessage :: (Core.Maybe Core.Text)
      -- | Which IP version the request was made from.
    , requestIpVersion :: (Core.Maybe GetIosPostInstallAttributionResponse_RequestIpVersion)
      -- | Entire FDL (short or long) attributed post-install via one of several techniques (device heuristics, copy unique).
    , requestedLink :: (Core.Maybe Core.Text)
      -- | The entire FDL, expanded from a short link. It is the same as the requested/link, if it is long. Parameters from this should not be used directly (ie: server can default utm/[campaign|medium|source] to a value when requested/link lack them, server determine the best fallback/link when requested_link specifies >1 fallback links).
    , resolvedLink :: (Core.Maybe Core.Text)
      -- | Scion campaign value to be propagated by iSDK to Scion at post-install.
    , utmCampaign :: (Core.Maybe Core.Text)
      -- | Scion content value to be propagated by iSDK to Scion at app-reopen.
    , utmContent :: (Core.Maybe Core.Text)
      -- | Scion medium value to be propagated by iSDK to Scion at post-install.
    , utmMedium :: (Core.Maybe Core.Text)
      -- | Scion source value to be propagated by iSDK to Scion at post-install.
    , utmSource :: (Core.Maybe Core.Text)
      -- | Scion term value to be propagated by iSDK to Scion at app-reopen.
    , utmTerm :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIosPostInstallAttributionResponse' with the minimum fields required to make a request.
newGetIosPostInstallAttributionResponse 
    ::  GetIosPostInstallAttributionResponse
newGetIosPostInstallAttributionResponse =
  GetIosPostInstallAttributionResponse
    { appMinimumVersion = Core.Nothing
    , attributionConfidence = Core.Nothing
    , deepLink = Core.Nothing
    , externalBrowserDestinationLink = Core.Nothing
    , fallbackLink = Core.Nothing
    , invitationId = Core.Nothing
    , isStrongMatchExecutable = Core.Nothing
    , matchMessage = Core.Nothing
    , requestIpVersion = Core.Nothing
    , requestedLink = Core.Nothing
    , resolvedLink = Core.Nothing
    , utmCampaign = Core.Nothing
    , utmContent = Core.Nothing
    , utmMedium = Core.Nothing
    , utmSource = Core.Nothing
    , utmTerm = Core.Nothing
    }

instance Core.FromJSON
           GetIosPostInstallAttributionResponse
         where
        parseJSON
          = Core.withObject
              "GetIosPostInstallAttributionResponse"
              (\ o ->
                 GetIosPostInstallAttributionResponse Core.<$>
                   (o Core..:? "appMinimumVersion") Core.<*>
                     (o Core..:? "attributionConfidence")
                     Core.<*> (o Core..:? "deepLink")
                     Core.<*>
                     (o Core..:? "externalBrowserDestinationLink")
                     Core.<*> (o Core..:? "fallbackLink")
                     Core.<*> (o Core..:? "invitationId")
                     Core.<*> (o Core..:? "isStrongMatchExecutable")
                     Core.<*> (o Core..:? "matchMessage")
                     Core.<*> (o Core..:? "requestIpVersion")
                     Core.<*> (o Core..:? "requestedLink")
                     Core.<*> (o Core..:? "resolvedLink")
                     Core.<*> (o Core..:? "utmCampaign")
                     Core.<*> (o Core..:? "utmContent")
                     Core.<*> (o Core..:? "utmMedium")
                     Core.<*> (o Core..:? "utmSource")
                     Core.<*> (o Core..:? "utmTerm"))

instance Core.ToJSON
           GetIosPostInstallAttributionResponse
         where
        toJSON GetIosPostInstallAttributionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("appMinimumVersion" Core..=) Core.<$>
                    appMinimumVersion,
                  ("attributionConfidence" Core..=) Core.<$>
                    attributionConfidence,
                  ("deepLink" Core..=) Core.<$> deepLink,
                  ("externalBrowserDestinationLink" Core..=) Core.<$>
                    externalBrowserDestinationLink,
                  ("fallbackLink" Core..=) Core.<$> fallbackLink,
                  ("invitationId" Core..=) Core.<$> invitationId,
                  ("isStrongMatchExecutable" Core..=) Core.<$>
                    isStrongMatchExecutable,
                  ("matchMessage" Core..=) Core.<$> matchMessage,
                  ("requestIpVersion" Core..=) Core.<$>
                    requestIpVersion,
                  ("requestedLink" Core..=) Core.<$> requestedLink,
                  ("resolvedLink" Core..=) Core.<$> resolvedLink,
                  ("utmCampaign" Core..=) Core.<$> utmCampaign,
                  ("utmContent" Core..=) Core.<$> utmContent,
                  ("utmMedium" Core..=) Core.<$> utmMedium,
                  ("utmSource" Core..=) Core.<$> utmSource,
                  ("utmTerm" Core..=) Core.<$> utmTerm])


-- | Request for iSDK to get reopen attribution for app universal link open deeplinking. This endpoint is meant for only iOS requests.
--
-- /See:/ 'newGetIosReopenAttributionRequest' smart constructor.
data GetIosReopenAttributionRequest = GetIosReopenAttributionRequest
    {
      -- | APP bundle ID.
      bundleId :: (Core.Maybe Core.Text)
      -- | FDL link to be verified from an app universal link open. The FDL link can be one of: 1) short FDL. e.g. .page.link\/, or 2) long FDL. e.g. .page.link\/?{query params}, or 3) Invite FDL. e.g. .page.link\/i\/
    , requestedLink :: (Core.Maybe Core.Text)
      -- | Google SDK version. Version takes the form \"$major.$minor.$patch\"
    , sdkVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIosReopenAttributionRequest' with the minimum fields required to make a request.
newGetIosReopenAttributionRequest 
    ::  GetIosReopenAttributionRequest
newGetIosReopenAttributionRequest =
  GetIosReopenAttributionRequest
    { bundleId = Core.Nothing
    , requestedLink = Core.Nothing
    , sdkVersion = Core.Nothing
    }

instance Core.FromJSON GetIosReopenAttributionRequest
         where
        parseJSON
          = Core.withObject "GetIosReopenAttributionRequest"
              (\ o ->
                 GetIosReopenAttributionRequest Core.<$>
                   (o Core..:? "bundleId") Core.<*>
                     (o Core..:? "requestedLink")
                     Core.<*> (o Core..:? "sdkVersion"))

instance Core.ToJSON GetIosReopenAttributionRequest
         where
        toJSON GetIosReopenAttributionRequest{..}
          = Core.object
              (Core.catMaybes
                 [("bundleId" Core..=) Core.<$> bundleId,
                  ("requestedLink" Core..=) Core.<$> requestedLink,
                  ("sdkVersion" Core..=) Core.<$> sdkVersion])


-- | Response for iSDK to get reopen attribution for app universal link open deeplinking. This endpoint is meant for only iOS requests.
--
-- /See:/ 'newGetIosReopenAttributionResponse' smart constructor.
data GetIosReopenAttributionResponse = GetIosReopenAttributionResponse
    {
      -- | The deep-link attributed the app universal link open. For both regular FDL links and invite FDL links.
      deepLink :: (Core.Maybe Core.Text)
      -- | Optional invitation ID, for only invite typed requested FDL links.
    , invitationId :: (Core.Maybe Core.Text)
      -- | FDL input value of the \"&imv=\" parameter, minimum app version to be returned to Google Firebase SDK running on iOS-9.
    , iosMinAppVersion :: (Core.Maybe Core.Text)
      -- | The entire FDL, expanded from a short link. It is the same as the requested_link, if it is long.
    , resolvedLink :: (Core.Maybe Core.Text)
      -- | Scion campaign value to be propagated by iSDK to Scion at app-reopen.
    , utmCampaign :: (Core.Maybe Core.Text)
      -- | Scion content value to be propagated by iSDK to Scion at app-reopen.
    , utmContent :: (Core.Maybe Core.Text)
      -- | Scion medium value to be propagated by iSDK to Scion at app-reopen.
    , utmMedium :: (Core.Maybe Core.Text)
      -- | Scion source value to be propagated by iSDK to Scion at app-reopen.
    , utmSource :: (Core.Maybe Core.Text)
      -- | Scion term value to be propagated by iSDK to Scion at app-reopen.
    , utmTerm :: (Core.Maybe Core.Text)
      -- | Optional warnings associated this API request.
    , warning :: (Core.Maybe [DynamicLinkWarning])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIosReopenAttributionResponse' with the minimum fields required to make a request.
newGetIosReopenAttributionResponse 
    ::  GetIosReopenAttributionResponse
newGetIosReopenAttributionResponse =
  GetIosReopenAttributionResponse
    { deepLink = Core.Nothing
    , invitationId = Core.Nothing
    , iosMinAppVersion = Core.Nothing
    , resolvedLink = Core.Nothing
    , utmCampaign = Core.Nothing
    , utmContent = Core.Nothing
    , utmMedium = Core.Nothing
    , utmSource = Core.Nothing
    , utmTerm = Core.Nothing
    , warning = Core.Nothing
    }

instance Core.FromJSON
           GetIosReopenAttributionResponse
         where
        parseJSON
          = Core.withObject "GetIosReopenAttributionResponse"
              (\ o ->
                 GetIosReopenAttributionResponse Core.<$>
                   (o Core..:? "deepLink") Core.<*>
                     (o Core..:? "invitationId")
                     Core.<*> (o Core..:? "iosMinAppVersion")
                     Core.<*> (o Core..:? "resolvedLink")
                     Core.<*> (o Core..:? "utmCampaign")
                     Core.<*> (o Core..:? "utmContent")
                     Core.<*> (o Core..:? "utmMedium")
                     Core.<*> (o Core..:? "utmSource")
                     Core.<*> (o Core..:? "utmTerm")
                     Core.<*> (o Core..:? "warning"))

instance Core.ToJSON GetIosReopenAttributionResponse
         where
        toJSON GetIosReopenAttributionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("deepLink" Core..=) Core.<$> deepLink,
                  ("invitationId" Core..=) Core.<$> invitationId,
                  ("iosMinAppVersion" Core..=) Core.<$>
                    iosMinAppVersion,
                  ("resolvedLink" Core..=) Core.<$> resolvedLink,
                  ("utmCampaign" Core..=) Core.<$> utmCampaign,
                  ("utmContent" Core..=) Core.<$> utmContent,
                  ("utmMedium" Core..=) Core.<$> utmMedium,
                  ("utmSource" Core..=) Core.<$> utmSource,
                  ("utmTerm" Core..=) Core.<$> utmTerm,
                  ("warning" Core..=) Core.<$> warning])


-- | Parameters for Google Play Campaign Measurements. <https://developers.google.com/analytics/devguides/collection/android/v4/campaigns#campaign-params Learn more>
--
-- /See:/ 'newGooglePlayAnalytics' smart constructor.
data GooglePlayAnalytics = GooglePlayAnalytics
    {
      -- | Deprecated; FDL SDK does not process nor log it.
      gclid :: (Core.Maybe Core.Text)
      -- | Campaign name; used for keyword analysis to identify a specific product promotion or strategic campaign.
    , utmCampaign :: (Core.Maybe Core.Text)
      -- | Campaign content; used for A\/B testing and content-targeted ads to differentiate ads or links that point to the same URL.
    , utmContent :: (Core.Maybe Core.Text)
      -- | Campaign medium; used to identify a medium such as email or cost-per-click.
    , utmMedium :: (Core.Maybe Core.Text)
      -- | Campaign source; used to identify a search engine, newsletter, or other source.
    , utmSource :: (Core.Maybe Core.Text)
      -- | Campaign term; used with paid search to supply the keywords for ads.
    , utmTerm :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GooglePlayAnalytics' with the minimum fields required to make a request.
newGooglePlayAnalytics 
    ::  GooglePlayAnalytics
newGooglePlayAnalytics =
  GooglePlayAnalytics
    { gclid = Core.Nothing
    , utmCampaign = Core.Nothing
    , utmContent = Core.Nothing
    , utmMedium = Core.Nothing
    , utmSource = Core.Nothing
    , utmTerm = Core.Nothing
    }

instance Core.FromJSON GooglePlayAnalytics where
        parseJSON
          = Core.withObject "GooglePlayAnalytics"
              (\ o ->
                 GooglePlayAnalytics Core.<$>
                   (o Core..:? "gclid") Core.<*>
                     (o Core..:? "utmCampaign")
                     Core.<*> (o Core..:? "utmContent")
                     Core.<*> (o Core..:? "utmMedium")
                     Core.<*> (o Core..:? "utmSource")
                     Core.<*> (o Core..:? "utmTerm"))

instance Core.ToJSON GooglePlayAnalytics where
        toJSON GooglePlayAnalytics{..}
          = Core.object
              (Core.catMaybes
                 [("gclid" Core..=) Core.<$> gclid,
                  ("utmCampaign" Core..=) Core.<$> utmCampaign,
                  ("utmContent" Core..=) Core.<$> utmContent,
                  ("utmMedium" Core..=) Core.<$> utmMedium,
                  ("utmSource" Core..=) Core.<$> utmSource,
                  ("utmTerm" Core..=) Core.<$> utmTerm])


-- | Parameters for iTunes Connect App Analytics.
--
-- /See:/ 'newITunesConnectAnalytics' smart constructor.
data ITunesConnectAnalytics = ITunesConnectAnalytics
    {
      -- | Affiliate token used to create affiliate-coded links.
      at :: (Core.Maybe Core.Text)
      -- | Campaign text that developers can optionally add to any link in order to track sales from a specific marketing campaign.
    , ct :: (Core.Maybe Core.Text)
      -- | iTune media types, including music, podcasts, audiobooks and so on.
    , mt :: (Core.Maybe Core.Text)
      -- | Provider token that enables analytics for Dynamic Links from within iTunes Connect.
    , pt :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ITunesConnectAnalytics' with the minimum fields required to make a request.
newITunesConnectAnalytics 
    ::  ITunesConnectAnalytics
newITunesConnectAnalytics =
  ITunesConnectAnalytics
    {at = Core.Nothing, ct = Core.Nothing, mt = Core.Nothing, pt = Core.Nothing}

instance Core.FromJSON ITunesConnectAnalytics where
        parseJSON
          = Core.withObject "ITunesConnectAnalytics"
              (\ o ->
                 ITunesConnectAnalytics Core.<$>
                   (o Core..:? "at") Core.<*> (o Core..:? "ct") Core.<*>
                     (o Core..:? "mt")
                     Core.<*> (o Core..:? "pt"))

instance Core.ToJSON ITunesConnectAnalytics where
        toJSON ITunesConnectAnalytics{..}
          = Core.object
              (Core.catMaybes
                 [("at" Core..=) Core.<$> at,
                  ("ct" Core..=) Core.<$> ct,
                  ("mt" Core..=) Core.<$> mt,
                  ("pt" Core..=) Core.<$> pt])


-- | iOS related attributes to the Dynamic Link..
--
-- /See:/ 'newIosInfo' smart constructor.
data IosInfo = IosInfo
    {
      -- | iOS App Store ID.
      iosAppStoreId :: (Core.Maybe Core.Text)
      -- | iOS bundle ID of the app.
    , iosBundleId :: (Core.Maybe Core.Text)
      -- | Custom (destination) scheme to use for iOS. By default, we’ll use the bundle ID as the custom scheme. Developer can override this behavior using this param.
    , iosCustomScheme :: (Core.Maybe Core.Text)
      -- | Link to open on iOS if the app is not installed.
    , iosFallbackLink :: (Core.Maybe Core.Text)
      -- | iPad bundle ID of the app.
    , iosIpadBundleId :: (Core.Maybe Core.Text)
      -- | If specified, this overrides the ios/fallback/link value on iPads.
    , iosIpadFallbackLink :: (Core.Maybe Core.Text)
      -- | iOS minimum version.
    , iosMinimumVersion :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IosInfo' with the minimum fields required to make a request.
newIosInfo 
    ::  IosInfo
newIosInfo =
  IosInfo
    { iosAppStoreId = Core.Nothing
    , iosBundleId = Core.Nothing
    , iosCustomScheme = Core.Nothing
    , iosFallbackLink = Core.Nothing
    , iosIpadBundleId = Core.Nothing
    , iosIpadFallbackLink = Core.Nothing
    , iosMinimumVersion = Core.Nothing
    }

instance Core.FromJSON IosInfo where
        parseJSON
          = Core.withObject "IosInfo"
              (\ o ->
                 IosInfo Core.<$>
                   (o Core..:? "iosAppStoreId") Core.<*>
                     (o Core..:? "iosBundleId")
                     Core.<*> (o Core..:? "iosCustomScheme")
                     Core.<*> (o Core..:? "iosFallbackLink")
                     Core.<*> (o Core..:? "iosIpadBundleId")
                     Core.<*> (o Core..:? "iosIpadFallbackLink")
                     Core.<*> (o Core..:? "iosMinimumVersion"))

instance Core.ToJSON IosInfo where
        toJSON IosInfo{..}
          = Core.object
              (Core.catMaybes
                 [("iosAppStoreId" Core..=) Core.<$> iosAppStoreId,
                  ("iosBundleId" Core..=) Core.<$> iosBundleId,
                  ("iosCustomScheme" Core..=) Core.<$> iosCustomScheme,
                  ("iosFallbackLink" Core..=) Core.<$> iosFallbackLink,
                  ("iosIpadBundleId" Core..=) Core.<$> iosIpadBundleId,
                  ("iosIpadFallbackLink" Core..=) Core.<$>
                    iosIpadFallbackLink,
                  ("iosMinimumVersion" Core..=) Core.<$>
                    iosMinimumVersion])


-- | Managed Short Link.
--
-- /See:/ 'newManagedShortLink' smart constructor.
data ManagedShortLink = ManagedShortLink
    {
      -- | Creation timestamp of the short link.
      creationTime :: (Core.Maybe Core.DateTime)
      -- | Attributes that have been flagged about this short url.
    , flaggedAttribute :: (Core.Maybe [ManagedShortLink_FlaggedAttributeItem])
      -- | Full Dyamic Link info
    , info :: (Core.Maybe DynamicLinkInfo)
      -- | Short durable link url, for example, \"https:\/\/sample.app.goo.gl\/xyz123\". Required.
    , link :: (Core.Maybe Core.Text)
      -- | Link name defined by the creator. Required.
    , linkName :: (Core.Maybe Core.Text)
      -- | Visibility status of link.
    , visibility :: (Core.Maybe ManagedShortLink_Visibility)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedShortLink' with the minimum fields required to make a request.
newManagedShortLink 
    ::  ManagedShortLink
newManagedShortLink =
  ManagedShortLink
    { creationTime = Core.Nothing
    , flaggedAttribute = Core.Nothing
    , info = Core.Nothing
    , link = Core.Nothing
    , linkName = Core.Nothing
    , visibility = Core.Nothing
    }

instance Core.FromJSON ManagedShortLink where
        parseJSON
          = Core.withObject "ManagedShortLink"
              (\ o ->
                 ManagedShortLink Core.<$>
                   (o Core..:? "creationTime") Core.<*>
                     (o Core..:? "flaggedAttribute")
                     Core.<*> (o Core..:? "info")
                     Core.<*> (o Core..:? "link")
                     Core.<*> (o Core..:? "linkName")
                     Core.<*> (o Core..:? "visibility"))

instance Core.ToJSON ManagedShortLink where
        toJSON ManagedShortLink{..}
          = Core.object
              (Core.catMaybes
                 [("creationTime" Core..=) Core.<$> creationTime,
                  ("flaggedAttribute" Core..=) Core.<$>
                    flaggedAttribute,
                  ("info" Core..=) Core.<$> info,
                  ("link" Core..=) Core.<$> link,
                  ("linkName" Core..=) Core.<$> linkName,
                  ("visibility" Core..=) Core.<$> visibility])


-- | Information of navigation behavior.
--
-- /See:/ 'newNavigationInfo' smart constructor.
newtype NavigationInfo = NavigationInfo
    {
      -- | If this option is on, FDL click will be forced to redirect rather than show an interstitial page.
      enableForcedRedirect :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NavigationInfo' with the minimum fields required to make a request.
newNavigationInfo 
    ::  NavigationInfo
newNavigationInfo = NavigationInfo {enableForcedRedirect = Core.Nothing}

instance Core.FromJSON NavigationInfo where
        parseJSON
          = Core.withObject "NavigationInfo"
              (\ o ->
                 NavigationInfo Core.<$>
                   (o Core..:? "enableForcedRedirect"))

instance Core.ToJSON NavigationInfo where
        toJSON NavigationInfo{..}
          = Core.object
              (Core.catMaybes
                 [("enableForcedRedirect" Core..=) Core.<$>
                    enableForcedRedirect])


-- | Parameters for social meta tag params. Used to set meta tag data for link previews on social sites.
--
-- /See:/ 'newSocialMetaTagInfo' smart constructor.
data SocialMetaTagInfo = SocialMetaTagInfo
    {
      -- | A short description of the link. Optional.
      socialDescription :: (Core.Maybe Core.Text)
      -- | An image url string. Optional.
    , socialImageLink :: (Core.Maybe Core.Text)
      -- | Title to be displayed. Optional.
    , socialTitle :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SocialMetaTagInfo' with the minimum fields required to make a request.
newSocialMetaTagInfo 
    ::  SocialMetaTagInfo
newSocialMetaTagInfo =
  SocialMetaTagInfo
    { socialDescription = Core.Nothing
    , socialImageLink = Core.Nothing
    , socialTitle = Core.Nothing
    }

instance Core.FromJSON SocialMetaTagInfo where
        parseJSON
          = Core.withObject "SocialMetaTagInfo"
              (\ o ->
                 SocialMetaTagInfo Core.<$>
                   (o Core..:? "socialDescription") Core.<*>
                     (o Core..:? "socialImageLink")
                     Core.<*> (o Core..:? "socialTitle"))

instance Core.ToJSON SocialMetaTagInfo where
        toJSON SocialMetaTagInfo{..}
          = Core.object
              (Core.catMaybes
                 [("socialDescription" Core..=) Core.<$>
                    socialDescription,
                  ("socialImageLink" Core..=) Core.<$> socialImageLink,
                  ("socialTitle" Core..=) Core.<$> socialTitle])


-- | Short Dynamic Link suffix.
--
-- /See:/ 'newSuffix' smart constructor.
data Suffix = Suffix
    {
      -- | Only applies to Option.CUSTOM.
      customSuffix :: (Core.Maybe Core.Text)
      -- | Suffix option.
    , option :: (Core.Maybe Suffix_Option)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Suffix' with the minimum fields required to make a request.
newSuffix 
    ::  Suffix
newSuffix = Suffix {customSuffix = Core.Nothing, option = Core.Nothing}

instance Core.FromJSON Suffix where
        parseJSON
          = Core.withObject "Suffix"
              (\ o ->
                 Suffix Core.<$>
                   (o Core..:? "customSuffix") Core.<*>
                     (o Core..:? "option"))

instance Core.ToJSON Suffix where
        toJSON Suffix{..}
          = Core.object
              (Core.catMaybes
                 [("customSuffix" Core..=) Core.<$> customSuffix,
                  ("option" Core..=) Core.<$> option])

