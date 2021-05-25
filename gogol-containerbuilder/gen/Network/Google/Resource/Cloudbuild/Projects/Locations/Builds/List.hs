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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists previously requested builds. Previously requested builds may still
-- be in-progress, or may have finished successfully or unsuccessfully.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.list@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.List
    (
    -- * REST Resource
      ProjectsLocationsBuildsListResource

    -- * Creating a Request
    , projectsLocationsBuildsList
    , ProjectsLocationsBuildsList

    -- * Request Lenses
    , plblParent
    , plblXgafv
    , plblUploadProtocol
    , plblAccessToken
    , plblUploadType
    , plblFilter
    , plblPageToken
    , plblProjectId
    , plblPageSize
    , plblCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.builds.list@ method which the
-- 'ProjectsLocationsBuildsList' request conforms to.
type ProjectsLocationsBuildsListResource =
     "v1" :>
       Capture "parent" Text :>
         "builds" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListBuildsResponse

-- | Lists previously requested builds. Previously requested builds may still
-- be in-progress, or may have finished successfully or unsuccessfully.
--
-- /See:/ 'projectsLocationsBuildsList' smart constructor.
data ProjectsLocationsBuildsList =
  ProjectsLocationsBuildsList'
    { _plblParent :: !Text
    , _plblXgafv :: !(Maybe Xgafv)
    , _plblUploadProtocol :: !(Maybe Text)
    , _plblAccessToken :: !(Maybe Text)
    , _plblUploadType :: !(Maybe Text)
    , _plblFilter :: !(Maybe Text)
    , _plblPageToken :: !(Maybe Text)
    , _plblProjectId :: !(Maybe Text)
    , _plblPageSize :: !(Maybe (Textual Int32))
    , _plblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBuildsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plblParent'
--
-- * 'plblXgafv'
--
-- * 'plblUploadProtocol'
--
-- * 'plblAccessToken'
--
-- * 'plblUploadType'
--
-- * 'plblFilter'
--
-- * 'plblPageToken'
--
-- * 'plblProjectId'
--
-- * 'plblPageSize'
--
-- * 'plblCallback'
projectsLocationsBuildsList
    :: Text -- ^ 'plblParent'
    -> ProjectsLocationsBuildsList
projectsLocationsBuildsList pPlblParent_ =
  ProjectsLocationsBuildsList'
    { _plblParent = pPlblParent_
    , _plblXgafv = Nothing
    , _plblUploadProtocol = Nothing
    , _plblAccessToken = Nothing
    , _plblUploadType = Nothing
    , _plblFilter = Nothing
    , _plblPageToken = Nothing
    , _plblProjectId = Nothing
    , _plblPageSize = Nothing
    , _plblCallback = Nothing
    }


-- | The parent of the collection of \`Builds\`. Format:
-- \`projects\/{project}\/locations\/location\`
plblParent :: Lens' ProjectsLocationsBuildsList Text
plblParent
  = lens _plblParent (\ s a -> s{_plblParent = a})

-- | V1 error format.
plblXgafv :: Lens' ProjectsLocationsBuildsList (Maybe Xgafv)
plblXgafv
  = lens _plblXgafv (\ s a -> s{_plblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plblUploadProtocol :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblUploadProtocol
  = lens _plblUploadProtocol
      (\ s a -> s{_plblUploadProtocol = a})

-- | OAuth access token.
plblAccessToken :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblAccessToken
  = lens _plblAccessToken
      (\ s a -> s{_plblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plblUploadType :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblUploadType
  = lens _plblUploadType
      (\ s a -> s{_plblUploadType = a})

-- | The raw filter text to constrain the results.
plblFilter :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblFilter
  = lens _plblFilter (\ s a -> s{_plblFilter = a})

-- | The page token for the next page of Builds. If unspecified, the first
-- page of results is returned. If the token is rejected for any reason,
-- INVALID_ARGUMENT will be thrown. In this case, the token should be
-- discarded, and pagination should be restarted from the first page of
-- results. See https:\/\/google.aip.dev\/158 for more.
plblPageToken :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblPageToken
  = lens _plblPageToken
      (\ s a -> s{_plblPageToken = a})

-- | Required. ID of the project.
plblProjectId :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblProjectId
  = lens _plblProjectId
      (\ s a -> s{_plblProjectId = a})

-- | Number of results to return in the list.
plblPageSize :: Lens' ProjectsLocationsBuildsList (Maybe Int32)
plblPageSize
  = lens _plblPageSize (\ s a -> s{_plblPageSize = a})
      . mapping _Coerce

-- | JSONP
plblCallback :: Lens' ProjectsLocationsBuildsList (Maybe Text)
plblCallback
  = lens _plblCallback (\ s a -> s{_plblCallback = a})

instance GoogleRequest ProjectsLocationsBuildsList
         where
        type Rs ProjectsLocationsBuildsList =
             ListBuildsResponse
        type Scopes ProjectsLocationsBuildsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsBuildsList'{..}
          = go _plblParent _plblXgafv _plblUploadProtocol
              _plblAccessToken
              _plblUploadType
              _plblFilter
              _plblPageToken
              _plblProjectId
              _plblPageSize
              _plblCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBuildsListResource)
                      mempty
