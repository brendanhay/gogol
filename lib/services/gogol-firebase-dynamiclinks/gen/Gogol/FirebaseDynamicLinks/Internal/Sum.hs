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
-- Module      : Gogol.FirebaseDynamicLinks.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.FirebaseDynamicLinks.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * DynamicLinkEventStat_Event
    DynamicLinkEventStat_Event
      (
        DynamicLinkEventStat_Event_DYNAMICLINKEVENTUNSPECIFIED,
        DynamicLinkEventStat_Event_Click,
        DynamicLinkEventStat_Event_Redirect,
        DynamicLinkEventStat_Event_APPINSTALL,
        DynamicLinkEventStat_Event_APPFIRSTOPEN,
        DynamicLinkEventStat_Event_APPREOPEN,
        ..
      ),

    -- * DynamicLinkEventStat_Platform
    DynamicLinkEventStat_Platform
      (
        DynamicLinkEventStat_Platform_DYNAMICLINKPLATFORMUNSPECIFIED,
        DynamicLinkEventStat_Platform_Android,
        DynamicLinkEventStat_Platform_Ios,
        DynamicLinkEventStat_Platform_Desktop,
        DynamicLinkEventStat_Platform_Other,
        ..
      ),

    -- * DynamicLinkWarning_WarningCode
    DynamicLinkWarning_WarningCode
      (
        DynamicLinkWarning_WarningCode_CODEUNSPECIFIED,
        DynamicLinkWarning_WarningCode_NOTINPROJECTANDROIDPACKAGENAME,
        DynamicLinkWarning_WarningCode_NOTINTEGERANDROIDPACKAGEMINVERSION,
        DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDPACKAGEMINVERSION,
        DynamicLinkWarning_WarningCode_NOTURIANDROIDLINK,
        DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDLINK,
        DynamicLinkWarning_WarningCode_NOTURIANDROIDFALLBACKLINK,
        DynamicLinkWarning_WarningCode_BADURISCHEMEANDROIDFALLBACKLINK,
        DynamicLinkWarning_WarningCode_NOTINPROJECTIOSBUNDLEID,
        DynamicLinkWarning_WarningCode_NOTINPROJECTIPADBUNDLEID,
        DynamicLinkWarning_WarningCode_UNNECESSARYIOSURLSCHEME,
        DynamicLinkWarning_WarningCode_NOTNUMERICIOSAPPSTOREID,
        DynamicLinkWarning_WarningCode_UNNECESSARYIOSAPPSTOREID,
        DynamicLinkWarning_WarningCode_NOTURIIOSFALLBACKLINK,
        DynamicLinkWarning_WarningCode_BADURISCHEMEIOSFALLBACKLINK,
        DynamicLinkWarning_WarningCode_NOTURIIPADFALLBACKLINK,
        DynamicLinkWarning_WarningCode_BADURISCHEMEIPADFALLBACKLINK,
        DynamicLinkWarning_WarningCode_BADDEBUGPARAM,
        DynamicLinkWarning_WarningCode_BADADPARAM,
        DynamicLinkWarning_WarningCode_DEPRECATEDPARAM,
        DynamicLinkWarning_WarningCode_UNRECOGNIZEDPARAM,
        DynamicLinkWarning_WarningCode_TOOLONGPARAM,
        DynamicLinkWarning_WarningCode_NOTURISOCIALIMAGELINK,
        DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALIMAGELINK,
        DynamicLinkWarning_WarningCode_NOTURISOCIALURL,
        DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALURL,
        DynamicLinkWarning_WarningCode_LINKLENGTHTOOLONG,
        DynamicLinkWarning_WarningCode_LINKWITHFRAGMENTS,
        DynamicLinkWarning_WarningCode_NOTMATCHINGIOSBUNDLEIDANDSTOREID,
        DynamicLinkWarning_WarningCode_APIDEPRECATED,
        ..
      ),

    -- * GetIosPostInstallAttributionRequest_RetrievalMethod
    GetIosPostInstallAttributionRequest_RetrievalMethod
      (
        GetIosPostInstallAttributionRequest_RetrievalMethod_UNKNOWNPAYLOADRETRIEVALMETHOD,
        GetIosPostInstallAttributionRequest_RetrievalMethod_IMPLICITWEAKMATCH,
        GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITWEAKMATCH,
        GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITSTRONGAFTERWEAKMATCH,
        ..
      ),

    -- * GetIosPostInstallAttributionRequest_VisualStyle
    GetIosPostInstallAttributionRequest_VisualStyle
      (
        GetIosPostInstallAttributionRequest_VisualStyle_UNKNOWNVISUALSTYLE,
        GetIosPostInstallAttributionRequest_VisualStyle_DEFAULTSTYLE,
        GetIosPostInstallAttributionRequest_VisualStyle_CUSTOMSTYLE,
        ..
      ),

    -- * GetIosPostInstallAttributionResponse_AttributionConfidence
    GetIosPostInstallAttributionResponse_AttributionConfidence
      (
        GetIosPostInstallAttributionResponse_AttributionConfidence_UNKNOWNATTRIBUTIONCONFIDENCE,
        GetIosPostInstallAttributionResponse_AttributionConfidence_Weak,
        GetIosPostInstallAttributionResponse_AttributionConfidence_Default,
        GetIosPostInstallAttributionResponse_AttributionConfidence_Unique,
        ..
      ),

    -- * GetIosPostInstallAttributionResponse_RequestIpVersion
    GetIosPostInstallAttributionResponse_RequestIpVersion
      (
        GetIosPostInstallAttributionResponse_RequestIpVersion_UNKNOWNIPVERSION,
        GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V4,
        GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V6,
        ..
      ),

    -- * ManagedShortLink_FlaggedAttributeItem
    ManagedShortLink_FlaggedAttributeItem
      (
        ManagedShortLink_FlaggedAttributeItem_UNSPECIFIEDATTRIBUTE,
        ManagedShortLink_FlaggedAttributeItem_Spam,
        ..
      ),

    -- * ManagedShortLink_Visibility
    ManagedShortLink_Visibility
      (
        ManagedShortLink_Visibility_UNSPECIFIEDVISIBILITY,
        ManagedShortLink_Visibility_Unarchived,
        ManagedShortLink_Visibility_Archived,
        ManagedShortLink_Visibility_NEVERSHOWN,
        ..
      ),

    -- * Suffix_Option
    Suffix_Option
      (
        Suffix_Option_OPTIONUNSPECIFIED,
        Suffix_Option_Unguessable,
        Suffix_Option_Short,
        Suffix_Option_Custom,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Link event.
newtype DynamicLinkEventStat_Event = DynamicLinkEventStat_Event { fromDynamicLinkEventStat_Event :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified type.
pattern DynamicLinkEventStat_Event_DYNAMICLINKEVENTUNSPECIFIED :: DynamicLinkEventStat_Event
pattern DynamicLinkEventStat_Event_DYNAMICLINKEVENTUNSPECIFIED = DynamicLinkEventStat_Event "DYNAMIC_LINK_EVENT_UNSPECIFIED"

-- | Indicates that an FDL is clicked by users.
pattern DynamicLinkEventStat_Event_Click :: DynamicLinkEventStat_Event
pattern DynamicLinkEventStat_Event_Click = DynamicLinkEventStat_Event "CLICK"

-- | Indicates that an FDL redirects users to fallback link.
pattern DynamicLinkEventStat_Event_Redirect :: DynamicLinkEventStat_Event
pattern DynamicLinkEventStat_Event_Redirect = DynamicLinkEventStat_Event "REDIRECT"

-- | Indicates that an FDL triggers an app install from Play store, currently it\'s impossible to get stats from App store.
pattern DynamicLinkEventStat_Event_APPINSTALL :: DynamicLinkEventStat_Event
pattern DynamicLinkEventStat_Event_APPINSTALL = DynamicLinkEventStat_Event "APP_INSTALL"

-- | Indicates that the app is opened for the first time after an install triggered by FDLs
pattern DynamicLinkEventStat_Event_APPFIRSTOPEN :: DynamicLinkEventStat_Event
pattern DynamicLinkEventStat_Event_APPFIRSTOPEN = DynamicLinkEventStat_Event "APP_FIRST_OPEN"

-- | Indicates that the app is opened via an FDL for non-first time.
pattern DynamicLinkEventStat_Event_APPREOPEN :: DynamicLinkEventStat_Event
pattern DynamicLinkEventStat_Event_APPREOPEN = DynamicLinkEventStat_Event "APP_RE_OPEN"

{-# COMPLETE
  DynamicLinkEventStat_Event_DYNAMICLINKEVENTUNSPECIFIED,
  DynamicLinkEventStat_Event_Click,
  DynamicLinkEventStat_Event_Redirect,
  DynamicLinkEventStat_Event_APPINSTALL,
  DynamicLinkEventStat_Event_APPFIRSTOPEN,
  DynamicLinkEventStat_Event_APPREOPEN,
  DynamicLinkEventStat_Event #-}

-- | Requested platform.
newtype DynamicLinkEventStat_Platform = DynamicLinkEventStat_Platform { fromDynamicLinkEventStat_Platform :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified platform.
pattern DynamicLinkEventStat_Platform_DYNAMICLINKPLATFORMUNSPECIFIED :: DynamicLinkEventStat_Platform
pattern DynamicLinkEventStat_Platform_DYNAMICLINKPLATFORMUNSPECIFIED = DynamicLinkEventStat_Platform "DYNAMIC_LINK_PLATFORM_UNSPECIFIED"

-- | Represents Android platform. All apps and browsers on Android are classfied in this category.
pattern DynamicLinkEventStat_Platform_Android :: DynamicLinkEventStat_Platform
pattern DynamicLinkEventStat_Platform_Android = DynamicLinkEventStat_Platform "ANDROID"

-- | Represents iOS platform. All apps and browsers on iOS are classfied in this category.
pattern DynamicLinkEventStat_Platform_Ios :: DynamicLinkEventStat_Platform
pattern DynamicLinkEventStat_Platform_Ios = DynamicLinkEventStat_Platform "IOS"

-- | Represents desktop.
pattern DynamicLinkEventStat_Platform_Desktop :: DynamicLinkEventStat_Platform
pattern DynamicLinkEventStat_Platform_Desktop = DynamicLinkEventStat_Platform "DESKTOP"

-- | Platforms are not categorized as Android\/iOS\/Destop fall into here.
pattern DynamicLinkEventStat_Platform_Other :: DynamicLinkEventStat_Platform
pattern DynamicLinkEventStat_Platform_Other = DynamicLinkEventStat_Platform "OTHER"

{-# COMPLETE
  DynamicLinkEventStat_Platform_DYNAMICLINKPLATFORMUNSPECIFIED,
  DynamicLinkEventStat_Platform_Android,
  DynamicLinkEventStat_Platform_Ios,
  DynamicLinkEventStat_Platform_Desktop,
  DynamicLinkEventStat_Platform_Other,
  DynamicLinkEventStat_Platform #-}

-- | The warning code.
newtype DynamicLinkWarning_WarningCode = DynamicLinkWarning_WarningCode { fromDynamicLinkWarning_WarningCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown code.
pattern DynamicLinkWarning_WarningCode_CODEUNSPECIFIED :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_CODEUNSPECIFIED = DynamicLinkWarning_WarningCode "CODE_UNSPECIFIED"

-- | The Android package does not match any in developer\'s DevConsole project.
pattern DynamicLinkWarning_WarningCode_NOTINPROJECTANDROIDPACKAGENAME :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTINPROJECTANDROIDPACKAGENAME = DynamicLinkWarning_WarningCode "NOT_IN_PROJECT_ANDROID_PACKAGE_NAME"

-- | The Android minimum version code has to be a valid integer.
pattern DynamicLinkWarning_WarningCode_NOTINTEGERANDROIDPACKAGEMINVERSION :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTINTEGERANDROIDPACKAGEMINVERSION = DynamicLinkWarning_WarningCode "NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION"

-- | Android package min version param is not needed, e.g. when \'apn\' is missing.
pattern DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDPACKAGEMINVERSION :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDPACKAGEMINVERSION = DynamicLinkWarning_WarningCode "UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION"

-- | Android link is not a valid URI.
pattern DynamicLinkWarning_WarningCode_NOTURIANDROIDLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTURIANDROIDLINK = DynamicLinkWarning_WarningCode "NOT_URI_ANDROID_LINK"

-- | Android link param is not needed, e.g. when param \'al\' and \'link\' have the same value..
pattern DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDLINK = DynamicLinkWarning_WarningCode "UNNECESSARY_ANDROID_LINK"

-- | Android fallback link is not a valid URI.
pattern DynamicLinkWarning_WarningCode_NOTURIANDROIDFALLBACKLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTURIANDROIDFALLBACKLINK = DynamicLinkWarning_WarningCode "NOT_URI_ANDROID_FALLBACK_LINK"

-- | Android fallback link has an invalid (non http\/https) URI scheme.
pattern DynamicLinkWarning_WarningCode_BADURISCHEMEANDROIDFALLBACKLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADURISCHEMEANDROIDFALLBACKLINK = DynamicLinkWarning_WarningCode "BAD_URI_SCHEME_ANDROID_FALLBACK_LINK"

-- | The iOS bundle ID does not match any in developer\'s DevConsole project.
pattern DynamicLinkWarning_WarningCode_NOTINPROJECTIOSBUNDLEID :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTINPROJECTIOSBUNDLEID = DynamicLinkWarning_WarningCode "NOT_IN_PROJECT_IOS_BUNDLE_ID"

-- | The iPad bundle ID does not match any in developer\'s DevConsole project.
pattern DynamicLinkWarning_WarningCode_NOTINPROJECTIPADBUNDLEID :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTINPROJECTIPADBUNDLEID = DynamicLinkWarning_WarningCode "NOT_IN_PROJECT_IPAD_BUNDLE_ID"

-- | iOS URL scheme is not needed, e.g. when \'ibi\' are \'ipbi\' are all missing.
pattern DynamicLinkWarning_WarningCode_UNNECESSARYIOSURLSCHEME :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_UNNECESSARYIOSURLSCHEME = DynamicLinkWarning_WarningCode "UNNECESSARY_IOS_URL_SCHEME"

-- | iOS app store ID format is incorrect, e.g. not numeric.
pattern DynamicLinkWarning_WarningCode_NOTNUMERICIOSAPPSTOREID :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTNUMERICIOSAPPSTOREID = DynamicLinkWarning_WarningCode "NOT_NUMERIC_IOS_APP_STORE_ID"

-- | iOS app store ID is not needed.
pattern DynamicLinkWarning_WarningCode_UNNECESSARYIOSAPPSTOREID :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_UNNECESSARYIOSAPPSTOREID = DynamicLinkWarning_WarningCode "UNNECESSARY_IOS_APP_STORE_ID"

-- | iOS fallback link is not a valid URI.
pattern DynamicLinkWarning_WarningCode_NOTURIIOSFALLBACKLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTURIIOSFALLBACKLINK = DynamicLinkWarning_WarningCode "NOT_URI_IOS_FALLBACK_LINK"

-- | iOS fallback link has an invalid (non http\/https) URI scheme.
pattern DynamicLinkWarning_WarningCode_BADURISCHEMEIOSFALLBACKLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADURISCHEMEIOSFALLBACKLINK = DynamicLinkWarning_WarningCode "BAD_URI_SCHEME_IOS_FALLBACK_LINK"

-- | iPad fallback link is not a valid URI.
pattern DynamicLinkWarning_WarningCode_NOTURIIPADFALLBACKLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTURIIPADFALLBACKLINK = DynamicLinkWarning_WarningCode "NOT_URI_IPAD_FALLBACK_LINK"

-- | iPad fallback link has an invalid (non http\/https) URI scheme.
pattern DynamicLinkWarning_WarningCode_BADURISCHEMEIPADFALLBACKLINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADURISCHEMEIPADFALLBACKLINK = DynamicLinkWarning_WarningCode "BAD_URI_SCHEME_IPAD_FALLBACK_LINK"

-- | Debug param format is incorrect.
pattern DynamicLinkWarning_WarningCode_BADDEBUGPARAM :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADDEBUGPARAM = DynamicLinkWarning_WarningCode "BAD_DEBUG_PARAM"

-- | isAd param format is incorrect.
pattern DynamicLinkWarning_WarningCode_BADADPARAM :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADADPARAM = DynamicLinkWarning_WarningCode "BAD_AD_PARAM"

-- | Indicates a certain param is deprecated.
pattern DynamicLinkWarning_WarningCode_DEPRECATEDPARAM :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_DEPRECATEDPARAM = DynamicLinkWarning_WarningCode "DEPRECATED_PARAM"

-- | Indicates certain parameter is not recognized.
pattern DynamicLinkWarning_WarningCode_UNRECOGNIZEDPARAM :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_UNRECOGNIZEDPARAM = DynamicLinkWarning_WarningCode "UNRECOGNIZED_PARAM"

-- | Indicates certain parameter is too long.
pattern DynamicLinkWarning_WarningCode_TOOLONGPARAM :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_TOOLONGPARAM = DynamicLinkWarning_WarningCode "TOO_LONG_PARAM"

-- | Social meta tag image link is not a valid URI.
pattern DynamicLinkWarning_WarningCode_NOTURISOCIALIMAGELINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTURISOCIALIMAGELINK = DynamicLinkWarning_WarningCode "NOT_URI_SOCIAL_IMAGE_LINK"

-- | Social meta tag image link has an invalid (non http\/https) URI scheme.
pattern DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALIMAGELINK :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALIMAGELINK = DynamicLinkWarning_WarningCode "BAD_URI_SCHEME_SOCIAL_IMAGE_LINK"

-- | 
pattern DynamicLinkWarning_WarningCode_NOTURISOCIALURL :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTURISOCIALURL = DynamicLinkWarning_WarningCode "NOT_URI_SOCIAL_URL"

-- | 
pattern DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALURL :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALURL = DynamicLinkWarning_WarningCode "BAD_URI_SCHEME_SOCIAL_URL"

-- | Dynamic Link URL length is too long.
pattern DynamicLinkWarning_WarningCode_LINKLENGTHTOOLONG :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_LINKLENGTHTOOLONG = DynamicLinkWarning_WarningCode "LINK_LENGTH_TOO_LONG"

-- | Dynamic Link URL contains fragments.
pattern DynamicLinkWarning_WarningCode_LINKWITHFRAGMENTS :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_LINKWITHFRAGMENTS = DynamicLinkWarning_WarningCode "LINK_WITH_FRAGMENTS"

-- | The iOS bundle ID does not match with the given iOS store ID.
pattern DynamicLinkWarning_WarningCode_NOTMATCHINGIOSBUNDLEIDANDSTOREID :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_NOTMATCHINGIOSBUNDLEIDANDSTOREID = DynamicLinkWarning_WarningCode "NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID"

-- | The API is deprecated.
pattern DynamicLinkWarning_WarningCode_APIDEPRECATED :: DynamicLinkWarning_WarningCode
pattern DynamicLinkWarning_WarningCode_APIDEPRECATED = DynamicLinkWarning_WarningCode "API_DEPRECATED"

{-# COMPLETE
  DynamicLinkWarning_WarningCode_CODEUNSPECIFIED,
  DynamicLinkWarning_WarningCode_NOTINPROJECTANDROIDPACKAGENAME,
  DynamicLinkWarning_WarningCode_NOTINTEGERANDROIDPACKAGEMINVERSION,
  DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDPACKAGEMINVERSION,
  DynamicLinkWarning_WarningCode_NOTURIANDROIDLINK,
  DynamicLinkWarning_WarningCode_UNNECESSARYANDROIDLINK,
  DynamicLinkWarning_WarningCode_NOTURIANDROIDFALLBACKLINK,
  DynamicLinkWarning_WarningCode_BADURISCHEMEANDROIDFALLBACKLINK,
  DynamicLinkWarning_WarningCode_NOTINPROJECTIOSBUNDLEID,
  DynamicLinkWarning_WarningCode_NOTINPROJECTIPADBUNDLEID,
  DynamicLinkWarning_WarningCode_UNNECESSARYIOSURLSCHEME,
  DynamicLinkWarning_WarningCode_NOTNUMERICIOSAPPSTOREID,
  DynamicLinkWarning_WarningCode_UNNECESSARYIOSAPPSTOREID,
  DynamicLinkWarning_WarningCode_NOTURIIOSFALLBACKLINK,
  DynamicLinkWarning_WarningCode_BADURISCHEMEIOSFALLBACKLINK,
  DynamicLinkWarning_WarningCode_NOTURIIPADFALLBACKLINK,
  DynamicLinkWarning_WarningCode_BADURISCHEMEIPADFALLBACKLINK,
  DynamicLinkWarning_WarningCode_BADDEBUGPARAM,
  DynamicLinkWarning_WarningCode_BADADPARAM,
  DynamicLinkWarning_WarningCode_DEPRECATEDPARAM,
  DynamicLinkWarning_WarningCode_UNRECOGNIZEDPARAM,
  DynamicLinkWarning_WarningCode_TOOLONGPARAM,
  DynamicLinkWarning_WarningCode_NOTURISOCIALIMAGELINK,
  DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALIMAGELINK,
  DynamicLinkWarning_WarningCode_NOTURISOCIALURL,
  DynamicLinkWarning_WarningCode_BADURISCHEMESOCIALURL,
  DynamicLinkWarning_WarningCode_LINKLENGTHTOOLONG,
  DynamicLinkWarning_WarningCode_LINKWITHFRAGMENTS,
  DynamicLinkWarning_WarningCode_NOTMATCHINGIOSBUNDLEIDANDSTOREID,
  DynamicLinkWarning_WarningCode_APIDEPRECATED,
  DynamicLinkWarning_WarningCode #-}

-- | App post install attribution retrieval information. Disambiguates mechanism (iSDK or developer invoked) to retrieve payload from clicked link.
newtype GetIosPostInstallAttributionRequest_RetrievalMethod = GetIosPostInstallAttributionRequest_RetrievalMethod { fromGetIosPostInstallAttributionRequest_RetrievalMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown method.
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_UNKNOWNPAYLOADRETRIEVALMETHOD :: GetIosPostInstallAttributionRequest_RetrievalMethod
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_UNKNOWNPAYLOADRETRIEVALMETHOD = GetIosPostInstallAttributionRequest_RetrievalMethod "UNKNOWN_PAYLOAD_RETRIEVAL_METHOD"

-- | iSDK performs a server lookup by device heuristics in the background when app is first-opened; no API called by developer.
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_IMPLICITWEAKMATCH :: GetIosPostInstallAttributionRequest_RetrievalMethod
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_IMPLICITWEAKMATCH = GetIosPostInstallAttributionRequest_RetrievalMethod "IMPLICIT_WEAK_MATCH"

-- | iSDK performs a server lookup by device heuristics upon a dev API call.
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITWEAKMATCH :: GetIosPostInstallAttributionRequest_RetrievalMethod
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITWEAKMATCH = GetIosPostInstallAttributionRequest_RetrievalMethod "EXPLICIT_WEAK_MATCH"

-- | iSDK performs a strong match only if weak match is found upon a dev API call.
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITSTRONGAFTERWEAKMATCH :: GetIosPostInstallAttributionRequest_RetrievalMethod
pattern GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITSTRONGAFTERWEAKMATCH = GetIosPostInstallAttributionRequest_RetrievalMethod "EXPLICIT_STRONG_AFTER_WEAK_MATCH"

{-# COMPLETE
  GetIosPostInstallAttributionRequest_RetrievalMethod_UNKNOWNPAYLOADRETRIEVALMETHOD,
  GetIosPostInstallAttributionRequest_RetrievalMethod_IMPLICITWEAKMATCH,
  GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITWEAKMATCH,
  GetIosPostInstallAttributionRequest_RetrievalMethod_EXPLICITSTRONGAFTERWEAKMATCH,
  GetIosPostInstallAttributionRequest_RetrievalMethod #-}

-- | Strong match page information. Disambiguates between default UI and custom page to present when strong match succeeds\/fails to find cookie.
newtype GetIosPostInstallAttributionRequest_VisualStyle = GetIosPostInstallAttributionRequest_VisualStyle { fromGetIosPostInstallAttributionRequest_VisualStyle :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown style.
pattern GetIosPostInstallAttributionRequest_VisualStyle_UNKNOWNVISUALSTYLE :: GetIosPostInstallAttributionRequest_VisualStyle
pattern GetIosPostInstallAttributionRequest_VisualStyle_UNKNOWNVISUALSTYLE = GetIosPostInstallAttributionRequest_VisualStyle "UNKNOWN_VISUAL_STYLE"

-- | Default style.
pattern GetIosPostInstallAttributionRequest_VisualStyle_DEFAULTSTYLE :: GetIosPostInstallAttributionRequest_VisualStyle
pattern GetIosPostInstallAttributionRequest_VisualStyle_DEFAULTSTYLE = GetIosPostInstallAttributionRequest_VisualStyle "DEFAULT_STYLE"

-- | Custom style.
pattern GetIosPostInstallAttributionRequest_VisualStyle_CUSTOMSTYLE :: GetIosPostInstallAttributionRequest_VisualStyle
pattern GetIosPostInstallAttributionRequest_VisualStyle_CUSTOMSTYLE = GetIosPostInstallAttributionRequest_VisualStyle "CUSTOM_STYLE"

{-# COMPLETE
  GetIosPostInstallAttributionRequest_VisualStyle_UNKNOWNVISUALSTYLE,
  GetIosPostInstallAttributionRequest_VisualStyle_DEFAULTSTYLE,
  GetIosPostInstallAttributionRequest_VisualStyle_CUSTOMSTYLE,
  GetIosPostInstallAttributionRequest_VisualStyle #-}

-- | The confidence of the returned attribution.
newtype GetIosPostInstallAttributionResponse_AttributionConfidence = GetIosPostInstallAttributionResponse_AttributionConfidence { fromGetIosPostInstallAttributionResponse_AttributionConfidence :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_UNKNOWNATTRIBUTIONCONFIDENCE :: GetIosPostInstallAttributionResponse_AttributionConfidence
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_UNKNOWNATTRIBUTIONCONFIDENCE = GetIosPostInstallAttributionResponse_AttributionConfidence "UNKNOWN_ATTRIBUTION_CONFIDENCE"

-- | Weak confidence, more than one matching link found or link suspected to be false positive.
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_Weak :: GetIosPostInstallAttributionResponse_AttributionConfidence
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_Weak = GetIosPostInstallAttributionResponse_AttributionConfidence "WEAK"

-- | Default confidence, match based on device heuristics.
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_Default :: GetIosPostInstallAttributionResponse_AttributionConfidence
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_Default = GetIosPostInstallAttributionResponse_AttributionConfidence "DEFAULT"

-- | Unique confidence, match based on \"unique match link to check\" or other means.
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_Unique :: GetIosPostInstallAttributionResponse_AttributionConfidence
pattern GetIosPostInstallAttributionResponse_AttributionConfidence_Unique = GetIosPostInstallAttributionResponse_AttributionConfidence "UNIQUE"

{-# COMPLETE
  GetIosPostInstallAttributionResponse_AttributionConfidence_UNKNOWNATTRIBUTIONCONFIDENCE,
  GetIosPostInstallAttributionResponse_AttributionConfidence_Weak,
  GetIosPostInstallAttributionResponse_AttributionConfidence_Default,
  GetIosPostInstallAttributionResponse_AttributionConfidence_Unique,
  GetIosPostInstallAttributionResponse_AttributionConfidence #-}

-- | Which IP version the request was made from.
newtype GetIosPostInstallAttributionResponse_RequestIpVersion = GetIosPostInstallAttributionResponse_RequestIpVersion { fromGetIosPostInstallAttributionResponse_RequestIpVersion :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unset.
pattern GetIosPostInstallAttributionResponse_RequestIpVersion_UNKNOWNIPVERSION :: GetIosPostInstallAttributionResponse_RequestIpVersion
pattern GetIosPostInstallAttributionResponse_RequestIpVersion_UNKNOWNIPVERSION = GetIosPostInstallAttributionResponse_RequestIpVersion "UNKNOWN_IP_VERSION"

-- | Request made from an IPv4 IP address.
pattern GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V4 :: GetIosPostInstallAttributionResponse_RequestIpVersion
pattern GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V4 = GetIosPostInstallAttributionResponse_RequestIpVersion "IP_V4"

-- | Request made from an IPv6 IP address.
pattern GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V6 :: GetIosPostInstallAttributionResponse_RequestIpVersion
pattern GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V6 = GetIosPostInstallAttributionResponse_RequestIpVersion "IP_V6"

{-# COMPLETE
  GetIosPostInstallAttributionResponse_RequestIpVersion_UNKNOWNIPVERSION,
  GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V4,
  GetIosPostInstallAttributionResponse_RequestIpVersion_IP_V6,
  GetIosPostInstallAttributionResponse_RequestIpVersion #-}

newtype ManagedShortLink_FlaggedAttributeItem = ManagedShortLink_FlaggedAttributeItem { fromManagedShortLink_FlaggedAttributeItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Indicates that no attributes were found for this short url.
pattern ManagedShortLink_FlaggedAttributeItem_UNSPECIFIEDATTRIBUTE :: ManagedShortLink_FlaggedAttributeItem
pattern ManagedShortLink_FlaggedAttributeItem_UNSPECIFIEDATTRIBUTE = ManagedShortLink_FlaggedAttributeItem "UNSPECIFIED_ATTRIBUTE"

-- | Indicates that short url has been flagged as spam.
pattern ManagedShortLink_FlaggedAttributeItem_Spam :: ManagedShortLink_FlaggedAttributeItem
pattern ManagedShortLink_FlaggedAttributeItem_Spam = ManagedShortLink_FlaggedAttributeItem "SPAM"

{-# COMPLETE
  ManagedShortLink_FlaggedAttributeItem_UNSPECIFIEDATTRIBUTE,
  ManagedShortLink_FlaggedAttributeItem_Spam,
  ManagedShortLink_FlaggedAttributeItem #-}

-- | Visibility status of link.
newtype ManagedShortLink_Visibility = ManagedShortLink_Visibility { fromManagedShortLink_Visibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Visibility of the link is not specified.
pattern ManagedShortLink_Visibility_UNSPECIFIEDVISIBILITY :: ManagedShortLink_Visibility
pattern ManagedShortLink_Visibility_UNSPECIFIEDVISIBILITY = ManagedShortLink_Visibility "UNSPECIFIED_VISIBILITY"

-- | Link created in console and should be shown in console.
pattern ManagedShortLink_Visibility_Unarchived :: ManagedShortLink_Visibility
pattern ManagedShortLink_Visibility_Unarchived = ManagedShortLink_Visibility "UNARCHIVED"

-- | Link created in console and should not be shown in console (but can be shown in the console again if it is unarchived).
pattern ManagedShortLink_Visibility_Archived :: ManagedShortLink_Visibility
pattern ManagedShortLink_Visibility_Archived = ManagedShortLink_Visibility "ARCHIVED"

-- | Link created outside of console and should never be shown in console.
pattern ManagedShortLink_Visibility_NEVERSHOWN :: ManagedShortLink_Visibility
pattern ManagedShortLink_Visibility_NEVERSHOWN = ManagedShortLink_Visibility "NEVER_SHOWN"

{-# COMPLETE
  ManagedShortLink_Visibility_UNSPECIFIEDVISIBILITY,
  ManagedShortLink_Visibility_Unarchived,
  ManagedShortLink_Visibility_Archived,
  ManagedShortLink_Visibility_NEVERSHOWN,
  ManagedShortLink_Visibility #-}

-- | Suffix option.
newtype Suffix_Option = Suffix_Option { fromSuffix_Option :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The suffix option is not specified, performs as UNGUESSABLE .
pattern Suffix_Option_OPTIONUNSPECIFIED :: Suffix_Option
pattern Suffix_Option_OPTIONUNSPECIFIED = Suffix_Option "OPTION_UNSPECIFIED"

-- | Short Dynamic Link suffix is a base62 [0-9A-Za-z] encoded string of a random generated 96 bit random number, which has a length of 17 chars. For example, \"nlAR8U4SlKRZw1cb2\". It prevents other people from guessing and crawling short Dynamic Links that contain personal identifiable information.
pattern Suffix_Option_Unguessable :: Suffix_Option
pattern Suffix_Option_Unguessable = Suffix_Option "UNGUESSABLE"

-- | Short Dynamic Link suffix is a base62 [0-9A-Za-z] string starting with a length of 4 chars. the length will increase when all the space is occupied.
pattern Suffix_Option_Short :: Suffix_Option
pattern Suffix_Option_Short = Suffix_Option "SHORT"

-- | Custom DDL suffix is a client specified string, for example, \"buy2get1free\". NOTE: custom suffix should only be available to managed short link creation
pattern Suffix_Option_Custom :: Suffix_Option
pattern Suffix_Option_Custom = Suffix_Option "CUSTOM"

{-# COMPLETE
  Suffix_Option_OPTIONUNSPECIFIED,
  Suffix_Option_Unguessable,
  Suffix_Option_Short,
  Suffix_Option_Custom,
  Suffix_Option #-}
