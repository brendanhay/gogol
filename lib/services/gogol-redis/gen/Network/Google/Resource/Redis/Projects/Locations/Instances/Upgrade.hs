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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.Upgrade
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upgrades Redis instance to the newer Redis version specified in the
-- request.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.upgrade@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.Upgrade
    (
    -- * REST Resource
      ProjectsLocationsInstancesUpgradeResource

    -- * Creating a Request
    , projectsLocationsInstancesUpgrade
    , ProjectsLocationsInstancesUpgrade

    -- * Request Lenses
    , pliuXgafv
    , pliuUploadProtocol
    , pliuAccessToken
    , pliuUploadType
    , pliuPayload
    , pliuName
    , pliuCallback
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.upgrade@ method which the
-- 'ProjectsLocationsInstancesUpgrade' request conforms to.
type ProjectsLocationsInstancesUpgradeResource =
     "v1" :>
       CaptureMode "name" "upgrade" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpgradeInstanceRequest :>
                       Post '[JSON] Operation

-- | Upgrades Redis instance to the newer Redis version specified in the
-- request.
--
-- /See:/ 'projectsLocationsInstancesUpgrade' smart constructor.
data ProjectsLocationsInstancesUpgrade =
  ProjectsLocationsInstancesUpgrade'
    { _pliuXgafv :: !(Maybe Xgafv)
    , _pliuUploadProtocol :: !(Maybe Text)
    , _pliuAccessToken :: !(Maybe Text)
    , _pliuUploadType :: !(Maybe Text)
    , _pliuPayload :: !UpgradeInstanceRequest
    , _pliuName :: !Text
    , _pliuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesUpgrade' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliuXgafv'
--
-- * 'pliuUploadProtocol'
--
-- * 'pliuAccessToken'
--
-- * 'pliuUploadType'
--
-- * 'pliuPayload'
--
-- * 'pliuName'
--
-- * 'pliuCallback'
projectsLocationsInstancesUpgrade
    :: UpgradeInstanceRequest -- ^ 'pliuPayload'
    -> Text -- ^ 'pliuName'
    -> ProjectsLocationsInstancesUpgrade
projectsLocationsInstancesUpgrade pPliuPayload_ pPliuName_ =
  ProjectsLocationsInstancesUpgrade'
    { _pliuXgafv = Nothing
    , _pliuUploadProtocol = Nothing
    , _pliuAccessToken = Nothing
    , _pliuUploadType = Nothing
    , _pliuPayload = pPliuPayload_
    , _pliuName = pPliuName_
    , _pliuCallback = Nothing
    }


-- | V1 error format.
pliuXgafv :: Lens' ProjectsLocationsInstancesUpgrade (Maybe Xgafv)
pliuXgafv
  = lens _pliuXgafv (\ s a -> s{_pliuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliuUploadProtocol :: Lens' ProjectsLocationsInstancesUpgrade (Maybe Text)
pliuUploadProtocol
  = lens _pliuUploadProtocol
      (\ s a -> s{_pliuUploadProtocol = a})

-- | OAuth access token.
pliuAccessToken :: Lens' ProjectsLocationsInstancesUpgrade (Maybe Text)
pliuAccessToken
  = lens _pliuAccessToken
      (\ s a -> s{_pliuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliuUploadType :: Lens' ProjectsLocationsInstancesUpgrade (Maybe Text)
pliuUploadType
  = lens _pliuUploadType
      (\ s a -> s{_pliuUploadType = a})

-- | Multipart request metadata.
pliuPayload :: Lens' ProjectsLocationsInstancesUpgrade UpgradeInstanceRequest
pliuPayload
  = lens _pliuPayload (\ s a -> s{_pliuPayload = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region.
pliuName :: Lens' ProjectsLocationsInstancesUpgrade Text
pliuName = lens _pliuName (\ s a -> s{_pliuName = a})

-- | JSONP
pliuCallback :: Lens' ProjectsLocationsInstancesUpgrade (Maybe Text)
pliuCallback
  = lens _pliuCallback (\ s a -> s{_pliuCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesUpgrade
         where
        type Rs ProjectsLocationsInstancesUpgrade = Operation
        type Scopes ProjectsLocationsInstancesUpgrade =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesUpgrade'{..}
          = go _pliuName _pliuXgafv _pliuUploadProtocol
              _pliuAccessToken
              _pliuUploadType
              _pliuCallback
              (Just AltJSON)
              _pliuPayload
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesUpgradeResource)
                      mempty
