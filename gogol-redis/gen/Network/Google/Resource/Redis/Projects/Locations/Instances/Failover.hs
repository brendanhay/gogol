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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.Failover
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a failover of the primary node to current replica node for a
-- specific STANDARD tier Cloud Memorystore for Redis instance.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.failover@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.Failover
    (
    -- * REST Resource
      ProjectsLocationsInstancesFailoverResource

    -- * Creating a Request
    , projectsLocationsInstancesFailover
    , ProjectsLocationsInstancesFailover

    -- * Request Lenses
    , plifXgafv
    , plifUploadProtocol
    , plifAccessToken
    , plifUploadType
    , plifPayload
    , plifName
    , plifCallback
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.failover@ method which the
-- 'ProjectsLocationsInstancesFailover' request conforms to.
type ProjectsLocationsInstancesFailoverResource =
     "v1" :>
       CaptureMode "name" "failover" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] FailoverInstanceRequest :>
                       Post '[JSON] Operation

-- | Initiates a failover of the primary node to current replica node for a
-- specific STANDARD tier Cloud Memorystore for Redis instance.
--
-- /See:/ 'projectsLocationsInstancesFailover' smart constructor.
data ProjectsLocationsInstancesFailover =
  ProjectsLocationsInstancesFailover'
    { _plifXgafv :: !(Maybe Xgafv)
    , _plifUploadProtocol :: !(Maybe Text)
    , _plifAccessToken :: !(Maybe Text)
    , _plifUploadType :: !(Maybe Text)
    , _plifPayload :: !FailoverInstanceRequest
    , _plifName :: !Text
    , _plifCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesFailover' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plifXgafv'
--
-- * 'plifUploadProtocol'
--
-- * 'plifAccessToken'
--
-- * 'plifUploadType'
--
-- * 'plifPayload'
--
-- * 'plifName'
--
-- * 'plifCallback'
projectsLocationsInstancesFailover
    :: FailoverInstanceRequest -- ^ 'plifPayload'
    -> Text -- ^ 'plifName'
    -> ProjectsLocationsInstancesFailover
projectsLocationsInstancesFailover pPlifPayload_ pPlifName_ =
  ProjectsLocationsInstancesFailover'
    { _plifXgafv = Nothing
    , _plifUploadProtocol = Nothing
    , _plifAccessToken = Nothing
    , _plifUploadType = Nothing
    , _plifPayload = pPlifPayload_
    , _plifName = pPlifName_
    , _plifCallback = Nothing
    }


-- | V1 error format.
plifXgafv :: Lens' ProjectsLocationsInstancesFailover (Maybe Xgafv)
plifXgafv
  = lens _plifXgafv (\ s a -> s{_plifXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plifUploadProtocol :: Lens' ProjectsLocationsInstancesFailover (Maybe Text)
plifUploadProtocol
  = lens _plifUploadProtocol
      (\ s a -> s{_plifUploadProtocol = a})

-- | OAuth access token.
plifAccessToken :: Lens' ProjectsLocationsInstancesFailover (Maybe Text)
plifAccessToken
  = lens _plifAccessToken
      (\ s a -> s{_plifAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plifUploadType :: Lens' ProjectsLocationsInstancesFailover (Maybe Text)
plifUploadType
  = lens _plifUploadType
      (\ s a -> s{_plifUploadType = a})

-- | Multipart request metadata.
plifPayload :: Lens' ProjectsLocationsInstancesFailover FailoverInstanceRequest
plifPayload
  = lens _plifPayload (\ s a -> s{_plifPayload = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region.
plifName :: Lens' ProjectsLocationsInstancesFailover Text
plifName = lens _plifName (\ s a -> s{_plifName = a})

-- | JSONP
plifCallback :: Lens' ProjectsLocationsInstancesFailover (Maybe Text)
plifCallback
  = lens _plifCallback (\ s a -> s{_plifCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesFailover
         where
        type Rs ProjectsLocationsInstancesFailover =
             Operation
        type Scopes ProjectsLocationsInstancesFailover =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesFailover'{..}
          = go _plifName _plifXgafv _plifUploadProtocol
              _plifAccessToken
              _plifUploadType
              _plifCallback
              (Just AltJSON)
              _plifPayload
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesFailoverResource)
                      mempty
