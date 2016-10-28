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

import           Network.Google.Prelude

-- | Suffix option.
data SuffixOption
    = OptionUnspecified
      -- ^ @OPTION_UNSPECIFIED@
      -- The suffix option is not specified, performs as NOT_GUESSABLE .
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SuffixOption

instance FromHttpApiData SuffixOption where
    parseQueryParam = \case
        "OPTION_UNSPECIFIED" -> Right OptionUnspecified
        "UNGUESSABLE" -> Right Unguessable
        "SHORT" -> Right Short
        x -> Left ("Unable to parse SuffixOption from: " <> x)

instance ToHttpApiData SuffixOption where
    toQueryParam = \case
        OptionUnspecified -> "OPTION_UNSPECIFIED"
        Unguessable -> "UNGUESSABLE"
        Short -> "SHORT"

instance FromJSON SuffixOption where
    parseJSON = parseJSONText "SuffixOption"

instance ToJSON SuffixOption where
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
