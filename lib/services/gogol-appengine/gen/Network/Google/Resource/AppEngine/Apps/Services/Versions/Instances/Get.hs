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
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets instance information.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.services.versions.instances.get@.
module Network.Google.Resource.AppEngine.Apps.Services.Versions.Instances.Get
    (
    -- * REST Resource
      AppsServicesVersionsInstancesGetResource

    -- * Creating a Request
    , appsServicesVersionsInstancesGet
    , AppsServicesVersionsInstancesGet

    -- * Request Lenses
    , asvigXgafv
    , asvigInstancesId
    , asvigUploadProtocol
    , asvigAccessToken
    , asvigUploadType
    , asvigVersionsId
    , asvigAppsId
    , asvigServicesId
    , asvigCallback
    ) where

import Network.Google.AppEngine.Types
import Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.versions.instances.get@ method which the
-- 'AppsServicesVersionsInstancesGet' request conforms to.
type AppsServicesVersionsInstancesGetResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               "versions" :>
                 Capture "versionsId" Text :>
                   "instances" :>
                     Capture "instancesId" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Instance

-- | Gets instance information.
--
-- /See:/ 'appsServicesVersionsInstancesGet' smart constructor.
data AppsServicesVersionsInstancesGet =
  AppsServicesVersionsInstancesGet'
    { _asvigXgafv :: !(Maybe Xgafv)
    , _asvigInstancesId :: !Text
    , _asvigUploadProtocol :: !(Maybe Text)
    , _asvigAccessToken :: !(Maybe Text)
    , _asvigUploadType :: !(Maybe Text)
    , _asvigVersionsId :: !Text
    , _asvigAppsId :: !Text
    , _asvigServicesId :: !Text
    , _asvigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppsServicesVersionsInstancesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asvigXgafv'
--
-- * 'asvigInstancesId'
--
-- * 'asvigUploadProtocol'
--
-- * 'asvigAccessToken'
--
-- * 'asvigUploadType'
--
-- * 'asvigVersionsId'
--
-- * 'asvigAppsId'
--
-- * 'asvigServicesId'
--
-- * 'asvigCallback'
appsServicesVersionsInstancesGet
    :: Text -- ^ 'asvigInstancesId'
    -> Text -- ^ 'asvigVersionsId'
    -> Text -- ^ 'asvigAppsId'
    -> Text -- ^ 'asvigServicesId'
    -> AppsServicesVersionsInstancesGet
appsServicesVersionsInstancesGet pAsvigInstancesId_ pAsvigVersionsId_ pAsvigAppsId_ pAsvigServicesId_ =
  AppsServicesVersionsInstancesGet'
    { _asvigXgafv = Nothing
    , _asvigInstancesId = pAsvigInstancesId_
    , _asvigUploadProtocol = Nothing
    , _asvigAccessToken = Nothing
    , _asvigUploadType = Nothing
    , _asvigVersionsId = pAsvigVersionsId_
    , _asvigAppsId = pAsvigAppsId_
    , _asvigServicesId = pAsvigServicesId_
    , _asvigCallback = Nothing
    }


-- | V1 error format.
asvigXgafv :: Lens' AppsServicesVersionsInstancesGet (Maybe Xgafv)
asvigXgafv
  = lens _asvigXgafv (\ s a -> s{_asvigXgafv = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvigInstancesId :: Lens' AppsServicesVersionsInstancesGet Text
asvigInstancesId
  = lens _asvigInstancesId
      (\ s a -> s{_asvigInstancesId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asvigUploadProtocol :: Lens' AppsServicesVersionsInstancesGet (Maybe Text)
asvigUploadProtocol
  = lens _asvigUploadProtocol
      (\ s a -> s{_asvigUploadProtocol = a})

-- | OAuth access token.
asvigAccessToken :: Lens' AppsServicesVersionsInstancesGet (Maybe Text)
asvigAccessToken
  = lens _asvigAccessToken
      (\ s a -> s{_asvigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asvigUploadType :: Lens' AppsServicesVersionsInstancesGet (Maybe Text)
asvigUploadType
  = lens _asvigUploadType
      (\ s a -> s{_asvigUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvigVersionsId :: Lens' AppsServicesVersionsInstancesGet Text
asvigVersionsId
  = lens _asvigVersionsId
      (\ s a -> s{_asvigVersionsId = a})

-- | Part of \`name\`. Name of the resource requested. Example:
-- apps\/myapp\/services\/default\/versions\/v1\/instances\/instance-1.
asvigAppsId :: Lens' AppsServicesVersionsInstancesGet Text
asvigAppsId
  = lens _asvigAppsId (\ s a -> s{_asvigAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
asvigServicesId :: Lens' AppsServicesVersionsInstancesGet Text
asvigServicesId
  = lens _asvigServicesId
      (\ s a -> s{_asvigServicesId = a})

-- | JSONP
asvigCallback :: Lens' AppsServicesVersionsInstancesGet (Maybe Text)
asvigCallback
  = lens _asvigCallback
      (\ s a -> s{_asvigCallback = a})

instance GoogleRequest
           AppsServicesVersionsInstancesGet
         where
        type Rs AppsServicesVersionsInstancesGet = Instance
        type Scopes AppsServicesVersionsInstancesGet =
             '["https://www.googleapis.com/auth/appengine.admin",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient AppsServicesVersionsInstancesGet'{..}
          = go _asvigAppsId _asvigServicesId _asvigVersionsId
              _asvigInstancesId
              _asvigXgafv
              _asvigUploadProtocol
              _asvigAccessToken
              _asvigUploadType
              _asvigCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AppsServicesVersionsInstancesGetResource)
                      mempty
