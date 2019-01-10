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

import           Network.Google.Prelude hiding (Bytes)

-- | The type of threat posed by entries present in the list.
data ListUpdateRequestThreatType
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListUpdateRequestThreatType

instance FromHttpApiData ListUpdateRequestThreatType where
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
        x -> Left ("Unable to parse ListUpdateRequestThreatType from: " <> x)

instance ToHttpApiData ListUpdateRequestThreatType where
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

instance FromJSON ListUpdateRequestThreatType where
    parseJSON = parseJSONText "ListUpdateRequestThreatType"

instance ToJSON ListUpdateRequestThreatType where
    toJSON = toJSONText

-- | The platform type for which data is returned.
data ListUpdateResponsePlatformType
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

instance Hashable ListUpdateResponsePlatformType

instance FromHttpApiData ListUpdateResponsePlatformType where
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
        x -> Left ("Unable to parse ListUpdateResponsePlatformType from: " <> x)

instance ToHttpApiData ListUpdateResponsePlatformType where
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

instance FromJSON ListUpdateResponsePlatformType where
    parseJSON = parseJSONText "ListUpdateResponsePlatformType"

instance ToJSON ListUpdateResponsePlatformType where
    toJSON = toJSONText

-- | The threat entry type matching this threat.
data ThreatMatchThreatEntryType
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

instance Hashable ThreatMatchThreatEntryType

instance FromHttpApiData ThreatMatchThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right ThreatEntryTypeUnspecified
        "URL" -> Right URL
        "EXECUTABLE" -> Right Executable
        "IP_RANGE" -> Right IPRange
        "CHROME_EXTENSION" -> Right ChromeExtension
        "FILENAME" -> Right Filename
        "CERT" -> Right Cert
        x -> Left ("Unable to parse ThreatMatchThreatEntryType from: " <> x)

instance ToHttpApiData ThreatMatchThreatEntryType where
    toQueryParam = \case
        ThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        URL -> "URL"
        Executable -> "EXECUTABLE"
        IPRange -> "IP_RANGE"
        ChromeExtension -> "CHROME_EXTENSION"
        Filename -> "FILENAME"
        Cert -> "CERT"

instance FromJSON ThreatMatchThreatEntryType where
    parseJSON = parseJSONText "ThreatMatchThreatEntryType"

instance ToJSON ThreatMatchThreatEntryType where
    toJSON = toJSONText

-- | The platform type matching this threat.
data ThreatMatchPlatformType
    = TMPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | TMPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | TMPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | TMPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | TMPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | TMPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | TMPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | TMPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | TMPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatMatchPlatformType

instance FromHttpApiData ThreatMatchPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right TMPTPlatformTypeUnspecified
        "WINDOWS" -> Right TMPTWindows
        "LINUX" -> Right TMPTLinux
        "ANDROID" -> Right TMPTAndroid
        "OSX" -> Right TMPTOSx
        "IOS" -> Right TMPTIos
        "ANY_PLATFORM" -> Right TMPTAnyPlatform
        "ALL_PLATFORMS" -> Right TMPTAllPlatforms
        "CHROME" -> Right TMPTChrome
        x -> Left ("Unable to parse ThreatMatchPlatformType from: " <> x)

instance ToHttpApiData ThreatMatchPlatformType where
    toQueryParam = \case
        TMPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        TMPTWindows -> "WINDOWS"
        TMPTLinux -> "LINUX"
        TMPTAndroid -> "ANDROID"
        TMPTOSx -> "OSX"
        TMPTIos -> "IOS"
        TMPTAnyPlatform -> "ANY_PLATFORM"
        TMPTAllPlatforms -> "ALL_PLATFORMS"
        TMPTChrome -> "CHROME"

instance FromJSON ThreatMatchPlatformType where
    parseJSON = parseJSONText "ThreatMatchPlatformType"

instance ToJSON ThreatMatchPlatformType where
    toJSON = toJSONText

-- | The entry types contained in the list.
data ThreatListDescriptorThreatEntryType
    = TLDTETThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | TLDTETURL
      -- ^ @URL@
      -- A URL.
    | TLDTETExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | TLDTETIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | TLDTETChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | TLDTETFilename
      -- ^ @FILENAME@
      -- Filename.
    | TLDTETCert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatListDescriptorThreatEntryType

instance FromHttpApiData ThreatListDescriptorThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right TLDTETThreatEntryTypeUnspecified
        "URL" -> Right TLDTETURL
        "EXECUTABLE" -> Right TLDTETExecutable
        "IP_RANGE" -> Right TLDTETIPRange
        "CHROME_EXTENSION" -> Right TLDTETChromeExtension
        "FILENAME" -> Right TLDTETFilename
        "CERT" -> Right TLDTETCert
        x -> Left ("Unable to parse ThreatListDescriptorThreatEntryType from: " <> x)

instance ToHttpApiData ThreatListDescriptorThreatEntryType where
    toQueryParam = \case
        TLDTETThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        TLDTETURL -> "URL"
        TLDTETExecutable -> "EXECUTABLE"
        TLDTETIPRange -> "IP_RANGE"
        TLDTETChromeExtension -> "CHROME_EXTENSION"
        TLDTETFilename -> "FILENAME"
        TLDTETCert -> "CERT"

instance FromJSON ThreatListDescriptorThreatEntryType where
    parseJSON = parseJSONText "ThreatListDescriptorThreatEntryType"

instance ToJSON ThreatListDescriptorThreatEntryType where
    toJSON = toJSONText

-- | The type of platform at risk by entries present in the list.
data ListUpdateRequestPlatformType
    = LURPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | LURPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | LURPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | LURPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | LURPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | LURPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | LURPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | LURPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | LURPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListUpdateRequestPlatformType

instance FromHttpApiData ListUpdateRequestPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right LURPTPlatformTypeUnspecified
        "WINDOWS" -> Right LURPTWindows
        "LINUX" -> Right LURPTLinux
        "ANDROID" -> Right LURPTAndroid
        "OSX" -> Right LURPTOSx
        "IOS" -> Right LURPTIos
        "ANY_PLATFORM" -> Right LURPTAnyPlatform
        "ALL_PLATFORMS" -> Right LURPTAllPlatforms
        "CHROME" -> Right LURPTChrome
        x -> Left ("Unable to parse ListUpdateRequestPlatformType from: " <> x)

instance ToHttpApiData ListUpdateRequestPlatformType where
    toQueryParam = \case
        LURPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        LURPTWindows -> "WINDOWS"
        LURPTLinux -> "LINUX"
        LURPTAndroid -> "ANDROID"
        LURPTOSx -> "OSX"
        LURPTIos -> "IOS"
        LURPTAnyPlatform -> "ANY_PLATFORM"
        LURPTAllPlatforms -> "ALL_PLATFORMS"
        LURPTChrome -> "CHROME"

instance FromJSON ListUpdateRequestPlatformType where
    parseJSON = parseJSONText "ListUpdateRequestPlatformType"

instance ToJSON ListUpdateRequestPlatformType where
    toJSON = toJSONText

-- | The platform type targeted by the list\'s entries.
data ThreatListDescriptorPlatformType
    = TLDPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | TLDPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | TLDPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | TLDPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | TLDPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | TLDPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | TLDPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | TLDPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | TLDPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatListDescriptorPlatformType

instance FromHttpApiData ThreatListDescriptorPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right TLDPTPlatformTypeUnspecified
        "WINDOWS" -> Right TLDPTWindows
        "LINUX" -> Right TLDPTLinux
        "ANDROID" -> Right TLDPTAndroid
        "OSX" -> Right TLDPTOSx
        "IOS" -> Right TLDPTIos
        "ANY_PLATFORM" -> Right TLDPTAnyPlatform
        "ALL_PLATFORMS" -> Right TLDPTAllPlatforms
        "CHROME" -> Right TLDPTChrome
        x -> Left ("Unable to parse ThreatListDescriptorPlatformType from: " <> x)

instance ToHttpApiData ThreatListDescriptorPlatformType where
    toQueryParam = \case
        TLDPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        TLDPTWindows -> "WINDOWS"
        TLDPTLinux -> "LINUX"
        TLDPTAndroid -> "ANDROID"
        TLDPTOSx -> "OSX"
        TLDPTIos -> "IOS"
        TLDPTAnyPlatform -> "ANY_PLATFORM"
        TLDPTAllPlatforms -> "ALL_PLATFORMS"
        TLDPTChrome -> "CHROME"

instance FromJSON ThreatListDescriptorPlatformType where
    parseJSON = parseJSONText "ThreatListDescriptorPlatformType"

instance ToJSON ThreatListDescriptorPlatformType where
    toJSON = toJSONText

-- | The type of response. This may indicate that an action is required by
-- the client when the response is received.
data ListUpdateResponseResponseType
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

instance Hashable ListUpdateResponseResponseType

instance FromHttpApiData ListUpdateResponseResponseType where
    parseQueryParam = \case
        "RESPONSE_TYPE_UNSPECIFIED" -> Right ResponseTypeUnspecified
        "PARTIAL_UPDATE" -> Right PartialUpdate
        "FULL_UPDATE" -> Right FullUpdate
        x -> Left ("Unable to parse ListUpdateResponseResponseType from: " <> x)

instance ToHttpApiData ListUpdateResponseResponseType where
    toQueryParam = \case
        ResponseTypeUnspecified -> "RESPONSE_TYPE_UNSPECIFIED"
        PartialUpdate -> "PARTIAL_UPDATE"
        FullUpdate -> "FULL_UPDATE"

instance FromJSON ListUpdateResponseResponseType where
    parseJSON = parseJSONText "ListUpdateResponseResponseType"

instance ToJSON ListUpdateResponseResponseType where
    toJSON = toJSONText

-- | The type of source reported.
data ThreatSourceType
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

instance Hashable ThreatSourceType

instance FromHttpApiData ThreatSourceType where
    parseQueryParam = \case
        "THREAT_SOURCE_TYPE_UNSPECIFIED" -> Right ThreatSourceTypeUnspecified
        "MATCHING_URL" -> Right MatchingURL
        "TAB_URL" -> Right TabURL
        "TAB_REDIRECT" -> Right TabRedirect
        "TAB_RESOURCE" -> Right TabResource
        x -> Left ("Unable to parse ThreatSourceType from: " <> x)

instance ToHttpApiData ThreatSourceType where
    toQueryParam = \case
        ThreatSourceTypeUnspecified -> "THREAT_SOURCE_TYPE_UNSPECIFIED"
        MatchingURL -> "MATCHING_URL"
        TabURL -> "TAB_URL"
        TabRedirect -> "TAB_REDIRECT"
        TabResource -> "TAB_RESOURCE"

instance FromJSON ThreatSourceType where
    parseJSON = parseJSONText "ThreatSourceType"

instance ToJSON ThreatSourceType where
    toJSON = toJSONText

-- | The threat type matching this threat.
data ThreatMatchThreatType
    = TMTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | TMTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | TMTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | TMTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | TMTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | TMTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | TMTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | TMTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | TMTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | TMTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | TMTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | TMTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | TMTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | TMTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | TMTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | TMTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatMatchThreatType

instance FromHttpApiData ThreatMatchThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right TMTTThreatTypeUnspecified
        "MALWARE" -> Right TMTTMalware
        "SOCIAL_ENGINEERING" -> Right TMTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right TMTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right TMTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right TMTTSocialEngineeringInternal
        "API_ABUSE" -> Right TMTTAPIAbuse
        "MALICIOUS_BINARY" -> Right TMTTMaliciousBinary
        "CSD_WHITELIST" -> Right TMTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right TMTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right TMTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right TMTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right TMTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right TMTTSubResourceFilter
        "SUSPICIOUS" -> Right TMTTSuspicious
        "TRICK_TO_BILL" -> Right TMTTTrickToBill
        x -> Left ("Unable to parse ThreatMatchThreatType from: " <> x)

instance ToHttpApiData ThreatMatchThreatType where
    toQueryParam = \case
        TMTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        TMTTMalware -> "MALWARE"
        TMTTSocialEngineering -> "SOCIAL_ENGINEERING"
        TMTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        TMTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        TMTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        TMTTAPIAbuse -> "API_ABUSE"
        TMTTMaliciousBinary -> "MALICIOUS_BINARY"
        TMTTCsdWhiteList -> "CSD_WHITELIST"
        TMTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        TMTTClientIncident -> "CLIENT_INCIDENT"
        TMTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        TMTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        TMTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        TMTTSuspicious -> "SUSPICIOUS"
        TMTTTrickToBill -> "TRICK_TO_BILL"

instance FromJSON ThreatMatchThreatType where
    parseJSON = parseJSONText "ThreatMatchThreatType"

instance ToJSON ThreatMatchThreatType where
    toJSON = toJSONText

-- | The compression type for the entries in this set.
data ThreatEntrySetCompressionType
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

instance Hashable ThreatEntrySetCompressionType

instance FromHttpApiData ThreatEntrySetCompressionType where
    parseQueryParam = \case
        "COMPRESSION_TYPE_UNSPECIFIED" -> Right CompressionTypeUnspecified
        "RAW" -> Right Raw
        "RICE" -> Right Rice
        x -> Left ("Unable to parse ThreatEntrySetCompressionType from: " <> x)

instance ToHttpApiData ThreatEntrySetCompressionType where
    toQueryParam = \case
        CompressionTypeUnspecified -> "COMPRESSION_TYPE_UNSPECIFIED"
        Raw -> "RAW"
        Rice -> "RICE"

instance FromJSON ThreatEntrySetCompressionType where
    parseJSON = parseJSONText "ThreatEntrySetCompressionType"

instance ToJSON ThreatEntrySetCompressionType where
    toJSON = toJSONText

-- | The threat type posed by the list\'s entries.
data ThreatListDescriptorThreatType
    = TLDTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | TLDTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | TLDTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | TLDTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | TLDTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | TLDTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | TLDTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | TLDTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | TLDTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | TLDTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | TLDTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | TLDTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | TLDTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | TLDTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | TLDTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | TLDTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatListDescriptorThreatType

instance FromHttpApiData ThreatListDescriptorThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right TLDTTThreatTypeUnspecified
        "MALWARE" -> Right TLDTTMalware
        "SOCIAL_ENGINEERING" -> Right TLDTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right TLDTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right TLDTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right TLDTTSocialEngineeringInternal
        "API_ABUSE" -> Right TLDTTAPIAbuse
        "MALICIOUS_BINARY" -> Right TLDTTMaliciousBinary
        "CSD_WHITELIST" -> Right TLDTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right TLDTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right TLDTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right TLDTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right TLDTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right TLDTTSubResourceFilter
        "SUSPICIOUS" -> Right TLDTTSuspicious
        "TRICK_TO_BILL" -> Right TLDTTTrickToBill
        x -> Left ("Unable to parse ThreatListDescriptorThreatType from: " <> x)

instance ToHttpApiData ThreatListDescriptorThreatType where
    toQueryParam = \case
        TLDTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        TLDTTMalware -> "MALWARE"
        TLDTTSocialEngineering -> "SOCIAL_ENGINEERING"
        TLDTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        TLDTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        TLDTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        TLDTTAPIAbuse -> "API_ABUSE"
        TLDTTMaliciousBinary -> "MALICIOUS_BINARY"
        TLDTTCsdWhiteList -> "CSD_WHITELIST"
        TLDTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        TLDTTClientIncident -> "CLIENT_INCIDENT"
        TLDTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        TLDTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        TLDTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        TLDTTSuspicious -> "SUSPICIOUS"
        TLDTTTrickToBill -> "TRICK_TO_BILL"

instance FromJSON ThreatListDescriptorThreatType where
    parseJSON = parseJSONText "ThreatListDescriptorThreatType"

instance ToJSON ThreatListDescriptorThreatType where
    toJSON = toJSONText

-- | The platform type reported.
data ThreatHitPlatformType
    = THPTPlatformTypeUnspecified
      -- ^ @PLATFORM_TYPE_UNSPECIFIED@
      -- Unknown platform.
    | THPTWindows
      -- ^ @WINDOWS@
      -- Threat posed to Windows.
    | THPTLinux
      -- ^ @LINUX@
      -- Threat posed to Linux.
    | THPTAndroid
      -- ^ @ANDROID@
      -- Threat posed to Android.
    | THPTOSx
      -- ^ @OSX@
      -- Threat posed to OS X.
    | THPTIos
      -- ^ @IOS@
      -- Threat posed to iOS.
    | THPTAnyPlatform
      -- ^ @ANY_PLATFORM@
      -- Threat posed to at least one of the defined platforms.
    | THPTAllPlatforms
      -- ^ @ALL_PLATFORMS@
      -- Threat posed to all defined platforms.
    | THPTChrome
      -- ^ @CHROME@
      -- Threat posed to Chrome.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatHitPlatformType

instance FromHttpApiData ThreatHitPlatformType where
    parseQueryParam = \case
        "PLATFORM_TYPE_UNSPECIFIED" -> Right THPTPlatformTypeUnspecified
        "WINDOWS" -> Right THPTWindows
        "LINUX" -> Right THPTLinux
        "ANDROID" -> Right THPTAndroid
        "OSX" -> Right THPTOSx
        "IOS" -> Right THPTIos
        "ANY_PLATFORM" -> Right THPTAnyPlatform
        "ALL_PLATFORMS" -> Right THPTAllPlatforms
        "CHROME" -> Right THPTChrome
        x -> Left ("Unable to parse ThreatHitPlatformType from: " <> x)

instance ToHttpApiData ThreatHitPlatformType where
    toQueryParam = \case
        THPTPlatformTypeUnspecified -> "PLATFORM_TYPE_UNSPECIFIED"
        THPTWindows -> "WINDOWS"
        THPTLinux -> "LINUX"
        THPTAndroid -> "ANDROID"
        THPTOSx -> "OSX"
        THPTIos -> "IOS"
        THPTAnyPlatform -> "ANY_PLATFORM"
        THPTAllPlatforms -> "ALL_PLATFORMS"
        THPTChrome -> "CHROME"

instance FromJSON ThreatHitPlatformType where
    parseJSON = parseJSONText "ThreatHitPlatformType"

instance ToJSON ThreatHitPlatformType where
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

-- | The format of the threats.
data ListUpdateResponseThreatEntryType
    = LURTETThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | LURTETURL
      -- ^ @URL@
      -- A URL.
    | LURTETExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | LURTETIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | LURTETChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | LURTETFilename
      -- ^ @FILENAME@
      -- Filename.
    | LURTETCert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListUpdateResponseThreatEntryType

instance FromHttpApiData ListUpdateResponseThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right LURTETThreatEntryTypeUnspecified
        "URL" -> Right LURTETURL
        "EXECUTABLE" -> Right LURTETExecutable
        "IP_RANGE" -> Right LURTETIPRange
        "CHROME_EXTENSION" -> Right LURTETChromeExtension
        "FILENAME" -> Right LURTETFilename
        "CERT" -> Right LURTETCert
        x -> Left ("Unable to parse ListUpdateResponseThreatEntryType from: " <> x)

instance ToHttpApiData ListUpdateResponseThreatEntryType where
    toQueryParam = \case
        LURTETThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        LURTETURL -> "URL"
        LURTETExecutable -> "EXECUTABLE"
        LURTETIPRange -> "IP_RANGE"
        LURTETChromeExtension -> "CHROME_EXTENSION"
        LURTETFilename -> "FILENAME"
        LURTETCert -> "CERT"

instance FromJSON ListUpdateResponseThreatEntryType where
    parseJSON = parseJSONText "ListUpdateResponseThreatEntryType"

instance ToJSON ListUpdateResponseThreatEntryType where
    toJSON = toJSONText

-- | The threat type reported.
data ThreatHitThreatType
    = THTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | THTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | THTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | THTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | THTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | THTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | THTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | THTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | THTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | THTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | THTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | THTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | THTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | THTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | THTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | THTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThreatHitThreatType

instance FromHttpApiData ThreatHitThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right THTTThreatTypeUnspecified
        "MALWARE" -> Right THTTMalware
        "SOCIAL_ENGINEERING" -> Right THTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right THTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right THTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right THTTSocialEngineeringInternal
        "API_ABUSE" -> Right THTTAPIAbuse
        "MALICIOUS_BINARY" -> Right THTTMaliciousBinary
        "CSD_WHITELIST" -> Right THTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right THTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right THTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right THTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right THTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right THTTSubResourceFilter
        "SUSPICIOUS" -> Right THTTSuspicious
        "TRICK_TO_BILL" -> Right THTTTrickToBill
        x -> Left ("Unable to parse ThreatHitThreatType from: " <> x)

instance ToHttpApiData ThreatHitThreatType where
    toQueryParam = \case
        THTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        THTTMalware -> "MALWARE"
        THTTSocialEngineering -> "SOCIAL_ENGINEERING"
        THTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        THTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        THTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        THTTAPIAbuse -> "API_ABUSE"
        THTTMaliciousBinary -> "MALICIOUS_BINARY"
        THTTCsdWhiteList -> "CSD_WHITELIST"
        THTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        THTTClientIncident -> "CLIENT_INCIDENT"
        THTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        THTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        THTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        THTTSuspicious -> "SUSPICIOUS"
        THTTTrickToBill -> "TRICK_TO_BILL"

instance FromJSON ThreatHitThreatType where
    parseJSON = parseJSONText "ThreatHitThreatType"

instance ToJSON ThreatHitThreatType where
    toJSON = toJSONText

-- | The types of entries present in the list.
data ListUpdateRequestThreatEntryType
    = LThreatEntryTypeUnspecified
      -- ^ @THREAT_ENTRY_TYPE_UNSPECIFIED@
      -- Unspecified.
    | LURL
      -- ^ @URL@
      -- A URL.
    | LExecutable
      -- ^ @EXECUTABLE@
      -- An executable program.
    | LIPRange
      -- ^ @IP_RANGE@
      -- An IP range.
    | LChromeExtension
      -- ^ @CHROME_EXTENSION@
      -- Chrome extension.
    | LFilename
      -- ^ @FILENAME@
      -- Filename.
    | LCert
      -- ^ @CERT@
      -- CERT
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListUpdateRequestThreatEntryType

instance FromHttpApiData ListUpdateRequestThreatEntryType where
    parseQueryParam = \case
        "THREAT_ENTRY_TYPE_UNSPECIFIED" -> Right LThreatEntryTypeUnspecified
        "URL" -> Right LURL
        "EXECUTABLE" -> Right LExecutable
        "IP_RANGE" -> Right LIPRange
        "CHROME_EXTENSION" -> Right LChromeExtension
        "FILENAME" -> Right LFilename
        "CERT" -> Right LCert
        x -> Left ("Unable to parse ListUpdateRequestThreatEntryType from: " <> x)

instance ToHttpApiData ListUpdateRequestThreatEntryType where
    toQueryParam = \case
        LThreatEntryTypeUnspecified -> "THREAT_ENTRY_TYPE_UNSPECIFIED"
        LURL -> "URL"
        LExecutable -> "EXECUTABLE"
        LIPRange -> "IP_RANGE"
        LChromeExtension -> "CHROME_EXTENSION"
        LFilename -> "FILENAME"
        LCert -> "CERT"

instance FromJSON ListUpdateRequestThreatEntryType where
    parseJSON = parseJSONText "ListUpdateRequestThreatEntryType"

instance ToJSON ListUpdateRequestThreatEntryType where
    toJSON = toJSONText

-- | The threat type for which data is returned.
data ListUpdateResponseThreatType
    = LURTTThreatTypeUnspecified
      -- ^ @THREAT_TYPE_UNSPECIFIED@
      -- Unknown.
    | LURTTMalware
      -- ^ @MALWARE@
      -- Malware threat type.
    | LURTTSocialEngineering
      -- ^ @SOCIAL_ENGINEERING@
      -- Social engineering threat type.
    | LURTTUnwantedSoftware
      -- ^ @UNWANTED_SOFTWARE@
      -- Unwanted software threat type.
    | LURTTPotentiallyHarmfulApplication
      -- ^ @POTENTIALLY_HARMFUL_APPLICATION@
      -- Potentially harmful application threat type.
    | LURTTSocialEngineeringInternal
      -- ^ @SOCIAL_ENGINEERING_INTERNAL@
      -- Social engineering threat type for internal use.
    | LURTTAPIAbuse
      -- ^ @API_ABUSE@
      -- API abuse threat type.
    | LURTTMaliciousBinary
      -- ^ @MALICIOUS_BINARY@
      -- Malicious binary threat type.
    | LURTTCsdWhiteList
      -- ^ @CSD_WHITELIST@
      -- Client side detection whitelist threat type.
    | LURTTCsdDownloadWhiteList
      -- ^ @CSD_DOWNLOAD_WHITELIST@
      -- Client side download detection whitelist threat type.
    | LURTTClientIncident
      -- ^ @CLIENT_INCIDENT@
      -- Client incident threat type.
    | LURTTClientIncidentWhiteList
      -- ^ @CLIENT_INCIDENT_WHITELIST@
      -- Whitelist used when detecting client incident threats. This enum was
      -- never launched and should be re-used for the next list.
    | LURTTAPKMalwareOffline
      -- ^ @APK_MALWARE_OFFLINE@
      -- List used for offline APK checks in PAM.
    | LURTTSubResourceFilter
      -- ^ @SUBRESOURCE_FILTER@
      -- Patterns to be used for activating the subresource filter. Interstitial
      -- will not be shown for patterns from this list.
    | LURTTSuspicious
      -- ^ @SUSPICIOUS@
      -- Entities that are suspected to present a threat.
    | LURTTTrickToBill
      -- ^ @TRICK_TO_BILL@
      -- Trick-to-bill threat list.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ListUpdateResponseThreatType

instance FromHttpApiData ListUpdateResponseThreatType where
    parseQueryParam = \case
        "THREAT_TYPE_UNSPECIFIED" -> Right LURTTThreatTypeUnspecified
        "MALWARE" -> Right LURTTMalware
        "SOCIAL_ENGINEERING" -> Right LURTTSocialEngineering
        "UNWANTED_SOFTWARE" -> Right LURTTUnwantedSoftware
        "POTENTIALLY_HARMFUL_APPLICATION" -> Right LURTTPotentiallyHarmfulApplication
        "SOCIAL_ENGINEERING_INTERNAL" -> Right LURTTSocialEngineeringInternal
        "API_ABUSE" -> Right LURTTAPIAbuse
        "MALICIOUS_BINARY" -> Right LURTTMaliciousBinary
        "CSD_WHITELIST" -> Right LURTTCsdWhiteList
        "CSD_DOWNLOAD_WHITELIST" -> Right LURTTCsdDownloadWhiteList
        "CLIENT_INCIDENT" -> Right LURTTClientIncident
        "CLIENT_INCIDENT_WHITELIST" -> Right LURTTClientIncidentWhiteList
        "APK_MALWARE_OFFLINE" -> Right LURTTAPKMalwareOffline
        "SUBRESOURCE_FILTER" -> Right LURTTSubResourceFilter
        "SUSPICIOUS" -> Right LURTTSuspicious
        "TRICK_TO_BILL" -> Right LURTTTrickToBill
        x -> Left ("Unable to parse ListUpdateResponseThreatType from: " <> x)

instance ToHttpApiData ListUpdateResponseThreatType where
    toQueryParam = \case
        LURTTThreatTypeUnspecified -> "THREAT_TYPE_UNSPECIFIED"
        LURTTMalware -> "MALWARE"
        LURTTSocialEngineering -> "SOCIAL_ENGINEERING"
        LURTTUnwantedSoftware -> "UNWANTED_SOFTWARE"
        LURTTPotentiallyHarmfulApplication -> "POTENTIALLY_HARMFUL_APPLICATION"
        LURTTSocialEngineeringInternal -> "SOCIAL_ENGINEERING_INTERNAL"
        LURTTAPIAbuse -> "API_ABUSE"
        LURTTMaliciousBinary -> "MALICIOUS_BINARY"
        LURTTCsdWhiteList -> "CSD_WHITELIST"
        LURTTCsdDownloadWhiteList -> "CSD_DOWNLOAD_WHITELIST"
        LURTTClientIncident -> "CLIENT_INCIDENT"
        LURTTClientIncidentWhiteList -> "CLIENT_INCIDENT_WHITELIST"
        LURTTAPKMalwareOffline -> "APK_MALWARE_OFFLINE"
        LURTTSubResourceFilter -> "SUBRESOURCE_FILTER"
        LURTTSuspicious -> "SUSPICIOUS"
        LURTTTrickToBill -> "TRICK_TO_BILL"

instance FromJSON ListUpdateResponseThreatType where
    parseJSON = parseJSONText "ListUpdateResponseThreatType"

instance ToJSON ListUpdateResponseThreatType where
    toJSON = toJSONText
