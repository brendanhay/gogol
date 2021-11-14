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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.GetAuthString
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the AUTH string for a Redis instance. If AUTH is not enabled for
-- the instance the response will be empty. This information is not
-- included in the details returned to GetInstance.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.getAuthString@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.GetAuthString
    (
    -- * REST Resource
      ProjectsLocationsInstancesGetAuthStringResource

    -- * Creating a Request
    , projectsLocationsInstancesGetAuthString
    , ProjectsLocationsInstancesGetAuthString

    -- * Request Lenses
    , pligasXgafv
    , pligasUploadProtocol
    , pligasAccessToken
    , pligasUploadType
    , pligasName
    , pligasCallback
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.getAuthString@ method which the
-- 'ProjectsLocationsInstancesGetAuthString' request conforms to.
type ProjectsLocationsInstancesGetAuthStringResource
     =
     "v1" :>
       Capture "name" Text :>
         "authString" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] InstanceAuthString

-- | Gets the AUTH string for a Redis instance. If AUTH is not enabled for
-- the instance the response will be empty. This information is not
-- included in the details returned to GetInstance.
--
-- /See:/ 'projectsLocationsInstancesGetAuthString' smart constructor.
data ProjectsLocationsInstancesGetAuthString =
  ProjectsLocationsInstancesGetAuthString'
    { _pligasXgafv :: !(Maybe Xgafv)
    , _pligasUploadProtocol :: !(Maybe Text)
    , _pligasAccessToken :: !(Maybe Text)
    , _pligasUploadType :: !(Maybe Text)
    , _pligasName :: !Text
    , _pligasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesGetAuthString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pligasXgafv'
--
-- * 'pligasUploadProtocol'
--
-- * 'pligasAccessToken'
--
-- * 'pligasUploadType'
--
-- * 'pligasName'
--
-- * 'pligasCallback'
projectsLocationsInstancesGetAuthString
    :: Text -- ^ 'pligasName'
    -> ProjectsLocationsInstancesGetAuthString
projectsLocationsInstancesGetAuthString pPligasName_ =
  ProjectsLocationsInstancesGetAuthString'
    { _pligasXgafv = Nothing
    , _pligasUploadProtocol = Nothing
    , _pligasAccessToken = Nothing
    , _pligasUploadType = Nothing
    , _pligasName = pPligasName_
    , _pligasCallback = Nothing
    }


-- | V1 error format.
pligasXgafv :: Lens' ProjectsLocationsInstancesGetAuthString (Maybe Xgafv)
pligasXgafv
  = lens _pligasXgafv (\ s a -> s{_pligasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pligasUploadProtocol :: Lens' ProjectsLocationsInstancesGetAuthString (Maybe Text)
pligasUploadProtocol
  = lens _pligasUploadProtocol
      (\ s a -> s{_pligasUploadProtocol = a})

-- | OAuth access token.
pligasAccessToken :: Lens' ProjectsLocationsInstancesGetAuthString (Maybe Text)
pligasAccessToken
  = lens _pligasAccessToken
      (\ s a -> s{_pligasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pligasUploadType :: Lens' ProjectsLocationsInstancesGetAuthString (Maybe Text)
pligasUploadType
  = lens _pligasUploadType
      (\ s a -> s{_pligasUploadType = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region.
pligasName :: Lens' ProjectsLocationsInstancesGetAuthString Text
pligasName
  = lens _pligasName (\ s a -> s{_pligasName = a})

-- | JSONP
pligasCallback :: Lens' ProjectsLocationsInstancesGetAuthString (Maybe Text)
pligasCallback
  = lens _pligasCallback
      (\ s a -> s{_pligasCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesGetAuthString
         where
        type Rs ProjectsLocationsInstancesGetAuthString =
             InstanceAuthString
        type Scopes ProjectsLocationsInstancesGetAuthString =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInstancesGetAuthString'{..}
          = go _pligasName _pligasXgafv _pligasUploadProtocol
              _pligasAccessToken
              _pligasUploadType
              _pligasCallback
              (Just AltJSON)
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsInstancesGetAuthStringResource)
                      mempty
