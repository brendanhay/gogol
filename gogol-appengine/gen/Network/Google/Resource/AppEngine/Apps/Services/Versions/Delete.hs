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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing version.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.versions.delete@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Delete
    (
    -- * REST Resource
      AppsServicesVersionsDeleteResource

    -- * Creating a Request
    , appsServicesVersionsDelete
    , AppsServicesVersionsDelete

    -- * Request Lenses
    , asvdXgafv
    , asvdUploadProtocol
    , asvdPp
    , asvdAccessToken
    , asvdUploadType
    , asvdVersionsId
    , asvdBearerToken
    , asvdAppsId
    , asvdServicesId
    , asvdCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.delete@ method which the
-- 'AppsServicesVersionsDelete' request conforms to.
type AppsServicesVersionsDeleteResource =
     "v1beta5" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Delete '[JSON] Operation

-- | Deletes an existing version.
--
-- /See:/ 'appsServicesVersionsDelete' smart constructor.
data AppsServicesVersionsDelete = AppsServicesVersionsDelete'
    { _asvdXgafv          :: !(Maybe Text)
    , _asvdUploadProtocol :: !(Maybe Text)
    , _asvdPp             :: !Bool
    , _asvdAccessToken    :: !(Maybe Text)
    , _asvdUploadType     :: !(Maybe Text)
    , _asvdVersionsId     :: !Text
    , _asvdBearerToken    :: !(Maybe Text)
    , _asvdAppsId         :: !Text
    , _asvdServicesId     :: !Text
    , _asvdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvdXgafv'
--
-- * 'asvdUploadProtocol'
--
-- * 'asvdPp'
--
-- * 'asvdAccessToken'
--
-- * 'asvdUploadType'
--
-- * 'asvdVersionsId'
--
-- * 'asvdBearerToken'
--
-- * 'asvdAppsId'
--
-- * 'asvdServicesId'
--
-- * 'asvdCallback'
appsServicesVersionsDelete
    :: Text -- ^ 'asvdVersionsId'
    -> Text -- ^ 'asvdAppsId'
    -> Text -- ^ 'asvdServicesId'
    -> AppsServicesVersionsDelete
appsServicesVersionsDelete pAsvdVersionsId_ pAsvdAppsId_ pAsvdServicesId_ =
    AppsServicesVersionsDelete'
    { _asvdXgafv = Nothing
    , _asvdUploadProtocol = Nothing
    , _asvdPp = True
    , _asvdAccessToken = Nothing
    , _asvdUploadType = Nothing
    , _asvdVersionsId = pAsvdVersionsId_
    , _asvdBearerToken = Nothing
    , _asvdAppsId = pAsvdAppsId_
    , _asvdServicesId = pAsvdServicesId_
    , _asvdCallback = Nothing
    }

-- | V1 error format.
asvdXgafv :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdXgafv
  = lens _asvdXgafv (\ s a -> s{_asvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvdUploadProtocol :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdUploadProtocol
  = lens _asvdUploadProtocol
      (\ s a -> s{_asvdUploadProtocol = a})

-- | Pretty-print response.
asvdPp :: Lens' AppsServicesVersionsDelete Bool
asvdPp = lens _asvdPp (\ s a -> s{_asvdPp = a})

-- | OAuth access token.
asvdAccessToken :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdAccessToken
  = lens _asvdAccessToken
      (\ s a -> s{_asvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvdUploadType :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdUploadType
  = lens _asvdUploadType
      (\ s a -> s{_asvdUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvdVersionsId :: Lens' AppsServicesVersionsDelete Text
asvdVersionsId
  = lens _asvdVersionsId
      (\ s a -> s{_asvdVersionsId = a})

-- | OAuth bearer token.
asvdBearerToken :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdBearerToken
  = lens _asvdBearerToken
      (\ s a -> s{_asvdBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/services\/default\/versions\/v1\".
asvdAppsId :: Lens' AppsServicesVersionsDelete Text
asvdAppsId
  = lens _asvdAppsId (\ s a -> s{_asvdAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvdServicesId :: Lens' AppsServicesVersionsDelete Text
asvdServicesId
  = lens _asvdServicesId
      (\ s a -> s{_asvdServicesId = a})

-- | JSONP
asvdCallback :: Lens' AppsServicesVersionsDelete (Maybe Text)
asvdCallback
  = lens _asvdCallback (\ s a -> s{_asvdCallback = a})

instance GoogleRequest AppsServicesVersionsDelete
         where
        type Rs AppsServicesVersionsDelete = Operation
        type Scopes AppsServicesVersionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesVersionsDelete'{..}
          = go _asvdAppsId _asvdServicesId _asvdVersionsId
              _asvdXgafv
              _asvdUploadProtocol
              (Just _asvdPp)
              _asvdAccessToken
              _asvdUploadType
              _asvdBearerToken
              _asvdCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesVersionsDeleteResource)
                      mempty
