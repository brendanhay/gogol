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
-- Module      : Network.Google.Resource.DigitalAssetLinks.Assetlinks.Check
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines whether the specified (directional) relationship exists
-- between the specified source and target assets. The relation describes
-- the intent of the link between the two assets as claimed by the source
-- asset. An example for such relationships is the delegation of privileges
-- or permissions. This command is most often used by infrastructure
-- systems to check preconditions for an action. For example, a client may
-- want to know if it is OK to send a web URL to a particular mobile app
-- instead. The client can check for the relevant asset link from the
-- website to the mobile app to decide if the operation should be allowed.
-- A note about security: if you specify a secure asset as the source, such
-- as an HTTPS website or an Android app, the API will ensure that any
-- statements used to generate the response have been made in a secure way
-- by the owner of that asset. Conversely, if the source asset is an
-- insecure HTTP website (that is, the URL starts with \`http:\/\/\`
-- instead of \`https:\/\/\`), the API cannot verify its statements
-- securely, and it is not possible to ensure that the website\'s
-- statements have not been altered by a third party. For more information,
-- see the [Digital Asset Links technical design
-- specification](https:\/\/github.com\/google\/digitalassetlinks\/blob\/master\/well-known\/details.md).
--
-- /See:/ <https://developers.google.com/digital-asset-links/ Digital Asset Links API Reference> for @digitalassetlinks.assetlinks.check@.
module Network.Google.Resource.DigitalAssetLinks.Assetlinks.Check
    (
    -- * REST Resource
      AssetlinksCheckResource

    -- * Creating a Request
    , assetlinksCheck
    , AssetlinksCheck

    -- * Request Lenses
    , acXgafv
    , acSourceAndroidAppCertificateSha256Fingerprint
    , acSourceAndroidAppPackageName
    , acTargetWebSite
    , acUploadProtocol
    , acAccessToken
    , acTargetAndroidAppCertificateSha256Fingerprint
    , acUploadType
    , acRelation
    , acTargetAndroidAppPackageName
    , acSourceWebSite
    , acCallback
    ) where

import           Network.Google.DigitalAssetLinks.Types
import           Network.Google.Prelude

-- | A resource alias for @digitalassetlinks.assetlinks.check@ method which the
-- 'AssetlinksCheck' request conforms to.
type AssetlinksCheckResource =
     "v1" :>
       "assetlinks:check" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam
             "source.androidApp.certificate.sha256Fingerprint"
             Text
             :>
             QueryParam "source.androidApp.packageName" Text :>
               QueryParam "target.web.site" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam
                       "target.androidApp.certificate.sha256Fingerprint"
                       Text
                       :>
                       QueryParam "uploadType" Text :>
                         QueryParam "relation" Text :>
                           QueryParam "target.androidApp.packageName" Text :>
                             QueryParam "source.web.site" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CheckResponse

-- | Determines whether the specified (directional) relationship exists
-- between the specified source and target assets. The relation describes
-- the intent of the link between the two assets as claimed by the source
-- asset. An example for such relationships is the delegation of privileges
-- or permissions. This command is most often used by infrastructure
-- systems to check preconditions for an action. For example, a client may
-- want to know if it is OK to send a web URL to a particular mobile app
-- instead. The client can check for the relevant asset link from the
-- website to the mobile app to decide if the operation should be allowed.
-- A note about security: if you specify a secure asset as the source, such
-- as an HTTPS website or an Android app, the API will ensure that any
-- statements used to generate the response have been made in a secure way
-- by the owner of that asset. Conversely, if the source asset is an
-- insecure HTTP website (that is, the URL starts with \`http:\/\/\`
-- instead of \`https:\/\/\`), the API cannot verify its statements
-- securely, and it is not possible to ensure that the website\'s
-- statements have not been altered by a third party. For more information,
-- see the [Digital Asset Links technical design
-- specification](https:\/\/github.com\/google\/digitalassetlinks\/blob\/master\/well-known\/details.md).
--
-- /See:/ 'assetlinksCheck' smart constructor.
data AssetlinksCheck = AssetlinksCheck'
    { _acXgafv                                        :: !(Maybe Xgafv)
    , _acSourceAndroidAppCertificateSha256Fingerprint :: !(Maybe Text)
    , _acSourceAndroidAppPackageName                  :: !(Maybe Text)
    , _acTargetWebSite                                :: !(Maybe Text)
    , _acUploadProtocol                               :: !(Maybe Text)
    , _acAccessToken                                  :: !(Maybe Text)
    , _acTargetAndroidAppCertificateSha256Fingerprint :: !(Maybe Text)
    , _acUploadType                                   :: !(Maybe Text)
    , _acRelation                                     :: !(Maybe Text)
    , _acTargetAndroidAppPackageName                  :: !(Maybe Text)
    , _acSourceWebSite                                :: !(Maybe Text)
    , _acCallback                                     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetlinksCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acXgafv'
--
-- * 'acSourceAndroidAppCertificateSha256Fingerprint'
--
-- * 'acSourceAndroidAppPackageName'
--
-- * 'acTargetWebSite'
--
-- * 'acUploadProtocol'
--
-- * 'acAccessToken'
--
-- * 'acTargetAndroidAppCertificateSha256Fingerprint'
--
-- * 'acUploadType'
--
-- * 'acRelation'
--
-- * 'acTargetAndroidAppPackageName'
--
-- * 'acSourceWebSite'
--
-- * 'acCallback'
assetlinksCheck
    :: AssetlinksCheck
assetlinksCheck =
    AssetlinksCheck'
    { _acXgafv = Nothing
    , _acSourceAndroidAppCertificateSha256Fingerprint = Nothing
    , _acSourceAndroidAppPackageName = Nothing
    , _acTargetWebSite = Nothing
    , _acUploadProtocol = Nothing
    , _acAccessToken = Nothing
    , _acTargetAndroidAppCertificateSha256Fingerprint = Nothing
    , _acUploadType = Nothing
    , _acRelation = Nothing
    , _acTargetAndroidAppPackageName = Nothing
    , _acSourceWebSite = Nothing
    , _acCallback = Nothing
    }

-- | V1 error format.
acXgafv :: Lens' AssetlinksCheck (Maybe Xgafv)
acXgafv = lens _acXgafv (\ s a -> s{_acXgafv = a})

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
acSourceAndroidAppCertificateSha256Fingerprint :: Lens' AssetlinksCheck (Maybe Text)
acSourceAndroidAppCertificateSha256Fingerprint
  = lens
      _acSourceAndroidAppCertificateSha256Fingerprint
      (\ s a ->
         s{_acSourceAndroidAppCertificateSha256Fingerprint =
             a})

-- | Android App assets are naturally identified by their Java package name.
-- For example, the Google Maps app uses the package name
-- \`com.google.android.apps.maps\`. REQUIRED
acSourceAndroidAppPackageName :: Lens' AssetlinksCheck (Maybe Text)
acSourceAndroidAppPackageName
  = lens _acSourceAndroidAppPackageName
      (\ s a -> s{_acSourceAndroidAppPackageName = a})

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
acTargetWebSite :: Lens' AssetlinksCheck (Maybe Text)
acTargetWebSite
  = lens _acTargetWebSite
      (\ s a -> s{_acTargetWebSite = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acUploadProtocol :: Lens' AssetlinksCheck (Maybe Text)
acUploadProtocol
  = lens _acUploadProtocol
      (\ s a -> s{_acUploadProtocol = a})

-- | OAuth access token.
acAccessToken :: Lens' AssetlinksCheck (Maybe Text)
acAccessToken
  = lens _acAccessToken
      (\ s a -> s{_acAccessToken = a})

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
acTargetAndroidAppCertificateSha256Fingerprint :: Lens' AssetlinksCheck (Maybe Text)
acTargetAndroidAppCertificateSha256Fingerprint
  = lens
      _acTargetAndroidAppCertificateSha256Fingerprint
      (\ s a ->
         s{_acTargetAndroidAppCertificateSha256Fingerprint =
             a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acUploadType :: Lens' AssetlinksCheck (Maybe Text)
acUploadType
  = lens _acUploadType (\ s a -> s{_acUploadType = a})

-- | Query string for the relation. We identify relations with strings of the
-- format \`\/\`, where \`\` must be one of a set of pre-defined purpose
-- categories, and \`\` is a free-form lowercase alphanumeric string that
-- describes the specific use case of the statement. Refer to [our API
-- documentation](\/digital-asset-links\/v1\/relation-strings) for the
-- current list of supported relations. For a query to match an asset link,
-- both the query\'s and the asset link\'s relation strings must match
-- exactly. Example: A query with relation
-- \`delegate_permission\/common.handle_all_urls\` matches an asset link
-- with relation \`delegate_permission\/common.handle_all_urls\`.
acRelation :: Lens' AssetlinksCheck (Maybe Text)
acRelation
  = lens _acRelation (\ s a -> s{_acRelation = a})

-- | Android App assets are naturally identified by their Java package name.
-- For example, the Google Maps app uses the package name
-- \`com.google.android.apps.maps\`. REQUIRED
acTargetAndroidAppPackageName :: Lens' AssetlinksCheck (Maybe Text)
acTargetAndroidAppPackageName
  = lens _acTargetAndroidAppPackageName
      (\ s a -> s{_acTargetAndroidAppPackageName = a})

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
acSourceWebSite :: Lens' AssetlinksCheck (Maybe Text)
acSourceWebSite
  = lens _acSourceWebSite
      (\ s a -> s{_acSourceWebSite = a})

-- | JSONP
acCallback :: Lens' AssetlinksCheck (Maybe Text)
acCallback
  = lens _acCallback (\ s a -> s{_acCallback = a})

instance GoogleRequest AssetlinksCheck where
        type Rs AssetlinksCheck = CheckResponse
        type Scopes AssetlinksCheck = '[]
        requestClient AssetlinksCheck'{..}
          = go _acXgafv
              _acSourceAndroidAppCertificateSha256Fingerprint
              _acSourceAndroidAppPackageName
              _acTargetWebSite
              _acUploadProtocol
              _acAccessToken
              _acTargetAndroidAppCertificateSha256Fingerprint
              _acUploadType
              _acRelation
              _acTargetAndroidAppPackageName
              _acSourceWebSite
              _acCallback
              (Just AltJSON)
              digitalAssetLinksService
          where go
                  = buildClient
                      (Proxy :: Proxy AssetlinksCheckResource)
                      mempty
