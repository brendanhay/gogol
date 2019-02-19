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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Redis instances owned by a project in either the specified
-- location (region) or all locations. The location should have the
-- following format: * \`projects\/{project_id}\/locations\/{location_id}\`
-- If \`location_id\` is specified as \`-\` (wildcard), then all regions
-- available to the project are queried, and the results are aggregated.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.list@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.List
    (
    -- * REST Resource
      ProjectsLocationsInstancesListResource

    -- * Creating a Request
    , projectsLocationsInstancesList
    , ProjectsLocationsInstancesList

    -- * Request Lenses
    , plilParent
    , plilXgafv
    , plilUploadProtocol
    , plilAccessToken
    , plilUploadType
    , plilPageToken
    , plilPageSize
    , plilCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.list@ method which the
-- 'ProjectsLocationsInstancesList' request conforms to.
type ProjectsLocationsInstancesListResource =
     "v1" :>
       Capture "parent" Text :>
         "instances" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListInstancesResponse

-- | Lists all Redis instances owned by a project in either the specified
-- location (region) or all locations. The location should have the
-- following format: * \`projects\/{project_id}\/locations\/{location_id}\`
-- If \`location_id\` is specified as \`-\` (wildcard), then all regions
-- available to the project are queried, and the results are aggregated.
--
-- /See:/ 'projectsLocationsInstancesList' smart constructor.
data ProjectsLocationsInstancesList =
  ProjectsLocationsInstancesList'
    { _plilParent         :: !Text
    , _plilXgafv          :: !(Maybe Xgafv)
    , _plilUploadProtocol :: !(Maybe Text)
    , _plilAccessToken    :: !(Maybe Text)
    , _plilUploadType     :: !(Maybe Text)
    , _plilPageToken      :: !(Maybe Text)
    , _plilPageSize       :: !(Maybe (Textual Int32))
    , _plilCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsInstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plilParent'
--
-- * 'plilXgafv'
--
-- * 'plilUploadProtocol'
--
-- * 'plilAccessToken'
--
-- * 'plilUploadType'
--
-- * 'plilPageToken'
--
-- * 'plilPageSize'
--
-- * 'plilCallback'
projectsLocationsInstancesList
    :: Text -- ^ 'plilParent'
    -> ProjectsLocationsInstancesList
projectsLocationsInstancesList pPlilParent_ =
  ProjectsLocationsInstancesList'
    { _plilParent = pPlilParent_
    , _plilXgafv = Nothing
    , _plilUploadProtocol = Nothing
    , _plilAccessToken = Nothing
    , _plilUploadType = Nothing
    , _plilPageToken = Nothing
    , _plilPageSize = Nothing
    , _plilCallback = Nothing
    }

-- | Required. The resource name of the instance location using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\` where
-- \`location_id\` refers to a GCP region
plilParent :: Lens' ProjectsLocationsInstancesList Text
plilParent
  = lens _plilParent (\ s a -> s{_plilParent = a})

-- | V1 error format.
plilXgafv :: Lens' ProjectsLocationsInstancesList (Maybe Xgafv)
plilXgafv
  = lens _plilXgafv (\ s a -> s{_plilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plilUploadProtocol :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilUploadProtocol
  = lens _plilUploadProtocol
      (\ s a -> s{_plilUploadProtocol = a})

-- | OAuth access token.
plilAccessToken :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilAccessToken
  = lens _plilAccessToken
      (\ s a -> s{_plilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plilUploadType :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilUploadType
  = lens _plilUploadType
      (\ s a -> s{_plilUploadType = a})

-- | The next_page_token value returned from a previous List request, if any.
plilPageToken :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilPageToken
  = lens _plilPageToken
      (\ s a -> s{_plilPageToken = a})

-- | The maximum number of items to return. If not specified, a default value
-- of 1000 will be used by the service. Regardless of the page_size value,
-- the response may include a partial list and a caller should only rely on
-- response\'s next_page_token to determine if there are more instances
-- left to be queried.
plilPageSize :: Lens' ProjectsLocationsInstancesList (Maybe Int32)
plilPageSize
  = lens _plilPageSize (\ s a -> s{_plilPageSize = a})
      . mapping _Coerce

-- | JSONP
plilCallback :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilCallback
  = lens _plilCallback (\ s a -> s{_plilCallback = a})

instance GoogleRequest ProjectsLocationsInstancesList
         where
        type Rs ProjectsLocationsInstancesList =
             ListInstancesResponse
        type Scopes ProjectsLocationsInstancesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesList'{..}
          = go _plilParent _plilXgafv _plilUploadProtocol
              _plilAccessToken
              _plilUploadType
              _plilPageToken
              _plilPageSize
              _plilCallback
              (Just AltJSON)
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesListResource)
                      mempty
