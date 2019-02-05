{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DigitalAssetLinks.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DigitalAssetLinks.Types.Product where

import           Network.Google.DigitalAssetLinks.Types.Sum
import           Network.Google.Prelude

-- | Describes an android app asset.
--
-- /See:/ 'androidAppAsset' smart constructor.
data AndroidAppAsset = AndroidAppAsset'
    { _aaaPackageName :: !(Maybe Text)
    , _aaaCertificate :: !(Maybe CertificateInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AndroidAppAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaaPackageName'
--
-- * 'aaaCertificate'
androidAppAsset
    :: AndroidAppAsset
androidAppAsset =
    AndroidAppAsset'
    { _aaaPackageName = Nothing
    , _aaaCertificate = Nothing
    }

-- | Android App assets are naturally identified by their Java package name.
-- For example, the Google Maps app uses the package name
-- \`com.google.android.apps.maps\`. REQUIRED
aaaPackageName :: Lens' AndroidAppAsset (Maybe Text)
aaaPackageName
  = lens _aaaPackageName
      (\ s a -> s{_aaaPackageName = a})

-- | Because there is no global enforcement of package name uniqueness, we
-- also require a signing certificate, which in combination with the
-- package name uniquely identifies an app. Some apps\' signing keys are
-- rotated, so they may be signed by different keys over time. We treat
-- these as distinct assets, since we use (package name, cert) as the
-- unique ID. This should not normally pose any problems as both versions
-- of the app will make the same or similar statements. Other assets making
-- statements about the app will have to be updated when a key is rotated,
-- however. (Note that the syntaxes for publishing and querying for
-- statements contain syntactic sugar to easily let you specify apps that
-- are known by multiple certificates.) REQUIRED
aaaCertificate :: Lens' AndroidAppAsset (Maybe CertificateInfo)
aaaCertificate
  = lens _aaaCertificate
      (\ s a -> s{_aaaCertificate = a})

instance FromJSON AndroidAppAsset where
        parseJSON
          = withObject "AndroidAppAsset"
              (\ o ->
                 AndroidAppAsset' <$>
                   (o .:? "packageName") <*> (o .:? "certificate"))

instance ToJSON AndroidAppAsset where
        toJSON AndroidAppAsset'{..}
          = object
              (catMaybes
                 [("packageName" .=) <$> _aaaPackageName,
                  ("certificate" .=) <$> _aaaCertificate])

-- | Describes a reliable statement that has been made about the relationship
-- between a source asset and a target asset. Statements are always made by
-- the source asset, either directly or by delegating to a statement list
-- that is stored elsewhere. For more detailed definitions of statements
-- and assets, please refer to our [API documentation landing
-- page](\/digital-asset-links\/v1\/getting-started).
--
-- /See:/ 'statement' smart constructor.
data Statement = Statement'
    { _sRelation :: !(Maybe Text)
    , _sSource   :: !(Maybe Asset)
    , _sTarget   :: !(Maybe Asset)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Statement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRelation'
--
-- * 'sSource'
--
-- * 'sTarget'
statement
    :: Statement
statement =
    Statement'
    { _sRelation = Nothing
    , _sSource = Nothing
    , _sTarget = Nothing
    }

-- | The relation identifies the use of the statement as intended by the
-- source asset\'s owner (that is, the person or entity who issued the
-- statement). Every complete statement has a relation. We identify
-- relations with strings of the format \`\/\`, where \`\` must be one of a
-- set of pre-defined purpose categories, and \`\` is a free-form lowercase
-- alphanumeric string that describes the specific use case of the
-- statement. Refer to [our API
-- documentation](\/digital-asset-links\/v1\/relation-strings) for the
-- current list of supported relations. Example:
-- \`delegate_permission\/common.handle_all_urls\` REQUIRED
sRelation :: Lens' Statement (Maybe Text)
sRelation
  = lens _sRelation (\ s a -> s{_sRelation = a})

-- | Every statement has a source asset. REQUIRED
sSource :: Lens' Statement (Maybe Asset)
sSource = lens _sSource (\ s a -> s{_sSource = a})

-- | Every statement has a target asset. REQUIRED
sTarget :: Lens' Statement (Maybe Asset)
sTarget = lens _sTarget (\ s a -> s{_sTarget = a})

instance FromJSON Statement where
        parseJSON
          = withObject "Statement"
              (\ o ->
                 Statement' <$>
                   (o .:? "relation") <*> (o .:? "source") <*>
                     (o .:? "target"))

instance ToJSON Statement where
        toJSON Statement'{..}
          = object
              (catMaybes
                 [("relation" .=) <$> _sRelation,
                  ("source" .=) <$> _sSource,
                  ("target" .=) <$> _sTarget])

-- | Uniquely identifies an asset. A digital asset is an identifiable and
-- addressable online entity that typically provides some service or
-- content. Examples of assets are websites, Android apps, Twitter feeds,
-- and Plus Pages.
--
-- /See:/ 'asset' smart constructor.
data Asset = Asset'
    { _aAndroidApp :: !(Maybe AndroidAppAsset)
    , _aWeb        :: !(Maybe WebAsset)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAndroidApp'
--
-- * 'aWeb'
asset
    :: Asset
asset =
    Asset'
    { _aAndroidApp = Nothing
    , _aWeb = Nothing
    }

-- | Set if this is an Android App asset.
aAndroidApp :: Lens' Asset (Maybe AndroidAppAsset)
aAndroidApp
  = lens _aAndroidApp (\ s a -> s{_aAndroidApp = a})

-- | Set if this is a web asset.
aWeb :: Lens' Asset (Maybe WebAsset)
aWeb = lens _aWeb (\ s a -> s{_aWeb = a})

instance FromJSON Asset where
        parseJSON
          = withObject "Asset"
              (\ o ->
                 Asset' <$> (o .:? "androidApp") <*> (o .:? "web"))

instance ToJSON Asset where
        toJSON Asset'{..}
          = object
              (catMaybes
                 [("androidApp" .=) <$> _aAndroidApp,
                  ("web" .=) <$> _aWeb])

-- | Response message for the List call.
--
-- /See:/ 'listResponse' smart constructor.
data ListResponse = ListResponse'
    { _lrDebugString :: !(Maybe Text)
    , _lrMaxAge      :: !(Maybe GDuration)
    , _lrErrorCode   :: !(Maybe [Text])
    , _lrStatements  :: !(Maybe [Statement])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrDebugString'
--
-- * 'lrMaxAge'
--
-- * 'lrErrorCode'
--
-- * 'lrStatements'
listResponse
    :: ListResponse
listResponse =
    ListResponse'
    { _lrDebugString = Nothing
    , _lrMaxAge = Nothing
    , _lrErrorCode = Nothing
    , _lrStatements = Nothing
    }

-- | Human-readable message containing information intended to help end users
-- understand, reproduce and debug the result. The message will be in
-- English and we are currently not planning to offer any translations.
-- Please note that no guarantees are made about the contents or format of
-- this string. Any aspect of it may be subject to change without notice.
-- You should not attempt to programmatically parse this data. For
-- programmatic access, use the error_code field below.
lrDebugString :: Lens' ListResponse (Maybe Text)
lrDebugString
  = lens _lrDebugString
      (\ s a -> s{_lrDebugString = a})

-- | From serving time, how much longer the response should be considered
-- valid barring further updates. REQUIRED
lrMaxAge :: Lens' ListResponse (Maybe Scientific)
lrMaxAge
  = lens _lrMaxAge (\ s a -> s{_lrMaxAge = a}) .
      mapping _GDuration

-- | Error codes that describe the result of the List operation.
lrErrorCode :: Lens' ListResponse [Text]
lrErrorCode
  = lens _lrErrorCode (\ s a -> s{_lrErrorCode = a}) .
      _Default
      . _Coerce

-- | A list of all the matching statements that have been found.
lrStatements :: Lens' ListResponse [Statement]
lrStatements
  = lens _lrStatements (\ s a -> s{_lrStatements = a})
      . _Default
      . _Coerce

instance FromJSON ListResponse where
        parseJSON
          = withObject "ListResponse"
              (\ o ->
                 ListResponse' <$>
                   (o .:? "debugString") <*> (o .:? "maxAge") <*>
                     (o .:? "errorCode" .!= mempty)
                     <*> (o .:? "statements" .!= mempty))

instance ToJSON ListResponse where
        toJSON ListResponse'{..}
          = object
              (catMaybes
                 [("debugString" .=) <$> _lrDebugString,
                  ("maxAge" .=) <$> _lrMaxAge,
                  ("errorCode" .=) <$> _lrErrorCode,
                  ("statements" .=) <$> _lrStatements])

-- | Response message for the CheckAssetLinks call.
--
-- /See:/ 'checkResponse' smart constructor.
data CheckResponse = CheckResponse'
    { _crDebugString :: !(Maybe Text)
    , _crMaxAge      :: !(Maybe GDuration)
    , _crErrorCode   :: !(Maybe [Text])
    , _crLinked      :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crDebugString'
--
-- * 'crMaxAge'
--
-- * 'crErrorCode'
--
-- * 'crLinked'
checkResponse
    :: CheckResponse
checkResponse =
    CheckResponse'
    { _crDebugString = Nothing
    , _crMaxAge = Nothing
    , _crErrorCode = Nothing
    , _crLinked = Nothing
    }

-- | Human-readable message containing information intended to help end users
-- understand, reproduce and debug the result. The message will be in
-- English and we are currently not planning to offer any translations.
-- Please note that no guarantees are made about the contents or format of
-- this string. Any aspect of it may be subject to change without notice.
-- You should not attempt to programmatically parse this data. For
-- programmatic access, use the error_code field below.
crDebugString :: Lens' CheckResponse (Maybe Text)
crDebugString
  = lens _crDebugString
      (\ s a -> s{_crDebugString = a})

-- | From serving time, how much longer the response should be considered
-- valid barring further updates. REQUIRED
crMaxAge :: Lens' CheckResponse (Maybe Scientific)
crMaxAge
  = lens _crMaxAge (\ s a -> s{_crMaxAge = a}) .
      mapping _GDuration

-- | Error codes that describe the result of the Check operation.
crErrorCode :: Lens' CheckResponse [Text]
crErrorCode
  = lens _crErrorCode (\ s a -> s{_crErrorCode = a}) .
      _Default
      . _Coerce

-- | Set to true if the assets specified in the request are linked by the
-- relation specified in the request.
crLinked :: Lens' CheckResponse (Maybe Bool)
crLinked = lens _crLinked (\ s a -> s{_crLinked = a})

instance FromJSON CheckResponse where
        parseJSON
          = withObject "CheckResponse"
              (\ o ->
                 CheckResponse' <$>
                   (o .:? "debugString") <*> (o .:? "maxAge") <*>
                     (o .:? "errorCode" .!= mempty)
                     <*> (o .:? "linked"))

instance ToJSON CheckResponse where
        toJSON CheckResponse'{..}
          = object
              (catMaybes
                 [("debugString" .=) <$> _crDebugString,
                  ("maxAge" .=) <$> _crMaxAge,
                  ("errorCode" .=) <$> _crErrorCode,
                  ("linked" .=) <$> _crLinked])

-- | Describes a web asset.
--
-- /See:/ 'webAsset' smart constructor.
newtype WebAsset = WebAsset'
    { _waSite :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebAsset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waSite'
webAsset
    :: WebAsset
webAsset =
    WebAsset'
    { _waSite = Nothing
    }

-- | Web assets are identified by a URL that contains only the scheme,
-- hostname and port parts. The format is http[s]:\/\/[:] Hostnames must be
-- fully qualified: they must end in a single period (\"\`.\`\"). Only the
-- schemes \"http\" and \"https\" are currently allowed. Port numbers are
-- given as a decimal number, and they must be omitted if the standard port
-- numbers are used: 80 for http and 443 for https. We call this limited
-- URL the \"site\". All URLs that share the same scheme, hostname and port
-- are considered to be a part of the site and thus belong to the web
-- asset. Example: the asset with the site \`https:\/\/www.google.com\`
-- contains all these URLs: * \`https:\/\/www.google.com\/\` *
-- \`https:\/\/www.google.com:443\/\` * \`https:\/\/www.google.com\/foo\` *
-- \`https:\/\/www.google.com\/foo?bar\` *
-- \`https:\/\/www.google.com\/foo#bar\` *
-- \`https:\/\/user\'password:www.google.com\/\` But it does not contain
-- these URLs: * \`http:\/\/www.google.com\/\` (wrong scheme) *
-- \`https:\/\/google.com\/\` (hostname does not match) *
-- \`https:\/\/www.google.com:444\/\` (port does not match) REQUIRED
waSite :: Lens' WebAsset (Maybe Text)
waSite = lens _waSite (\ s a -> s{_waSite = a})

instance FromJSON WebAsset where
        parseJSON
          = withObject "WebAsset"
              (\ o -> WebAsset' <$> (o .:? "site"))

instance ToJSON WebAsset where
        toJSON WebAsset'{..}
          = object (catMaybes [("site" .=) <$> _waSite])

-- | Describes an X509 certificate.
--
-- /See:/ 'certificateInfo' smart constructor.
newtype CertificateInfo = CertificateInfo'
    { _ciSha256Fingerprint :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CertificateInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciSha256Fingerprint'
certificateInfo
    :: CertificateInfo
certificateInfo =
    CertificateInfo'
    { _ciSha256Fingerprint = Nothing
    }

-- | The uppercase SHA-265 fingerprint of the certificate. From the PEM
-- certificate, it can be acquired like this: $ keytool -printcert -file
-- $CERTFILE | grep SHA256: SHA256:
-- 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \\
-- 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in
-- $CERTFILE -noout -fingerprint -sha256 SHA256
-- Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \\
-- 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the
-- contents of this field would be \`14:6D:E9:83:C5:73:
-- 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
-- 44:E5\`. If these tools are not available to you, you can convert the
-- PEM certificate into the DER format, compute the SHA-256 hash of that
-- string and represent the result as a hexstring (that is, uppercase
-- hexadecimal representations of each octet, separated by colons).
ciSha256Fingerprint :: Lens' CertificateInfo (Maybe Text)
ciSha256Fingerprint
  = lens _ciSha256Fingerprint
      (\ s a -> s{_ciSha256Fingerprint = a})

instance FromJSON CertificateInfo where
        parseJSON
          = withObject "CertificateInfo"
              (\ o ->
                 CertificateInfo' <$> (o .:? "sha256Fingerprint"))

instance ToJSON CertificateInfo where
        toJSON CertificateInfo'{..}
          = object
              (catMaybes
                 [("sha256Fingerprint" .=) <$> _ciSha256Fingerprint])
