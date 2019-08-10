{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudKMS.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudKMS.Types.Product where

import           Network.Google.CloudKMS.Types.Sum
import           Network.Google.Prelude

-- | Response message for KeyManagementService.AsymmetricDecrypt.
--
-- /See:/ 'asymmetricDecryptResponse' smart constructor.
newtype AsymmetricDecryptResponse =
  AsymmetricDecryptResponse'
    { _adrPlaintext :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricDecryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrPlaintext'
asymmetricDecryptResponse
    :: AsymmetricDecryptResponse
asymmetricDecryptResponse = AsymmetricDecryptResponse' {_adrPlaintext = Nothing}


-- | The decrypted data originally encrypted with the matching public key.
adrPlaintext :: Lens' AsymmetricDecryptResponse (Maybe ByteString)
adrPlaintext
  = lens _adrPlaintext (\ s a -> s{_adrPlaintext = a})
      . mapping _Bytes

instance FromJSON AsymmetricDecryptResponse where
        parseJSON
          = withObject "AsymmetricDecryptResponse"
              (\ o ->
                 AsymmetricDecryptResponse' <$> (o .:? "plaintext"))

instance ToJSON AsymmetricDecryptResponse where
        toJSON AsymmetricDecryptResponse'{..}
          = object
              (catMaybes [("plaintext" .=) <$> _adrPlaintext])

-- | Response message for KeyManagementService.Encrypt.
--
-- /See:/ 'encryptResponse' smart constructor.
data EncryptResponse =
  EncryptResponse'
    { _erName       :: !(Maybe Text)
    , _erCiphertext :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erName'
--
-- * 'erCiphertext'
encryptResponse
    :: EncryptResponse
encryptResponse = EncryptResponse' {_erName = Nothing, _erCiphertext = Nothing}


-- | The resource name of the CryptoKeyVersion used in encryption.
erName :: Lens' EncryptResponse (Maybe Text)
erName = lens _erName (\ s a -> s{_erName = a})

-- | The encrypted data.
erCiphertext :: Lens' EncryptResponse (Maybe ByteString)
erCiphertext
  = lens _erCiphertext (\ s a -> s{_erCiphertext = a})
      . mapping _Bytes

instance FromJSON EncryptResponse where
        parseJSON
          = withObject "EncryptResponse"
              (\ o ->
                 EncryptResponse' <$>
                   (o .:? "name") <*> (o .:? "ciphertext"))

instance ToJSON EncryptResponse where
        toJSON EncryptResponse'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _erName,
                  ("ciphertext" .=) <$> _erCiphertext])

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationSchema' smart constructor.
newtype LocationSchema =
  LocationSchema'
    { _lsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsAddtional'
locationSchema
    :: HashMap Text JSONValue -- ^ 'lsAddtional'
    -> LocationSchema
locationSchema pLsAddtional_ =
  LocationSchema' {_lsAddtional = _Coerce # pLsAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
lsAddtional :: Lens' LocationSchema (HashMap Text JSONValue)
lsAddtional
  = lens _lsAddtional (\ s a -> s{_lsAddtional = a}) .
      _Coerce

instance FromJSON LocationSchema where
        parseJSON
          = withObject "LocationSchema"
              (\ o -> LocationSchema' <$> (parseJSONObject o))

instance ToJSON LocationSchema where
        toJSON = toJSON . _lsAddtional

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\" \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", }, { \"log_type\": \"ADMIN_READ\", } ] }, { \"service\":
-- \"fooservice.googleapis.com\" \"audit_log_configs\": [ { \"log_type\":
-- \"DATA_READ\", }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\":
-- [ \"user:bar\'gmail.com\" ] } ] } ] } For fooservice, this policy
-- enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts
-- foo\'gmail.com from DATA_READ logging, and bar\'gmail.com from
-- DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService         :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | Represents an expression text. Example: title: \"User account presence\"
-- description: \"Determines whether the request has a user account\"
-- expression: \"size(request.user) > 0\"
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | An optional string indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax. The application context of the containing message determines
-- which well-known feature set of CEL is supported.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | An optional title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | An optional description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse =
  ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
  ListLocationsResponse' {_llrNextPageToken = Nothing, _llrLocations = Nothing}


-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | Response message for KeyManagementService.ListKeyRings.
--
-- /See:/ 'listKeyRingsResponse' smart constructor.
data ListKeyRingsResponse =
  ListKeyRingsResponse'
    { _lkrrNextPageToken :: !(Maybe Text)
    , _lkrrTotalSize     :: !(Maybe (Textual Int32))
    , _lkrrKeyRings      :: !(Maybe [KeyRing])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListKeyRingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkrrNextPageToken'
--
-- * 'lkrrTotalSize'
--
-- * 'lkrrKeyRings'
listKeyRingsResponse
    :: ListKeyRingsResponse
listKeyRingsResponse =
  ListKeyRingsResponse'
    { _lkrrNextPageToken = Nothing
    , _lkrrTotalSize = Nothing
    , _lkrrKeyRings = Nothing
    }


-- | A token to retrieve next page of results. Pass this value in
-- ListKeyRingsRequest.page_token to retrieve the next page of results.
lkrrNextPageToken :: Lens' ListKeyRingsResponse (Maybe Text)
lkrrNextPageToken
  = lens _lkrrNextPageToken
      (\ s a -> s{_lkrrNextPageToken = a})

-- | The total number of KeyRings that matched the query.
lkrrTotalSize :: Lens' ListKeyRingsResponse (Maybe Int32)
lkrrTotalSize
  = lens _lkrrTotalSize
      (\ s a -> s{_lkrrTotalSize = a})
      . mapping _Coerce

-- | The list of KeyRings.
lkrrKeyRings :: Lens' ListKeyRingsResponse [KeyRing]
lkrrKeyRings
  = lens _lkrrKeyRings (\ s a -> s{_lkrrKeyRings = a})
      . _Default
      . _Coerce

instance FromJSON ListKeyRingsResponse where
        parseJSON
          = withObject "ListKeyRingsResponse"
              (\ o ->
                 ListKeyRingsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "keyRings" .!= mempty))

instance ToJSON ListKeyRingsResponse where
        toJSON ListKeyRingsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lkrrNextPageToken,
                  ("totalSize" .=) <$> _lkrrTotalSize,
                  ("keyRings" .=) <$> _lkrrKeyRings])

-- | Response message for KeyManagementService.AsymmetricSign.
--
-- /See:/ 'asymmetricSignResponse' smart constructor.
newtype AsymmetricSignResponse =
  AsymmetricSignResponse'
    { _asrSignature :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricSignResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrSignature'
asymmetricSignResponse
    :: AsymmetricSignResponse
asymmetricSignResponse = AsymmetricSignResponse' {_asrSignature = Nothing}


-- | The created signature.
asrSignature :: Lens' AsymmetricSignResponse (Maybe ByteString)
asrSignature
  = lens _asrSignature (\ s a -> s{_asrSignature = a})
      . mapping _Bytes

instance FromJSON AsymmetricSignResponse where
        parseJSON
          = withObject "AsymmetricSignResponse"
              (\ o ->
                 AsymmetricSignResponse' <$> (o .:? "signature"))

instance ToJSON AsymmetricSignResponse where
        toJSON AsymmetricSignResponse'{..}
          = object
              (catMaybes [("signature" .=) <$> _asrSignature])

-- | A KeyRing is a toplevel logical grouping of CryptoKeys.
--
-- /See:/ 'keyRing' smart constructor.
data KeyRing =
  KeyRing'
    { _krName       :: !(Maybe Text)
    , _krCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyRing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'krName'
--
-- * 'krCreateTime'
keyRing
    :: KeyRing
keyRing = KeyRing' {_krName = Nothing, _krCreateTime = Nothing}


-- | Output only. The resource name for the KeyRing in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\`.
krName :: Lens' KeyRing (Maybe Text)
krName = lens _krName (\ s a -> s{_krName = a})

-- | Output only. The time at which this KeyRing was created.
krCreateTime :: Lens' KeyRing (Maybe UTCTime)
krCreateTime
  = lens _krCreateTime (\ s a -> s{_krCreateTime = a})
      . mapping _DateTime

instance FromJSON KeyRing where
        parseJSON
          = withObject "KeyRing"
              (\ o ->
                 KeyRing' <$> (o .:? "name") <*> (o .:? "createTime"))

instance ToJSON KeyRing where
        toJSON KeyRing'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _krName,
                  ("createTime" .=) <$> _krCreateTime])

-- | Request message for KeyManagementService.DestroyCryptoKeyVersion.
--
-- /See:/ 'destroyCryptoKeyVersionRequest' smart constructor.
data DestroyCryptoKeyVersionRequest =
  DestroyCryptoKeyVersionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DestroyCryptoKeyVersionRequest' with the minimum fields required to make a request.
--
destroyCryptoKeyVersionRequest
    :: DestroyCryptoKeyVersionRequest
destroyCryptoKeyVersionRequest = DestroyCryptoKeyVersionRequest'


instance FromJSON DestroyCryptoKeyVersionRequest
         where
        parseJSON
          = withObject "DestroyCryptoKeyVersionRequest"
              (\ o -> pure DestroyCryptoKeyVersionRequest')

instance ToJSON DestroyCryptoKeyVersionRequest where
        toJSON = const emptyObject

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location =
  Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationSchema)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
  Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }


-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationSchema)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | Request message for KeyManagementService.AsymmetricSign.
--
-- /See:/ 'asymmetricSignRequest' smart constructor.
newtype AsymmetricSignRequest =
  AsymmetricSignRequest'
    { _asrDigest :: Maybe Digest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricSignRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrDigest'
asymmetricSignRequest
    :: AsymmetricSignRequest
asymmetricSignRequest = AsymmetricSignRequest' {_asrDigest = Nothing}


-- | Required. The digest of the data to sign. The digest must be produced
-- with the same digest algorithm as specified by the key version\'s
-- algorithm.
asrDigest :: Lens' AsymmetricSignRequest (Maybe Digest)
asrDigest
  = lens _asrDigest (\ s a -> s{_asrDigest = a})

instance FromJSON AsymmetricSignRequest where
        parseJSON
          = withObject "AsymmetricSignRequest"
              (\ o -> AsymmetricSignRequest' <$> (o .:? "digest"))

instance ToJSON AsymmetricSignRequest where
        toJSON AsymmetricSignRequest'{..}
          = object (catMaybes [("digest" .=) <$> _asrDigest])

-- | The public key for a given CryptoKeyVersion. Obtained via GetPublicKey.
--
-- /See:/ 'publicKey' smart constructor.
data PublicKey =
  PublicKey'
    { _pkPem       :: !(Maybe Text)
    , _pkAlgorithm :: !(Maybe PublicKeyAlgorithm)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkPem'
--
-- * 'pkAlgorithm'
publicKey
    :: PublicKey
publicKey = PublicKey' {_pkPem = Nothing, _pkAlgorithm = Nothing}


-- | The public key, encoded in PEM format. For more information, see the
-- [RFC 7468](https:\/\/tools.ietf.org\/html\/rfc7468) sections for
-- [General
-- Considerations](https:\/\/tools.ietf.org\/html\/rfc7468#section-2) and
-- [Textual Encoding of Subject Public Key Info]
-- (https:\/\/tools.ietf.org\/html\/rfc7468#section-13).
pkPem :: Lens' PublicKey (Maybe Text)
pkPem = lens _pkPem (\ s a -> s{_pkPem = a})

-- | The Algorithm associated with this key.
pkAlgorithm :: Lens' PublicKey (Maybe PublicKeyAlgorithm)
pkAlgorithm
  = lens _pkAlgorithm (\ s a -> s{_pkAlgorithm = a})

instance FromJSON PublicKey where
        parseJSON
          = withObject "PublicKey"
              (\ o ->
                 PublicKey' <$> (o .:? "pem") <*> (o .:? "algorithm"))

instance ToJSON PublicKey where
        toJSON PublicKey'{..}
          = object
              (catMaybes
                 [("pem" .=) <$> _pkPem,
                  ("algorithm" .=) <$> _pkAlgorithm])

-- | Response message for KeyManagementService.Decrypt.
--
-- /See:/ 'decryptResponse' smart constructor.
newtype DecryptResponse =
  DecryptResponse'
    { _drPlaintext :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DecryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drPlaintext'
decryptResponse
    :: DecryptResponse
decryptResponse = DecryptResponse' {_drPlaintext = Nothing}


-- | The decrypted data originally supplied in EncryptRequest.plaintext.
drPlaintext :: Lens' DecryptResponse (Maybe ByteString)
drPlaintext
  = lens _drPlaintext (\ s a -> s{_drPlaintext = a}) .
      mapping _Bytes

instance FromJSON DecryptResponse where
        parseJSON
          = withObject "DecryptResponse"
              (\ o -> DecryptResponse' <$> (o .:? "plaintext"))

instance ToJSON DecryptResponse where
        toJSON DecryptResponse'{..}
          = object
              (catMaybes [("plaintext" .=) <$> _drPlaintext])

-- | A CryptoKeyVersionTemplate specifies the properties to use when creating
-- a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or
-- automatically as a result of auto-rotation.
--
-- /See:/ 'cryptoKeyVersionTemplate' smart constructor.
data CryptoKeyVersionTemplate =
  CryptoKeyVersionTemplate'
    { _ckvtAlgorithm       :: !(Maybe CryptoKeyVersionTemplateAlgorithm)
    , _ckvtProtectionLevel :: !(Maybe CryptoKeyVersionTemplateProtectionLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CryptoKeyVersionTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckvtAlgorithm'
--
-- * 'ckvtProtectionLevel'
cryptoKeyVersionTemplate
    :: CryptoKeyVersionTemplate
cryptoKeyVersionTemplate =
  CryptoKeyVersionTemplate'
    {_ckvtAlgorithm = Nothing, _ckvtProtectionLevel = Nothing}


-- | Required. Algorithm to use when creating a CryptoKeyVersion based on
-- this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION
-- is implied if both this field is omitted and CryptoKey.purpose is
-- ENCRYPT_DECRYPT.
ckvtAlgorithm :: Lens' CryptoKeyVersionTemplate (Maybe CryptoKeyVersionTemplateAlgorithm)
ckvtAlgorithm
  = lens _ckvtAlgorithm
      (\ s a -> s{_ckvtAlgorithm = a})

-- | ProtectionLevel to use when creating a CryptoKeyVersion based on this
-- template. Immutable. Defaults to SOFTWARE.
ckvtProtectionLevel :: Lens' CryptoKeyVersionTemplate (Maybe CryptoKeyVersionTemplateProtectionLevel)
ckvtProtectionLevel
  = lens _ckvtProtectionLevel
      (\ s a -> s{_ckvtProtectionLevel = a})

instance FromJSON CryptoKeyVersionTemplate where
        parseJSON
          = withObject "CryptoKeyVersionTemplate"
              (\ o ->
                 CryptoKeyVersionTemplate' <$>
                   (o .:? "algorithm") <*> (o .:? "protectionLevel"))

instance ToJSON CryptoKeyVersionTemplate where
        toJSON CryptoKeyVersionTemplate'{..}
          = object
              (catMaybes
                 [("algorithm" .=) <$> _ckvtAlgorithm,
                  ("protectionLevel" .=) <$> _ckvtProtectionLevel])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy     :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: paths: \"bindings, etag\" This field
-- is only used by Cloud IAM.
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | Labels with user-defined metadata. For more information, see [Labeling
-- Keys](\/kms\/docs\/labeling-keys).
--
-- /See:/ 'cryptoKeyLabels' smart constructor.
newtype CryptoKeyLabels =
  CryptoKeyLabels'
    { _cklAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CryptoKeyLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cklAddtional'
cryptoKeyLabels
    :: HashMap Text Text -- ^ 'cklAddtional'
    -> CryptoKeyLabels
cryptoKeyLabels pCklAddtional_ =
  CryptoKeyLabels' {_cklAddtional = _Coerce # pCklAddtional_}


cklAddtional :: Lens' CryptoKeyLabels (HashMap Text Text)
cklAddtional
  = lens _cklAddtional (\ s a -> s{_cklAddtional = a})
      . _Coerce

instance FromJSON CryptoKeyLabels where
        parseJSON
          = withObject "CryptoKeyLabels"
              (\ o -> CryptoKeyLabels' <$> (parseJSONObject o))

instance ToJSON CryptoKeyLabels where
        toJSON = toJSON . _cklAddtional

-- | A CryptoKey represents a logical key that can be used for cryptographic
-- operations. A CryptoKey is made up of one or more versions, which
-- represent the actual key material used in cryptographic operations.
--
-- /See:/ 'cryptoKey' smart constructor.
data CryptoKey =
  CryptoKey'
    { _ckVersionTemplate  :: !(Maybe CryptoKeyVersionTemplate)
    , _ckPurpose          :: !(Maybe CryptoKeyPurpose)
    , _ckRotationPeriod   :: !(Maybe GDuration)
    , _ckPrimary          :: !(Maybe CryptoKeyVersion)
    , _ckName             :: !(Maybe Text)
    , _ckLabels           :: !(Maybe CryptoKeyLabels)
    , _ckNextRotationTime :: !(Maybe DateTime')
    , _ckCreateTime       :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CryptoKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckVersionTemplate'
--
-- * 'ckPurpose'
--
-- * 'ckRotationPeriod'
--
-- * 'ckPrimary'
--
-- * 'ckName'
--
-- * 'ckLabels'
--
-- * 'ckNextRotationTime'
--
-- * 'ckCreateTime'
cryptoKey
    :: CryptoKey
cryptoKey =
  CryptoKey'
    { _ckVersionTemplate = Nothing
    , _ckPurpose = Nothing
    , _ckRotationPeriod = Nothing
    , _ckPrimary = Nothing
    , _ckName = Nothing
    , _ckLabels = Nothing
    , _ckNextRotationTime = Nothing
    , _ckCreateTime = Nothing
    }


-- | A template describing settings for new CryptoKeyVersion instances. The
-- properties of new CryptoKeyVersion instances created by either
-- CreateCryptoKeyVersion or auto-rotation are controlled by this template.
ckVersionTemplate :: Lens' CryptoKey (Maybe CryptoKeyVersionTemplate)
ckVersionTemplate
  = lens _ckVersionTemplate
      (\ s a -> s{_ckVersionTemplate = a})

-- | The immutable purpose of this CryptoKey.
ckPurpose :: Lens' CryptoKey (Maybe CryptoKeyPurpose)
ckPurpose
  = lens _ckPurpose (\ s a -> s{_ckPurpose = a})

-- | next_rotation_time will be advanced by this period when the service
-- automatically rotates a key. Must be at least one day. If
-- rotation_period is set, next_rotation_time must also be set. Keys with
-- purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this
-- field must be omitted.
ckRotationPeriod :: Lens' CryptoKey (Maybe Scientific)
ckRotationPeriod
  = lens _ckRotationPeriod
      (\ s a -> s{_ckRotationPeriod = a})
      . mapping _GDuration

-- | Output only. A copy of the \"primary\" CryptoKeyVersion that will be
-- used by Encrypt when this CryptoKey is given in EncryptRequest.name. The
-- CryptoKey\'s primary version can be updated via
-- UpdateCryptoKeyPrimaryVersion. All keys with purpose ENCRYPT_DECRYPT
-- have a primary. For other keys, this field will be omitted.
ckPrimary :: Lens' CryptoKey (Maybe CryptoKeyVersion)
ckPrimary
  = lens _ckPrimary (\ s a -> s{_ckPrimary = a})

-- | Output only. The resource name for this CryptoKey in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\`.
ckName :: Lens' CryptoKey (Maybe Text)
ckName = lens _ckName (\ s a -> s{_ckName = a})

-- | Labels with user-defined metadata. For more information, see [Labeling
-- Keys](\/kms\/docs\/labeling-keys).
ckLabels :: Lens' CryptoKey (Maybe CryptoKeyLabels)
ckLabels = lens _ckLabels (\ s a -> s{_ckLabels = a})

-- | At next_rotation_time, the Key Management Service will automatically: 1.
-- Create a new version of this CryptoKey. 2. Mark the new version as
-- primary. Key rotations performed manually via CreateCryptoKeyVersion and
-- UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys
-- with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys,
-- this field must be omitted.
ckNextRotationTime :: Lens' CryptoKey (Maybe UTCTime)
ckNextRotationTime
  = lens _ckNextRotationTime
      (\ s a -> s{_ckNextRotationTime = a})
      . mapping _DateTime

-- | Output only. The time at which this CryptoKey was created.
ckCreateTime :: Lens' CryptoKey (Maybe UTCTime)
ckCreateTime
  = lens _ckCreateTime (\ s a -> s{_ckCreateTime = a})
      . mapping _DateTime

instance FromJSON CryptoKey where
        parseJSON
          = withObject "CryptoKey"
              (\ o ->
                 CryptoKey' <$>
                   (o .:? "versionTemplate") <*> (o .:? "purpose") <*>
                     (o .:? "rotationPeriod")
                     <*> (o .:? "primary")
                     <*> (o .:? "name")
                     <*> (o .:? "labels")
                     <*> (o .:? "nextRotationTime")
                     <*> (o .:? "createTime"))

instance ToJSON CryptoKey where
        toJSON CryptoKey'{..}
          = object
              (catMaybes
                 [("versionTemplate" .=) <$> _ckVersionTemplate,
                  ("purpose" .=) <$> _ckPurpose,
                  ("rotationPeriod" .=) <$> _ckRotationPeriod,
                  ("primary" .=) <$> _ckPrimary,
                  ("name" .=) <$> _ckName, ("labels" .=) <$> _ckLabels,
                  ("nextRotationTime" .=) <$> _ckNextRotationTime,
                  ("createTime" .=) <$> _ckCreateTime])

-- | Request message for KeyManagementService.Decrypt.
--
-- /See:/ 'decryptRequest' smart constructor.
data DecryptRequest =
  DecryptRequest'
    { _drAdditionalAuthenticatedData :: !(Maybe Bytes)
    , _drCiphertext                  :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DecryptRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drAdditionalAuthenticatedData'
--
-- * 'drCiphertext'
decryptRequest
    :: DecryptRequest
decryptRequest =
  DecryptRequest'
    {_drAdditionalAuthenticatedData = Nothing, _drCiphertext = Nothing}


-- | Optional data that must match the data originally supplied in
-- EncryptRequest.additional_authenticated_data.
drAdditionalAuthenticatedData :: Lens' DecryptRequest (Maybe ByteString)
drAdditionalAuthenticatedData
  = lens _drAdditionalAuthenticatedData
      (\ s a -> s{_drAdditionalAuthenticatedData = a})
      . mapping _Bytes

-- | Required. The encrypted data originally returned in
-- EncryptResponse.ciphertext.
drCiphertext :: Lens' DecryptRequest (Maybe ByteString)
drCiphertext
  = lens _drCiphertext (\ s a -> s{_drCiphertext = a})
      . mapping _Bytes

instance FromJSON DecryptRequest where
        parseJSON
          = withObject "DecryptRequest"
              (\ o ->
                 DecryptRequest' <$>
                   (o .:? "additionalAuthenticatedData") <*>
                     (o .:? "ciphertext"))

instance ToJSON DecryptRequest where
        toJSON DecryptRequest'{..}
          = object
              (catMaybes
                 [("additionalAuthenticatedData" .=) <$>
                    _drAdditionalAuthenticatedData,
                  ("ciphertext" .=) <$> _drCiphertext])

-- | Contains an HSM-generated attestation about a key operation. For more
-- information, see [Verifying attestations]
-- (https:\/\/cloud.google.com\/kms\/docs\/attest-key).
--
-- /See:/ 'keyOperationAttestation' smart constructor.
data KeyOperationAttestation =
  KeyOperationAttestation'
    { _koaFormat  :: !(Maybe KeyOperationAttestationFormat)
    , _koaContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyOperationAttestation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'koaFormat'
--
-- * 'koaContent'
keyOperationAttestation
    :: KeyOperationAttestation
keyOperationAttestation =
  KeyOperationAttestation' {_koaFormat = Nothing, _koaContent = Nothing}


-- | Output only. The format of the attestation data.
koaFormat :: Lens' KeyOperationAttestation (Maybe KeyOperationAttestationFormat)
koaFormat
  = lens _koaFormat (\ s a -> s{_koaFormat = a})

-- | Output only. The attestation data provided by the HSM when the key
-- operation was performed.
koaContent :: Lens' KeyOperationAttestation (Maybe ByteString)
koaContent
  = lens _koaContent (\ s a -> s{_koaContent = a}) .
      mapping _Bytes

instance FromJSON KeyOperationAttestation where
        parseJSON
          = withObject "KeyOperationAttestation"
              (\ o ->
                 KeyOperationAttestation' <$>
                   (o .:? "format") <*> (o .:? "content"))

instance ToJSON KeyOperationAttestation where
        toJSON KeyOperationAttestation'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _koaFormat,
                  ("content" .=) <$> _koaContent])

-- | Response message for KeyManagementService.ListCryptoKeyVersions.
--
-- /See:/ 'listCryptoKeyVersionsResponse' smart constructor.
data ListCryptoKeyVersionsResponse =
  ListCryptoKeyVersionsResponse'
    { _lckvrNextPageToken     :: !(Maybe Text)
    , _lckvrTotalSize         :: !(Maybe (Textual Int32))
    , _lckvrCryptoKeyVersions :: !(Maybe [CryptoKeyVersion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCryptoKeyVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lckvrNextPageToken'
--
-- * 'lckvrTotalSize'
--
-- * 'lckvrCryptoKeyVersions'
listCryptoKeyVersionsResponse
    :: ListCryptoKeyVersionsResponse
listCryptoKeyVersionsResponse =
  ListCryptoKeyVersionsResponse'
    { _lckvrNextPageToken = Nothing
    , _lckvrTotalSize = Nothing
    , _lckvrCryptoKeyVersions = Nothing
    }


-- | A token to retrieve next page of results. Pass this value in
-- ListCryptoKeyVersionsRequest.page_token to retrieve the next page of
-- results.
lckvrNextPageToken :: Lens' ListCryptoKeyVersionsResponse (Maybe Text)
lckvrNextPageToken
  = lens _lckvrNextPageToken
      (\ s a -> s{_lckvrNextPageToken = a})

-- | The total number of CryptoKeyVersions that matched the query.
lckvrTotalSize :: Lens' ListCryptoKeyVersionsResponse (Maybe Int32)
lckvrTotalSize
  = lens _lckvrTotalSize
      (\ s a -> s{_lckvrTotalSize = a})
      . mapping _Coerce

-- | The list of CryptoKeyVersions.
lckvrCryptoKeyVersions :: Lens' ListCryptoKeyVersionsResponse [CryptoKeyVersion]
lckvrCryptoKeyVersions
  = lens _lckvrCryptoKeyVersions
      (\ s a -> s{_lckvrCryptoKeyVersions = a})
      . _Default
      . _Coerce

instance FromJSON ListCryptoKeyVersionsResponse where
        parseJSON
          = withObject "ListCryptoKeyVersionsResponse"
              (\ o ->
                 ListCryptoKeyVersionsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "totalSize") <*>
                     (o .:? "cryptoKeyVersions" .!= mempty))

instance ToJSON ListCryptoKeyVersionsResponse where
        toJSON ListCryptoKeyVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lckvrNextPageToken,
                  ("totalSize" .=) <$> _lckvrTotalSize,
                  ("cryptoKeyVersions" .=) <$>
                    _lckvrCryptoKeyVersions])

-- | Request message for KeyManagementService.RestoreCryptoKeyVersion.
--
-- /See:/ 'restoreCryptoKeyVersionRequest' smart constructor.
data RestoreCryptoKeyVersionRequest =
  RestoreCryptoKeyVersionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RestoreCryptoKeyVersionRequest' with the minimum fields required to make a request.
--
restoreCryptoKeyVersionRequest
    :: RestoreCryptoKeyVersionRequest
restoreCryptoKeyVersionRequest = RestoreCryptoKeyVersionRequest'


instance FromJSON RestoreCryptoKeyVersionRequest
         where
        parseJSON
          = withObject "RestoreCryptoKeyVersionRequest"
              (\ o -> pure RestoreCryptoKeyVersionRequest')

instance ToJSON RestoreCryptoKeyVersionRequest where
        toJSON = const emptyObject

-- | Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.
--
-- /See:/ 'updateCryptoKeyPrimaryVersionRequest' smart constructor.
newtype UpdateCryptoKeyPrimaryVersionRequest =
  UpdateCryptoKeyPrimaryVersionRequest'
    { _uckpvrCryptoKeyVersionId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateCryptoKeyPrimaryVersionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uckpvrCryptoKeyVersionId'
updateCryptoKeyPrimaryVersionRequest
    :: UpdateCryptoKeyPrimaryVersionRequest
updateCryptoKeyPrimaryVersionRequest =
  UpdateCryptoKeyPrimaryVersionRequest' {_uckpvrCryptoKeyVersionId = Nothing}


-- | The id of the child CryptoKeyVersion to use as primary.
uckpvrCryptoKeyVersionId :: Lens' UpdateCryptoKeyPrimaryVersionRequest (Maybe Text)
uckpvrCryptoKeyVersionId
  = lens _uckpvrCryptoKeyVersionId
      (\ s a -> s{_uckpvrCryptoKeyVersionId = a})

instance FromJSON
           UpdateCryptoKeyPrimaryVersionRequest
         where
        parseJSON
          = withObject "UpdateCryptoKeyPrimaryVersionRequest"
              (\ o ->
                 UpdateCryptoKeyPrimaryVersionRequest' <$>
                   (o .:? "cryptoKeyVersionId"))

instance ToJSON UpdateCryptoKeyPrimaryVersionRequest
         where
        toJSON UpdateCryptoKeyPrimaryVersionRequest'{..}
          = object
              (catMaybes
                 [("cryptoKeyVersionId" .=) <$>
                    _uckpvrCryptoKeyVersionId])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | A Digest holds a cryptographic message digest.
--
-- /See:/ 'digest' smart constructor.
data Digest =
  Digest'
    { _dSha512 :: !(Maybe Bytes)
    , _dSha384 :: !(Maybe Bytes)
    , _dSha256 :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Digest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSha512'
--
-- * 'dSha384'
--
-- * 'dSha256'
digest
    :: Digest
digest = Digest' {_dSha512 = Nothing, _dSha384 = Nothing, _dSha256 = Nothing}


-- | A message digest produced with the SHA-512 algorithm.
dSha512 :: Lens' Digest (Maybe ByteString)
dSha512
  = lens _dSha512 (\ s a -> s{_dSha512 = a}) .
      mapping _Bytes

-- | A message digest produced with the SHA-384 algorithm.
dSha384 :: Lens' Digest (Maybe ByteString)
dSha384
  = lens _dSha384 (\ s a -> s{_dSha384 = a}) .
      mapping _Bytes

-- | A message digest produced with the SHA-256 algorithm.
dSha256 :: Lens' Digest (Maybe ByteString)
dSha256
  = lens _dSha256 (\ s a -> s{_dSha256 = a}) .
      mapping _Bytes

instance FromJSON Digest where
        parseJSON
          = withObject "Digest"
              (\ o ->
                 Digest' <$>
                   (o .:? "sha512") <*> (o .:? "sha384") <*>
                     (o .:? "sha256"))

instance ToJSON Digest where
        toJSON Digest'{..}
          = object
              (catMaybes
                 [("sha512" .=) <$> _dSha512,
                  ("sha384" .=) <$> _dSha384,
                  ("sha256" .=) <$> _dSha256])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **JSON Example**
-- { \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } **YAML Example** bindings: - members: - user:mike\'example.com -
-- group:admins\'example.com - domain:google.com -
-- serviceAccount:my-other-app\'appspot.gserviceaccount.com role:
-- roles\/owner - members: - user:sean\'example.com role: roles\/viewer For
-- a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam\/docs).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Bytes)
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. If no \`etag\` is provided in the call to
-- \`setIamPolicy\`, then the existing policy is overwritten blindly.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Deprecated.
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. \`bindings\` with no
-- members will result in an error.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels =
  LocationLabels'
    { _llAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
  LocationLabels' {_llAddtional = _Coerce # pLlAddtional_}


llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Cloud KMS metadata for the given google.cloud.location.Location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmHSMAvailable :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmHSMAvailable'
locationMetadata
    :: LocationMetadata
locationMetadata = LocationMetadata' {_lmHSMAvailable = Nothing}


-- | Indicates whether CryptoKeys with protection_level HSM can be created in
-- this location.
lmHSMAvailable :: Lens' LocationMetadata (Maybe Bool)
lmHSMAvailable
  = lens _lmHSMAvailable
      (\ s a -> s{_lmHSMAvailable = a})

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (o .:? "hsmAvailable"))

instance ToJSON LocationMetadata where
        toJSON LocationMetadata'{..}
          = object
              (catMaybes [("hsmAvailable" .=) <$> _lmHSMAvailable])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:foo\'gmail.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\", } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting foo\'gmail.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType         :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | Response message for KeyManagementService.ListCryptoKeys.
--
-- /See:/ 'listCryptoKeysResponse' smart constructor.
data ListCryptoKeysResponse =
  ListCryptoKeysResponse'
    { _lckrCryptoKeys    :: !(Maybe [CryptoKey])
    , _lckrNextPageToken :: !(Maybe Text)
    , _lckrTotalSize     :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCryptoKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lckrCryptoKeys'
--
-- * 'lckrNextPageToken'
--
-- * 'lckrTotalSize'
listCryptoKeysResponse
    :: ListCryptoKeysResponse
listCryptoKeysResponse =
  ListCryptoKeysResponse'
    { _lckrCryptoKeys = Nothing
    , _lckrNextPageToken = Nothing
    , _lckrTotalSize = Nothing
    }


-- | The list of CryptoKeys.
lckrCryptoKeys :: Lens' ListCryptoKeysResponse [CryptoKey]
lckrCryptoKeys
  = lens _lckrCryptoKeys
      (\ s a -> s{_lckrCryptoKeys = a})
      . _Default
      . _Coerce

-- | A token to retrieve next page of results. Pass this value in
-- ListCryptoKeysRequest.page_token to retrieve the next page of results.
lckrNextPageToken :: Lens' ListCryptoKeysResponse (Maybe Text)
lckrNextPageToken
  = lens _lckrNextPageToken
      (\ s a -> s{_lckrNextPageToken = a})

-- | The total number of CryptoKeys that matched the query.
lckrTotalSize :: Lens' ListCryptoKeysResponse (Maybe Int32)
lckrTotalSize
  = lens _lckrTotalSize
      (\ s a -> s{_lckrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListCryptoKeysResponse where
        parseJSON
          = withObject "ListCryptoKeysResponse"
              (\ o ->
                 ListCryptoKeysResponse' <$>
                   (o .:? "cryptoKeys" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "totalSize"))

instance ToJSON ListCryptoKeysResponse where
        toJSON ListCryptoKeysResponse'{..}
          = object
              (catMaybes
                 [("cryptoKeys" .=) <$> _lckrCryptoKeys,
                  ("nextPageToken" .=) <$> _lckrNextPageToken,
                  ("totalSize" .=) <$> _lckrTotalSize])

-- | Request message for KeyManagementService.AsymmetricDecrypt.
--
-- /See:/ 'asymmetricDecryptRequest' smart constructor.
newtype AsymmetricDecryptRequest =
  AsymmetricDecryptRequest'
    { _adrCiphertext :: Maybe Bytes
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricDecryptRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrCiphertext'
asymmetricDecryptRequest
    :: AsymmetricDecryptRequest
asymmetricDecryptRequest = AsymmetricDecryptRequest' {_adrCiphertext = Nothing}


-- | Required. The data encrypted with the named CryptoKeyVersion\'s public
-- key using OAEP.
adrCiphertext :: Lens' AsymmetricDecryptRequest (Maybe ByteString)
adrCiphertext
  = lens _adrCiphertext
      (\ s a -> s{_adrCiphertext = a})
      . mapping _Bytes

instance FromJSON AsymmetricDecryptRequest where
        parseJSON
          = withObject "AsymmetricDecryptRequest"
              (\ o ->
                 AsymmetricDecryptRequest' <$> (o .:? "ciphertext"))

instance ToJSON AsymmetricDecryptRequest where
        toJSON AsymmetricDecryptRequest'{..}
          = object
              (catMaybes [("ciphertext" .=) <$> _adrCiphertext])

-- | A CryptoKeyVersion represents an individual cryptographic key, and the
-- associated key material. An ENABLED version can be used for
-- cryptographic operations. For security reasons, the raw cryptographic
-- key material represented by a CryptoKeyVersion can never be viewed or
-- exported. It can only be used to encrypt, decrypt, or sign data when an
-- authorized user or application invokes Cloud KMS.
--
-- /See:/ 'cryptoKeyVersion' smart constructor.
data CryptoKeyVersion =
  CryptoKeyVersion'
    { _ckvState            :: !(Maybe CryptoKeyVersionState)
    , _ckvAttestation      :: !(Maybe KeyOperationAttestation)
    , _ckvGenerateTime     :: !(Maybe DateTime')
    , _ckvName             :: !(Maybe Text)
    , _ckvAlgorithm        :: !(Maybe CryptoKeyVersionAlgorithm)
    , _ckvDestroyTime      :: !(Maybe DateTime')
    , _ckvProtectionLevel  :: !(Maybe CryptoKeyVersionProtectionLevel)
    , _ckvDestroyEventTime :: !(Maybe DateTime')
    , _ckvCreateTime       :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CryptoKeyVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ckvState'
--
-- * 'ckvAttestation'
--
-- * 'ckvGenerateTime'
--
-- * 'ckvName'
--
-- * 'ckvAlgorithm'
--
-- * 'ckvDestroyTime'
--
-- * 'ckvProtectionLevel'
--
-- * 'ckvDestroyEventTime'
--
-- * 'ckvCreateTime'
cryptoKeyVersion
    :: CryptoKeyVersion
cryptoKeyVersion =
  CryptoKeyVersion'
    { _ckvState = Nothing
    , _ckvAttestation = Nothing
    , _ckvGenerateTime = Nothing
    , _ckvName = Nothing
    , _ckvAlgorithm = Nothing
    , _ckvDestroyTime = Nothing
    , _ckvProtectionLevel = Nothing
    , _ckvDestroyEventTime = Nothing
    , _ckvCreateTime = Nothing
    }


-- | The current state of the CryptoKeyVersion.
ckvState :: Lens' CryptoKeyVersion (Maybe CryptoKeyVersionState)
ckvState = lens _ckvState (\ s a -> s{_ckvState = a})

-- | Output only. Statement that was generated and signed by the HSM at key
-- creation time. Use this statement to verify attributes of the key as
-- stored on the HSM, independently of Google. Only provided for key
-- versions with protection_level HSM.
ckvAttestation :: Lens' CryptoKeyVersion (Maybe KeyOperationAttestation)
ckvAttestation
  = lens _ckvAttestation
      (\ s a -> s{_ckvAttestation = a})

-- | Output only. The time this CryptoKeyVersion\'s key material was
-- generated.
ckvGenerateTime :: Lens' CryptoKeyVersion (Maybe UTCTime)
ckvGenerateTime
  = lens _ckvGenerateTime
      (\ s a -> s{_ckvGenerateTime = a})
      . mapping _DateTime

-- | Output only. The resource name for this CryptoKeyVersion in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\/cryptoKeyVersions\/*\`.
ckvName :: Lens' CryptoKeyVersion (Maybe Text)
ckvName = lens _ckvName (\ s a -> s{_ckvName = a})

-- | Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion
-- supports.
ckvAlgorithm :: Lens' CryptoKeyVersion (Maybe CryptoKeyVersionAlgorithm)
ckvAlgorithm
  = lens _ckvAlgorithm (\ s a -> s{_ckvAlgorithm = a})

-- | Output only. The time this CryptoKeyVersion\'s key material is scheduled
-- for destruction. Only present if state is DESTROY_SCHEDULED.
ckvDestroyTime :: Lens' CryptoKeyVersion (Maybe UTCTime)
ckvDestroyTime
  = lens _ckvDestroyTime
      (\ s a -> s{_ckvDestroyTime = a})
      . mapping _DateTime

-- | Output only. The ProtectionLevel describing how crypto operations are
-- performed with this CryptoKeyVersion.
ckvProtectionLevel :: Lens' CryptoKeyVersion (Maybe CryptoKeyVersionProtectionLevel)
ckvProtectionLevel
  = lens _ckvProtectionLevel
      (\ s a -> s{_ckvProtectionLevel = a})

-- | Output only. The time this CryptoKeyVersion\'s key material was
-- destroyed. Only present if state is DESTROYED.
ckvDestroyEventTime :: Lens' CryptoKeyVersion (Maybe UTCTime)
ckvDestroyEventTime
  = lens _ckvDestroyEventTime
      (\ s a -> s{_ckvDestroyEventTime = a})
      . mapping _DateTime

-- | Output only. The time at which this CryptoKeyVersion was created.
ckvCreateTime :: Lens' CryptoKeyVersion (Maybe UTCTime)
ckvCreateTime
  = lens _ckvCreateTime
      (\ s a -> s{_ckvCreateTime = a})
      . mapping _DateTime

instance FromJSON CryptoKeyVersion where
        parseJSON
          = withObject "CryptoKeyVersion"
              (\ o ->
                 CryptoKeyVersion' <$>
                   (o .:? "state") <*> (o .:? "attestation") <*>
                     (o .:? "generateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "destroyTime")
                     <*> (o .:? "protectionLevel")
                     <*> (o .:? "destroyEventTime")
                     <*> (o .:? "createTime"))

instance ToJSON CryptoKeyVersion where
        toJSON CryptoKeyVersion'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _ckvState,
                  ("attestation" .=) <$> _ckvAttestation,
                  ("generateTime" .=) <$> _ckvGenerateTime,
                  ("name" .=) <$> _ckvName,
                  ("algorithm" .=) <$> _ckvAlgorithm,
                  ("destroyTime" .=) <$> _ckvDestroyTime,
                  ("protectionLevel" .=) <$> _ckvProtectionLevel,
                  ("destroyEventTime" .=) <$> _ckvDestroyEventTime,
                  ("createTime" .=) <$> _ckvCreateTime])

-- | Request message for KeyManagementService.Encrypt.
--
-- /See:/ 'encryptRequest' smart constructor.
data EncryptRequest =
  EncryptRequest'
    { _erAdditionalAuthenticatedData :: !(Maybe Bytes)
    , _erPlaintext                   :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erAdditionalAuthenticatedData'
--
-- * 'erPlaintext'
encryptRequest
    :: EncryptRequest
encryptRequest =
  EncryptRequest'
    {_erAdditionalAuthenticatedData = Nothing, _erPlaintext = Nothing}


-- | Optional data that, if specified, must also be provided during
-- decryption through DecryptRequest.additional_authenticated_data. The
-- maximum size depends on the key version\'s protection_level. For
-- SOFTWARE keys, the AAD must be no larger than 64KiB. For HSM keys, the
-- combined length of the plaintext and additional_authenticated_data
-- fields must be no larger than 8KiB.
erAdditionalAuthenticatedData :: Lens' EncryptRequest (Maybe ByteString)
erAdditionalAuthenticatedData
  = lens _erAdditionalAuthenticatedData
      (\ s a -> s{_erAdditionalAuthenticatedData = a})
      . mapping _Bytes

-- | Required. The data to encrypt. Must be no larger than 64KiB. The maximum
-- size depends on the key version\'s protection_level. For SOFTWARE keys,
-- the plaintext must be no larger than 64KiB. For HSM keys, the combined
-- length of the plaintext and additional_authenticated_data fields must be
-- no larger than 8KiB.
erPlaintext :: Lens' EncryptRequest (Maybe ByteString)
erPlaintext
  = lens _erPlaintext (\ s a -> s{_erPlaintext = a}) .
      mapping _Bytes

instance FromJSON EncryptRequest where
        parseJSON
          = withObject "EncryptRequest"
              (\ o ->
                 EncryptRequest' <$>
                   (o .:? "additionalAuthenticatedData") <*>
                     (o .:? "plaintext"))

instance ToJSON EncryptRequest where
        toJSON EncryptRequest'{..}
          = object
              (catMaybes
                 [("additionalAuthenticatedData" .=) <$>
                    _erAdditionalAuthenticatedData,
                  ("plaintext" .=) <$> _erPlaintext])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` . * \`serviceAccount:{emailid}\`: An email address
-- that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`domain:{domain}\`: The G Suite domain
-- (primary) that represents all the users of that domain. For example,
-- \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. NOTE: an unsatisfied
-- condition will not allow user access via current binding. Different
-- bindings, including their conditions, are examined independently.
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
