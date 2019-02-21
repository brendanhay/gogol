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
-- Module      : Network.Google.Resource.Datastore.Projects.Indexes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the indexes that match the specified filters. Datastore uses an
-- eventually consistent query to fetch the list of indexes and may
-- occasionally return stale results.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.list@.
module Network.Google.Resource.Datastore.Projects.Indexes.List
    (
    -- * REST Resource
      ProjectsIndexesListResource

    -- * Creating a Request
    , projectsIndexesList
    , ProjectsIndexesList

    -- * Request Lenses
    , pilXgafv
    , pilUploadProtocol
    , pilAccessToken
    , pilUploadType
    , pilFilter
    , pilPageToken
    , pilProjectId
    , pilPageSize
    , pilCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.indexes.list@ method which the
-- 'ProjectsIndexesList' request conforms to.
type ProjectsIndexesListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "indexes" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleDatastoreAdminV1ListIndexesResponse

-- | Lists the indexes that match the specified filters. Datastore uses an
-- eventually consistent query to fetch the list of indexes and may
-- occasionally return stale results.
--
-- /See:/ 'projectsIndexesList' smart constructor.
data ProjectsIndexesList =
  ProjectsIndexesList'
    { _pilXgafv          :: !(Maybe Xgafv)
    , _pilUploadProtocol :: !(Maybe Text)
    , _pilAccessToken    :: !(Maybe Text)
    , _pilUploadType     :: !(Maybe Text)
    , _pilFilter         :: !(Maybe Text)
    , _pilPageToken      :: !(Maybe Text)
    , _pilProjectId      :: !Text
    , _pilPageSize       :: !(Maybe (Textual Int32))
    , _pilCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsIndexesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilXgafv'
--
-- * 'pilUploadProtocol'
--
-- * 'pilAccessToken'
--
-- * 'pilUploadType'
--
-- * 'pilFilter'
--
-- * 'pilPageToken'
--
-- * 'pilProjectId'
--
-- * 'pilPageSize'
--
-- * 'pilCallback'
projectsIndexesList
    :: Text -- ^ 'pilProjectId'
    -> ProjectsIndexesList
projectsIndexesList pPilProjectId_ =
  ProjectsIndexesList'
    { _pilXgafv = Nothing
    , _pilUploadProtocol = Nothing
    , _pilAccessToken = Nothing
    , _pilUploadType = Nothing
    , _pilFilter = Nothing
    , _pilPageToken = Nothing
    , _pilProjectId = pPilProjectId_
    , _pilPageSize = Nothing
    , _pilCallback = Nothing
    }


-- | V1 error format.
pilXgafv :: Lens' ProjectsIndexesList (Maybe Xgafv)
pilXgafv = lens _pilXgafv (\ s a -> s{_pilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pilUploadProtocol :: Lens' ProjectsIndexesList (Maybe Text)
pilUploadProtocol
  = lens _pilUploadProtocol
      (\ s a -> s{_pilUploadProtocol = a})

-- | OAuth access token.
pilAccessToken :: Lens' ProjectsIndexesList (Maybe Text)
pilAccessToken
  = lens _pilAccessToken
      (\ s a -> s{_pilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pilUploadType :: Lens' ProjectsIndexesList (Maybe Text)
pilUploadType
  = lens _pilUploadType
      (\ s a -> s{_pilUploadType = a})

pilFilter :: Lens' ProjectsIndexesList (Maybe Text)
pilFilter
  = lens _pilFilter (\ s a -> s{_pilFilter = a})

-- | The next_page_token value returned from a previous List request, if any.
pilPageToken :: Lens' ProjectsIndexesList (Maybe Text)
pilPageToken
  = lens _pilPageToken (\ s a -> s{_pilPageToken = a})

-- | Project ID against which to make the request.
pilProjectId :: Lens' ProjectsIndexesList Text
pilProjectId
  = lens _pilProjectId (\ s a -> s{_pilProjectId = a})

-- | The maximum number of items to return. If zero, then all results will be
-- returned.
pilPageSize :: Lens' ProjectsIndexesList (Maybe Int32)
pilPageSize
  = lens _pilPageSize (\ s a -> s{_pilPageSize = a}) .
      mapping _Coerce

-- | JSONP
pilCallback :: Lens' ProjectsIndexesList (Maybe Text)
pilCallback
  = lens _pilCallback (\ s a -> s{_pilCallback = a})

instance GoogleRequest ProjectsIndexesList where
        type Rs ProjectsIndexesList =
             GoogleDatastoreAdminV1ListIndexesResponse
        type Scopes ProjectsIndexesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsIndexesList'{..}
          = go _pilProjectId _pilXgafv _pilUploadProtocol
              _pilAccessToken
              _pilUploadType
              _pilFilter
              _pilPageToken
              _pilPageSize
              _pilCallback
              (Just AltJSON)
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIndexesListResource)
                      mempty
