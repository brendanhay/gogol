{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudKMS.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudKMS.Types.Product where

import Network.Google.CloudKMS.Types.Sum
import Network.Google.Prelude

-- | Response message for KeyManagementService.AsymmetricDecrypt.
--
-- /See:/ 'asymmetricDecryptResponse' smart constructor.
data AsymmetricDecryptResponse =
  AsymmetricDecryptResponse'
    { _adrPlaintextCrc32c :: !(Maybe (Textual Int64))
    , _adrPlaintext :: !(Maybe Bytes)
    , _adrProtectionLevel :: !(Maybe AsymmetricDecryptResponseProtectionLevel)
    , _adrVerifiedCiphertextCrc32c :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricDecryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrPlaintextCrc32c'
--
-- * 'adrPlaintext'
--
-- * 'adrProtectionLevel'
--
-- * 'adrVerifiedCiphertextCrc32c'
asymmetricDecryptResponse
    :: AsymmetricDecryptResponse
asymmetricDecryptResponse =
  AsymmetricDecryptResponse'
    { _adrPlaintextCrc32c = Nothing
    , _adrPlaintext = Nothing
    , _adrProtectionLevel = Nothing
    , _adrVerifiedCiphertextCrc32c = Nothing
    }


-- | Integrity verification field. A CRC32C checksum of the returned
-- AsymmetricDecryptResponse.plaintext. An integrity check of
-- AsymmetricDecryptResponse.plaintext can be performed by computing the
-- CRC32C checksum of AsymmetricDecryptResponse.plaintext and comparing
-- your results to this field. Discard the response in case of non-matching
-- checksum values, and perform a limited number of retries. A persistent
-- mismatch may indicate an issue in your computation of the CRC32C
-- checksum. Note: This field is defined as int64 for reasons of
-- compatibility across different languages. However, it is a non-negative
-- integer, which will never exceed 2^32-1, and can be safely downconverted
-- to uint32 in languages that support this type.
adrPlaintextCrc32c :: Lens' AsymmetricDecryptResponse (Maybe Int64)
adrPlaintextCrc32c
  = lens _adrPlaintextCrc32c
      (\ s a -> s{_adrPlaintextCrc32c = a})
      . mapping _Coerce

-- | The decrypted data originally encrypted with the matching public key.
adrPlaintext :: Lens' AsymmetricDecryptResponse (Maybe ByteString)
adrPlaintext
  = lens _adrPlaintext (\ s a -> s{_adrPlaintext = a})
      . mapping _Bytes

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
adrProtectionLevel :: Lens' AsymmetricDecryptResponse (Maybe AsymmetricDecryptResponseProtectionLevel)
adrProtectionLevel
  = lens _adrProtectionLevel
      (\ s a -> s{_adrProtectionLevel = a})

-- | Integrity verification field. A flag indicating whether
-- AsymmetricDecryptRequest.ciphertext_crc32c was received by
-- KeyManagementService and used for the integrity verification of the
-- ciphertext. A false value of this field indicates either that
-- AsymmetricDecryptRequest.ciphertext_crc32c was left unset or that it was
-- not delivered to KeyManagementService. If you\'ve set
-- AsymmetricDecryptRequest.ciphertext_crc32c but this field is still
-- false, discard the response and perform a limited number of retries.
adrVerifiedCiphertextCrc32c :: Lens' AsymmetricDecryptResponse (Maybe Bool)
adrVerifiedCiphertextCrc32c
  = lens _adrVerifiedCiphertextCrc32c
      (\ s a -> s{_adrVerifiedCiphertextCrc32c = a})

instance FromJSON AsymmetricDecryptResponse where
        parseJSON
          = withObject "AsymmetricDecryptResponse"
              (\ o ->
                 AsymmetricDecryptResponse' <$>
                   (o .:? "plaintextCrc32c") <*> (o .:? "plaintext") <*>
                     (o .:? "protectionLevel")
                     <*> (o .:? "verifiedCiphertextCrc32c"))

instance ToJSON AsymmetricDecryptResponse where
        toJSON AsymmetricDecryptResponse'{..}
          = object
              (catMaybes
                 [("plaintextCrc32c" .=) <$> _adrPlaintextCrc32c,
                  ("plaintext" .=) <$> _adrPlaintext,
                  ("protectionLevel" .=) <$> _adrProtectionLevel,
                  ("verifiedCiphertextCrc32c" .=) <$>
                    _adrVerifiedCiphertextCrc32c])

-- | Response message for KeyManagementService.Encrypt.
--
-- /See:/ 'encryptResponse' smart constructor.
data EncryptResponse =
  EncryptResponse'
    { _erVerifiedAdditionalAuthenticatedDataCrc32c :: !(Maybe Bool)
    , _erVerifiedPlaintextCrc32c :: !(Maybe Bool)
    , _erName :: !(Maybe Text)
    , _erProtectionLevel :: !(Maybe EncryptResponseProtectionLevel)
    , _erCiphertext :: !(Maybe Bytes)
    , _erCiphertextCrc32c :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erVerifiedAdditionalAuthenticatedDataCrc32c'
--
-- * 'erVerifiedPlaintextCrc32c'
--
-- * 'erName'
--
-- * 'erProtectionLevel'
--
-- * 'erCiphertext'
--
-- * 'erCiphertextCrc32c'
encryptResponse
    :: EncryptResponse
encryptResponse =
  EncryptResponse'
    { _erVerifiedAdditionalAuthenticatedDataCrc32c = Nothing
    , _erVerifiedPlaintextCrc32c = Nothing
    , _erName = Nothing
    , _erProtectionLevel = Nothing
    , _erCiphertext = Nothing
    , _erCiphertextCrc32c = Nothing
    }


-- | Integrity verification field. A flag indicating whether
-- EncryptRequest.additional_authenticated_data_crc32c was received by
-- KeyManagementService and used for the integrity verification of the AAD.
-- A false value of this field indicates either that
-- EncryptRequest.additional_authenticated_data_crc32c was left unset or
-- that it was not delivered to KeyManagementService. If you\'ve set
-- EncryptRequest.additional_authenticated_data_crc32c but this field is
-- still false, discard the response and perform a limited number of
-- retries.
erVerifiedAdditionalAuthenticatedDataCrc32c :: Lens' EncryptResponse (Maybe Bool)
erVerifiedAdditionalAuthenticatedDataCrc32c
  = lens _erVerifiedAdditionalAuthenticatedDataCrc32c
      (\ s a ->
         s{_erVerifiedAdditionalAuthenticatedDataCrc32c = a})

-- | Integrity verification field. A flag indicating whether
-- EncryptRequest.plaintext_crc32c was received by KeyManagementService and
-- used for the integrity verification of the plaintext. A false value of
-- this field indicates either that EncryptRequest.plaintext_crc32c was
-- left unset or that it was not delivered to KeyManagementService. If
-- you\'ve set EncryptRequest.plaintext_crc32c but this field is still
-- false, discard the response and perform a limited number of retries.
erVerifiedPlaintextCrc32c :: Lens' EncryptResponse (Maybe Bool)
erVerifiedPlaintextCrc32c
  = lens _erVerifiedPlaintextCrc32c
      (\ s a -> s{_erVerifiedPlaintextCrc32c = a})

-- | The resource name of the CryptoKeyVersion used in encryption. Check this
-- field to verify that the intended resource was used for encryption.
erName :: Lens' EncryptResponse (Maybe Text)
erName = lens _erName (\ s a -> s{_erName = a})

-- | The ProtectionLevel of the CryptoKeyVersion used in encryption.
erProtectionLevel :: Lens' EncryptResponse (Maybe EncryptResponseProtectionLevel)
erProtectionLevel
  = lens _erProtectionLevel
      (\ s a -> s{_erProtectionLevel = a})

-- | The encrypted data.
erCiphertext :: Lens' EncryptResponse (Maybe ByteString)
erCiphertext
  = lens _erCiphertext (\ s a -> s{_erCiphertext = a})
      . mapping _Bytes

-- | Integrity verification field. A CRC32C checksum of the returned
-- EncryptResponse.ciphertext. An integrity check of
-- EncryptResponse.ciphertext can be performed by computing the CRC32C
-- checksum of EncryptResponse.ciphertext and comparing your results to
-- this field. Discard the response in case of non-matching checksum
-- values, and perform a limited number of retries. A persistent mismatch
-- may indicate an issue in your computation of the CRC32C checksum. Note:
-- This field is defined as int64 for reasons of compatibility across
-- different languages. However, it is a non-negative integer, which will
-- never exceed 2^32-1, and can be safely downconverted to uint32 in
-- languages that support this type.
erCiphertextCrc32c :: Lens' EncryptResponse (Maybe Int64)
erCiphertextCrc32c
  = lens _erCiphertextCrc32c
      (\ s a -> s{_erCiphertextCrc32c = a})
      . mapping _Coerce

instance FromJSON EncryptResponse where
        parseJSON
          = withObject "EncryptResponse"
              (\ o ->
                 EncryptResponse' <$>
                   (o .:? "verifiedAdditionalAuthenticatedDataCrc32c")
                     <*> (o .:? "verifiedPlaintextCrc32c")
                     <*> (o .:? "name")
                     <*> (o .:? "protectionLevel")
                     <*> (o .:? "ciphertext")
                     <*> (o .:? "ciphertextCrc32c"))

instance ToJSON EncryptResponse where
        toJSON EncryptResponse'{..}
          = object
              (catMaybes
                 [("verifiedAdditionalAuthenticatedDataCrc32c" .=) <$>
                    _erVerifiedAdditionalAuthenticatedDataCrc32c,
                  ("verifiedPlaintextCrc32c" .=) <$>
                    _erVerifiedPlaintextCrc32c,
                  ("name" .=) <$> _erName,
                  ("protectionLevel" .=) <$> _erProtectionLevel,
                  ("ciphertext" .=) <$> _erCiphertext,
                  ("ciphertextCrc32c" .=) <$> _erCiphertextCrc32c])

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
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
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

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
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


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
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
    , _llrLocations :: !(Maybe [Location])
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
    , _lkrrTotalSize :: !(Maybe (Textual Int32))
    , _lkrrKeyRings :: !(Maybe [KeyRing])
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
data AsymmetricSignResponse =
  AsymmetricSignResponse'
    { _asrSignature :: !(Maybe Bytes)
    , _asrSignatureCrc32c :: !(Maybe (Textual Int64))
    , _asrName :: !(Maybe Text)
    , _asrProtectionLevel :: !(Maybe AsymmetricSignResponseProtectionLevel)
    , _asrVerifiedDigestCrc32c :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricSignResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrSignature'
--
-- * 'asrSignatureCrc32c'
--
-- * 'asrName'
--
-- * 'asrProtectionLevel'
--
-- * 'asrVerifiedDigestCrc32c'
asymmetricSignResponse
    :: AsymmetricSignResponse
asymmetricSignResponse =
  AsymmetricSignResponse'
    { _asrSignature = Nothing
    , _asrSignatureCrc32c = Nothing
    , _asrName = Nothing
    , _asrProtectionLevel = Nothing
    , _asrVerifiedDigestCrc32c = Nothing
    }


-- | The created signature.
asrSignature :: Lens' AsymmetricSignResponse (Maybe ByteString)
asrSignature
  = lens _asrSignature (\ s a -> s{_asrSignature = a})
      . mapping _Bytes

-- | Integrity verification field. A CRC32C checksum of the returned
-- AsymmetricSignResponse.signature. An integrity check of
-- AsymmetricSignResponse.signature can be performed by computing the
-- CRC32C checksum of AsymmetricSignResponse.signature and comparing your
-- results to this field. Discard the response in case of non-matching
-- checksum values, and perform a limited number of retries. A persistent
-- mismatch may indicate an issue in your computation of the CRC32C
-- checksum. Note: This field is defined as int64 for reasons of
-- compatibility across different languages. However, it is a non-negative
-- integer, which will never exceed 2^32-1, and can be safely downconverted
-- to uint32 in languages that support this type.
asrSignatureCrc32c :: Lens' AsymmetricSignResponse (Maybe Int64)
asrSignatureCrc32c
  = lens _asrSignatureCrc32c
      (\ s a -> s{_asrSignatureCrc32c = a})
      . mapping _Coerce

-- | The resource name of the CryptoKeyVersion used for signing. Check this
-- field to verify that the intended resource was used for signing.
asrName :: Lens' AsymmetricSignResponse (Maybe Text)
asrName = lens _asrName (\ s a -> s{_asrName = a})

-- | The ProtectionLevel of the CryptoKeyVersion used for signing.
asrProtectionLevel :: Lens' AsymmetricSignResponse (Maybe AsymmetricSignResponseProtectionLevel)
asrProtectionLevel
  = lens _asrProtectionLevel
      (\ s a -> s{_asrProtectionLevel = a})

-- | Integrity verification field. A flag indicating whether
-- AsymmetricSignRequest.digest_crc32c was received by KeyManagementService
-- and used for the integrity verification of the digest. A false value of
-- this field indicates either that AsymmetricSignRequest.digest_crc32c was
-- left unset or that it was not delivered to KeyManagementService. If
-- you\'ve set AsymmetricSignRequest.digest_crc32c but this field is still
-- false, discard the response and perform a limited number of retries.
asrVerifiedDigestCrc32c :: Lens' AsymmetricSignResponse (Maybe Bool)
asrVerifiedDigestCrc32c
  = lens _asrVerifiedDigestCrc32c
      (\ s a -> s{_asrVerifiedDigestCrc32c = a})

instance FromJSON AsymmetricSignResponse where
        parseJSON
          = withObject "AsymmetricSignResponse"
              (\ o ->
                 AsymmetricSignResponse' <$>
                   (o .:? "signature") <*> (o .:? "signatureCrc32c") <*>
                     (o .:? "name")
                     <*> (o .:? "protectionLevel")
                     <*> (o .:? "verifiedDigestCrc32c"))

instance ToJSON AsymmetricSignResponse where
        toJSON AsymmetricSignResponse'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _asrSignature,
                  ("signatureCrc32c" .=) <$> _asrSignatureCrc32c,
                  ("name" .=) <$> _asrName,
                  ("protectionLevel" .=) <$> _asrProtectionLevel,
                  ("verifiedDigestCrc32c" .=) <$>
                    _asrVerifiedDigestCrc32c])

-- | The public key component of the wrapping key. For details of the type of
-- key this public key corresponds to, see the ImportMethod.
--
-- /See:/ 'wrAppingPublicKey' smart constructor.
newtype WrAppingPublicKey =
  WrAppingPublicKey'
    { _wapkPem :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WrAppingPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wapkPem'
wrAppingPublicKey
    :: WrAppingPublicKey
wrAppingPublicKey = WrAppingPublicKey' {_wapkPem = Nothing}


-- | The public key, encoded in PEM format. For more information, see the
-- [RFC 7468](https:\/\/tools.ietf.org\/html\/rfc7468) sections for
-- [General
-- Considerations](https:\/\/tools.ietf.org\/html\/rfc7468#section-2) and
-- [Textual Encoding of Subject Public Key Info]
-- (https:\/\/tools.ietf.org\/html\/rfc7468#section-13).
wapkPem :: Lens' WrAppingPublicKey (Maybe Text)
wapkPem = lens _wapkPem (\ s a -> s{_wapkPem = a})

instance FromJSON WrAppingPublicKey where
        parseJSON
          = withObject "WrAppingPublicKey"
              (\ o -> WrAppingPublicKey' <$> (o .:? "pem"))

instance ToJSON WrAppingPublicKey where
        toJSON WrAppingPublicKey'{..}
          = object (catMaybes [("pem" .=) <$> _wapkPem])

-- | A KeyRing is a toplevel logical grouping of CryptoKeys.
--
-- /See:/ 'keyRing' smart constructor.
data KeyRing =
  KeyRing'
    { _krName :: !(Maybe Text)
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
    { _lName :: !(Maybe Text)
    , _lMetadata :: !(Maybe LocationSchema)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels :: !(Maybe LocationLabels)
    , _lLocationId :: !(Maybe Text)
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
data AsymmetricSignRequest =
  AsymmetricSignRequest'
    { _asrDigest :: !(Maybe Digest)
    , _asrDigestCrc32c :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricSignRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrDigest'
--
-- * 'asrDigestCrc32c'
asymmetricSignRequest
    :: AsymmetricSignRequest
asymmetricSignRequest =
  AsymmetricSignRequest' {_asrDigest = Nothing, _asrDigestCrc32c = Nothing}


-- | Optional. The digest of the data to sign. The digest must be produced
-- with the same digest algorithm as specified by the key version\'s
-- algorithm.
asrDigest :: Lens' AsymmetricSignRequest (Maybe Digest)
asrDigest
  = lens _asrDigest (\ s a -> s{_asrDigest = a})

-- | Optional. An optional CRC32C checksum of the
-- AsymmetricSignRequest.digest. If specified, KeyManagementService will
-- verify the integrity of the received AsymmetricSignRequest.digest using
-- this checksum. KeyManagementService will report an error if the checksum
-- verification fails. If you receive a checksum error, your client should
-- verify that CRC32C(AsymmetricSignRequest.digest) is equal to
-- AsymmetricSignRequest.digest_crc32c, and if so, perform a limited number
-- of retries. A persistent mismatch may indicate an issue in your
-- computation of the CRC32C checksum. Note: This field is defined as int64
-- for reasons of compatibility across different languages. However, it is
-- a non-negative integer, which will never exceed 2^32-1, and can be
-- safely downconverted to uint32 in languages that support this type.
asrDigestCrc32c :: Lens' AsymmetricSignRequest (Maybe Int64)
asrDigestCrc32c
  = lens _asrDigestCrc32c
      (\ s a -> s{_asrDigestCrc32c = a})
      . mapping _Coerce

instance FromJSON AsymmetricSignRequest where
        parseJSON
          = withObject "AsymmetricSignRequest"
              (\ o ->
                 AsymmetricSignRequest' <$>
                   (o .:? "digest") <*> (o .:? "digestCrc32c"))

instance ToJSON AsymmetricSignRequest where
        toJSON AsymmetricSignRequest'{..}
          = object
              (catMaybes
                 [("digest" .=) <$> _asrDigest,
                  ("digestCrc32c" .=) <$> _asrDigestCrc32c])

-- | Response message for KeyManagementService.ListImportJobs.
--
-- /See:/ 'listImportJobsResponse' smart constructor.
data ListImportJobsResponse =
  ListImportJobsResponse'
    { _lijrNextPageToken :: !(Maybe Text)
    , _lijrImportJobs :: !(Maybe [ImportJob])
    , _lijrTotalSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListImportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lijrNextPageToken'
--
-- * 'lijrImportJobs'
--
-- * 'lijrTotalSize'
listImportJobsResponse
    :: ListImportJobsResponse
listImportJobsResponse =
  ListImportJobsResponse'
    { _lijrNextPageToken = Nothing
    , _lijrImportJobs = Nothing
    , _lijrTotalSize = Nothing
    }


-- | A token to retrieve next page of results. Pass this value in
-- ListImportJobsRequest.page_token to retrieve the next page of results.
lijrNextPageToken :: Lens' ListImportJobsResponse (Maybe Text)
lijrNextPageToken
  = lens _lijrNextPageToken
      (\ s a -> s{_lijrNextPageToken = a})

-- | The list of ImportJobs.
lijrImportJobs :: Lens' ListImportJobsResponse [ImportJob]
lijrImportJobs
  = lens _lijrImportJobs
      (\ s a -> s{_lijrImportJobs = a})
      . _Default
      . _Coerce

-- | The total number of ImportJobs that matched the query.
lijrTotalSize :: Lens' ListImportJobsResponse (Maybe Int32)
lijrTotalSize
  = lens _lijrTotalSize
      (\ s a -> s{_lijrTotalSize = a})
      . mapping _Coerce

instance FromJSON ListImportJobsResponse where
        parseJSON
          = withObject "ListImportJobsResponse"
              (\ o ->
                 ListImportJobsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "importJobs" .!= mempty)
                     <*> (o .:? "totalSize"))

instance ToJSON ListImportJobsResponse where
        toJSON ListImportJobsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lijrNextPageToken,
                  ("importJobs" .=) <$> _lijrImportJobs,
                  ("totalSize" .=) <$> _lijrTotalSize])

-- | Certificate chains needed to verify the attestation. Certificates in
-- chains are PEM-encoded and are ordered based on
-- https:\/\/tools.ietf.org\/html\/rfc5246#section-7.4.2.
--
-- /See:/ 'certificateChains' smart constructor.
data CertificateChains =
  CertificateChains'
    { _ccGooglePartitionCerts :: !(Maybe [Text])
    , _ccGoogleCardCerts :: !(Maybe [Text])
    , _ccCaviumCerts :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CertificateChains' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccGooglePartitionCerts'
--
-- * 'ccGoogleCardCerts'
--
-- * 'ccCaviumCerts'
certificateChains
    :: CertificateChains
certificateChains =
  CertificateChains'
    { _ccGooglePartitionCerts = Nothing
    , _ccGoogleCardCerts = Nothing
    , _ccCaviumCerts = Nothing
    }


-- | Google partition certificate chain corresponding to the attestation.
ccGooglePartitionCerts :: Lens' CertificateChains [Text]
ccGooglePartitionCerts
  = lens _ccGooglePartitionCerts
      (\ s a -> s{_ccGooglePartitionCerts = a})
      . _Default
      . _Coerce

-- | Google card certificate chain corresponding to the attestation.
ccGoogleCardCerts :: Lens' CertificateChains [Text]
ccGoogleCardCerts
  = lens _ccGoogleCardCerts
      (\ s a -> s{_ccGoogleCardCerts = a})
      . _Default
      . _Coerce

-- | Cavium certificate chain corresponding to the attestation.
ccCaviumCerts :: Lens' CertificateChains [Text]
ccCaviumCerts
  = lens _ccCaviumCerts
      (\ s a -> s{_ccCaviumCerts = a})
      . _Default
      . _Coerce

instance FromJSON CertificateChains where
        parseJSON
          = withObject "CertificateChains"
              (\ o ->
                 CertificateChains' <$>
                   (o .:? "googlePartitionCerts" .!= mempty) <*>
                     (o .:? "googleCardCerts" .!= mempty)
                     <*> (o .:? "caviumCerts" .!= mempty))

instance ToJSON CertificateChains where
        toJSON CertificateChains'{..}
          = object
              (catMaybes
                 [("googlePartitionCerts" .=) <$>
                    _ccGooglePartitionCerts,
                  ("googleCardCerts" .=) <$> _ccGoogleCardCerts,
                  ("caviumCerts" .=) <$> _ccCaviumCerts])

-- | The public key for a given CryptoKeyVersion. Obtained via GetPublicKey.
--
-- /See:/ 'publicKey' smart constructor.
data PublicKey =
  PublicKey'
    { _pkPem :: !(Maybe Text)
    , _pkPemCrc32c :: !(Maybe (Textual Int64))
    , _pkName :: !(Maybe Text)
    , _pkAlgorithm :: !(Maybe PublicKeyAlgorithm)
    , _pkProtectionLevel :: !(Maybe PublicKeyProtectionLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkPem'
--
-- * 'pkPemCrc32c'
--
-- * 'pkName'
--
-- * 'pkAlgorithm'
--
-- * 'pkProtectionLevel'
publicKey
    :: PublicKey
publicKey =
  PublicKey'
    { _pkPem = Nothing
    , _pkPemCrc32c = Nothing
    , _pkName = Nothing
    , _pkAlgorithm = Nothing
    , _pkProtectionLevel = Nothing
    }


-- | The public key, encoded in PEM format. For more information, see the
-- [RFC 7468](https:\/\/tools.ietf.org\/html\/rfc7468) sections for
-- [General
-- Considerations](https:\/\/tools.ietf.org\/html\/rfc7468#section-2) and
-- [Textual Encoding of Subject Public Key Info]
-- (https:\/\/tools.ietf.org\/html\/rfc7468#section-13).
pkPem :: Lens' PublicKey (Maybe Text)
pkPem = lens _pkPem (\ s a -> s{_pkPem = a})

-- | Integrity verification field. A CRC32C checksum of the returned
-- PublicKey.pem. An integrity check of PublicKey.pem can be performed by
-- computing the CRC32C checksum of PublicKey.pem and comparing your
-- results to this field. Discard the response in case of non-matching
-- checksum values, and perform a limited number of retries. A persistent
-- mismatch may indicate an issue in your computation of the CRC32C
-- checksum. Note: This field is defined as int64 for reasons of
-- compatibility across different languages. However, it is a non-negative
-- integer, which will never exceed 2^32-1, and can be safely downconverted
-- to uint32 in languages that support this type. NOTE: This field is in
-- Beta.
pkPemCrc32c :: Lens' PublicKey (Maybe Int64)
pkPemCrc32c
  = lens _pkPemCrc32c (\ s a -> s{_pkPemCrc32c = a}) .
      mapping _Coerce

-- | The name of the CryptoKeyVersion public key. Provided here for
-- verification. NOTE: This field is in Beta.
pkName :: Lens' PublicKey (Maybe Text)
pkName = lens _pkName (\ s a -> s{_pkName = a})

-- | The Algorithm associated with this key.
pkAlgorithm :: Lens' PublicKey (Maybe PublicKeyAlgorithm)
pkAlgorithm
  = lens _pkAlgorithm (\ s a -> s{_pkAlgorithm = a})

-- | The ProtectionLevel of the CryptoKeyVersion public key.
pkProtectionLevel :: Lens' PublicKey (Maybe PublicKeyProtectionLevel)
pkProtectionLevel
  = lens _pkProtectionLevel
      (\ s a -> s{_pkProtectionLevel = a})

instance FromJSON PublicKey where
        parseJSON
          = withObject "PublicKey"
              (\ o ->
                 PublicKey' <$>
                   (o .:? "pem") <*> (o .:? "pemCrc32c") <*>
                     (o .:? "name")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "protectionLevel"))

instance ToJSON PublicKey where
        toJSON PublicKey'{..}
          = object
              (catMaybes
                 [("pem" .=) <$> _pkPem,
                  ("pemCrc32c" .=) <$> _pkPemCrc32c,
                  ("name" .=) <$> _pkName,
                  ("algorithm" .=) <$> _pkAlgorithm,
                  ("protectionLevel" .=) <$> _pkProtectionLevel])

-- | Response message for KeyManagementService.Decrypt.
--
-- /See:/ 'decryptResponse' smart constructor.
data DecryptResponse =
  DecryptResponse'
    { _drUsedPrimary :: !(Maybe Bool)
    , _drPlaintextCrc32c :: !(Maybe (Textual Int64))
    , _drPlaintext :: !(Maybe Bytes)
    , _drProtectionLevel :: !(Maybe DecryptResponseProtectionLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DecryptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drUsedPrimary'
--
-- * 'drPlaintextCrc32c'
--
-- * 'drPlaintext'
--
-- * 'drProtectionLevel'
decryptResponse
    :: DecryptResponse
decryptResponse =
  DecryptResponse'
    { _drUsedPrimary = Nothing
    , _drPlaintextCrc32c = Nothing
    , _drPlaintext = Nothing
    , _drProtectionLevel = Nothing
    }


-- | Whether the Decryption was performed using the primary key version.
drUsedPrimary :: Lens' DecryptResponse (Maybe Bool)
drUsedPrimary
  = lens _drUsedPrimary
      (\ s a -> s{_drUsedPrimary = a})

-- | Integrity verification field. A CRC32C checksum of the returned
-- DecryptResponse.plaintext. An integrity check of
-- DecryptResponse.plaintext can be performed by computing the CRC32C
-- checksum of DecryptResponse.plaintext and comparing your results to this
-- field. Discard the response in case of non-matching checksum values, and
-- perform a limited number of retries. A persistent mismatch may indicate
-- an issue in your computation of the CRC32C checksum. Note: receiving
-- this response message indicates that KeyManagementService is able to
-- successfully decrypt the ciphertext. Note: This field is defined as
-- int64 for reasons of compatibility across different languages. However,
-- it is a non-negative integer, which will never exceed 2^32-1, and can be
-- safely downconverted to uint32 in languages that support this type.
drPlaintextCrc32c :: Lens' DecryptResponse (Maybe Int64)
drPlaintextCrc32c
  = lens _drPlaintextCrc32c
      (\ s a -> s{_drPlaintextCrc32c = a})
      . mapping _Coerce

-- | The decrypted data originally supplied in EncryptRequest.plaintext.
drPlaintext :: Lens' DecryptResponse (Maybe ByteString)
drPlaintext
  = lens _drPlaintext (\ s a -> s{_drPlaintext = a}) .
      mapping _Bytes

-- | The ProtectionLevel of the CryptoKeyVersion used in decryption.
drProtectionLevel :: Lens' DecryptResponse (Maybe DecryptResponseProtectionLevel)
drProtectionLevel
  = lens _drProtectionLevel
      (\ s a -> s{_drProtectionLevel = a})

instance FromJSON DecryptResponse where
        parseJSON
          = withObject "DecryptResponse"
              (\ o ->
                 DecryptResponse' <$>
                   (o .:? "usedPrimary") <*> (o .:? "plaintextCrc32c")
                     <*> (o .:? "plaintext")
                     <*> (o .:? "protectionLevel"))

instance ToJSON DecryptResponse where
        toJSON DecryptResponse'{..}
          = object
              (catMaybes
                 [("usedPrimary" .=) <$> _drUsedPrimary,
                  ("plaintextCrc32c" .=) <$> _drPlaintextCrc32c,
                  ("plaintext" .=) <$> _drPlaintext,
                  ("protectionLevel" .=) <$> _drProtectionLevel])

-- | A CryptoKeyVersionTemplate specifies the properties to use when creating
-- a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or
-- automatically as a result of auto-rotation.
--
-- /See:/ 'cryptoKeyVersionTemplate' smart constructor.
data CryptoKeyVersionTemplate =
  CryptoKeyVersionTemplate'
    { _ckvtAlgorithm :: !(Maybe CryptoKeyVersionTemplateAlgorithm)
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
    , _siprPolicy :: !(Maybe Policy)
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
-- the following default mask is used: \`paths: \"bindings, etag\"\`
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
-- Keys](https:\/\/cloud.google.com\/kms\/docs\/labeling-keys).
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
-- operations. A CryptoKey is made up of zero or more versions, which
-- represent the actual key material used in cryptographic operations.
--
-- /See:/ 'cryptoKey' smart constructor.
data CryptoKey =
  CryptoKey'
    { _ckVersionTemplate :: !(Maybe CryptoKeyVersionTemplate)
    , _ckPurpose :: !(Maybe CryptoKeyPurpose)
    , _ckRotationPeriod :: !(Maybe GDuration)
    , _ckPrimary :: !(Maybe CryptoKeyVersion)
    , _ckName :: !(Maybe Text)
    , _ckLabels :: !(Maybe CryptoKeyLabels)
    , _ckNextRotationTime :: !(Maybe DateTime')
    , _ckCreateTime :: !(Maybe DateTime')
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

-- | Immutable. The immutable purpose of this CryptoKey.
ckPurpose :: Lens' CryptoKey (Maybe CryptoKeyPurpose)
ckPurpose
  = lens _ckPurpose (\ s a -> s{_ckPurpose = a})

-- | next_rotation_time will be advanced by this period when the service
-- automatically rotates a key. Must be at least 24 hours and at most
-- 876,000 hours. If rotation_period is set, next_rotation_time must also
-- be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation.
-- For other keys, this field must be omitted.
ckRotationPeriod :: Lens' CryptoKey (Maybe Scientific)
ckRotationPeriod
  = lens _ckRotationPeriod
      (\ s a -> s{_ckRotationPeriod = a})
      . mapping _GDuration

-- | Output only. A copy of the \"primary\" CryptoKeyVersion that will be
-- used by Encrypt when this CryptoKey is given in EncryptRequest.name. The
-- CryptoKey\'s primary version can be updated via
-- UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may
-- have a primary. For other keys, this field will be omitted.
ckPrimary :: Lens' CryptoKey (Maybe CryptoKeyVersion)
ckPrimary
  = lens _ckPrimary (\ s a -> s{_ckPrimary = a})

-- | Output only. The resource name for this CryptoKey in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*\`.
ckName :: Lens' CryptoKey (Maybe Text)
ckName = lens _ckName (\ s a -> s{_ckName = a})

-- | Labels with user-defined metadata. For more information, see [Labeling
-- Keys](https:\/\/cloud.google.com\/kms\/docs\/labeling-keys).
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
    , _drAdditionalAuthenticatedDataCrc32c :: !(Maybe (Textual Int64))
    , _drCiphertext :: !(Maybe Bytes)
    , _drCiphertextCrc32c :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DecryptRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drAdditionalAuthenticatedData'
--
-- * 'drAdditionalAuthenticatedDataCrc32c'
--
-- * 'drCiphertext'
--
-- * 'drCiphertextCrc32c'
decryptRequest
    :: DecryptRequest
decryptRequest =
  DecryptRequest'
    { _drAdditionalAuthenticatedData = Nothing
    , _drAdditionalAuthenticatedDataCrc32c = Nothing
    , _drCiphertext = Nothing
    , _drCiphertextCrc32c = Nothing
    }


-- | Optional. Optional data that must match the data originally supplied in
-- EncryptRequest.additional_authenticated_data.
drAdditionalAuthenticatedData :: Lens' DecryptRequest (Maybe ByteString)
drAdditionalAuthenticatedData
  = lens _drAdditionalAuthenticatedData
      (\ s a -> s{_drAdditionalAuthenticatedData = a})
      . mapping _Bytes

-- | Optional. An optional CRC32C checksum of the
-- DecryptRequest.additional_authenticated_data. If specified,
-- KeyManagementService will verify the integrity of the received
-- DecryptRequest.additional_authenticated_data using this checksum.
-- KeyManagementService will report an error if the checksum verification
-- fails. If you receive a checksum error, your client should verify that
-- CRC32C(DecryptRequest.additional_authenticated_data) is equal to
-- DecryptRequest.additional_authenticated_data_crc32c, and if so, perform
-- a limited number of retries. A persistent mismatch may indicate an issue
-- in your computation of the CRC32C checksum. Note: This field is defined
-- as int64 for reasons of compatibility across different languages.
-- However, it is a non-negative integer, which will never exceed 2^32-1,
-- and can be safely downconverted to uint32 in languages that support this
-- type.
drAdditionalAuthenticatedDataCrc32c :: Lens' DecryptRequest (Maybe Int64)
drAdditionalAuthenticatedDataCrc32c
  = lens _drAdditionalAuthenticatedDataCrc32c
      (\ s a ->
         s{_drAdditionalAuthenticatedDataCrc32c = a})
      . mapping _Coerce

-- | Required. The encrypted data originally returned in
-- EncryptResponse.ciphertext.
drCiphertext :: Lens' DecryptRequest (Maybe ByteString)
drCiphertext
  = lens _drCiphertext (\ s a -> s{_drCiphertext = a})
      . mapping _Bytes

-- | Optional. An optional CRC32C checksum of the DecryptRequest.ciphertext.
-- If specified, KeyManagementService will verify the integrity of the
-- received DecryptRequest.ciphertext using this checksum.
-- KeyManagementService will report an error if the checksum verification
-- fails. If you receive a checksum error, your client should verify that
-- CRC32C(DecryptRequest.ciphertext) is equal to
-- DecryptRequest.ciphertext_crc32c, and if so, perform a limited number of
-- retries. A persistent mismatch may indicate an issue in your computation
-- of the CRC32C checksum. Note: This field is defined as int64 for reasons
-- of compatibility across different languages. However, it is a
-- non-negative integer, which will never exceed 2^32-1, and can be safely
-- downconverted to uint32 in languages that support this type.
drCiphertextCrc32c :: Lens' DecryptRequest (Maybe Int64)
drCiphertextCrc32c
  = lens _drCiphertextCrc32c
      (\ s a -> s{_drCiphertextCrc32c = a})
      . mapping _Coerce

instance FromJSON DecryptRequest where
        parseJSON
          = withObject "DecryptRequest"
              (\ o ->
                 DecryptRequest' <$>
                   (o .:? "additionalAuthenticatedData") <*>
                     (o .:? "additionalAuthenticatedDataCrc32c")
                     <*> (o .:? "ciphertext")
                     <*> (o .:? "ciphertextCrc32c"))

instance ToJSON DecryptRequest where
        toJSON DecryptRequest'{..}
          = object
              (catMaybes
                 [("additionalAuthenticatedData" .=) <$>
                    _drAdditionalAuthenticatedData,
                  ("additionalAuthenticatedDataCrc32c" .=) <$>
                    _drAdditionalAuthenticatedDataCrc32c,
                  ("ciphertext" .=) <$> _drCiphertext,
                  ("ciphertextCrc32c" .=) <$> _drCiphertextCrc32c])

-- | Contains an HSM-generated attestation about a key operation. For more
-- information, see [Verifying attestations]
-- (https:\/\/cloud.google.com\/kms\/docs\/attest-key).
--
-- /See:/ 'keyOperationAttestation' smart constructor.
data KeyOperationAttestation =
  KeyOperationAttestation'
    { _koaFormat :: !(Maybe KeyOperationAttestationFormat)
    , _koaContent :: !(Maybe Bytes)
    , _koaCertChains :: !(Maybe CertificateChains)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyOperationAttestation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'koaFormat'
--
-- * 'koaContent'
--
-- * 'koaCertChains'
keyOperationAttestation
    :: KeyOperationAttestation
keyOperationAttestation =
  KeyOperationAttestation'
    {_koaFormat = Nothing, _koaContent = Nothing, _koaCertChains = Nothing}


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

-- | Output only. The certificate chains needed to validate the attestation
koaCertChains :: Lens' KeyOperationAttestation (Maybe CertificateChains)
koaCertChains
  = lens _koaCertChains
      (\ s a -> s{_koaCertChains = a})

instance FromJSON KeyOperationAttestation where
        parseJSON
          = withObject "KeyOperationAttestation"
              (\ o ->
                 KeyOperationAttestation' <$>
                   (o .:? "format") <*> (o .:? "content") <*>
                     (o .:? "certChains"))

instance ToJSON KeyOperationAttestation where
        toJSON KeyOperationAttestation'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _koaFormat,
                  ("content" .=) <$> _koaContent,
                  ("certChains" .=) <$> _koaCertChains])

-- | Response message for KeyManagementService.ListCryptoKeyVersions.
--
-- /See:/ 'listCryptoKeyVersionsResponse' smart constructor.
data ListCryptoKeyVersionsResponse =
  ListCryptoKeyVersionsResponse'
    { _lckvrNextPageToken :: !(Maybe Text)
    , _lckvrTotalSize :: !(Maybe (Textual Int32))
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


-- | Required. The id of the child CryptoKeyVersion to use as primary.
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

-- | An ImportJob can be used to create CryptoKeys and CryptoKeyVersions
-- using pre-existing key material, generated outside of Cloud KMS. When an
-- ImportJob is created, Cloud KMS will generate a \"wrapping key\", which
-- is a public\/private key pair. You use the wrapping key to encrypt (also
-- known as wrap) the pre-existing key material to protect it during the
-- import process. The nature of the wrapping key depends on the choice of
-- import_method. When the wrapping key generation is complete, the state
-- will be set to ACTIVE and the public_key can be fetched. The fetched
-- public key can then be used to wrap your pre-existing key material. Once
-- the key material is wrapped, it can be imported into a new
-- CryptoKeyVersion in an existing CryptoKey by calling
-- ImportCryptoKeyVersion. Multiple CryptoKeyVersions can be imported with
-- a single ImportJob. Cloud KMS uses the private key portion of the
-- wrapping key to unwrap the key material. Only Cloud KMS has access to
-- the private key. An ImportJob expires 3 days after it is created. Once
-- expired, Cloud KMS will no longer be able to import or unwrap any key
-- material that was wrapped with the ImportJob\'s public key. For more
-- information, see [Importing a
-- key](https:\/\/cloud.google.com\/kms\/docs\/importing-a-key).
--
-- /See:/ 'importJob' smart constructor.
data ImportJob =
  ImportJob'
    { _ijState :: !(Maybe ImportJobState)
    , _ijImportMethod :: !(Maybe ImportJobImportMethod)
    , _ijAttestation :: !(Maybe KeyOperationAttestation)
    , _ijPublicKey :: !(Maybe WrAppingPublicKey)
    , _ijGenerateTime :: !(Maybe DateTime')
    , _ijName :: !(Maybe Text)
    , _ijExpireEventTime :: !(Maybe DateTime')
    , _ijProtectionLevel :: !(Maybe ImportJobProtectionLevel)
    , _ijExpireTime :: !(Maybe DateTime')
    , _ijCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijState'
--
-- * 'ijImportMethod'
--
-- * 'ijAttestation'
--
-- * 'ijPublicKey'
--
-- * 'ijGenerateTime'
--
-- * 'ijName'
--
-- * 'ijExpireEventTime'
--
-- * 'ijProtectionLevel'
--
-- * 'ijExpireTime'
--
-- * 'ijCreateTime'
importJob
    :: ImportJob
importJob =
  ImportJob'
    { _ijState = Nothing
    , _ijImportMethod = Nothing
    , _ijAttestation = Nothing
    , _ijPublicKey = Nothing
    , _ijGenerateTime = Nothing
    , _ijName = Nothing
    , _ijExpireEventTime = Nothing
    , _ijProtectionLevel = Nothing
    , _ijExpireTime = Nothing
    , _ijCreateTime = Nothing
    }


-- | Output only. The current state of the ImportJob, indicating if it can be
-- used.
ijState :: Lens' ImportJob (Maybe ImportJobState)
ijState = lens _ijState (\ s a -> s{_ijState = a})

-- | Required. Immutable. The wrapping method to be used for incoming key
-- material.
ijImportMethod :: Lens' ImportJob (Maybe ImportJobImportMethod)
ijImportMethod
  = lens _ijImportMethod
      (\ s a -> s{_ijImportMethod = a})

-- | Output only. Statement that was generated and signed by the key creator
-- (for example, an HSM) at key creation time. Use this statement to verify
-- attributes of the key as stored on the HSM, independently of Google.
-- Only present if the chosen ImportMethod is one with a protection level
-- of HSM.
ijAttestation :: Lens' ImportJob (Maybe KeyOperationAttestation)
ijAttestation
  = lens _ijAttestation
      (\ s a -> s{_ijAttestation = a})

-- | Output only. The public key with which to wrap key material prior to
-- import. Only returned if state is ACTIVE.
ijPublicKey :: Lens' ImportJob (Maybe WrAppingPublicKey)
ijPublicKey
  = lens _ijPublicKey (\ s a -> s{_ijPublicKey = a})

-- | Output only. The time this ImportJob\'s key material was generated.
ijGenerateTime :: Lens' ImportJob (Maybe UTCTime)
ijGenerateTime
  = lens _ijGenerateTime
      (\ s a -> s{_ijGenerateTime = a})
      . mapping _DateTime

-- | Output only. The resource name for this ImportJob in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\/importJobs\/*\`.
ijName :: Lens' ImportJob (Maybe Text)
ijName = lens _ijName (\ s a -> s{_ijName = a})

-- | Output only. The time this ImportJob expired. Only present if state is
-- EXPIRED.
ijExpireEventTime :: Lens' ImportJob (Maybe UTCTime)
ijExpireEventTime
  = lens _ijExpireEventTime
      (\ s a -> s{_ijExpireEventTime = a})
      . mapping _DateTime

-- | Required. Immutable. The protection level of the ImportJob. This must
-- match the protection_level of the version_template on the CryptoKey you
-- attempt to import into.
ijProtectionLevel :: Lens' ImportJob (Maybe ImportJobProtectionLevel)
ijProtectionLevel
  = lens _ijProtectionLevel
      (\ s a -> s{_ijProtectionLevel = a})

-- | Output only. The time at which this ImportJob is scheduled for
-- expiration and can no longer be used to import key material.
ijExpireTime :: Lens' ImportJob (Maybe UTCTime)
ijExpireTime
  = lens _ijExpireTime (\ s a -> s{_ijExpireTime = a})
      . mapping _DateTime

-- | Output only. The time at which this ImportJob was created.
ijCreateTime :: Lens' ImportJob (Maybe UTCTime)
ijCreateTime
  = lens _ijCreateTime (\ s a -> s{_ijCreateTime = a})
      . mapping _DateTime

instance FromJSON ImportJob where
        parseJSON
          = withObject "ImportJob"
              (\ o ->
                 ImportJob' <$>
                   (o .:? "state") <*> (o .:? "importMethod") <*>
                     (o .:? "attestation")
                     <*> (o .:? "publicKey")
                     <*> (o .:? "generateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "expireEventTime")
                     <*> (o .:? "protectionLevel")
                     <*> (o .:? "expireTime")
                     <*> (o .:? "createTime"))

instance ToJSON ImportJob where
        toJSON ImportJob'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _ijState,
                  ("importMethod" .=) <$> _ijImportMethod,
                  ("attestation" .=) <$> _ijAttestation,
                  ("publicKey" .=) <$> _ijPublicKey,
                  ("generateTime" .=) <$> _ijGenerateTime,
                  ("name" .=) <$> _ijName,
                  ("expireEventTime" .=) <$> _ijExpireEventTime,
                  ("protectionLevel" .=) <$> _ijProtectionLevel,
                  ("expireTime" .=) <$> _ijExpireTime,
                  ("createTime" .=) <$> _ijCreateTime])

-- | Request message for KeyManagementService.ImportCryptoKeyVersion.
--
-- /See:/ 'importCryptoKeyVersionRequest' smart constructor.
data ImportCryptoKeyVersionRequest =
  ImportCryptoKeyVersionRequest'
    { _ickvrRsaAESWrAppedKey :: !(Maybe Bytes)
    , _ickvrAlgorithm :: !(Maybe ImportCryptoKeyVersionRequestAlgorithm)
    , _ickvrImportJob :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportCryptoKeyVersionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ickvrRsaAESWrAppedKey'
--
-- * 'ickvrAlgorithm'
--
-- * 'ickvrImportJob'
importCryptoKeyVersionRequest
    :: ImportCryptoKeyVersionRequest
importCryptoKeyVersionRequest =
  ImportCryptoKeyVersionRequest'
    { _ickvrRsaAESWrAppedKey = Nothing
    , _ickvrAlgorithm = Nothing
    , _ickvrImportJob = Nothing
    }


-- | Wrapped key material produced with RSA_OAEP_3072_SHA1_AES_256 or
-- RSA_OAEP_4096_SHA1_AES_256. This field contains the concatenation of two
-- wrapped keys: 1. An ephemeral AES-256 wrapping key wrapped with the
-- public_key using RSAES-OAEP with SHA-1, MGF1 with SHA-1, and an empty
-- label. 2. The key to be imported, wrapped with the ephemeral AES-256 key
-- using AES-KWP (RFC 5649). If importing symmetric key material, it is
-- expected that the unwrapped key contains plain bytes. If importing
-- asymmetric key material, it is expected that the unwrapped key is in
-- PKCS#8-encoded DER format (the PrivateKeyInfo structure from RFC 5208).
-- This format is the same as the format produced by PKCS#11 mechanism
-- CKM_RSA_AES_KEY_WRAP.
ickvrRsaAESWrAppedKey :: Lens' ImportCryptoKeyVersionRequest (Maybe ByteString)
ickvrRsaAESWrAppedKey
  = lens _ickvrRsaAESWrAppedKey
      (\ s a -> s{_ickvrRsaAESWrAppedKey = a})
      . mapping _Bytes

-- | Required. The algorithm of the key being imported. This does not need to
-- match the version_template of the CryptoKey this version imports into.
ickvrAlgorithm :: Lens' ImportCryptoKeyVersionRequest (Maybe ImportCryptoKeyVersionRequestAlgorithm)
ickvrAlgorithm
  = lens _ickvrAlgorithm
      (\ s a -> s{_ickvrAlgorithm = a})

-- | Required. The name of the ImportJob that was used to wrap this key
-- material.
ickvrImportJob :: Lens' ImportCryptoKeyVersionRequest (Maybe Text)
ickvrImportJob
  = lens _ickvrImportJob
      (\ s a -> s{_ickvrImportJob = a})

instance FromJSON ImportCryptoKeyVersionRequest where
        parseJSON
          = withObject "ImportCryptoKeyVersionRequest"
              (\ o ->
                 ImportCryptoKeyVersionRequest' <$>
                   (o .:? "rsaAesWrappedKey") <*> (o .:? "algorithm")
                     <*> (o .:? "importJob"))

instance ToJSON ImportCryptoKeyVersionRequest where
        toJSON ImportCryptoKeyVersionRequest'{..}
          = object
              (catMaybes
                 [("rsaAesWrappedKey" .=) <$> _ickvrRsaAESWrAppedKey,
                  ("algorithm" .=) <$> _ickvrAlgorithm,
                  ("importJob" .=) <$> _ickvrImportJob])

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

-- | ExternalProtectionLevelOptions stores a group of additional fields for
-- configuring a CryptoKeyVersion that are specific to the EXTERNAL
-- protection level.
--
-- /See:/ 'externalProtectionLevelOptions' smart constructor.
newtype ExternalProtectionLevelOptions =
  ExternalProtectionLevelOptions'
    { _eploExternalKeyURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalProtectionLevelOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eploExternalKeyURI'
externalProtectionLevelOptions
    :: ExternalProtectionLevelOptions
externalProtectionLevelOptions =
  ExternalProtectionLevelOptions' {_eploExternalKeyURI = Nothing}


-- | The URI for an external resource that this CryptoKeyVersion represents.
eploExternalKeyURI :: Lens' ExternalProtectionLevelOptions (Maybe Text)
eploExternalKeyURI
  = lens _eploExternalKeyURI
      (\ s a -> s{_eploExternalKeyURI = a})

instance FromJSON ExternalProtectionLevelOptions
         where
        parseJSON
          = withObject "ExternalProtectionLevelOptions"
              (\ o ->
                 ExternalProtectionLevelOptions' <$>
                   (o .:? "externalKeyUri"))

instance ToJSON ExternalProtectionLevelOptions where
        toJSON ExternalProtectionLevelOptions'{..}
          = object
              (catMaybes
                 [("externalKeyUri" .=) <$> _eploExternalKeyURI])

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

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
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
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
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
data LocationMetadata =
  LocationMetadata'
    { _lmHSMAvailable :: !(Maybe Bool)
    , _lmEkmAvailable :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmHSMAvailable'
--
-- * 'lmEkmAvailable'
locationMetadata
    :: LocationMetadata
locationMetadata =
  LocationMetadata' {_lmHSMAvailable = Nothing, _lmEkmAvailable = Nothing}


-- | Indicates whether CryptoKeys with protection_level HSM can be created in
-- this location.
lmHSMAvailable :: Lens' LocationMetadata (Maybe Bool)
lmHSMAvailable
  = lens _lmHSMAvailable
      (\ s a -> s{_lmHSMAvailable = a})

-- | Indicates whether CryptoKeys with protection_level EXTERNAL can be
-- created in this location.
lmEkmAvailable :: Lens' LocationMetadata (Maybe Bool)
lmEkmAvailable
  = lens _lmEkmAvailable
      (\ s a -> s{_lmEkmAvailable = a})

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o ->
                 LocationMetadata' <$>
                   (o .:? "hsmAvailable") <*> (o .:? "ekmAvailable"))

instance ToJSON LocationMetadata where
        toJSON LocationMetadata'{..}
          = object
              (catMaybes
                 [("hsmAvailable" .=) <$> _lmHSMAvailable,
                  ("ekmAvailable" .=) <$> _lmEkmAvailable])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
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
    { _lckrCryptoKeys :: !(Maybe [CryptoKey])
    , _lckrNextPageToken :: !(Maybe Text)
    , _lckrTotalSize :: !(Maybe (Textual Int32))
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
data AsymmetricDecryptRequest =
  AsymmetricDecryptRequest'
    { _adrCiphertext :: !(Maybe Bytes)
    , _adrCiphertextCrc32c :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AsymmetricDecryptRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrCiphertext'
--
-- * 'adrCiphertextCrc32c'
asymmetricDecryptRequest
    :: AsymmetricDecryptRequest
asymmetricDecryptRequest =
  AsymmetricDecryptRequest'
    {_adrCiphertext = Nothing, _adrCiphertextCrc32c = Nothing}


-- | Required. The data encrypted with the named CryptoKeyVersion\'s public
-- key using OAEP.
adrCiphertext :: Lens' AsymmetricDecryptRequest (Maybe ByteString)
adrCiphertext
  = lens _adrCiphertext
      (\ s a -> s{_adrCiphertext = a})
      . mapping _Bytes

-- | Optional. An optional CRC32C checksum of the
-- AsymmetricDecryptRequest.ciphertext. If specified, KeyManagementService
-- will verify the integrity of the received
-- AsymmetricDecryptRequest.ciphertext using this checksum.
-- KeyManagementService will report an error if the checksum verification
-- fails. If you receive a checksum error, your client should verify that
-- CRC32C(AsymmetricDecryptRequest.ciphertext) is equal to
-- AsymmetricDecryptRequest.ciphertext_crc32c, and if so, perform a limited
-- number of retries. A persistent mismatch may indicate an issue in your
-- computation of the CRC32C checksum. Note: This field is defined as int64
-- for reasons of compatibility across different languages. However, it is
-- a non-negative integer, which will never exceed 2^32-1, and can be
-- safely downconverted to uint32 in languages that support this type.
adrCiphertextCrc32c :: Lens' AsymmetricDecryptRequest (Maybe Int64)
adrCiphertextCrc32c
  = lens _adrCiphertextCrc32c
      (\ s a -> s{_adrCiphertextCrc32c = a})
      . mapping _Coerce

instance FromJSON AsymmetricDecryptRequest where
        parseJSON
          = withObject "AsymmetricDecryptRequest"
              (\ o ->
                 AsymmetricDecryptRequest' <$>
                   (o .:? "ciphertext") <*> (o .:? "ciphertextCrc32c"))

instance ToJSON AsymmetricDecryptRequest where
        toJSON AsymmetricDecryptRequest'{..}
          = object
              (catMaybes
                 [("ciphertext" .=) <$> _adrCiphertext,
                  ("ciphertextCrc32c" .=) <$> _adrCiphertextCrc32c])

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
    { _ckvState :: !(Maybe CryptoKeyVersionState)
    , _ckvAttestation :: !(Maybe KeyOperationAttestation)
    , _ckvGenerateTime :: !(Maybe DateTime')
    , _ckvImportFailureReason :: !(Maybe Text)
    , _ckvName :: !(Maybe Text)
    , _ckvAlgorithm :: !(Maybe CryptoKeyVersionAlgorithm)
    , _ckvDestroyTime :: !(Maybe DateTime')
    , _ckvImportJob :: !(Maybe Text)
    , _ckvProtectionLevel :: !(Maybe CryptoKeyVersionProtectionLevel)
    , _ckvImportTime :: !(Maybe DateTime')
    , _ckvExternalProtectionLevelOptions :: !(Maybe ExternalProtectionLevelOptions)
    , _ckvDestroyEventTime :: !(Maybe DateTime')
    , _ckvCreateTime :: !(Maybe DateTime')
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
-- * 'ckvImportFailureReason'
--
-- * 'ckvName'
--
-- * 'ckvAlgorithm'
--
-- * 'ckvDestroyTime'
--
-- * 'ckvImportJob'
--
-- * 'ckvProtectionLevel'
--
-- * 'ckvImportTime'
--
-- * 'ckvExternalProtectionLevelOptions'
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
    , _ckvImportFailureReason = Nothing
    , _ckvName = Nothing
    , _ckvAlgorithm = Nothing
    , _ckvDestroyTime = Nothing
    , _ckvImportJob = Nothing
    , _ckvProtectionLevel = Nothing
    , _ckvImportTime = Nothing
    , _ckvExternalProtectionLevelOptions = Nothing
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

-- | Output only. The root cause of an import failure. Only present if state
-- is IMPORT_FAILED.
ckvImportFailureReason :: Lens' CryptoKeyVersion (Maybe Text)
ckvImportFailureReason
  = lens _ckvImportFailureReason
      (\ s a -> s{_ckvImportFailureReason = a})

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

-- | Output only. The name of the ImportJob used to import this
-- CryptoKeyVersion. Only present if the underlying key material was
-- imported.
ckvImportJob :: Lens' CryptoKeyVersion (Maybe Text)
ckvImportJob
  = lens _ckvImportJob (\ s a -> s{_ckvImportJob = a})

-- | Output only. The ProtectionLevel describing how crypto operations are
-- performed with this CryptoKeyVersion.
ckvProtectionLevel :: Lens' CryptoKeyVersion (Maybe CryptoKeyVersionProtectionLevel)
ckvProtectionLevel
  = lens _ckvProtectionLevel
      (\ s a -> s{_ckvProtectionLevel = a})

-- | Output only. The time at which this CryptoKeyVersion\'s key material was
-- imported.
ckvImportTime :: Lens' CryptoKeyVersion (Maybe UTCTime)
ckvImportTime
  = lens _ckvImportTime
      (\ s a -> s{_ckvImportTime = a})
      . mapping _DateTime

-- | ExternalProtectionLevelOptions stores a group of additional fields for
-- configuring a CryptoKeyVersion that are specific to the EXTERNAL
-- protection level.
ckvExternalProtectionLevelOptions :: Lens' CryptoKeyVersion (Maybe ExternalProtectionLevelOptions)
ckvExternalProtectionLevelOptions
  = lens _ckvExternalProtectionLevelOptions
      (\ s a -> s{_ckvExternalProtectionLevelOptions = a})

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
                     <*> (o .:? "importFailureReason")
                     <*> (o .:? "name")
                     <*> (o .:? "algorithm")
                     <*> (o .:? "destroyTime")
                     <*> (o .:? "importJob")
                     <*> (o .:? "protectionLevel")
                     <*> (o .:? "importTime")
                     <*> (o .:? "externalProtectionLevelOptions")
                     <*> (o .:? "destroyEventTime")
                     <*> (o .:? "createTime"))

instance ToJSON CryptoKeyVersion where
        toJSON CryptoKeyVersion'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _ckvState,
                  ("attestation" .=) <$> _ckvAttestation,
                  ("generateTime" .=) <$> _ckvGenerateTime,
                  ("importFailureReason" .=) <$>
                    _ckvImportFailureReason,
                  ("name" .=) <$> _ckvName,
                  ("algorithm" .=) <$> _ckvAlgorithm,
                  ("destroyTime" .=) <$> _ckvDestroyTime,
                  ("importJob" .=) <$> _ckvImportJob,
                  ("protectionLevel" .=) <$> _ckvProtectionLevel,
                  ("importTime" .=) <$> _ckvImportTime,
                  ("externalProtectionLevelOptions" .=) <$>
                    _ckvExternalProtectionLevelOptions,
                  ("destroyEventTime" .=) <$> _ckvDestroyEventTime,
                  ("createTime" .=) <$> _ckvCreateTime])

-- | Request message for KeyManagementService.Encrypt.
--
-- /See:/ 'encryptRequest' smart constructor.
data EncryptRequest =
  EncryptRequest'
    { _erAdditionalAuthenticatedData :: !(Maybe Bytes)
    , _erAdditionalAuthenticatedDataCrc32c :: !(Maybe (Textual Int64))
    , _erPlaintextCrc32c :: !(Maybe (Textual Int64))
    , _erPlaintext :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erAdditionalAuthenticatedData'
--
-- * 'erAdditionalAuthenticatedDataCrc32c'
--
-- * 'erPlaintextCrc32c'
--
-- * 'erPlaintext'
encryptRequest
    :: EncryptRequest
encryptRequest =
  EncryptRequest'
    { _erAdditionalAuthenticatedData = Nothing
    , _erAdditionalAuthenticatedDataCrc32c = Nothing
    , _erPlaintextCrc32c = Nothing
    , _erPlaintext = Nothing
    }


-- | Optional. Optional data that, if specified, must also be provided during
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

-- | Optional. An optional CRC32C checksum of the
-- EncryptRequest.additional_authenticated_data. If specified,
-- KeyManagementService will verify the integrity of the received
-- EncryptRequest.additional_authenticated_data using this checksum.
-- KeyManagementService will report an error if the checksum verification
-- fails. If you receive a checksum error, your client should verify that
-- CRC32C(EncryptRequest.additional_authenticated_data) is equal to
-- EncryptRequest.additional_authenticated_data_crc32c, and if so, perform
-- a limited number of retries. A persistent mismatch may indicate an issue
-- in your computation of the CRC32C checksum. Note: This field is defined
-- as int64 for reasons of compatibility across different languages.
-- However, it is a non-negative integer, which will never exceed 2^32-1,
-- and can be safely downconverted to uint32 in languages that support this
-- type.
erAdditionalAuthenticatedDataCrc32c :: Lens' EncryptRequest (Maybe Int64)
erAdditionalAuthenticatedDataCrc32c
  = lens _erAdditionalAuthenticatedDataCrc32c
      (\ s a ->
         s{_erAdditionalAuthenticatedDataCrc32c = a})
      . mapping _Coerce

-- | Optional. An optional CRC32C checksum of the EncryptRequest.plaintext.
-- If specified, KeyManagementService will verify the integrity of the
-- received EncryptRequest.plaintext using this checksum.
-- KeyManagementService will report an error if the checksum verification
-- fails. If you receive a checksum error, your client should verify that
-- CRC32C(EncryptRequest.plaintext) is equal to
-- EncryptRequest.plaintext_crc32c, and if so, perform a limited number of
-- retries. A persistent mismatch may indicate an issue in your computation
-- of the CRC32C checksum. Note: This field is defined as int64 for reasons
-- of compatibility across different languages. However, it is a
-- non-negative integer, which will never exceed 2^32-1, and can be safely
-- downconverted to uint32 in languages that support this type.
erPlaintextCrc32c :: Lens' EncryptRequest (Maybe Int64)
erPlaintextCrc32c
  = lens _erPlaintextCrc32c
      (\ s a -> s{_erPlaintextCrc32c = a})
      . mapping _Coerce

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
                     (o .:? "additionalAuthenticatedDataCrc32c")
                     <*> (o .:? "plaintextCrc32c")
                     <*> (o .:? "plaintext"))

instance ToJSON EncryptRequest where
        toJSON EncryptRequest'{..}
          = object
              (catMaybes
                 [("additionalAuthenticatedData" .=) <$>
                    _erAdditionalAuthenticatedData,
                  ("additionalAuthenticatedDataCrc32c" .=) <$>
                    _erAdditionalAuthenticatedDataCrc32c,
                  ("plaintextCrc32c" .=) <$> _erPlaintextCrc32c,
                  ("plaintext" .=) <$> _erPlaintext])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
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
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
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
