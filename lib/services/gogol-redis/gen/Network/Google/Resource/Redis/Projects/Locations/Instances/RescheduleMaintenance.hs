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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.RescheduleMaintenance
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reschedule maintenance for a given instance in a given project and
-- location.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.rescheduleMaintenance@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.RescheduleMaintenance
    (
    -- * REST Resource
      ProjectsLocationsInstancesRescheduleMaintenanceResource

    -- * Creating a Request
    , projectsLocationsInstancesRescheduleMaintenance
    , ProjectsLocationsInstancesRescheduleMaintenance

    -- * Request Lenses
    , plirmXgafv
    , plirmUploadProtocol
    , plirmAccessToken
    , plirmUploadType
    , plirmPayload
    , plirmName
    , plirmCallback
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.rescheduleMaintenance@ method which the
-- 'ProjectsLocationsInstancesRescheduleMaintenance' request conforms to.
type ProjectsLocationsInstancesRescheduleMaintenanceResource
     =
     "v1" :>
       CaptureMode "name" "rescheduleMaintenance" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RescheduleMaintenanceRequest :>
                       Post '[JSON] Operation

-- | Reschedule maintenance for a given instance in a given project and
-- location.
--
-- /See:/ 'projectsLocationsInstancesRescheduleMaintenance' smart constructor.
data ProjectsLocationsInstancesRescheduleMaintenance =
  ProjectsLocationsInstancesRescheduleMaintenance'
    { _plirmXgafv :: !(Maybe Xgafv)
    , _plirmUploadProtocol :: !(Maybe Text)
    , _plirmAccessToken :: !(Maybe Text)
    , _plirmUploadType :: !(Maybe Text)
    , _plirmPayload :: !RescheduleMaintenanceRequest
    , _plirmName :: !Text
    , _plirmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesRescheduleMaintenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plirmXgafv'
--
-- * 'plirmUploadProtocol'
--
-- * 'plirmAccessToken'
--
-- * 'plirmUploadType'
--
-- * 'plirmPayload'
--
-- * 'plirmName'
--
-- * 'plirmCallback'
projectsLocationsInstancesRescheduleMaintenance
    :: RescheduleMaintenanceRequest -- ^ 'plirmPayload'
    -> Text -- ^ 'plirmName'
    -> ProjectsLocationsInstancesRescheduleMaintenance
projectsLocationsInstancesRescheduleMaintenance pPlirmPayload_ pPlirmName_ =
  ProjectsLocationsInstancesRescheduleMaintenance'
    { _plirmXgafv = Nothing
    , _plirmUploadProtocol = Nothing
    , _plirmAccessToken = Nothing
    , _plirmUploadType = Nothing
    , _plirmPayload = pPlirmPayload_
    , _plirmName = pPlirmName_
    , _plirmCallback = Nothing
    }


-- | V1 error format.
plirmXgafv :: Lens' ProjectsLocationsInstancesRescheduleMaintenance (Maybe Xgafv)
plirmXgafv
  = lens _plirmXgafv (\ s a -> s{_plirmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plirmUploadProtocol :: Lens' ProjectsLocationsInstancesRescheduleMaintenance (Maybe Text)
plirmUploadProtocol
  = lens _plirmUploadProtocol
      (\ s a -> s{_plirmUploadProtocol = a})

-- | OAuth access token.
plirmAccessToken :: Lens' ProjectsLocationsInstancesRescheduleMaintenance (Maybe Text)
plirmAccessToken
  = lens _plirmAccessToken
      (\ s a -> s{_plirmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plirmUploadType :: Lens' ProjectsLocationsInstancesRescheduleMaintenance (Maybe Text)
plirmUploadType
  = lens _plirmUploadType
      (\ s a -> s{_plirmUploadType = a})

-- | Multipart request metadata.
plirmPayload :: Lens' ProjectsLocationsInstancesRescheduleMaintenance RescheduleMaintenanceRequest
plirmPayload
  = lens _plirmPayload (\ s a -> s{_plirmPayload = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region.
plirmName :: Lens' ProjectsLocationsInstancesRescheduleMaintenance Text
plirmName
  = lens _plirmName (\ s a -> s{_plirmName = a})

-- | JSONP
plirmCallback :: Lens' ProjectsLocationsInstancesRescheduleMaintenance (Maybe Text)
plirmCallback
  = lens _plirmCallback
      (\ s a -> s{_plirmCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesRescheduleMaintenance
         where
        type Rs
               ProjectsLocationsInstancesRescheduleMaintenance
             = Operation
        type Scopes
               ProjectsLocationsInstancesRescheduleMaintenance
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInstancesRescheduleMaintenance'{..}
          = go _plirmName _plirmXgafv _plirmUploadProtocol
              _plirmAccessToken
              _plirmUploadType
              _plirmCallback
              (Just AltJSON)
              _plirmPayload
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsInstancesRescheduleMaintenanceResource)
                      mempty
