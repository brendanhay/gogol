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
-- Module      : Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.delete@.
module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Delete
    (
    -- * REST Resource
      AppsAuthorizedCertificatesDeleteResource

    -- * Creating a Request
    , appsAuthorizedCertificatesDelete
    , AppsAuthorizedCertificatesDelete

    -- * Request Lenses
    , aacdAuthorizedCertificatesId
    , aacdXgafv
    , aacdUploadProtocol
    , aacdAccessToken
    , aacdUploadType
    , aacdAppsId
    , aacdCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.authorizedCertificates.delete@ method which the
-- 'AppsAuthorizedCertificatesDelete' request conforms to.
type AppsAuthorizedCertificatesDeleteResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "authorizedCertificates" :>
             Capture "authorizedCertificatesId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified SSL certificate.
--
-- /See:/ 'appsAuthorizedCertificatesDelete' smart constructor.
data AppsAuthorizedCertificatesDelete = AppsAuthorizedCertificatesDelete'
    { _aacdAuthorizedCertificatesId :: !Text
    , _aacdXgafv                    :: !(Maybe Xgafv)
    , _aacdUploadProtocol           :: !(Maybe Text)
    , _aacdAccessToken              :: !(Maybe Text)
    , _aacdUploadType               :: !(Maybe Text)
    , _aacdAppsId                   :: !Text
    , _aacdCallback                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsAuthorizedCertificatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacdAuthorizedCertificatesId'
--
-- * 'aacdXgafv'
--
-- * 'aacdUploadProtocol'
--
-- * 'aacdAccessToken'
--
-- * 'aacdUploadType'
--
-- * 'aacdAppsId'
--
-- * 'aacdCallback'
appsAuthorizedCertificatesDelete
    :: Text -- ^ 'aacdAuthorizedCertificatesId'
    -> Text -- ^ 'aacdAppsId'
    -> AppsAuthorizedCertificatesDelete
appsAuthorizedCertificatesDelete pAacdAuthorizedCertificatesId_ pAacdAppsId_ =
    AppsAuthorizedCertificatesDelete'
    { _aacdAuthorizedCertificatesId = pAacdAuthorizedCertificatesId_
    , _aacdXgafv = Nothing
    , _aacdUploadProtocol = Nothing
    , _aacdAccessToken = Nothing
    , _aacdUploadType = Nothing
    , _aacdAppsId = pAacdAppsId_
    , _aacdCallback = Nothing
    }

-- | Part of \`name\`. See documentation of \`appsId\`.
aacdAuthorizedCertificatesId :: Lens' AppsAuthorizedCertificatesDelete Text
aacdAuthorizedCertificatesId
  = lens _aacdAuthorizedCertificatesId
      (\ s a -> s{_aacdAuthorizedCertificatesId = a})

-- | V1 error format.
aacdXgafv :: Lens' AppsAuthorizedCertificatesDelete (Maybe Xgafv)
aacdXgafv
  = lens _aacdXgafv (\ s a -> s{_aacdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacdUploadProtocol :: Lens' AppsAuthorizedCertificatesDelete (Maybe Text)
aacdUploadProtocol
  = lens _aacdUploadProtocol
      (\ s a -> s{_aacdUploadProtocol = a})

-- | OAuth access token.
aacdAccessToken :: Lens' AppsAuthorizedCertificatesDelete (Maybe Text)
aacdAccessToken
  = lens _aacdAccessToken
      (\ s a -> s{_aacdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacdUploadType :: Lens' AppsAuthorizedCertificatesDelete (Maybe Text)
aacdUploadType
  = lens _aacdUploadType
      (\ s a -> s{_aacdUploadType = a})

-- | Part of \`name\`. Name of the resource to delete. Example:
-- apps\/myapp\/authorizedCertificates\/12345.
aacdAppsId :: Lens' AppsAuthorizedCertificatesDelete Text
aacdAppsId
  = lens _aacdAppsId (\ s a -> s{_aacdAppsId = a})

-- | JSONP
aacdCallback :: Lens' AppsAuthorizedCertificatesDelete (Maybe Text)
aacdCallback
  = lens _aacdCallback (\ s a -> s{_aacdCallback = a})

instance GoogleRequest
         AppsAuthorizedCertificatesDelete where
        type Rs AppsAuthorizedCertificatesDelete = Empty
        type Scopes AppsAuthorizedCertificatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsAuthorizedCertificatesDelete'{..}
          = go _aacdAppsId _aacdAuthorizedCertificatesId
              _aacdXgafv
              _aacdUploadProtocol
              _aacdAccessToken
              _aacdUploadType
              _aacdCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsAuthorizedCertificatesDeleteResource)
                      mempty
