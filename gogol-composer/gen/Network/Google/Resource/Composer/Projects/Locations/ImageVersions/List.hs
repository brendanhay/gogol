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
-- Module      : Network.Google.Resource.Composer.Projects.Locations.ImageVersions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List ImageVersions for provided location.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.imageVersions.list@.
module Network.Google.Resource.Composer.Projects.Locations.ImageVersions.List
    (
    -- * REST Resource
      ProjectsLocationsImageVersionsListResource

    -- * Creating a Request
    , projectsLocationsImageVersionsList
    , ProjectsLocationsImageVersionsList

    -- * Request Lenses
    , plivlParent
    , plivlXgafv
    , plivlUploadProtocol
    , plivlAccessToken
    , plivlUploadType
    , plivlIncludePastReleases
    , plivlPageToken
    , plivlPageSize
    , plivlCallback
    ) where

import Network.Google.Composer.Types
import Network.Google.Prelude

-- | A resource alias for @composer.projects.locations.imageVersions.list@ method which the
-- 'ProjectsLocationsImageVersionsList' request conforms to.
type ProjectsLocationsImageVersionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "imageVersions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "includePastReleases" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListImageVersionsResponse

-- | List ImageVersions for provided location.
--
-- /See:/ 'projectsLocationsImageVersionsList' smart constructor.
data ProjectsLocationsImageVersionsList =
  ProjectsLocationsImageVersionsList'
    { _plivlParent :: !Text
    , _plivlXgafv :: !(Maybe Xgafv)
    , _plivlUploadProtocol :: !(Maybe Text)
    , _plivlAccessToken :: !(Maybe Text)
    , _plivlUploadType :: !(Maybe Text)
    , _plivlIncludePastReleases :: !(Maybe Bool)
    , _plivlPageToken :: !(Maybe Text)
    , _plivlPageSize :: !(Maybe (Textual Int32))
    , _plivlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsImageVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plivlParent'
--
-- * 'plivlXgafv'
--
-- * 'plivlUploadProtocol'
--
-- * 'plivlAccessToken'
--
-- * 'plivlUploadType'
--
-- * 'plivlIncludePastReleases'
--
-- * 'plivlPageToken'
--
-- * 'plivlPageSize'
--
-- * 'plivlCallback'
projectsLocationsImageVersionsList
    :: Text -- ^ 'plivlParent'
    -> ProjectsLocationsImageVersionsList
projectsLocationsImageVersionsList pPlivlParent_ =
  ProjectsLocationsImageVersionsList'
    { _plivlParent = pPlivlParent_
    , _plivlXgafv = Nothing
    , _plivlUploadProtocol = Nothing
    , _plivlAccessToken = Nothing
    , _plivlUploadType = Nothing
    , _plivlIncludePastReleases = Nothing
    , _plivlPageToken = Nothing
    , _plivlPageSize = Nothing
    , _plivlCallback = Nothing
    }


-- | List ImageVersions in the given project and location, in the form:
-- \"projects\/{projectId}\/locations\/{locationId}\"
plivlParent :: Lens' ProjectsLocationsImageVersionsList Text
plivlParent
  = lens _plivlParent (\ s a -> s{_plivlParent = a})

-- | V1 error format.
plivlXgafv :: Lens' ProjectsLocationsImageVersionsList (Maybe Xgafv)
plivlXgafv
  = lens _plivlXgafv (\ s a -> s{_plivlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plivlUploadProtocol :: Lens' ProjectsLocationsImageVersionsList (Maybe Text)
plivlUploadProtocol
  = lens _plivlUploadProtocol
      (\ s a -> s{_plivlUploadProtocol = a})

-- | OAuth access token.
plivlAccessToken :: Lens' ProjectsLocationsImageVersionsList (Maybe Text)
plivlAccessToken
  = lens _plivlAccessToken
      (\ s a -> s{_plivlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plivlUploadType :: Lens' ProjectsLocationsImageVersionsList (Maybe Text)
plivlUploadType
  = lens _plivlUploadType
      (\ s a -> s{_plivlUploadType = a})

-- | Whether or not image versions from old releases should be included.
plivlIncludePastReleases :: Lens' ProjectsLocationsImageVersionsList (Maybe Bool)
plivlIncludePastReleases
  = lens _plivlIncludePastReleases
      (\ s a -> s{_plivlIncludePastReleases = a})

-- | The next_page_token value returned from a previous List request, if any.
plivlPageToken :: Lens' ProjectsLocationsImageVersionsList (Maybe Text)
plivlPageToken
  = lens _plivlPageToken
      (\ s a -> s{_plivlPageToken = a})

-- | The maximum number of image_versions to return.
plivlPageSize :: Lens' ProjectsLocationsImageVersionsList (Maybe Int32)
plivlPageSize
  = lens _plivlPageSize
      (\ s a -> s{_plivlPageSize = a})
      . mapping _Coerce

-- | JSONP
plivlCallback :: Lens' ProjectsLocationsImageVersionsList (Maybe Text)
plivlCallback
  = lens _plivlCallback
      (\ s a -> s{_plivlCallback = a})

instance GoogleRequest
           ProjectsLocationsImageVersionsList
         where
        type Rs ProjectsLocationsImageVersionsList =
             ListImageVersionsResponse
        type Scopes ProjectsLocationsImageVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsImageVersionsList'{..}
          = go _plivlParent _plivlXgafv _plivlUploadProtocol
              _plivlAccessToken
              _plivlUploadType
              _plivlIncludePastReleases
              _plivlPageToken
              _plivlPageSize
              _plivlCallback
              (Just AltJSON)
              composerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsImageVersionsListResource)
                      mempty
