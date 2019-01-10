{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FirebaseDynamicLinks.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FirebaseDynamicLinks.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Requested platform.
data DynamicLinkEventStatPlatform
    = DynamicLinkPlatformUnspecified
      -- ^ @DYNAMIC_LINK_PLATFORM_UNSPECIFIED@
      -- Unspecified platform.
    | Android
      -- ^ @ANDROID@
      -- Represents Android platform. All apps and browsers on Android are
      -- classfied in this category.
    | Ios
      -- ^ @IOS@
      -- Represents iOS platform. All apps and browsers on iOS are classfied in
      -- this category.
    | Desktop
      -- ^ @DESKTOP@
      -- Represents desktop.
    | Other
      -- ^ @OTHER@
      -- Platforms are not categorized as Android\/iOS\/Destop fall into here.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicLinkEventStatPlatform

instance FromHttpApiData DynamicLinkEventStatPlatform where
    parseQueryParam = \case
        "DYNAMIC_LINK_PLATFORM_UNSPECIFIED" -> Right DynamicLinkPlatformUnspecified
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        "DESKTOP" -> Right Desktop
        "OTHER" -> Right Other
        x -> Left ("Unable to parse DynamicLinkEventStatPlatform from: " <> x)

instance ToHttpApiData DynamicLinkEventStatPlatform where
    toQueryParam = \case
        DynamicLinkPlatformUnspecified -> "DYNAMIC_LINK_PLATFORM_UNSPECIFIED"
        Android -> "ANDROID"
        Ios -> "IOS"
        Desktop -> "DESKTOP"
        Other -> "OTHER"

instance FromJSON DynamicLinkEventStatPlatform where
    parseJSON = parseJSONText "DynamicLinkEventStatPlatform"

instance ToJSON DynamicLinkEventStatPlatform where
    toJSON = toJSONText

-- | Strong match page information. Disambiguates between default UI and
-- custom page to present when strong match succeeds\/fails to find cookie.
data GetIosPostInstallAttributionRequestVisualStyle
    = UnknownVisualStyle
      -- ^ @UNKNOWN_VISUAL_STYLE@
      -- Unknown style.
    | DefaultStyle
      -- ^ @DEFAULT_STYLE@
      -- Default style.
    | CustomStyle
      -- ^ @CUSTOM_STYLE@
      -- Custom style.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetIosPostInstallAttributionRequestVisualStyle

instance FromHttpApiData GetIosPostInstallAttributionRequestVisualStyle where
    parseQueryParam = \case
        "UNKNOWN_VISUAL_STYLE" -> Right UnknownVisualStyle
        "DEFAULT_STYLE" -> Right DefaultStyle
        "CUSTOM_STYLE" -> Right CustomStyle
        x -> Left ("Unable to parse GetIosPostInstallAttributionRequestVisualStyle from: " <> x)

instance ToHttpApiData GetIosPostInstallAttributionRequestVisualStyle where
    toQueryParam = \case
        UnknownVisualStyle -> "UNKNOWN_VISUAL_STYLE"
        DefaultStyle -> "DEFAULT_STYLE"
        CustomStyle -> "CUSTOM_STYLE"

instance FromJSON GetIosPostInstallAttributionRequestVisualStyle where
    parseJSON = parseJSONText "GetIosPostInstallAttributionRequestVisualStyle"

instance ToJSON GetIosPostInstallAttributionRequestVisualStyle where
    toJSON = toJSONText

-- | Suffix option.
data SuffixOption
    = OptionUnspecified
      -- ^ @OPTION_UNSPECIFIED@
      -- The suffix option is not specified, performs as UNGUESSABLE .
    | Unguessable
      -- ^ @UNGUESSABLE@
      -- Short Dynamic Link suffix is a base62 [0-9A-Za-z] encoded string of a
      -- random generated 96 bit random number, which has a length of 17 chars.
      -- For example, \"nlAR8U4SlKRZw1cb2\". It prevents other people from
      -- guessing and crawling short Dynamic Links that contain personal
      -- identifiable information.
    | Short
      -- ^ @SHORT@
      -- Short Dynamic Link suffix is a base62 [0-9A-Za-z] string starting with a
      -- length of 4 chars. the length will increase when all the space is
      -- occupied.
    | Custom
      -- ^ @CUSTOM@
      -- Custom DDL suffix is a client specified string, for example,
      -- \"buy2get1free\". NOTE: custom suffix should only be available to
      -- managed short link creation
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SuffixOption

instance FromHttpApiData SuffixOption where
    parseQueryParam = \case
        "OPTION_UNSPECIFIED" -> Right OptionUnspecified
        "UNGUESSABLE" -> Right Unguessable
        "SHORT" -> Right Short
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse SuffixOption from: " <> x)

instance ToHttpApiData SuffixOption where
    toQueryParam = \case
        OptionUnspecified -> "OPTION_UNSPECIFIED"
        Unguessable -> "UNGUESSABLE"
        Short -> "SHORT"
        Custom -> "CUSTOM"

instance FromJSON SuffixOption where
    parseJSON = parseJSONText "SuffixOption"

instance ToJSON SuffixOption where
    toJSON = toJSONText

-- | Link event.
data DynamicLinkEventStatEvent
    = DynamicLinkEventUnspecified
      -- ^ @DYNAMIC_LINK_EVENT_UNSPECIFIED@
      -- Unspecified type.
    | Click
      -- ^ @CLICK@
      -- Indicates that an FDL is clicked by users.
    | Redirect
      -- ^ @REDIRECT@
      -- Indicates that an FDL redirects users to fallback link.
    | AppInstall
      -- ^ @APP_INSTALL@
      -- Indicates that an FDL triggers an app install from Play store, currently
      -- it\'s impossible to get stats from App store.
    | AppFirstOpen
      -- ^ @APP_FIRST_OPEN@
      -- Indicates that the app is opened for the first time after an install
      -- triggered by FDLs
    | AppReOpen
      -- ^ @APP_RE_OPEN@
      -- Indicates that the app is opened via an FDL for non-first time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicLinkEventStatEvent

instance FromHttpApiData DynamicLinkEventStatEvent where
    parseQueryParam = \case
        "DYNAMIC_LINK_EVENT_UNSPECIFIED" -> Right DynamicLinkEventUnspecified
        "CLICK" -> Right Click
        "REDIRECT" -> Right Redirect
        "APP_INSTALL" -> Right AppInstall
        "APP_FIRST_OPEN" -> Right AppFirstOpen
        "APP_RE_OPEN" -> Right AppReOpen
        x -> Left ("Unable to parse DynamicLinkEventStatEvent from: " <> x)

instance ToHttpApiData DynamicLinkEventStatEvent where
    toQueryParam = \case
        DynamicLinkEventUnspecified -> "DYNAMIC_LINK_EVENT_UNSPECIFIED"
        Click -> "CLICK"
        Redirect -> "REDIRECT"
        AppInstall -> "APP_INSTALL"
        AppFirstOpen -> "APP_FIRST_OPEN"
        AppReOpen -> "APP_RE_OPEN"

instance FromJSON DynamicLinkEventStatEvent where
    parseJSON = parseJSONText "DynamicLinkEventStatEvent"

instance ToJSON DynamicLinkEventStatEvent where
    toJSON = toJSONText

-- | Which IP version the request was made from.
data GetIosPostInstallAttributionResponseRequestIPVersion
    = UnknownIPVersion
      -- ^ @UNKNOWN_IP_VERSION@
      -- Unset.
    | IPV4
      -- ^ @IP_V4@
      -- Request made from an IPv4 IP address.
    | IPV6
      -- ^ @IP_V6@
      -- Request made from an IPv6 IP address.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetIosPostInstallAttributionResponseRequestIPVersion

instance FromHttpApiData GetIosPostInstallAttributionResponseRequestIPVersion where
    parseQueryParam = \case
        "UNKNOWN_IP_VERSION" -> Right UnknownIPVersion
        "IP_V4" -> Right IPV4
        "IP_V6" -> Right IPV6
        x -> Left ("Unable to parse GetIosPostInstallAttributionResponseRequestIPVersion from: " <> x)

instance ToHttpApiData GetIosPostInstallAttributionResponseRequestIPVersion where
    toQueryParam = \case
        UnknownIPVersion -> "UNKNOWN_IP_VERSION"
        IPV4 -> "IP_V4"
        IPV6 -> "IP_V6"

instance FromJSON GetIosPostInstallAttributionResponseRequestIPVersion where
    parseJSON = parseJSONText "GetIosPostInstallAttributionResponseRequestIPVersion"

instance ToJSON GetIosPostInstallAttributionResponseRequestIPVersion where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The confidence of the returned attribution.
data GetIosPostInstallAttributionResponseAttributionConfidence
    = UnknownAttributionConfidence
      -- ^ @UNKNOWN_ATTRIBUTION_CONFIDENCE@
      -- Unset.
    | Weak
      -- ^ @WEAK@
      -- Weak confidence, more than one matching link found or link suspected to
      -- be false positive
    | Default
      -- ^ @DEFAULT@
      -- Default confidence, match based on fingerprint
    | Unique
      -- ^ @UNIQUE@
      -- Unique confidence, match based on \"unique match link to check\" or
      -- other means
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetIosPostInstallAttributionResponseAttributionConfidence

instance FromHttpApiData GetIosPostInstallAttributionResponseAttributionConfidence where
    parseQueryParam = \case
        "UNKNOWN_ATTRIBUTION_CONFIDENCE" -> Right UnknownAttributionConfidence
        "WEAK" -> Right Weak
        "DEFAULT" -> Right Default
        "UNIQUE" -> Right Unique
        x -> Left ("Unable to parse GetIosPostInstallAttributionResponseAttributionConfidence from: " <> x)

instance ToHttpApiData GetIosPostInstallAttributionResponseAttributionConfidence where
    toQueryParam = \case
        UnknownAttributionConfidence -> "UNKNOWN_ATTRIBUTION_CONFIDENCE"
        Weak -> "WEAK"
        Default -> "DEFAULT"
        Unique -> "UNIQUE"

instance FromJSON GetIosPostInstallAttributionResponseAttributionConfidence where
    parseJSON = parseJSONText "GetIosPostInstallAttributionResponseAttributionConfidence"

instance ToJSON GetIosPostInstallAttributionResponseAttributionConfidence where
    toJSON = toJSONText

-- | The warning code.
data DynamicLinkWarningWarningCode
    = CodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Unknown code.
    | NotInProjectAndroidPackageName
      -- ^ @NOT_IN_PROJECT_ANDROID_PACKAGE_NAME@
      -- The Android package does not match any in developer\'s DevConsole
      -- project.
    | NotIntegerAndroidPackageMinVersion
      -- ^ @NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION@
      -- The Android minimum version code has to be a valid integer.
    | UnnecessaryAndroidPackageMinVersion
      -- ^ @UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION@
      -- Android package min version param is not needed, e.g. when \'apn\' is
      -- missing.
    | NotURIAndroidLink
      -- ^ @NOT_URI_ANDROID_LINK@
      -- Android link is not a valid URI.
    | UnnecessaryAndroidLink
      -- ^ @UNNECESSARY_ANDROID_LINK@
      -- Android link param is not needed, e.g. when param \'al\' and \'link\'
      -- have the same value..
    | NotURIAndroidFallbackLink
      -- ^ @NOT_URI_ANDROID_FALLBACK_LINK@
      -- Android fallback link is not a valid URI.
    | BadURISchemeAndroidFallbackLink
      -- ^ @BAD_URI_SCHEME_ANDROID_FALLBACK_LINK@
      -- Android fallback link has an invalid (non http\/https) URI scheme.
    | NotInProjectIosBundleId
      -- ^ @NOT_IN_PROJECT_IOS_BUNDLE_ID@
      -- The iOS bundle ID does not match any in developer\'s DevConsole project.
    | NotInProjectIPadBundleId
      -- ^ @NOT_IN_PROJECT_IPAD_BUNDLE_ID@
      -- The iPad bundle ID does not match any in developer\'s DevConsole
      -- project.
    | UnnecessaryIosURLScheme
      -- ^ @UNNECESSARY_IOS_URL_SCHEME@
      -- iOS URL scheme is not needed, e.g. when \'ibi\' are \'ipbi\' are all
      -- missing.
    | NotNumericIosAppStoreId
      -- ^ @NOT_NUMERIC_IOS_APP_STORE_ID@
      -- iOS app store ID format is incorrect, e.g. not numeric.
    | UnnecessaryIosAppStoreId
      -- ^ @UNNECESSARY_IOS_APP_STORE_ID@
      -- iOS app store ID is not needed.
    | NotURIIosFallbackLink
      -- ^ @NOT_URI_IOS_FALLBACK_LINK@
      -- iOS fallback link is not a valid URI.
    | BadURISchemeIosFallbackLink
      -- ^ @BAD_URI_SCHEME_IOS_FALLBACK_LINK@
      -- iOS fallback link has an invalid (non http\/https) URI scheme.
    | NotURIIPadFallbackLink
      -- ^ @NOT_URI_IPAD_FALLBACK_LINK@
      -- iPad fallback link is not a valid URI.
    | BadURISchemeIPadFallbackLink
      -- ^ @BAD_URI_SCHEME_IPAD_FALLBACK_LINK@
      -- iPad fallback link has an invalid (non http\/https) URI scheme.
    | BadDebugParam
      -- ^ @BAD_DEBUG_PARAM@
      -- Debug param format is incorrect.
    | BadAdParam
      -- ^ @BAD_AD_PARAM@
      -- isAd param format is incorrect.
    | DeprecatedParam
      -- ^ @DEPRECATED_PARAM@
      -- Indicates a certain param is deprecated.
    | UnrecognizedParam
      -- ^ @UNRECOGNIZED_PARAM@
      -- Indicates certain paramater is not recognized.
    | TooLongParam
      -- ^ @TOO_LONG_PARAM@
      -- Indicates certain paramater is too long.
    | NotURISocialImageLink
      -- ^ @NOT_URI_SOCIAL_IMAGE_LINK@
      -- Social meta tag image link is not a valid URI.
    | BadURISchemeSocialImageLink
      -- ^ @BAD_URI_SCHEME_SOCIAL_IMAGE_LINK@
      -- Social meta tag image link has an invalid (non http\/https) URI scheme.
    | NotURISocialURL
      -- ^ @NOT_URI_SOCIAL_URL@
    | BadURISchemeSocialURL
      -- ^ @BAD_URI_SCHEME_SOCIAL_URL@
    | LinkLengthTooLong
      -- ^ @LINK_LENGTH_TOO_LONG@
      -- Dynamic Link URL length is too long.
    | LinkWithFragments
      -- ^ @LINK_WITH_FRAGMENTS@
      -- Dynamic Link URL contains fragments.
    | NotMatchingIosBundleIdAndStoreId
      -- ^ @NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID@
      -- The iOS bundle ID does not match with the given iOS store ID.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DynamicLinkWarningWarningCode

instance FromHttpApiData DynamicLinkWarningWarningCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right CodeUnspecified
        "NOT_IN_PROJECT_ANDROID_PACKAGE_NAME" -> Right NotInProjectAndroidPackageName
        "NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION" -> Right NotIntegerAndroidPackageMinVersion
        "UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION" -> Right UnnecessaryAndroidPackageMinVersion
        "NOT_URI_ANDROID_LINK" -> Right NotURIAndroidLink
        "UNNECESSARY_ANDROID_LINK" -> Right UnnecessaryAndroidLink
        "NOT_URI_ANDROID_FALLBACK_LINK" -> Right NotURIAndroidFallbackLink
        "BAD_URI_SCHEME_ANDROID_FALLBACK_LINK" -> Right BadURISchemeAndroidFallbackLink
        "NOT_IN_PROJECT_IOS_BUNDLE_ID" -> Right NotInProjectIosBundleId
        "NOT_IN_PROJECT_IPAD_BUNDLE_ID" -> Right NotInProjectIPadBundleId
        "UNNECESSARY_IOS_URL_SCHEME" -> Right UnnecessaryIosURLScheme
        "NOT_NUMERIC_IOS_APP_STORE_ID" -> Right NotNumericIosAppStoreId
        "UNNECESSARY_IOS_APP_STORE_ID" -> Right UnnecessaryIosAppStoreId
        "NOT_URI_IOS_FALLBACK_LINK" -> Right NotURIIosFallbackLink
        "BAD_URI_SCHEME_IOS_FALLBACK_LINK" -> Right BadURISchemeIosFallbackLink
        "NOT_URI_IPAD_FALLBACK_LINK" -> Right NotURIIPadFallbackLink
        "BAD_URI_SCHEME_IPAD_FALLBACK_LINK" -> Right BadURISchemeIPadFallbackLink
        "BAD_DEBUG_PARAM" -> Right BadDebugParam
        "BAD_AD_PARAM" -> Right BadAdParam
        "DEPRECATED_PARAM" -> Right DeprecatedParam
        "UNRECOGNIZED_PARAM" -> Right UnrecognizedParam
        "TOO_LONG_PARAM" -> Right TooLongParam
        "NOT_URI_SOCIAL_IMAGE_LINK" -> Right NotURISocialImageLink
        "BAD_URI_SCHEME_SOCIAL_IMAGE_LINK" -> Right BadURISchemeSocialImageLink
        "NOT_URI_SOCIAL_URL" -> Right NotURISocialURL
        "BAD_URI_SCHEME_SOCIAL_URL" -> Right BadURISchemeSocialURL
        "LINK_LENGTH_TOO_LONG" -> Right LinkLengthTooLong
        "LINK_WITH_FRAGMENTS" -> Right LinkWithFragments
        "NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID" -> Right NotMatchingIosBundleIdAndStoreId
        x -> Left ("Unable to parse DynamicLinkWarningWarningCode from: " <> x)

instance ToHttpApiData DynamicLinkWarningWarningCode where
    toQueryParam = \case
        CodeUnspecified -> "CODE_UNSPECIFIED"
        NotInProjectAndroidPackageName -> "NOT_IN_PROJECT_ANDROID_PACKAGE_NAME"
        NotIntegerAndroidPackageMinVersion -> "NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION"
        UnnecessaryAndroidPackageMinVersion -> "UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION"
        NotURIAndroidLink -> "NOT_URI_ANDROID_LINK"
        UnnecessaryAndroidLink -> "UNNECESSARY_ANDROID_LINK"
        NotURIAndroidFallbackLink -> "NOT_URI_ANDROID_FALLBACK_LINK"
        BadURISchemeAndroidFallbackLink -> "BAD_URI_SCHEME_ANDROID_FALLBACK_LINK"
        NotInProjectIosBundleId -> "NOT_IN_PROJECT_IOS_BUNDLE_ID"
        NotInProjectIPadBundleId -> "NOT_IN_PROJECT_IPAD_BUNDLE_ID"
        UnnecessaryIosURLScheme -> "UNNECESSARY_IOS_URL_SCHEME"
        NotNumericIosAppStoreId -> "NOT_NUMERIC_IOS_APP_STORE_ID"
        UnnecessaryIosAppStoreId -> "UNNECESSARY_IOS_APP_STORE_ID"
        NotURIIosFallbackLink -> "NOT_URI_IOS_FALLBACK_LINK"
        BadURISchemeIosFallbackLink -> "BAD_URI_SCHEME_IOS_FALLBACK_LINK"
        NotURIIPadFallbackLink -> "NOT_URI_IPAD_FALLBACK_LINK"
        BadURISchemeIPadFallbackLink -> "BAD_URI_SCHEME_IPAD_FALLBACK_LINK"
        BadDebugParam -> "BAD_DEBUG_PARAM"
        BadAdParam -> "BAD_AD_PARAM"
        DeprecatedParam -> "DEPRECATED_PARAM"
        UnrecognizedParam -> "UNRECOGNIZED_PARAM"
        TooLongParam -> "TOO_LONG_PARAM"
        NotURISocialImageLink -> "NOT_URI_SOCIAL_IMAGE_LINK"
        BadURISchemeSocialImageLink -> "BAD_URI_SCHEME_SOCIAL_IMAGE_LINK"
        NotURISocialURL -> "NOT_URI_SOCIAL_URL"
        BadURISchemeSocialURL -> "BAD_URI_SCHEME_SOCIAL_URL"
        LinkLengthTooLong -> "LINK_LENGTH_TOO_LONG"
        LinkWithFragments -> "LINK_WITH_FRAGMENTS"
        NotMatchingIosBundleIdAndStoreId -> "NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID"

instance FromJSON DynamicLinkWarningWarningCode where
    parseJSON = parseJSONText "DynamicLinkWarningWarningCode"

instance ToJSON DynamicLinkWarningWarningCode where
    toJSON = toJSONText

-- | App post install attribution retrieval information. Disambiguates
-- mechanism (iSDK or developer invoked) to retrieve payload from clicked
-- link.
data GetIosPostInstallAttributionRequestRetrievalMethod
    = UnknownPayloadRetrievalMethod
      -- ^ @UNKNOWN_PAYLOAD_RETRIEVAL_METHOD@
      -- Unknown method.
    | ImplicitWeakMatch
      -- ^ @IMPLICIT_WEAK_MATCH@
      -- iSDK performs a server lookup by device fingerprint in the background
      -- when app is first-opened; no API called by developer.
    | ExplicitWeakMatch
      -- ^ @EXPLICIT_WEAK_MATCH@
      -- iSDK performs a server lookup by device fingerprint upon a dev API call.
    | ExplicitStrongAfterWeakMatch
      -- ^ @EXPLICIT_STRONG_AFTER_WEAK_MATCH@
      -- iSDK performs a strong match only if weak match is found upon a dev API
      -- call.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GetIosPostInstallAttributionRequestRetrievalMethod

instance FromHttpApiData GetIosPostInstallAttributionRequestRetrievalMethod where
    parseQueryParam = \case
        "UNKNOWN_PAYLOAD_RETRIEVAL_METHOD" -> Right UnknownPayloadRetrievalMethod
        "IMPLICIT_WEAK_MATCH" -> Right ImplicitWeakMatch
        "EXPLICIT_WEAK_MATCH" -> Right ExplicitWeakMatch
        "EXPLICIT_STRONG_AFTER_WEAK_MATCH" -> Right ExplicitStrongAfterWeakMatch
        x -> Left ("Unable to parse GetIosPostInstallAttributionRequestRetrievalMethod from: " <> x)

instance ToHttpApiData GetIosPostInstallAttributionRequestRetrievalMethod where
    toQueryParam = \case
        UnknownPayloadRetrievalMethod -> "UNKNOWN_PAYLOAD_RETRIEVAL_METHOD"
        ImplicitWeakMatch -> "IMPLICIT_WEAK_MATCH"
        ExplicitWeakMatch -> "EXPLICIT_WEAK_MATCH"
        ExplicitStrongAfterWeakMatch -> "EXPLICIT_STRONG_AFTER_WEAK_MATCH"

instance FromJSON GetIosPostInstallAttributionRequestRetrievalMethod where
    parseJSON = parseJSONText "GetIosPostInstallAttributionRequestRetrievalMethod"

instance ToJSON GetIosPostInstallAttributionRequestRetrievalMethod where
    toJSON = toJSONText

-- | Visibility status of link.
data ManagedShortLinkVisibility
    = UnspecifiedVisibility
      -- ^ @UNSPECIFIED_VISIBILITY@
      -- Visibility of the link is not specified.
    | Unarchived
      -- ^ @UNARCHIVED@
      -- Link created in console and should be shown in console.
    | Archived
      -- ^ @ARCHIVED@
      -- Link created in console and should not be shown in console (but can be
      -- shown in the console again if it is unarchived).
    | NeverShown
      -- ^ @NEVER_SHOWN@
      -- Link created outside of console and should never be shown in console.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedShortLinkVisibility

instance FromHttpApiData ManagedShortLinkVisibility where
    parseQueryParam = \case
        "UNSPECIFIED_VISIBILITY" -> Right UnspecifiedVisibility
        "UNARCHIVED" -> Right Unarchived
        "ARCHIVED" -> Right Archived
        "NEVER_SHOWN" -> Right NeverShown
        x -> Left ("Unable to parse ManagedShortLinkVisibility from: " <> x)

instance ToHttpApiData ManagedShortLinkVisibility where
    toQueryParam = \case
        UnspecifiedVisibility -> "UNSPECIFIED_VISIBILITY"
        Unarchived -> "UNARCHIVED"
        Archived -> "ARCHIVED"
        NeverShown -> "NEVER_SHOWN"

instance FromJSON ManagedShortLinkVisibility where
    parseJSON = parseJSONText "ManagedShortLinkVisibility"

instance ToJSON ManagedShortLinkVisibility where
    toJSON = toJSONText
