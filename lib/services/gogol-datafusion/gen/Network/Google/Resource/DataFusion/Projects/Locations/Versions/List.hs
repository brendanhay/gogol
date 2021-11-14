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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Versions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists possible versions for Data Fusion instances in the specified
-- project and location.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.versions.list@.
module Network.Google.Resource.DataFusion.Projects.Locations.Versions.List
    (
    -- * REST Resource
      ProjectsLocationsVersionsListResource

    -- * Creating a Request
    , projectsLocationsVersionsList
    , ProjectsLocationsVersionsList

    -- * Request Lenses
    , plvlParent
    , plvlXgafv
    , plvlUploadProtocol
    , plvlAccessToken
    , plvlUploadType
    , plvlPageToken
    , plvlPageSize
    , plvlLatestPatchOnly
    , plvlCallback
    ) where

import Network.Google.DataFusion.Types
import Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.versions.list@ method which the
-- 'ProjectsLocationsVersionsList' request conforms to.
type ProjectsLocationsVersionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "latestPatchOnly" Bool :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAvailableVersionsResponse

-- | Lists possible versions for Data Fusion instances in the specified
-- project and location.
--
-- /See:/ 'projectsLocationsVersionsList' smart constructor.
data ProjectsLocationsVersionsList =
  ProjectsLocationsVersionsList'
    { _plvlParent :: !Text
    , _plvlXgafv :: !(Maybe Xgafv)
    , _plvlUploadProtocol :: !(Maybe Text)
    , _plvlAccessToken :: !(Maybe Text)
    , _plvlUploadType :: !(Maybe Text)
    , _plvlPageToken :: !(Maybe Text)
    , _plvlPageSize :: !(Maybe (Textual Int32))
    , _plvlLatestPatchOnly :: !(Maybe Bool)
    , _plvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plvlParent'
--
-- * 'plvlXgafv'
--
-- * 'plvlUploadProtocol'
--
-- * 'plvlAccessToken'
--
-- * 'plvlUploadType'
--
-- * 'plvlPageToken'
--
-- * 'plvlPageSize'
--
-- * 'plvlLatestPatchOnly'
--
-- * 'plvlCallback'
projectsLocationsVersionsList
    :: Text -- ^ 'plvlParent'
    -> ProjectsLocationsVersionsList
projectsLocationsVersionsList pPlvlParent_ =
  ProjectsLocationsVersionsList'
    { _plvlParent = pPlvlParent_
    , _plvlXgafv = Nothing
    , _plvlUploadProtocol = Nothing
    , _plvlAccessToken = Nothing
    , _plvlUploadType = Nothing
    , _plvlPageToken = Nothing
    , _plvlPageSize = Nothing
    , _plvlLatestPatchOnly = Nothing
    , _plvlCallback = Nothing
    }


-- | Required. The project and location for which to retrieve instance
-- information in the format projects\/{project}\/locations\/{location}.
plvlParent :: Lens' ProjectsLocationsVersionsList Text
plvlParent
  = lens _plvlParent (\ s a -> s{_plvlParent = a})

-- | V1 error format.
plvlXgafv :: Lens' ProjectsLocationsVersionsList (Maybe Xgafv)
plvlXgafv
  = lens _plvlXgafv (\ s a -> s{_plvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plvlUploadProtocol :: Lens' ProjectsLocationsVersionsList (Maybe Text)
plvlUploadProtocol
  = lens _plvlUploadProtocol
      (\ s a -> s{_plvlUploadProtocol = a})

-- | OAuth access token.
plvlAccessToken :: Lens' ProjectsLocationsVersionsList (Maybe Text)
plvlAccessToken
  = lens _plvlAccessToken
      (\ s a -> s{_plvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plvlUploadType :: Lens' ProjectsLocationsVersionsList (Maybe Text)
plvlUploadType
  = lens _plvlUploadType
      (\ s a -> s{_plvlUploadType = a})

-- | The next_page_token value to use if there are additional results to
-- retrieve for this list request.
plvlPageToken :: Lens' ProjectsLocationsVersionsList (Maybe Text)
plvlPageToken
  = lens _plvlPageToken
      (\ s a -> s{_plvlPageToken = a})

-- | The maximum number of items to return.
plvlPageSize :: Lens' ProjectsLocationsVersionsList (Maybe Int32)
plvlPageSize
  = lens _plvlPageSize (\ s a -> s{_plvlPageSize = a})
      . mapping _Coerce

-- | Whether or not to return the latest patch of every available minor
-- version. If true, only the latest patch will be returned. Ex. if allowed
-- versions is [6.1.1, 6.1.2, 6.2.0] then response will be [6.1.2, 6.2.0]
plvlLatestPatchOnly :: Lens' ProjectsLocationsVersionsList (Maybe Bool)
plvlLatestPatchOnly
  = lens _plvlLatestPatchOnly
      (\ s a -> s{_plvlLatestPatchOnly = a})

-- | JSONP
plvlCallback :: Lens' ProjectsLocationsVersionsList (Maybe Text)
plvlCallback
  = lens _plvlCallback (\ s a -> s{_plvlCallback = a})

instance GoogleRequest ProjectsLocationsVersionsList
         where
        type Rs ProjectsLocationsVersionsList =
             ListAvailableVersionsResponse
        type Scopes ProjectsLocationsVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsVersionsList'{..}
          = go _plvlParent _plvlXgafv _plvlUploadProtocol
              _plvlAccessToken
              _plvlUploadType
              _plvlPageToken
              _plvlPageSize
              _plvlLatestPatchOnly
              _plvlCallback
              (Just AltJSON)
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsVersionsListResource)
                      mempty
