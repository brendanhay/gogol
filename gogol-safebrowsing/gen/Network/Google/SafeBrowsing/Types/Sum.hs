{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SafeBrowsing.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SafeBrowsing.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The threat type matching this threat.
data GoogleSecuritySafebrowsingV4ThreatMatchThreatType
    = ThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | Malware
      -- ^ @MALWARE@
      -- Malware threat type.
    | SocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | UnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | PotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | SocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | APIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | MaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | CsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | CsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | ClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | ClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | APKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | SubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | Suspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | TrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
    | HighConfidenceAllowList
      -- ^ @HIGH_CONFIDENCE_ALLOWLIST@
      -- Safe list to ship hashes of known safe URL expressions.
    | AccuracyTips
      -- ^ @ACCURACY_TIPS@
      -- List from the Jigsaw team to show accuracy tips in Chrome. See
      -- go\/sb-accuracytips.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatMatchThreatType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatMatchThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right ThreatTypeUnspecified
        "MALWARE" -> Right Malware
        "SOCIAL_ENGINEERING" -> Right SocialEngineering
        "UNWANTED_SOFTWARE" -> Right UnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right PotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right SocialEngineeringInternal
        "API_ABUSE" -> Right APIAbuse
        "MALICIOUS_BINARY" -> Right MaliciousBinary
        "CSD_WHITELIST" -> Right CsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right CsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right ClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right ClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right APKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right SubResourceFilter
        "SUSPICIOUS" -> Right Suspicious
        "TRICK_TO_BILL" -> Right TrickToBill
        "HIGH_CONFIDENCE_ALLOWLIST" -> Right HighConfidenceAllowList
        "ACCURACY_TIPS" -> Right AccuracyTips
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatMatchThreatType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatMatchThreatType where
    toQueryParam = \case
        ThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        Malware -> "MALWARE"
        SocialEngineering -> "SOCIAL_ENGINEERING"
        UnwantedSoftware -> "UNWANTED_SOFTWARE"
        PotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        SocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        APIAbuse -> "API_ABUSE"
        MaliciousBinary -> "MALICIOUS_BINARY"
        CsdWhiteList -> "CSD_WHITELIST"
        CsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        ClientIncident -> "CLIENT_INCIDENT"
        ClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        APKMalwareOffline -> "APK_MALWARE_OFFLINE"
        SubResourceFilter -> "SUBRESOURCE_FILTER"
        Suspicious -> "SUSPICIOUS"
        TrickToBill -> "TRICK_TO_BILL"
        HighConfidenceAllowList -> "HIGH_CONFIDENCE_ALLOWLIST"
        AccuracyTips -> "ACCURACY_TIPS"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatMatchThreatType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatMatchThreatType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatMatchThreatType where
    toJSON = toJSONText

-- | The type of source reported.
data GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType
    = ThreatSourceTypeUnspecified
      -- ^ @THREAT_SOURCE_TYPE_UNSPECIFIED@
      -- Unknown.
    | MatchingURL
      -- ^ @MATCHING_URL@
      -- The URL that matched the threat list (for which GetFullHash returned a
      -- valid hash).
    | TabURL
      -- ^ @TAB_URL@
      -- The final top-level URL of the tab that the client was browsing when the
      -- match occurred.
    | TabRedirect
      -- ^ @TAB_REDIRECT@
      -- A redirect URL that was fetched before hitting the final TAB_URL.
    | TabResource
      -- ^ @TAB_RESOURCE@
      -- A resource loaded within the final TAB_URL.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType where
    parseQueryParam = \case
        "THREAT_SOURCE_TYPE_UNSPECIFIED" -> Right ThreatSourceTypeUnspecified
        "MATCHING_URL" -> Right MatchingURL
        "TAB_URL" -> Right TabURL
        "TAB_REDIRECT" -> Right TabRedirect
        "TAB_RESOURCE" -> Right TabResource
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType where
    toQueryParam = \case
        ThreatSourceTypeUnspecified -> "THREAT_SOURCE_TYPE_UNSPECIFIED"
        MatchingURL -> "MATCHING_URL"
        TabURL -> "TAB_URL"
        TabRedirect -> "TAB_REDIRECT"
        TabResource -> "TAB_RESOURCE"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatHitThreatSourceType where
    toJSON = toJSONText

-- | The entry types contained in the list.
data GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType
    = ThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | URL
      -- ^ @URL@
      -- A URL.
    | Executable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | IPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | ChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | Filename
      -- ^ @FILENAME@
      -- Filename.
    | Cert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right ThreatEntryTypeUnspecified
        "URL" -> Right URL
        "EXECUTABLE" -> Right Executable
        "IP_RANGE" -> Right IPRange
        "CHROME_EXTENSION" -> Right ChromeExtension
        "FILENAME" -> Right Filename
        "CERT" -> Right Cert
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType where
    toQueryParam = \case
        ThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        URL -> "URL"
        Executable -> "EXECUTABLE"
        IPRange -> "IP_RANGE"
        ChromeExtension -> "CHROME_EXTENSION"
        Filename -> "FILENAME"
        Cert -> "CERT"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatEntryType where
    toJSON = toJSONText

-- | The platform type matching this threat.
data GoogleSecuritySafebrowsingV4ThreatMatchPlatformType
    = PlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | Windows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | Linux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | Android
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | OSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | Ios
      -- ^ @IOS@
      -- Threat posed to iOS.
    | AnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | AllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | Chrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatMatchPlatformType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatMatchPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right PlatformTypeUnspecified
        "WINDOWS" -> Right Windows
        "LINUX" -> Right Linux
        "ANDROID" -> Right Android
        "OSX" -> Right OSx
        "IOS" -> Right Ios
        "ANY_PLATFORM" -> Right AnyPlatform
        "ALL_PLATFORMS" -> Right AllPlatforms
        "CHROME" -> Right Chrome
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatMatchPlatformType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatMatchPlatformType where
    toQueryParam = \case
        PlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        Windows -> "WINDOWS"
        Linux -> "LINUX"
        Android -> "ANDROID"
        OSx -> "OSX"
        Ios -> "IOS"
        AnyPlatform -> "ANY_PLATFORM"
        AllPlatforms -> "ALL_PLATFORMS"
        Chrome -> "CHROME"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatMatchPlatformType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatMatchPlatformType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatMatchPlatformType where
    toJSON = toJSONText

-- | The type of response. This may indicate that an action is required by
-- the client when the response is received.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType
    = ResponseTypeUnspecified
      -- ^ @RESPONSE_TYPE_UNSPECIFIED@
      -- Unknown.
    | PartialUpdate
      -- ^ @PARTIAL_UPDATE@
      -- Partial updates are applied to the client\'s existing local database.
    | FullUpdate
      -- ^ @FULL_UPDATE@
      -- Full updates replace the client\'s entire local database. This means
      -- that either the client was seriously out-of-date or the client is
      -- believed to be corrupt.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType where
    parseQueryParam = \case
        "RESPONSE_TYPE_UNSPECIFIED" -> Right ResponseTypeUnspecified
        "PARTIAL_UPDATE" -> Right PartialUpdate
        "FULL_UPDATE" -> Right FullUpdate
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType where
    toQueryParam = \case
        ResponseTypeUnspecified -> "RESPONSE_TYPE_UNSPECIFIED"
        PartialUpdate -> "PARTIAL_UPDATE"
        FullUpdate -> "FULL_UPDATE"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseResponseType where
    toJSON = toJSONText

-- | The threat type for which data is returned.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType
    = GSSVFTLURLURTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | GSSVFTLURLURTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | GSSVFTLURLURTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | GSSVFTLURLURTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | GSSVFTLURLURTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | GSSVFTLURLURTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | GSSVFTLURLURTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | GSSVFTLURLURTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | GSSVFTLURLURTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | GSSVFTLURLURTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | GSSVFTLURLURTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | GSSVFTLURLURTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | GSSVFTLURLURTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | GSSVFTLURLURTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | GSSVFTLURLURTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | GSSVFTLURLURTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
    | GSSVFTLURLURTTHighConfidenceAllowList
      -- ^ @HIGH_CONFIDENCE_ALLOWLIST@
      -- Safe list to ship hashes of known safe URL expressions.
    | GSSVFTLURLURTTAccuracyTips
      -- ^ @ACCURACY_TIPS@
      -- List from the Jigsaw team to show accuracy tips in Chrome. See
      -- go\/sb-accuracytips.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right GSSVFTLURLURTTThreatTypeUnspecified
        "MALWARE" -> Right GSSVFTLURLURTTMalware
        "SOCIAL_ENGINEERING" -> Right GSSVFTLURLURTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right GSSVFTLURLURTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right GSSVFTLURLURTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right GSSVFTLURLURTTSocialEngineeringInternal
        "API_ABUSE" -> Right GSSVFTLURLURTTAPIAbuse
        "MALICIOUS_BINARY" -> Right GSSVFTLURLURTTMaliciousBinary
        "CSD_WHITELIST" -> Right GSSVFTLURLURTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right GSSVFTLURLURTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right GSSVFTLURLURTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right GSSVFTLURLURTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right GSSVFTLURLURTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right GSSVFTLURLURTTSubResourceFilter
        "SUSPICIOUS" -> Right GSSVFTLURLURTTSuspicious
        "TRICK_TO_BILL" -> Right GSSVFTLURLURTTTrickToBill
        "HIGH_CONFIDENCE_ALLOWLIST" -> Right GSSVFTLURLURTTHighConfidenceAllowList
        "ACCURACY_TIPS" -> Right GSSVFTLURLURTTAccuracyTips
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType where
    toQueryParam = \case
        GSSVFTLURLURTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        GSSVFTLURLURTTMalware -> "MALWARE"
        GSSVFTLURLURTTSocialEngineering -> "SOCIAL_ENGINEERING"
        GSSVFTLURLURTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        GSSVFTLURLURTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        GSSVFTLURLURTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        GSSVFTLURLURTTAPIAbuse -> "API_ABUSE"
        GSSVFTLURLURTTMaliciousBinary -> "MALICIOUS_BINARY"
        GSSVFTLURLURTTCsdWhiteList -> "CSD_WHITELIST"
        GSSVFTLURLURTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        GSSVFTLURLURTTClientIncident -> "CLIENT_INCIDENT"
        GSSVFTLURLURTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        GSSVFTLURLURTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        GSSVFTLURLURTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        GSSVFTLURLURTTSuspicious -> "SUSPICIOUS"
        GSSVFTLURLURTTTrickToBill -> "TRICK_TO_BILL"
        GSSVFTLURLURTTHighConfidenceAllowList -> "HIGH_CONFIDENCE_ALLOWLIST"
        GSSVFTLURLURTTAccuracyTips -> "ACCURACY_TIPS"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatType where
    toJSON = toJSONText

-- | The type of threat posed by entries present in the list.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType
    = GThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | GMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | GSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | GUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | GPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | GSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | GAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | GMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | GCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | GCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | GClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | GClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | GAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | GSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | GSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | GTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
    | GHighConfidenceAllowList
      -- ^ @HIGH_CONFIDENCE_ALLOWLIST@
      -- Safe list to ship hashes of known safe URL expressions.
    | GAccuracyTips
      -- ^ @ACCURACY_TIPS@
      -- List from the Jigsaw team to show accuracy tips in Chrome. See
      -- go\/sb-accuracytips.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right GThreatTypeUnspecified
        "MALWARE" -> Right GMalware
        "SOCIAL_ENGINEERING" -> Right GSocialEngineering
        "UNWANTED_SOFTWARE" -> Right GUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right GPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right GSocialEngineeringInternal
        "API_ABUSE" -> Right GAPIAbuse
        "MALICIOUS_BINARY" -> Right GMaliciousBinary
        "CSD_WHITELIST" -> Right GCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right GCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right GClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right GClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right GAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right GSubResourceFilter
        "SUSPICIOUS" -> Right GSuspicious
        "TRICK_TO_BILL" -> Right GTrickToBill
        "HIGH_CONFIDENCE_ALLOWLIST" -> Right GHighConfidenceAllowList
        "ACCURACY_TIPS" -> Right GAccuracyTips
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType where
    toQueryParam = \case
        GThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        GMalware -> "MALWARE"
        GSocialEngineering -> "SOCIAL_ENGINEERING"
        GUnwantedSoftware -> "UNWANTED_SOFTWARE"
        GPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        GSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        GAPIAbuse -> "API_ABUSE"
        GMaliciousBinary -> "MALICIOUS_BINARY"
        GCsdWhiteList -> "CSD_WHITELIST"
        GCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        GClientIncident -> "CLIENT_INCIDENT"
        GClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        GAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        GSubResourceFilter -> "SUBRESOURCE_FILTER"
        GSuspicious -> "SUSPICIOUS"
        GTrickToBill -> "TRICK_TO_BILL"
        GHighConfidenceAllowList -> "HIGH_CONFIDENCE_ALLOWLIST"
        GAccuracyTips -> "ACCURACY_TIPS"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatType where
    toJSON = toJSONText

-- | The threat type posed by the list\'s entries.
data GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType
    = GSSVTLDTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | GSSVTLDTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | GSSVTLDTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | GSSVTLDTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | GSSVTLDTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | GSSVTLDTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | GSSVTLDTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | GSSVTLDTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | GSSVTLDTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | GSSVTLDTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | GSSVTLDTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | GSSVTLDTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | GSSVTLDTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | GSSVTLDTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | GSSVTLDTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | GSSVTLDTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
    | GSSVTLDTTHighConfidenceAllowList
      -- ^ @HIGH_CONFIDENCE_ALLOWLIST@
      -- Safe list to ship hashes of known safe URL expressions.
    | GSSVTLDTTAccuracyTips
      -- ^ @ACCURACY_TIPS@
      -- List from the Jigsaw team to show accuracy tips in Chrome. See
      -- go\/sb-accuracytips.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right GSSVTLDTTThreatTypeUnspecified
        "MALWARE" -> Right GSSVTLDTTMalware
        "SOCIAL_ENGINEERING" -> Right GSSVTLDTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right GSSVTLDTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right GSSVTLDTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right GSSVTLDTTSocialEngineeringInternal
        "API_ABUSE" -> Right GSSVTLDTTAPIAbuse
        "MALICIOUS_BINARY" -> Right GSSVTLDTTMaliciousBinary
        "CSD_WHITELIST" -> Right GSSVTLDTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right GSSVTLDTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right GSSVTLDTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right GSSVTLDTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right GSSVTLDTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right GSSVTLDTTSubResourceFilter
        "SUSPICIOUS" -> Right GSSVTLDTTSuspicious
        "TRICK_TO_BILL" -> Right GSSVTLDTTTrickToBill
        "HIGH_CONFIDENCE_ALLOWLIST" -> Right GSSVTLDTTHighConfidenceAllowList
        "ACCURACY_TIPS" -> Right GSSVTLDTTAccuracyTips
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType where
    toQueryParam = \case
        GSSVTLDTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        GSSVTLDTTMalware -> "MALWARE"
        GSSVTLDTTSocialEngineering -> "SOCIAL_ENGINEERING"
        GSSVTLDTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        GSSVTLDTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        GSSVTLDTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        GSSVTLDTTAPIAbuse -> "API_ABUSE"
        GSSVTLDTTMaliciousBinary -> "MALICIOUS_BINARY"
        GSSVTLDTTCsdWhiteList -> "CSD_WHITELIST"
        GSSVTLDTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        GSSVTLDTTClientIncident -> "CLIENT_INCIDENT"
        GSSVTLDTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        GSSVTLDTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        GSSVTLDTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        GSSVTLDTTSuspicious -> "SUSPICIOUS"
        GSSVTLDTTTrickToBill -> "TRICK_TO_BILL"
        GSSVTLDTTHighConfidenceAllowList -> "HIGH_CONFIDENCE_ALLOWLIST"
        GSSVTLDTTAccuracyTips -> "ACCURACY_TIPS"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatListDescriptorThreatType where
    toJSON = toJSONText

-- | The platform type for which data is returned.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType
    = GSSVFTLURLURPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | GSSVFTLURLURPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | GSSVFTLURLURPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | GSSVFTLURLURPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | GSSVFTLURLURPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | GSSVFTLURLURPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | GSSVFTLURLURPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | GSSVFTLURLURPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | GSSVFTLURLURPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right GSSVFTLURLURPTPlatformTypeUnspecified
        "WINDOWS" -> Right GSSVFTLURLURPTWindows
        "LINUX" -> Right GSSVFTLURLURPTLinux
        "ANDROID" -> Right GSSVFTLURLURPTAndroid
        "OSX" -> Right GSSVFTLURLURPTOSx
        "IOS" -> Right GSSVFTLURLURPTIos
        "ANY_PLATFORM" -> Right GSSVFTLURLURPTAnyPlatform
        "ALL_PLATFORMS" -> Right GSSVFTLURLURPTAllPlatforms
        "CHROME" -> Right GSSVFTLURLURPTChrome
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType where
    toQueryParam = \case
        GSSVFTLURLURPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        GSSVFTLURLURPTWindows -> "WINDOWS"
        GSSVFTLURLURPTLinux -> "LINUX"
        GSSVFTLURLURPTAndroid -> "ANDROID"
        GSSVFTLURLURPTOSx -> "OSX"
        GSSVFTLURLURPTIos -> "IOS"
        GSSVFTLURLURPTAnyPlatform -> "ANY_PLATFORM"
        GSSVFTLURLURPTAllPlatforms -> "ALL_PLATFORMS"
        GSSVFTLURLURPTChrome -> "CHROME"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponsePlatformType where
    toJSON = toJSONText

-- | The type of platform at risk by entries present in the list.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType
    = GPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | GWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | GLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | GAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | GOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | GIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | GAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | GAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | GChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right GPlatformTypeUnspecified
        "WINDOWS" -> Right GWindows
        "LINUX" -> Right GLinux
        "ANDROID" -> Right GAndroid
        "OSX" -> Right GOSx
        "IOS" -> Right GIos
        "ANY_PLATFORM" -> Right GAnyPlatform
        "ALL_PLATFORMS" -> Right GAllPlatforms
        "CHROME" -> Right GChrome
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType where
    toQueryParam = \case
        GPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        GWindows -> "WINDOWS"
        GLinux -> "LINUX"
        GAndroid -> "ANDROID"
        GOSx -> "OSX"
        GIos -> "IOS"
        GAnyPlatform -> "ANY_PLATFORM"
        GAllPlatforms -> "ALL_PLATFORMS"
        GChrome -> "CHROME"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestPlatformType where
    toJSON = toJSONText

-- | The types of entries present in the list.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType
    = GSSVFTLURLURTETThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GSSVFTLURLURTETURL
      -- ^ @URL@
      -- A URL.
    | GSSVFTLURLURTETExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | GSSVFTLURLURTETIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | GSSVFTLURLURTETChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | GSSVFTLURLURTETFilename
      -- ^ @FILENAME@
      -- Filename.
    | GSSVFTLURLURTETCert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right GSSVFTLURLURTETThreatEntryTypeUnspecified
        "URL" -> Right GSSVFTLURLURTETURL
        "EXECUTABLE" -> Right GSSVFTLURLURTETExecutable
        "IP_RANGE" -> Right GSSVFTLURLURTETIPRange
        "CHROME_EXTENSION" -> Right GSSVFTLURLURTETChromeExtension
        "FILENAME" -> Right GSSVFTLURLURTETFilename
        "CERT" -> Right GSSVFTLURLURTETCert
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType where
    toQueryParam = \case
        GSSVFTLURLURTETThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        GSSVFTLURLURTETURL -> "URL"
        GSSVFTLURLURTETExecutable -> "EXECUTABLE"
        GSSVFTLURLURTETIPRange -> "IP_RANGE"
        GSSVFTLURLURTETChromeExtension -> "CHROME_EXTENSION"
        GSSVFTLURLURTETFilename -> "FILENAME"
        GSSVFTLURLURTETCert -> "CERT"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestThreatEntryType where
    toJSON = toJSONText

-- | The format of the threats.
data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType
    = GThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GURL
      -- ^ @URL@
      -- A URL.
    | GExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | GIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | GChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | GFilename
      -- ^ @FILENAME@
      -- Filename.
    | GCert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right GThreatEntryTypeUnspecified
        "URL" -> Right GURL
        "EXECUTABLE" -> Right GExecutable
        "IP_RANGE" -> Right GIPRange
        "CHROME_EXTENSION" -> Right GChromeExtension
        "FILENAME" -> Right GFilename
        "CERT" -> Right GCert
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType where
    toQueryParam = \case
        GThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        GURL -> "URL"
        GExecutable -> "EXECUTABLE"
        GIPRange -> "IP_RANGE"
        GChromeExtension -> "CHROME_EXTENSION"
        GFilename -> "FILENAME"
        GCert -> "CERT"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponseThreatEntryType where
    toJSON = toJSONText

-- | The platform type targeted by the list\'s entries.
data GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType
    = GSSVTLDPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | GSSVTLDPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | GSSVTLDPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | GSSVTLDPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | GSSVTLDPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | GSSVTLDPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | GSSVTLDPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | GSSVTLDPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | GSSVTLDPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right GSSVTLDPTPlatformTypeUnspecified
        "WINDOWS" -> Right GSSVTLDPTWindows
        "LINUX" -> Right GSSVTLDPTLinux
        "ANDROID" -> Right GSSVTLDPTAndroid
        "OSX" -> Right GSSVTLDPTOSx
        "IOS" -> Right GSSVTLDPTIos
        "ANY_PLATFORM" -> Right GSSVTLDPTAnyPlatform
        "ALL_PLATFORMS" -> Right GSSVTLDPTAllPlatforms
        "CHROME" -> Right GSSVTLDPTChrome
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType where
    toQueryParam = \case
        GSSVTLDPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        GSSVTLDPTWindows -> "WINDOWS"
        GSSVTLDPTLinux -> "LINUX"
        GSSVTLDPTAndroid -> "ANDROID"
        GSSVTLDPTOSx -> "OSX"
        GSSVTLDPTIos -> "IOS"
        GSSVTLDPTAnyPlatform -> "ANY_PLATFORM"
        GSSVTLDPTAllPlatforms -> "ALL_PLATFORMS"
        GSSVTLDPTChrome -> "CHROME"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatListDescriptorPlatformType where
    toJSON = toJSONText

data GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem
    = GSSVTITTIThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | GSSVTITTIMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | GSSVTITTISocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | GSSVTITTIUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | GSSVTITTIPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | GSSVTITTISocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | GSSVTITTIAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | GSSVTITTIMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | GSSVTITTICsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | GSSVTITTICsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | GSSVTITTIClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | GSSVTITTIClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | GSSVTITTIAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | GSSVTITTISubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | GSSVTITTISuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | GSSVTITTITrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
    | GSSVTITTIHighConfidenceAllowList
      -- ^ @HIGH_CONFIDENCE_ALLOWLIST@
      -- Safe list to ship hashes of known safe URL expressions.
    | GSSVTITTIAccuracyTips
      -- ^ @ACCURACY_TIPS@
      -- List from the Jigsaw team to show accuracy tips in Chrome. See
      -- go\/sb-accuracytips.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right GSSVTITTIThreatTypeUnspecified
        "MALWARE" -> Right GSSVTITTIMalware
        "SOCIAL_ENGINEERING" -> Right GSSVTITTISocialEngineering
        "UNWANTED_SOFTWARE" -> Right GSSVTITTIUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right GSSVTITTIPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right GSSVTITTISocialEngineeringInternal
        "API_ABUSE" -> Right GSSVTITTIAPIAbuse
        "MALICIOUS_BINARY" -> Right GSSVTITTIMaliciousBinary
        "CSD_WHITELIST" -> Right GSSVTITTICsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right GSSVTITTICsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right GSSVTITTIClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right GSSVTITTIClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right GSSVTITTIAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right GSSVTITTISubResourceFilter
        "SUSPICIOUS" -> Right GSSVTITTISuspicious
        "TRICK_TO_BILL" -> Right GSSVTITTITrickToBill
        "HIGH_CONFIDENCE_ALLOWLIST" -> Right GSSVTITTIHighConfidenceAllowList
        "ACCURACY_TIPS" -> Right GSSVTITTIAccuracyTips
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem where
    toQueryParam = \case
        GSSVTITTIThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        GSSVTITTIMalware -> "MALWARE"
        GSSVTITTISocialEngineering -> "SOCIAL_ENGINEERING"
        GSSVTITTIUnwantedSoftware -> "UNWANTED_SOFTWARE"
        GSSVTITTIPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        GSSVTITTISocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        GSSVTITTIAPIAbuse -> "API_ABUSE"
        GSSVTITTIMaliciousBinary -> "MALICIOUS_BINARY"
        GSSVTITTICsdWhiteList -> "CSD_WHITELIST"
        GSSVTITTICsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        GSSVTITTIClientIncident -> "CLIENT_INCIDENT"
        GSSVTITTIClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        GSSVTITTIAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        GSSVTITTISubResourceFilter -> "SUBRESOURCE_FILTER"
        GSSVTITTISuspicious -> "SUSPICIOUS"
        GSSVTITTITrickToBill -> "TRICK_TO_BILL"
        GSSVTITTIHighConfidenceAllowList -> "HIGH_CONFIDENCE_ALLOWLIST"
        GSSVTITTIAccuracyTips -> "ACCURACY_TIPS"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatInfoThreatTypesItem where
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

-- | The threat type reported.
data GoogleSecuritySafebrowsingV4ThreatHitThreatType
    = GSSVTHTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | GSSVTHTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | GSSVTHTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | GSSVTHTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | GSSVTHTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | GSSVTHTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | GSSVTHTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | GSSVTHTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | GSSVTHTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | GSSVTHTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | GSSVTHTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | GSSVTHTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | GSSVTHTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | GSSVTHTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | GSSVTHTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | GSSVTHTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
    | GSSVTHTTHighConfidenceAllowList
      -- ^ @HIGH_CONFIDENCE_ALLOWLIST@
      -- Safe list to ship hashes of known safe URL expressions.
    | GSSVTHTTAccuracyTips
      -- ^ @ACCURACY_TIPS@
      -- List from the Jigsaw team to show accuracy tips in Chrome. See
      -- go\/sb-accuracytips.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatHitThreatType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatHitThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right GSSVTHTTThreatTypeUnspecified
        "MALWARE" -> Right GSSVTHTTMalware
        "SOCIAL_ENGINEERING" -> Right GSSVTHTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right GSSVTHTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right GSSVTHTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right GSSVTHTTSocialEngineeringInternal
        "API_ABUSE" -> Right GSSVTHTTAPIAbuse
        "MALICIOUS_BINARY" -> Right GSSVTHTTMaliciousBinary
        "CSD_WHITELIST" -> Right GSSVTHTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right GSSVTHTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right GSSVTHTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right GSSVTHTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right GSSVTHTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right GSSVTHTTSubResourceFilter
        "SUSPICIOUS" -> Right GSSVTHTTSuspicious
        "TRICK_TO_BILL" -> Right GSSVTHTTTrickToBill
        "HIGH_CONFIDENCE_ALLOWLIST" -> Right GSSVTHTTHighConfidenceAllowList
        "ACCURACY_TIPS" -> Right GSSVTHTTAccuracyTips
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatHitThreatType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatHitThreatType where
    toQueryParam = \case
        GSSVTHTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        GSSVTHTTMalware -> "MALWARE"
        GSSVTHTTSocialEngineering -> "SOCIAL_ENGINEERING"
        GSSVTHTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        GSSVTHTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        GSSVTHTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        GSSVTHTTAPIAbuse -> "API_ABUSE"
        GSSVTHTTMaliciousBinary -> "MALICIOUS_BINARY"
        GSSVTHTTCsdWhiteList -> "CSD_WHITELIST"
        GSSVTHTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        GSSVTHTTClientIncident -> "CLIENT_INCIDENT"
        GSSVTHTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        GSSVTHTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        GSSVTHTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        GSSVTHTTSuspicious -> "SUSPICIOUS"
        GSSVTHTTTrickToBill -> "TRICK_TO_BILL"
        GSSVTHTTHighConfidenceAllowList -> "HIGH_CONFIDENCE_ALLOWLIST"
        GSSVTHTTAccuracyTips -> "ACCURACY_TIPS"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatHitThreatType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatHitThreatType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatHitThreatType where
    toJSON = toJSONText

-- | The threat entry type matching this threat.
data GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType
    = GSSVTMTETThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GSSVTMTETURL
      -- ^ @URL@
      -- A URL.
    | GSSVTMTETExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | GSSVTMTETIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | GSSVTMTETChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | GSSVTMTETFilename
      -- ^ @FILENAME@
      -- Filename.
    | GSSVTMTETCert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right GSSVTMTETThreatEntryTypeUnspecified
        "URL" -> Right GSSVTMTETURL
        "EXECUTABLE" -> Right GSSVTMTETExecutable
        "IP_RANGE" -> Right GSSVTMTETIPRange
        "CHROME_EXTENSION" -> Right GSSVTMTETChromeExtension
        "FILENAME" -> Right GSSVTMTETFilename
        "CERT" -> Right GSSVTMTETCert
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType where
    toQueryParam = \case
        GSSVTMTETThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        GSSVTMTETURL -> "URL"
        GSSVTMTETExecutable -> "EXECUTABLE"
        GSSVTMTETIPRange -> "IP_RANGE"
        GSSVTMTETChromeExtension -> "CHROME_EXTENSION"
        GSSVTMTETFilename -> "FILENAME"
        GSSVTMTETCert -> "CERT"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatMatchThreatEntryType where
    toJSON = toJSONText

data GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem
    = GSSVTITETIThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | GSSVTITETIURL
      -- ^ @URL@
      -- A URL.
    | GSSVTITETIExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | GSSVTITETIIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | GSSVTITETIChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | GSSVTITETIFilename
      -- ^ @FILENAME@
      -- Filename.
    | GSSVTITETICert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right GSSVTITETIThreatEntryTypeUnspecified
        "URL" -> Right GSSVTITETIURL
        "EXECUTABLE" -> Right GSSVTITETIExecutable
        "IP_RANGE" -> Right GSSVTITETIIPRange
        "CHROME_EXTENSION" -> Right GSSVTITETIChromeExtension
        "FILENAME" -> Right GSSVTITETIFilename
        "CERT" -> Right GSSVTITETICert
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem where
    toQueryParam = \case
        GSSVTITETIThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        GSSVTITETIURL -> "URL"
        GSSVTITETIExecutable -> "EXECUTABLE"
        GSSVTITETIIPRange -> "IP_RANGE"
        GSSVTITETIChromeExtension -> "CHROME_EXTENSION"
        GSSVTITETIFilename -> "FILENAME"
        GSSVTITETICert -> "CERT"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatInfoThreatEntryTypesItem where
    toJSON = toJSONText

-- | The platform type reported.
data GoogleSecuritySafebrowsingV4ThreatHitPlatformType
    = GSSVTHPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | GSSVTHPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | GSSVTHPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | GSSVTHPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | GSSVTHPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | GSSVTHPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | GSSVTHPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | GSSVTHPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | GSSVTHPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatHitPlatformType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatHitPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right GSSVTHPTPlatformTypeUnspecified
        "WINDOWS" -> Right GSSVTHPTWindows
        "LINUX" -> Right GSSVTHPTLinux
        "ANDROID" -> Right GSSVTHPTAndroid
        "OSX" -> Right GSSVTHPTOSx
        "IOS" -> Right GSSVTHPTIos
        "ANY_PLATFORM" -> Right GSSVTHPTAnyPlatform
        "ALL_PLATFORMS" -> Right GSSVTHPTAllPlatforms
        "CHROME" -> Right GSSVTHPTChrome
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatHitPlatformType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatHitPlatformType where
    toQueryParam = \case
        GSSVTHPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        GSSVTHPTWindows -> "WINDOWS"
        GSSVTHPTLinux -> "LINUX"
        GSSVTHPTAndroid -> "ANDROID"
        GSSVTHPTOSx -> "OSX"
        GSSVTHPTIos -> "IOS"
        GSSVTHPTAnyPlatform -> "ANY_PLATFORM"
        GSSVTHPTAllPlatforms -> "ALL_PLATFORMS"
        GSSVTHPTChrome -> "CHROME"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatHitPlatformType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatHitPlatformType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatHitPlatformType where
    toJSON = toJSONText

data GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem
    = CompressionTypeUnspecified
      -- ^ @COMPRESSION_TYPE_UNSPECIFIED@
      -- Unknown.
    | Raw
      -- ^ @RAW@
      -- Raw, uncompressed data.
    | Rice
      -- ^ @RICE@
      -- Rice-Golomb encoded data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem

instance FromHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem where
    parseQueryParam = \case
        "COMPRESSION_TYPE_UNSPECIFIED" -> Right CompressionTypeUnspecified
        "RAW" -> Right Raw
        "RICE" -> Right Rice
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem where
    toQueryParam = \case
        CompressionTypeUnspecified -> "COMPRESSION_TYPE_UNSPECIFIED"
        Raw -> "RAW"
        Rice -> "RICE"

instance FromJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem"

instance ToJSON GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraintsSupportedCompressionsItem where
    toJSON = toJSONText

data GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem
    = GSSVTIPTIPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | GSSVTIPTIWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | GSSVTIPTILinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | GSSVTIPTIAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | GSSVTIPTIOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | GSSVTIPTIIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | GSSVTIPTIAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | GSSVTIPTIAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | GSSVTIPTIChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right GSSVTIPTIPlatformTypeUnspecified
        "WINDOWS" -> Right GSSVTIPTIWindows
        "LINUX" -> Right GSSVTIPTILinux
        "ANDROID" -> Right GSSVTIPTIAndroid
        "OSX" -> Right GSSVTIPTIOSx
        "IOS" -> Right GSSVTIPTIIos
        "ANY_PLATFORM" -> Right GSSVTIPTIAnyPlatform
        "ALL_PLATFORMS" -> Right GSSVTIPTIAllPlatforms
        "CHROME" -> Right GSSVTIPTIChrome
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem where
    toQueryParam = \case
        GSSVTIPTIPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        GSSVTIPTIWindows -> "WINDOWS"
        GSSVTIPTILinux -> "LINUX"
        GSSVTIPTIAndroid -> "ANDROID"
        GSSVTIPTIOSx -> "OSX"
        GSSVTIPTIIos -> "IOS"
        GSSVTIPTIAnyPlatform -> "ANY_PLATFORM"
        GSSVTIPTIAllPlatforms -> "ALL_PLATFORMS"
        GSSVTIPTIChrome -> "CHROME"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatInfoPlatformTypesItem where
    toJSON = toJSONText

-- | The compression type for the entries in this set.
data GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType
    = GSSVTESCTCompressionTypeUnspecified
      -- ^ @COMPRESSION_TYPE_UNSPECIFIED@
      -- Unknown.
    | GSSVTESCTRaw
      -- ^ @RAW@
      -- Raw, uncompressed data.
    | GSSVTESCTRice
      -- ^ @RICE@
      -- Rice-Golomb encoded data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType

instance FromHttpApiData GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType where
    parseQueryParam = \case
        "COMPRESSION_TYPE_UNSPECIFIED" -> Right GSSVTESCTCompressionTypeUnspecified
        "RAW" -> Right GSSVTESCTRaw
        "RICE" -> Right GSSVTESCTRice
        x -> Left ("Unable to parse GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType from: " <> x)

instance ToHttpApiData GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType where
    toQueryParam = \case
        GSSVTESCTCompressionTypeUnspecified -> "COMPRESSION_TYPE_UNSPECIFIED"
        GSSVTESCTRaw -> "RAW"
        GSSVTESCTRice -> "RICE"

instance FromJSON GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType where
    parseJSON = parseJSONText "GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType"

instance ToJSON GoogleSecuritySafebrowsingV4ThreatEntrySetCompressionType where
    toJSON = toJSONText
