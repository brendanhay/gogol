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
-- Module      : Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified SSL certificate.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.authorizedCertificates.get@.
module Network.Google.Resource.AppEngine.Apps.AuthorizedCertificates.Get
    (
    -- * REST Resource
      AppsAuthorizedCertificatesGetResource

    -- * Creating a Request
    , appsAuthorizedCertificatesGet
    , AppsAuthorizedCertificatesGet

    -- * Request Lenses
    , aacgAuthorizedCertificatesId
    , aacgXgafv
    , aacgUploadProtocol
    , aacgAccessToken
    , aacgUploadType
    , aacgAppsId
    , aacgView
    , aacgCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.authorizedCertificates.get@ method which the
-- 'AppsAuthorizedCertificatesGet' request conforms to.
type AppsAuthorizedCertificatesGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "authorizedCertificates" :>
             Capture "authorizedCertificatesId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" AppsAuthorizedCertificatesGetView
                         :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AuthorizedCertificate

-- | Gets the specified SSL certificate.
--
-- /See:/ 'appsAuthorizedCertificatesGet' smart constructor.
data AppsAuthorizedCertificatesGet =
  AppsAuthorizedCertificatesGet'
    { _aacgAuthorizedCertificatesId :: !Text
    , _aacgXgafv :: !(Maybe Xgafv)
    , _aacgUploadProtocol :: !(Maybe Text)
    , _aacgAccessToken :: !(Maybe Text)
    , _aacgUploadType :: !(Maybe Text)
    , _aacgAppsId :: !Text
    , _aacgView :: !(Maybe AppsAuthorizedCertificatesGetView)
    , _aacgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsAuthorizedCertificatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacgAuthorizedCertificatesId'
--
-- * 'aacgXgafv'
--
-- * 'aacgUploadProtocol'
--
-- * 'aacgAccessToken'
--
-- * 'aacgUploadType'
--
-- * 'aacgAppsId'
--
-- * 'aacgView'
--
-- * 'aacgCallback'
appsAuthorizedCertificatesGet
    :: Text -- ^ 'aacgAuthorizedCertificatesId'
    -> Text -- ^ 'aacgAppsId'
    -> AppsAuthorizedCertificatesGet
appsAuthorizedCertificatesGet pAacgAuthorizedCertificatesId_ pAacgAppsId_ =
  AppsAuthorizedCertificatesGet'
    { _aacgAuthorizedCertificatesId = pAacgAuthorizedCertificatesId_
    , _aacgXgafv = Nothing
    , _aacgUploadProtocol = Nothing
    , _aacgAccessToken = Nothing
    , _aacgUploadType = Nothing
    , _aacgAppsId = pAacgAppsId_
    , _aacgView = Nothing
    , _aacgCallback = Nothing
    }


-- | Part of \`name\`. See documentation of \`appsId\`.
aacgAuthorizedCertificatesId :: Lens' AppsAuthorizedCertificatesGet Text
aacgAuthorizedCertificatesId
  = lens _aacgAuthorizedCertificatesId
      (\ s a -> s{_aacgAuthorizedCertificatesId = a})

-- | V1 error format.
aacgXgafv :: Lens' AppsAuthorizedCertificatesGet (Maybe Xgafv)
aacgXgafv
  = lens _aacgXgafv (\ s a -> s{_aacgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacgUploadProtocol :: Lens' AppsAuthorizedCertificatesGet (Maybe Text)
aacgUploadProtocol
  = lens _aacgUploadProtocol
      (\ s a -> s{_aacgUploadProtocol = a})

-- | OAuth access token.
aacgAccessToken :: Lens' AppsAuthorizedCertificatesGet (Maybe Text)
aacgAccessToken
  = lens _aacgAccessToken
      (\ s a -> s{_aacgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacgUploadType :: Lens' AppsAuthorizedCertificatesGet (Maybe Text)
aacgUploadType
  = lens _aacgUploadType
      (\ s a -> s{_aacgUploadType = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/authorizedCertificates\/12345.
aacgAppsId :: Lens' AppsAuthorizedCertificatesGet Text
aacgAppsId
  = lens _aacgAppsId (\ s a -> s{_aacgAppsId = a})

-- | Controls the set of fields returned in the GET response.
aacgView :: Lens' AppsAuthorizedCertificatesGet (Maybe AppsAuthorizedCertificatesGetView)
aacgView = lens _aacgView (\ s a -> s{_aacgView = a})

-- | JSONP
aacgCallback :: Lens' AppsAuthorizedCertificatesGet (Maybe Text)
aacgCallback
  = lens _aacgCallback (\ s a -> s{_aacgCallback = a})

instance GoogleRequest AppsAuthorizedCertificatesGet
         where
        type Rs AppsAuthorizedCertificatesGet =
             AuthorizedCertificate
        type Scopes AppsAuthorizedCertificatesGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsAuthorizedCertificatesGet'{..}
          = go _aacgAppsId _aacgAuthorizedCertificatesId
              _aacgXgafv
              _aacgUploadProtocol
              _aacgAccessToken
              _aacgUploadType
              _aacgView
              _aacgCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsAuthorizedCertificatesGetResource)
                      mempty
