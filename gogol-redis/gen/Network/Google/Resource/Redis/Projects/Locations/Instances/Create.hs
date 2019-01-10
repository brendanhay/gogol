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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Redis instance based on the specified tier and memory size. By
-- default, the instance is accessible from the project\'s [default
-- network](\/compute\/docs\/networks-and-firewalls#networks). The creation
-- is executed asynchronously and callers may check the returned operation
-- to track its progress. Once the operation is completed the Redis
-- instance will be fully functional. Completed longrunning.Operation will
-- contain the new instance object in the response field. The returned
-- operation is automatically deleted after a few hours, so there is no
-- need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.create@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.Create
    (
    -- * REST Resource
      ProjectsLocationsInstancesCreateResource

    -- * Creating a Request
    , projectsLocationsInstancesCreate
    , ProjectsLocationsInstancesCreate

    -- * Request Lenses
    , plicParent
    , plicInstanceId
    , plicXgafv
    , plicUploadProtocol
    , plicAccessToken
    , plicUploadType
    , plicPayload
    , plicCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.create@ method which the
-- 'ProjectsLocationsInstancesCreate' request conforms to.
type ProjectsLocationsInstancesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "instances" :>
           QueryParam "instanceId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Instance :> Post '[JSON] Operation

-- | Creates a Redis instance based on the specified tier and memory size. By
-- default, the instance is accessible from the project\'s [default
-- network](\/compute\/docs\/networks-and-firewalls#networks). The creation
-- is executed asynchronously and callers may check the returned operation
-- to track its progress. Once the operation is completed the Redis
-- instance will be fully functional. Completed longrunning.Operation will
-- contain the new instance object in the response field. The returned
-- operation is automatically deleted after a few hours, so there is no
-- need to call DeleteOperation.
--
-- /See:/ 'projectsLocationsInstancesCreate' smart constructor.
data ProjectsLocationsInstancesCreate = ProjectsLocationsInstancesCreate'
    { _plicParent         :: !Text
    , _plicInstanceId     :: !(Maybe Text)
    , _plicXgafv          :: !(Maybe Xgafv)
    , _plicUploadProtocol :: !(Maybe Text)
    , _plicAccessToken    :: !(Maybe Text)
    , _plicUploadType     :: !(Maybe Text)
    , _plicPayload        :: !Instance
    , _plicCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsInstancesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plicParent'
--
-- * 'plicInstanceId'
--
-- * 'plicXgafv'
--
-- * 'plicUploadProtocol'
--
-- * 'plicAccessToken'
--
-- * 'plicUploadType'
--
-- * 'plicPayload'
--
-- * 'plicCallback'
projectsLocationsInstancesCreate
    :: Text -- ^ 'plicParent'
    -> Instance -- ^ 'plicPayload'
    -> ProjectsLocationsInstancesCreate
projectsLocationsInstancesCreate pPlicParent_ pPlicPayload_ =
    ProjectsLocationsInstancesCreate'
    { _plicParent = pPlicParent_
    , _plicInstanceId = Nothing
    , _plicXgafv = Nothing
    , _plicUploadProtocol = Nothing
    , _plicAccessToken = Nothing
    , _plicUploadType = Nothing
    , _plicPayload = pPlicPayload_
    , _plicCallback = Nothing
    }

-- | Required. The resource name of the instance location using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\` where
-- \`location_id\` refers to a GCP region
plicParent :: Lens' ProjectsLocationsInstancesCreate Text
plicParent
  = lens _plicParent (\ s a -> s{_plicParent = a})

-- | Required. The logical name of the Redis instance in the customer project
-- with the following restrictions: * Must contain only lowercase letters,
-- numbers, and hyphens. * Must start with a letter. * Must be between 1-40
-- characters. * Must end with a number or a letter. * Must be unique
-- within the customer project \/ location
plicInstanceId :: Lens' ProjectsLocationsInstancesCreate (Maybe Text)
plicInstanceId
  = lens _plicInstanceId
      (\ s a -> s{_plicInstanceId = a})

-- | V1 error format.
plicXgafv :: Lens' ProjectsLocationsInstancesCreate (Maybe Xgafv)
plicXgafv
  = lens _plicXgafv (\ s a -> s{_plicXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plicUploadProtocol :: Lens' ProjectsLocationsInstancesCreate (Maybe Text)
plicUploadProtocol
  = lens _plicUploadProtocol
      (\ s a -> s{_plicUploadProtocol = a})

-- | OAuth access token.
plicAccessToken :: Lens' ProjectsLocationsInstancesCreate (Maybe Text)
plicAccessToken
  = lens _plicAccessToken
      (\ s a -> s{_plicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plicUploadType :: Lens' ProjectsLocationsInstancesCreate (Maybe Text)
plicUploadType
  = lens _plicUploadType
      (\ s a -> s{_plicUploadType = a})

-- | Multipart request metadata.
plicPayload :: Lens' ProjectsLocationsInstancesCreate Instance
plicPayload
  = lens _plicPayload (\ s a -> s{_plicPayload = a})

-- | JSONP
plicCallback :: Lens' ProjectsLocationsInstancesCreate (Maybe Text)
plicCallback
  = lens _plicCallback (\ s a -> s{_plicCallback = a})

instance GoogleRequest
         ProjectsLocationsInstancesCreate where
        type Rs ProjectsLocationsInstancesCreate = Operation
        type Scopes ProjectsLocationsInstancesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesCreate'{..}
          = go _plicParent _plicInstanceId _plicXgafv
              _plicUploadProtocol
              _plicAccessToken
              _plicUploadType
              _plicCallback
              (Just AltJSON)
              _plicPayload
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesCreateResource)
                      mempty
