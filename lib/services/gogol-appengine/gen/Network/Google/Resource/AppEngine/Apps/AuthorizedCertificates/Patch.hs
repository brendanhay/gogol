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
-- Module      : Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified SSL certificate. To renew a certificate and
-- maintain its existing domain mappings, update certificate_data with a
-- new certificate. The new certificate must be applicable to the same
-- domains as the original certificate. The certificate display_name may
-- also be updated.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.patch@.
module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Patch
    (
    -- * REST Resource
      AppsAuthorizedCertificatesPatchResource

    -- * Creating a Request
    , appsAuthorizedCertificatesPatch
    , AppsAuthorizedCertificatesPatch

    -- * Request Lenses
    , aacpAuthorizedCertificatesId
    , aacpXgafv
    , aacpUploadProtocol
    , aacpUpdateMask
    , aacpAccessToken
    , aacpUploadType
    , aacpPayload
    , aacpAppsId
    , aacpCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.authorizedCertificates.patch@ method which the
-- 'AppsAuthorizedCertificatesPatch' request conforms to.
type AppsAuthorizedCertificatesPatchResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "authorizedCertificates" :>
             Capture "authorizedCertificatesId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AuthorizedCertificate :>
                               Patch '[JSON] AuthorizedCertificate

-- | Updates the specified SSL certificate. To renew a certificate and
-- maintain its existing domain mappings, update certificate_data with a
-- new certificate. The new certificate must be applicable to the same
-- domains as the original certificate. The certificate display_name may
-- also be updated.
--
-- /See:/ 'appsAuthorizedCertificatesPatch' smart constructor.
data AppsAuthorizedCertificatesPatch =
  AppsAuthorizedCertificatesPatch'
    { _aacpAuthorizedCertificatesId :: !Text
    , _aacpXgafv :: !(Maybe Xgafv)
    , _aacpUploadProtocol :: !(Maybe Text)
    , _aacpUpdateMask :: !(Maybe GFieldMask)
    , _aacpAccessToken :: !(Maybe Text)
    , _aacpUploadType :: !(Maybe Text)
    , _aacpPayload :: !AuthorizedCertificate
    , _aacpAppsId :: !Text
    , _aacpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsAuthorizedCertificatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacpAuthorizedCertificatesId'
--
-- * 'aacpXgafv'
--
-- * 'aacpUploadProtocol'
--
-- * 'aacpUpdateMask'
--
-- * 'aacpAccessToken'
--
-- * 'aacpUploadType'
--
-- * 'aacpPayload'
--
-- * 'aacpAppsId'
--
-- * 'aacpCallback'
appsAuthorizedCertificatesPatch
    :: Text -- ^ 'aacpAuthorizedCertificatesId'
    -> AuthorizedCertificate -- ^ 'aacpPayload'
    -> Text -- ^ 'aacpAppsId'
    -> AppsAuthorizedCertificatesPatch
appsAuthorizedCertificatesPatch pAacpAuthorizedCertificatesId_ pAacpPayload_ pAacpAppsId_ =
  AppsAuthorizedCertificatesPatch'
    { _aacpAuthorizedCertificatesId = pAacpAuthorizedCertificatesId_
    , _aacpXgafv = Nothing
    , _aacpUploadProtocol = Nothing
    , _aacpUpdateMask = Nothing
    , _aacpAccessToken = Nothing
    , _aacpUploadType = Nothing
    , _aacpPayload = pAacpPayload_
    , _aacpAppsId = pAacpAppsId_
    , _aacpCallback = Nothing
    }


-- | Part of \`name\`. See documentation of \`appsId\`.
aacpAuthorizedCertificatesId :: Lens' AppsAuthorizedCertificatesPatch Text
aacpAuthorizedCertificatesId
  = lens _aacpAuthorizedCertificatesId
      (\ s a -> s{_aacpAuthorizedCertificatesId = a})

-- | V1 error format.
aacpXgafv :: Lens' AppsAuthorizedCertificatesPatch (Maybe Xgafv)
aacpXgafv
  = lens _aacpXgafv (\ s a -> s{_aacpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacpUploadProtocol :: Lens' AppsAuthorizedCertificatesPatch (Maybe Text)
aacpUploadProtocol
  = lens _aacpUploadProtocol
      (\ s a -> s{_aacpUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated. Updates are
-- only supported on the certificate_raw_data and display_name fields.
aacpUpdateMask :: Lens' AppsAuthorizedCertificatesPatch (Maybe GFieldMask)
aacpUpdateMask
  = lens _aacpUpdateMask
      (\ s a -> s{_aacpUpdateMask = a})

-- | OAuth access token.
aacpAccessToken :: Lens' AppsAuthorizedCertificatesPatch (Maybe Text)
aacpAccessToken
  = lens _aacpAccessToken
      (\ s a -> s{_aacpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacpUploadType :: Lens' AppsAuthorizedCertificatesPatch (Maybe Text)
aacpUploadType
  = lens _aacpUploadType
      (\ s a -> s{_aacpUploadType = a})

-- | Multipart request metadata.
aacpPayload :: Lens' AppsAuthorizedCertificatesPatch AuthorizedCertificate
aacpPayload
  = lens _aacpPayload (\ s a -> s{_aacpPayload = a})

-- | Part of \`name\`. Name of the resource to update. Example:
-- apps\/myapp\/authorizedCertificates\/12345.
aacpAppsId :: Lens' AppsAuthorizedCertificatesPatch Text
aacpAppsId
  = lens _aacpAppsId (\ s a -> s{_aacpAppsId = a})

-- | JSONP
aacpCallback :: Lens' AppsAuthorizedCertificatesPatch (Maybe Text)
aacpCallback
  = lens _aacpCallback (\ s a -> s{_aacpCallback = a})

instance GoogleRequest
           AppsAuthorizedCertificatesPatch
         where
        type Rs AppsAuthorizedCertificatesPatch =
             AuthorizedCertificate
        type Scopes AppsAuthorizedCertificatesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsAuthorizedCertificatesPatch'{..}
          = go _aacpAppsId _aacpAuthorizedCertificatesId
              _aacpXgafv
              _aacpUploadProtocol
              _aacpUpdateMask
              _aacpAccessToken
              _aacpUploadType
              _aacpCallback
              (Just AltJSON)
              _aacpPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsAuthorizedCertificatesPatchResource)
                      mempty
