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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Data Fusion instances in the specified project and location.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.list@.
module Network.Google.Resource.DataFusion.Projects.Locations.Instances.List
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
    , plilOrderBy
    , plilAccessToken
    , plilUploadType
    , plilFilter
    , plilPageToken
    , plilPageSize
    , plilCallback
    ) where

import Network.Google.DataFusion.Types
import Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.instances.list@ method which the
-- 'ProjectsLocationsInstancesList' request conforms to.
type ProjectsLocationsInstancesListResource =
     "v1" :>
       Capture "parent" Text :>
         "instances" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListInstancesResponse

-- | Lists Data Fusion instances in the specified project and location.
--
-- /See:/ 'projectsLocationsInstancesList' smart constructor.
data ProjectsLocationsInstancesList =
  ProjectsLocationsInstancesList'
    { _plilParent :: !Text
    , _plilXgafv :: !(Maybe Xgafv)
    , _plilUploadProtocol :: !(Maybe Text)
    , _plilOrderBy :: !(Maybe Text)
    , _plilAccessToken :: !(Maybe Text)
    , _plilUploadType :: !(Maybe Text)
    , _plilFilter :: !(Maybe Text)
    , _plilPageToken :: !(Maybe Text)
    , _plilPageSize :: !(Maybe (Textual Int32))
    , _plilCallback :: !(Maybe Text)
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
-- * 'plilOrderBy'
--
-- * 'plilAccessToken'
--
-- * 'plilUploadType'
--
-- * 'plilFilter'
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
    , _plilOrderBy = Nothing
    , _plilAccessToken = Nothing
    , _plilUploadType = Nothing
    , _plilFilter = Nothing
    , _plilPageToken = Nothing
    , _plilPageSize = Nothing
    , _plilCallback = Nothing
    }


-- | The project and location for which to retrieve instance information in
-- the format projects\/{project}\/locations\/{location}. If the location
-- is specified as \'-\' (wildcard), then all regions available to the
-- project are queried, and the results are aggregated.
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

-- | Sort results. Supported values are \"name\", \"name desc\", or \"\"
-- (unsorted).
plilOrderBy :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilOrderBy
  = lens _plilOrderBy (\ s a -> s{_plilOrderBy = a})

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

-- | List filter.
plilFilter :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilFilter
  = lens _plilFilter (\ s a -> s{_plilFilter = a})

-- | The next_page_token value to use if there are additional results to
-- retrieve for this list request.
plilPageToken :: Lens' ProjectsLocationsInstancesList (Maybe Text)
plilPageToken
  = lens _plilPageToken
      (\ s a -> s{_plilPageToken = a})

-- | The maximum number of items to return.
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
              _plilOrderBy
              _plilAccessToken
              _plilUploadType
              _plilFilter
              _plilPageToken
              _plilPageSize
              _plilCallback
              (Just AltJSON)
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesListResource)
                      mempty
