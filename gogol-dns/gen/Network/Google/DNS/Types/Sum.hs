{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DNS.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DNS.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | String mnemonic specifying the DNSSEC algorithm of this key.
data DNSKeySpecAlgorithm
    = ECDSAP256SHA256
      -- ^ @ECDSAP256SHA256@
    | ECDSAP384SHA384
      -- ^ @ECDSAP384SHA384@
    | RSASHA1
      -- ^ @RSASHA1@
    | RSASHA256
      -- ^ @RSASHA256@
    | RSASHA512
      -- ^ @RSASHA512@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DNSKeySpecAlgorithm

instance FromHttpApiData DNSKeySpecAlgorithm where
    parseQueryParam = \case
        "ECDSAP256SHA256" -> Right ECDSAP256SHA256
        "ECDSAP384SHA384" -> Right ECDSAP384SHA384
        "RSASHA1" -> Right RSASHA1
        "RSASHA256" -> Right RSASHA256
        "RSASHA512" -> Right RSASHA512
        x -> Left ("Unable to parse DNSKeySpecAlgorithm from: " <> x)

instance ToHttpApiData DNSKeySpecAlgorithm where
    toQueryParam = \case
        ECDSAP256SHA256 -> "ECDSAP256SHA256"
        ECDSAP384SHA384 -> "ECDSAP384SHA384"
        RSASHA1 -> "RSASHA1"
        RSASHA256 -> "RSASHA256"
        RSASHA512 -> "RSASHA512"

instance FromJSON DNSKeySpecAlgorithm where
    parseJSON = parseJSONText "DNSKeySpecAlgorithm"

instance ToJSON DNSKeySpecAlgorithm where
    toJSON = toJSONText

-- | Specifies the mechanism used to provide authenticated
-- denial-of-existence responses. Output only while state is not OFF.
data ManagedZoneDNSSecConfigNonExistence
    = Nsec
      -- ^ @NSEC@
    | NSEC3
      -- ^ @NSEC3@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedZoneDNSSecConfigNonExistence

instance FromHttpApiData ManagedZoneDNSSecConfigNonExistence where
    parseQueryParam = \case
        "NSEC" -> Right Nsec
        "NSEC3" -> Right NSEC3
        x -> Left ("Unable to parse ManagedZoneDNSSecConfigNonExistence from: " <> x)

instance ToHttpApiData ManagedZoneDNSSecConfigNonExistence where
    toQueryParam = \case
        Nsec -> "NSEC"
        NSEC3 -> "NSEC3"

instance FromJSON ManagedZoneDNSSecConfigNonExistence where
    parseJSON = parseJSONText "ManagedZoneDNSSecConfigNonExistence"

instance ToJSON ManagedZoneDNSSecConfigNonExistence where
    toJSON = toJSONText

-- | Specifies whether DNSSEC is enabled, and what mode it is in.
data ManagedZoneDNSSecConfigState
    = Off
      -- ^ @OFF@
    | ON
      -- ^ @ON@
    | Transfer
      -- ^ @TRANSFER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedZoneDNSSecConfigState

instance FromHttpApiData ManagedZoneDNSSecConfigState where
    parseQueryParam = \case
        "OFF" -> Right Off
        "ON" -> Right ON
        "TRANSFER" -> Right Transfer
        x -> Left ("Unable to parse ManagedZoneDNSSecConfigState from: " <> x)

instance ToHttpApiData ManagedZoneDNSSecConfigState where
    toQueryParam = \case
        Off -> "OFF"
        ON -> "ON"
        Transfer -> "TRANSFER"

instance FromJSON ManagedZoneDNSSecConfigState where
    parseJSON = parseJSONText "ManagedZoneDNSSecConfigState"

instance ToJSON ManagedZoneDNSSecConfigState where
    toJSON = toJSONText

-- | The zone\'s visibility: public zones are exposed to the Internet, while
-- private zones are visible only to Virtual Private Cloud resources.
data ManagedZoneVisibility
    = Private
      -- ^ @PRIVATE@
    | Public
      -- ^ @PUBLIC@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedZoneVisibility

instance FromHttpApiData ManagedZoneVisibility where
    parseQueryParam = \case
        "PRIVATE" -> Right Private
        "PUBLIC" -> Right Public
        x -> Left ("Unable to parse ManagedZoneVisibility from: " <> x)

instance ToHttpApiData ManagedZoneVisibility where
    toQueryParam = \case
        Private -> "PRIVATE"
        Public -> "PUBLIC"

instance FromJSON ManagedZoneVisibility where
    parseJSON = parseJSONText "ManagedZoneVisibility"

instance ToJSON ManagedZoneVisibility where
    toJSON = toJSONText

-- | Sorting criterion. The only supported value is change sequence.
data ChangesListSortBy
    = ChangeSequence
      -- ^ @CHANGE_SEQUENCE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChangesListSortBy

instance FromHttpApiData ChangesListSortBy where
    parseQueryParam = \case
        "CHANGE_SEQUENCE" -> Right ChangeSequence
        x -> Left ("Unable to parse ChangesListSortBy from: " <> x)

instance ToHttpApiData ChangesListSortBy where
    toQueryParam = \case
        ChangeSequence -> "CHANGE_SEQUENCE"

instance FromJSON ChangesListSortBy where
    parseJSON = parseJSONText "ChangesListSortBy"

instance ToJSON ChangesListSortBy where
    toJSON = toJSONText

-- | Specifies the algorithm used to calculate this digest.
data DNSKeyDigestType
    = SHA1
      -- ^ @SHA1@
    | SHA256
      -- ^ @SHA256@
    | SHA384
      -- ^ @SHA384@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DNSKeyDigestType

instance FromHttpApiData DNSKeyDigestType where
    parseQueryParam = \case
        "SHA1" -> Right SHA1
        "SHA256" -> Right SHA256
        "SHA384" -> Right SHA384
        x -> Left ("Unable to parse DNSKeyDigestType from: " <> x)

instance ToHttpApiData DNSKeyDigestType where
    toQueryParam = \case
        SHA1 -> "SHA1"
        SHA256 -> "SHA256"
        SHA384 -> "SHA384"

instance FromJSON DNSKeyDigestType where
    parseJSON = parseJSONText "DNSKeyDigestType"

instance ToJSON DNSKeyDigestType where
    toJSON = toJSONText

-- | Status of the operation. Can be one of the following: \"PENDING\" or
-- \"DONE\" (output only). A status of \"DONE\" means that the request to
-- update the authoritative servers has been sent, but the servers might
-- not be updated yet.
data OperationStatus
    = Done
      -- ^ @DONE@
    | Pending
      -- ^ @PENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationStatus

instance FromHttpApiData OperationStatus where
    parseQueryParam = \case
        "DONE" -> Right Done
        "PENDING" -> Right Pending
        x -> Left ("Unable to parse OperationStatus from: " <> x)

instance ToHttpApiData OperationStatus where
    toQueryParam = \case
        Done -> "DONE"
        Pending -> "PENDING"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | String mnemonic specifying the DNSSEC algorithm of this key. Immutable
-- after creation time.
data DNSKeyAlgorithm
    = DKAECDSAP256SHA256
      -- ^ @ECDSAP256SHA256@
    | DKAECDSAP384SHA384
      -- ^ @ECDSAP384SHA384@
    | DKARSASHA1
      -- ^ @RSASHA1@
    | DKARSASHA256
      -- ^ @RSASHA256@
    | DKARSASHA512
      -- ^ @RSASHA512@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DNSKeyAlgorithm

instance FromHttpApiData DNSKeyAlgorithm where
    parseQueryParam = \case
        "ECDSAP256SHA256" -> Right DKAECDSAP256SHA256
        "ECDSAP384SHA384" -> Right DKAECDSAP384SHA384
        "RSASHA1" -> Right DKARSASHA1
        "RSASHA256" -> Right DKARSASHA256
        "RSASHA512" -> Right DKARSASHA512
        x -> Left ("Unable to parse DNSKeyAlgorithm from: " <> x)

instance ToHttpApiData DNSKeyAlgorithm where
    toQueryParam = \case
        DKAECDSAP256SHA256 -> "ECDSAP256SHA256"
        DKAECDSAP384SHA384 -> "ECDSAP384SHA384"
        DKARSASHA1 -> "RSASHA1"
        DKARSASHA256 -> "RSASHA256"
        DKARSASHA512 -> "RSASHA512"

instance FromJSON DNSKeyAlgorithm where
    parseJSON = parseJSONText "DNSKeyAlgorithm"

instance ToJSON DNSKeyAlgorithm where
    toJSON = toJSONText

-- | Specifies whether this is a key signing key (KSK) or a zone signing key
-- (ZSK). Key signing keys have the Secure Entry Point flag set and, when
-- active, will only be used to sign resource record sets of type DNSKEY.
-- Zone signing keys do not have the Secure Entry Point flag set and will
-- be used to sign all other types of resource record sets.
data DNSKeySpecKeyType
    = KeySigning
      -- ^ @KEY_SIGNING@
    | ZoneSigning
      -- ^ @ZONE_SIGNING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DNSKeySpecKeyType

instance FromHttpApiData DNSKeySpecKeyType where
    parseQueryParam = \case
        "KEY_SIGNING" -> Right KeySigning
        "ZONE_SIGNING" -> Right ZoneSigning
        x -> Left ("Unable to parse DNSKeySpecKeyType from: " <> x)

instance ToHttpApiData DNSKeySpecKeyType where
    toQueryParam = \case
        KeySigning -> "KEY_SIGNING"
        ZoneSigning -> "ZONE_SIGNING"

instance FromJSON DNSKeySpecKeyType where
    parseJSON = parseJSONText "DNSKeySpecKeyType"

instance ToJSON DNSKeySpecKeyType where
    toJSON = toJSONText

-- | Status of the operation (output only). A status of \"done\" means that
-- the request to update the authoritative servers has been sent, but the
-- servers might not be updated yet.
data ChangeStatus
    = CSDone
      -- ^ @DONE@
    | CSPending
      -- ^ @PENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChangeStatus

instance FromHttpApiData ChangeStatus where
    parseQueryParam = \case
        "DONE" -> Right CSDone
        "PENDING" -> Right CSPending
        x -> Left ("Unable to parse ChangeStatus from: " <> x)

instance ToHttpApiData ChangeStatus where
    toQueryParam = \case
        CSDone -> "DONE"
        CSPending -> "PENDING"

instance FromJSON ChangeStatus where
    parseJSON = parseJSONText "ChangeStatus"

instance ToJSON ChangeStatus where
    toJSON = toJSONText

-- | One of \"KEY_SIGNING\" or \"ZONE_SIGNING\". Keys of type KEY_SIGNING
-- have the Secure Entry Point flag set and, when active, will be used to
-- sign only resource record sets of type DNSKEY. Otherwise, the Secure
-- Entry Point flag will be cleared and this key will be used to sign only
-- resource record sets of other types. Immutable after creation time.
data DNSKeyType
    = DKTKeySigning
      -- ^ @KEY_SIGNING@
    | DKTZoneSigning
      -- ^ @ZONE_SIGNING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DNSKeyType

instance FromHttpApiData DNSKeyType where
    parseQueryParam = \case
        "KEY_SIGNING" -> Right DKTKeySigning
        "ZONE_SIGNING" -> Right DKTZoneSigning
        x -> Left ("Unable to parse DNSKeyType from: " <> x)

instance ToHttpApiData DNSKeyType where
    toQueryParam = \case
        DKTKeySigning -> "KEY_SIGNING"
        DKTZoneSigning -> "ZONE_SIGNING"

instance FromJSON DNSKeyType where
    parseJSON = parseJSONText "DNSKeyType"

instance ToJSON DNSKeyType where
    toJSON = toJSONText

-- | Sorting criterion. The only supported values are START_TIME and ID.
data ManagedZoneOperationsListSortBy
    = ID
      -- ^ @ID@
    | StartTime
      -- ^ @START_TIME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedZoneOperationsListSortBy

instance FromHttpApiData ManagedZoneOperationsListSortBy where
    parseQueryParam = \case
        "ID" -> Right ID
        "START_TIME" -> Right StartTime
        x -> Left ("Unable to parse ManagedZoneOperationsListSortBy from: " <> x)

instance ToHttpApiData ManagedZoneOperationsListSortBy where
    toQueryParam = \case
        ID -> "ID"
        StartTime -> "START_TIME"

instance FromJSON ManagedZoneOperationsListSortBy where
    parseJSON = parseJSONText "ManagedZoneOperationsListSortBy"

instance ToJSON ManagedZoneOperationsListSortBy where
    toJSON = toJSONText
