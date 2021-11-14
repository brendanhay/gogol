{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DigitalAssetLinks.Statements.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all statements from a given source that match the
-- specified target and statement string. The API guarantees that all
-- statements with secure source assets, such as HTTPS websites or Android
-- apps, have been made in a secure way by the owner of those assets, as
-- described in the [Digital Asset Links technical design
-- specification](https:\/\/github.com\/google\/digitalassetlinks\/blob\/master\/well-known\/details.md).
-- Specifically, you should consider that for insecure websites (that is,
-- where the URL starts with \`http:\/\/\` instead of \`https:\/\/\`), this
-- guarantee cannot be made. The \`List\` command is most useful in cases
-- where the API client wants to know all the ways in which two assets are
-- related, or enumerate all the relationships from a particular source
-- asset. Example: a feature that helps users navigate to related items.
-- When a mobile app is running on a device, the feature would make it easy
-- to navigate to the corresponding web site or Google+ profile.
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference> for @digitalassetlinks.statements.list@.
module Network.Google.Resource.DigitalAssetLinks.Statements.List
    (
    -- * REST Resource
      StatementsListResource

    -- * Creating a Request
    , statementsList
    , StatementsList

    -- * Request Lenses
    , slXgafv
    , slSourceAndroidAppCertificateSha256Fingerprint
    , slSourceAndroidAppPackageName
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slRelation
    , slSourceWebSite
    , slCallback
    ) where

import Network.Google.DigitalAssetLinks.Types
import Network.Google.Prelude

-- | A resource alias for @digitalassetlinks.statements.list@ method which the
-- 'StatementsList' request conforms to.
type StatementsListResource =
     "v1" :>
       "statements:list" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam
             "source.androidApp.certificate.sha256Fingerprint"
             Text
             :>
             QueryParam "source.androidApp.packageName" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "relation" Text :>
                       QueryParam "source.web.site" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ListResponse

-- | Retrieves a list of all statements from a given source that match the
-- specified target and statement string. The API guarantees that all
-- statements with secure source assets, such as HTTPS websites or Android
-- apps, have been made in a secure way by the owner of those assets, as
-- described in the [Digital Asset Links technical design
-- specification](https:\/\/github.com\/google\/digitalassetlinks\/blob\/master\/well-known\/details.md).
-- Specifically, you should consider that for insecure websites (that is,
-- where the URL starts with \`http:\/\/\` instead of \`https:\/\/\`), this
-- guarantee cannot be made. The \`List\` command is most useful in cases
-- where the API client wants to know all the ways in which two assets are
-- related, or enumerate all the relationships from a particular source
-- asset. Example: a feature that helps users navigate to related items.
-- When a mobile app is running on a device, the feature would make it easy
-- to navigate to the corresponding web site or Google+ profile.
--
-- /See:/ 'statementsList' smart constructor.
data StatementsList =
  StatementsList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slSourceAndroidAppCertificateSha256Fingerprint :: !(Maybe Text)
    , _slSourceAndroidAppPackageName :: !(Maybe Text)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slRelation :: !(Maybe Text)
    , _slSourceWebSite :: !(Maybe Text)
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slSourceAndroidAppCertificateSha256Fingerprint'
--
-- * 'slSourceAndroidAppPackageName'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slRelation'
--
-- * 'slSourceWebSite'
--
-- * 'slCallback'
statementsList
    :: StatementsList
statementsList =
  StatementsList'
    { _slXgafv = Nothing
    , _slSourceAndroidAppCertificateSha256Fingerprint = Nothing
    , _slSourceAndroidAppPackageName = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slRelation = Nothing
    , _slSourceWebSite = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' StatementsList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

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
slSourceAndroidAppCertificateSha256Fingerprint :: Lens' StatementsList (Maybe Text)
slSourceAndroidAppCertificateSha256Fingerprint
  = lens
      _slSourceAndroidAppCertificateSha256Fingerprint
      (\ s a ->
         s{_slSourceAndroidAppCertificateSha256Fingerprint =
             a})

-- | Android App assets are naturally identified by their Java package name.
-- For example, the Google Maps app uses the package name
-- \`com.google.android.apps.maps\`. REQUIRED
slSourceAndroidAppPackageName :: Lens' StatementsList (Maybe Text)
slSourceAndroidAppPackageName
  = lens _slSourceAndroidAppPackageName
      (\ s a -> s{_slSourceAndroidAppPackageName = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' StatementsList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' StatementsList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' StatementsList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Use only associations that match the specified relation. See the
-- [\`Statement\`](#Statement) message for a detailed definition of
-- relation strings. For a query to match a statement, one of the following
-- must be true: * both the query\'s and the statement\'s relation strings
-- match exactly, or * the query\'s relation string is empty or missing.
-- Example: A query with relation
-- \`delegate_permission\/common.handle_all_urls\` matches an asset link
-- with relation \`delegate_permission\/common.handle_all_urls\`.
slRelation :: Lens' StatementsList (Maybe Text)
slRelation
  = lens _slRelation (\ s a -> s{_slRelation = a})

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
slSourceWebSite :: Lens' StatementsList (Maybe Text)
slSourceWebSite
  = lens _slSourceWebSite
      (\ s a -> s{_slSourceWebSite = a})

-- | JSONP
slCallback :: Lens' StatementsList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest StatementsList where
        type Rs StatementsList = ListResponse
        type Scopes StatementsList = '[]
        requestClient StatementsList'{..}
          = go _slXgafv
              _slSourceAndroidAppCertificateSha256Fingerprint
              _slSourceAndroidAppPackageName
              _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slRelation
              _slSourceWebSite
              _slCallback
              (Just AltJSON)
              digitalAssetLinksService
          where go
                  = buildClient (Proxy :: Proxy StatementsListResource)
                      mempty
