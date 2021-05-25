{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Run.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Run.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The mode of the certificate.
data DomainMAppingSpecCertificateMode
    = CertificateModeUnspecified
      -- ^ @CERTIFICATE_MODE_UNSPECIFIED@
    | None
      -- ^ @NONE@
      -- Do not provision an HTTPS certificate.
    | Automatic
      -- ^ @AUTOMATIC@
      -- Automatically provisions an HTTPS certificate via GoogleCA or
      -- LetsEncrypt.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DomainMAppingSpecCertificateMode

instance FromHttpApiData DomainMAppingSpecCertificateMode where
    parseQueryParam = \case
        "CERTIFICATE_MODE_UNSPECIFIED" -> Right CertificateModeUnspecified
        "NONE" -> Right None
        "AUTOMATIC" -> Right Automatic
        x -> Left ("Unable to parse DomainMAppingSpecCertificateMode from: " <> x)

instance ToHttpApiData DomainMAppingSpecCertificateMode where
    toQueryParam = \case
        CertificateModeUnspecified -> "CERTIFICATE_MODE_UNSPECIFIED"
        None -> "NONE"
        Automatic -> "AUTOMATIC"

instance FromJSON DomainMAppingSpecCertificateMode where
    parseJSON = parseJSONText "DomainMAppingSpecCertificateMode"

instance ToJSON DomainMAppingSpecCertificateMode where
    toJSON = toJSONText

-- | Resource record type. Example: \`AAAA\`.
data ResourceRecordType
    = RecordTypeUnspecified
      -- ^ @RECORD_TYPE_UNSPECIFIED@
      -- An unknown resource record.
    | A
      -- ^ @A@
      -- An A resource record. Data is an IPv4 address.
    | Aaaa
      -- ^ @AAAA@
      -- An AAAA resource record. Data is an IPv6 address.
    | Cname
      -- ^ @CNAME@
      -- A CNAME resource record. Data is a domain name to be aliased.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceRecordType

instance FromHttpApiData ResourceRecordType where
    parseQueryParam = \case
        "RECORD_TYPE_UNSPECIFIED" -> Right RecordTypeUnspecified
        "A" -> Right A
        "AAAA" -> Right Aaaa
        "CNAME" -> Right Cname
        x -> Left ("Unable to parse ResourceRecordType from: " <> x)

instance ToHttpApiData ResourceRecordType where
    toQueryParam = \case
        RecordTypeUnspecified -> "RECORD_TYPE_UNSPECIFIED"
        A -> "A"
        Aaaa -> "AAAA"
        Cname -> "CNAME"

instance FromJSON ResourceRecordType where
    parseJSON = parseJSONText "ResourceRecordType"

instance ToJSON ResourceRecordType where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
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
