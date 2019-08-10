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
-- Module      : Network.Google.Resource.Container.Projects.Aggregated.UsableSubnetworks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists subnetworks that are usable for creating clusters in a project.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.aggregated.usableSubnetworks.list@.
module Network.Google.Resource.Container.Projects.Aggregated.UsableSubnetworks.List
    (
    -- * REST Resource
      ProjectsAggregatedUsableSubnetworksListResource

    -- * Creating a Request
    , projectsAggregatedUsableSubnetworksList
    , ProjectsAggregatedUsableSubnetworksList

    -- * Request Lenses
    , pauslParent
    , pauslXgafv
    , pauslUploadProtocol
    , pauslAccessToken
    , pauslUploadType
    , pauslFilter
    , pauslPageToken
    , pauslPageSize
    , pauslCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.aggregated.usableSubnetworks.list@ method which the
-- 'ProjectsAggregatedUsableSubnetworksList' request conforms to.
type ProjectsAggregatedUsableSubnetworksListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "aggregated" :>
           "usableSubnetworks" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListUsableSubnetworksResponse

-- | Lists subnetworks that are usable for creating clusters in a project.
--
-- /See:/ 'projectsAggregatedUsableSubnetworksList' smart constructor.
data ProjectsAggregatedUsableSubnetworksList =
  ProjectsAggregatedUsableSubnetworksList'
    { _pauslParent         :: !Text
    , _pauslXgafv          :: !(Maybe Xgafv)
    , _pauslUploadProtocol :: !(Maybe Text)
    , _pauslAccessToken    :: !(Maybe Text)
    , _pauslUploadType     :: !(Maybe Text)
    , _pauslFilter         :: !(Maybe Text)
    , _pauslPageToken      :: !(Maybe Text)
    , _pauslPageSize       :: !(Maybe (Textual Int32))
    , _pauslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAggregatedUsableSubnetworksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pauslParent'
--
-- * 'pauslXgafv'
--
-- * 'pauslUploadProtocol'
--
-- * 'pauslAccessToken'
--
-- * 'pauslUploadType'
--
-- * 'pauslFilter'
--
-- * 'pauslPageToken'
--
-- * 'pauslPageSize'
--
-- * 'pauslCallback'
projectsAggregatedUsableSubnetworksList
    :: Text -- ^ 'pauslParent'
    -> ProjectsAggregatedUsableSubnetworksList
projectsAggregatedUsableSubnetworksList pPauslParent_ =
  ProjectsAggregatedUsableSubnetworksList'
    { _pauslParent = pPauslParent_
    , _pauslXgafv = Nothing
    , _pauslUploadProtocol = Nothing
    , _pauslAccessToken = Nothing
    , _pauslUploadType = Nothing
    , _pauslFilter = Nothing
    , _pauslPageToken = Nothing
    , _pauslPageSize = Nothing
    , _pauslCallback = Nothing
    }


-- | The parent project where subnetworks are usable. Specified in the format
-- \'projects\/*\'.
pauslParent :: Lens' ProjectsAggregatedUsableSubnetworksList Text
pauslParent
  = lens _pauslParent (\ s a -> s{_pauslParent = a})

-- | V1 error format.
pauslXgafv :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Xgafv)
pauslXgafv
  = lens _pauslXgafv (\ s a -> s{_pauslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pauslUploadProtocol :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Text)
pauslUploadProtocol
  = lens _pauslUploadProtocol
      (\ s a -> s{_pauslUploadProtocol = a})

-- | OAuth access token.
pauslAccessToken :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Text)
pauslAccessToken
  = lens _pauslAccessToken
      (\ s a -> s{_pauslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pauslUploadType :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Text)
pauslUploadType
  = lens _pauslUploadType
      (\ s a -> s{_pauslUploadType = a})

-- | Filtering currently only supports equality on the networkProjectId and
-- must be in the form: \"networkProjectId=[PROJECTID]\", where
-- \`networkProjectId\` is the project which owns the listed subnetworks.
-- This defaults to the parent project ID.
pauslFilter :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Text)
pauslFilter
  = lens _pauslFilter (\ s a -> s{_pauslFilter = a})

-- | Specifies a page token to use. Set this to the nextPageToken returned by
-- previous list requests to get the next page of results.
pauslPageToken :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Text)
pauslPageToken
  = lens _pauslPageToken
      (\ s a -> s{_pauslPageToken = a})

-- | The max number of results per page that should be returned. If the
-- number of available results is larger than \`page_size\`, a
-- \`next_page_token\` is returned which can be used to get the next page
-- of results in subsequent requests. Acceptable values are 0 to 500,
-- inclusive. (Default: 500)
pauslPageSize :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Int32)
pauslPageSize
  = lens _pauslPageSize
      (\ s a -> s{_pauslPageSize = a})
      . mapping _Coerce

-- | JSONP
pauslCallback :: Lens' ProjectsAggregatedUsableSubnetworksList (Maybe Text)
pauslCallback
  = lens _pauslCallback
      (\ s a -> s{_pauslCallback = a})

instance GoogleRequest
           ProjectsAggregatedUsableSubnetworksList
         where
        type Rs ProjectsAggregatedUsableSubnetworksList =
             ListUsableSubnetworksResponse
        type Scopes ProjectsAggregatedUsableSubnetworksList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsAggregatedUsableSubnetworksList'{..}
          = go _pauslParent _pauslXgafv _pauslUploadProtocol
              _pauslAccessToken
              _pauslUploadType
              _pauslFilter
              _pauslPageToken
              _pauslPageSize
              _pauslCallback
              (Just AltJSON)
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsAggregatedUsableSubnetworksListResource)
                      mempty
