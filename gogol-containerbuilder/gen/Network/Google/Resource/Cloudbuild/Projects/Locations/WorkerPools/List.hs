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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists \`WorkerPool\`s.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.list@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.List
    (
    -- * REST Resource
      ProjectsLocationsWorkerPoolsListResource

    -- * Creating a Request
    , projectsLocationsWorkerPoolsList
    , ProjectsLocationsWorkerPoolsList

    -- * Request Lenses
    , plwplParent
    , plwplXgafv
    , plwplUploadProtocol
    , plwplAccessToken
    , plwplUploadType
    , plwplPageToken
    , plwplPageSize
    , plwplCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.workerPools.list@ method which the
-- 'ProjectsLocationsWorkerPoolsList' request conforms to.
type ProjectsLocationsWorkerPoolsListResource =
     "v1" :>
       Capture "parent" Text :>
         "workerPools" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListWorkerPoolsResponse

-- | Lists \`WorkerPool\`s.
--
-- /See:/ 'projectsLocationsWorkerPoolsList' smart constructor.
data ProjectsLocationsWorkerPoolsList =
  ProjectsLocationsWorkerPoolsList'
    { _plwplParent :: !Text
    , _plwplXgafv :: !(Maybe Xgafv)
    , _plwplUploadProtocol :: !(Maybe Text)
    , _plwplAccessToken :: !(Maybe Text)
    , _plwplUploadType :: !(Maybe Text)
    , _plwplPageToken :: !(Maybe Text)
    , _plwplPageSize :: !(Maybe (Textual Int32))
    , _plwplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkerPoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwplParent'
--
-- * 'plwplXgafv'
--
-- * 'plwplUploadProtocol'
--
-- * 'plwplAccessToken'
--
-- * 'plwplUploadType'
--
-- * 'plwplPageToken'
--
-- * 'plwplPageSize'
--
-- * 'plwplCallback'
projectsLocationsWorkerPoolsList
    :: Text -- ^ 'plwplParent'
    -> ProjectsLocationsWorkerPoolsList
projectsLocationsWorkerPoolsList pPlwplParent_ =
  ProjectsLocationsWorkerPoolsList'
    { _plwplParent = pPlwplParent_
    , _plwplXgafv = Nothing
    , _plwplUploadProtocol = Nothing
    , _plwplAccessToken = Nothing
    , _plwplUploadType = Nothing
    , _plwplPageToken = Nothing
    , _plwplPageSize = Nothing
    , _plwplCallback = Nothing
    }


-- | Required. The parent of the collection of \`WorkerPools\`. Format:
-- \`projects\/{project}\/locations\/{location}\`.
plwplParent :: Lens' ProjectsLocationsWorkerPoolsList Text
plwplParent
  = lens _plwplParent (\ s a -> s{_plwplParent = a})

-- | V1 error format.
plwplXgafv :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Xgafv)
plwplXgafv
  = lens _plwplXgafv (\ s a -> s{_plwplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwplUploadProtocol :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Text)
plwplUploadProtocol
  = lens _plwplUploadProtocol
      (\ s a -> s{_plwplUploadProtocol = a})

-- | OAuth access token.
plwplAccessToken :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Text)
plwplAccessToken
  = lens _plwplAccessToken
      (\ s a -> s{_plwplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwplUploadType :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Text)
plwplUploadType
  = lens _plwplUploadType
      (\ s a -> s{_plwplUploadType = a})

-- | A page token, received from a previous \`ListWorkerPools\` call. Provide
-- this to retrieve the subsequent page.
plwplPageToken :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Text)
plwplPageToken
  = lens _plwplPageToken
      (\ s a -> s{_plwplPageToken = a})

-- | The maximum number of \`WorkerPool\`s to return. The service may return
-- fewer than this value. If omitted, the server will use a sensible
-- default.
plwplPageSize :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Int32)
plwplPageSize
  = lens _plwplPageSize
      (\ s a -> s{_plwplPageSize = a})
      . mapping _Coerce

-- | JSONP
plwplCallback :: Lens' ProjectsLocationsWorkerPoolsList (Maybe Text)
plwplCallback
  = lens _plwplCallback
      (\ s a -> s{_plwplCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkerPoolsList
         where
        type Rs ProjectsLocationsWorkerPoolsList =
             ListWorkerPoolsResponse
        type Scopes ProjectsLocationsWorkerPoolsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsWorkerPoolsList'{..}
          = go _plwplParent _plwplXgafv _plwplUploadProtocol
              _plwplAccessToken
              _plwplUploadType
              _plwplPageToken
              _plwplPageSize
              _plwplCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkerPoolsListResource)
                      mempty
