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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Builds.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists previously requested builds. Previously requested builds may still
-- be in-progress, or may have finished successfully or unsuccessfully.
--
-- /See:/ <https://cloud.google.com/container-builder/docs/ Google Cloud Container Builder API Reference> for @cloudbuild.projects.builds.list@.
module Network.Google.Resource.Cloudbuild.Projects.Builds.List
    (
    -- * REST Resource
      ProjectsBuildsListResource

    -- * Creating a Request
    , projectsBuildsList
    , ProjectsBuildsList

    -- * Request Lenses
    , pblXgafv
    , pblUploadProtocol
    , pblPp
    , pblAccessToken
    , pblUploadType
    , pblBearerToken
    , pblFilter
    , pblPageToken
    , pblProjectId
    , pblPageSize
    , pblCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.builds.list@ method which the
-- 'ProjectsBuildsList' request conforms to.
type ProjectsBuildsListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "builds" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListBuildsResponse

-- | Lists previously requested builds. Previously requested builds may still
-- be in-progress, or may have finished successfully or unsuccessfully.
--
-- /See:/ 'projectsBuildsList' smart constructor.
data ProjectsBuildsList = ProjectsBuildsList'
    { _pblXgafv          :: !(Maybe Xgafv)
    , _pblUploadProtocol :: !(Maybe Text)
    , _pblPp             :: !Bool
    , _pblAccessToken    :: !(Maybe Text)
    , _pblUploadType     :: !(Maybe Text)
    , _pblBearerToken    :: !(Maybe Text)
    , _pblFilter         :: !(Maybe Text)
    , _pblPageToken      :: !(Maybe Text)
    , _pblProjectId      :: !Text
    , _pblPageSize       :: !(Maybe (Textual Int32))
    , _pblCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsBuildsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pblXgafv'
--
-- * 'pblUploadProtocol'
--
-- * 'pblPp'
--
-- * 'pblAccessToken'
--
-- * 'pblUploadType'
--
-- * 'pblBearerToken'
--
-- * 'pblFilter'
--
-- * 'pblPageToken'
--
-- * 'pblProjectId'
--
-- * 'pblPageSize'
--
-- * 'pblCallback'
projectsBuildsList
    :: Text -- ^ 'pblProjectId'
    -> ProjectsBuildsList
projectsBuildsList pPblProjectId_ =
    ProjectsBuildsList'
    { _pblXgafv = Nothing
    , _pblUploadProtocol = Nothing
    , _pblPp = True
    , _pblAccessToken = Nothing
    , _pblUploadType = Nothing
    , _pblBearerToken = Nothing
    , _pblFilter = Nothing
    , _pblPageToken = Nothing
    , _pblProjectId = pPblProjectId_
    , _pblPageSize = Nothing
    , _pblCallback = Nothing
    }

-- | V1 error format.
pblXgafv :: Lens' ProjectsBuildsList (Maybe Xgafv)
pblXgafv = lens _pblXgafv (\ s a -> s{_pblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pblUploadProtocol :: Lens' ProjectsBuildsList (Maybe Text)
pblUploadProtocol
  = lens _pblUploadProtocol
      (\ s a -> s{_pblUploadProtocol = a})

-- | Pretty-print response.
pblPp :: Lens' ProjectsBuildsList Bool
pblPp = lens _pblPp (\ s a -> s{_pblPp = a})

-- | OAuth access token.
pblAccessToken :: Lens' ProjectsBuildsList (Maybe Text)
pblAccessToken
  = lens _pblAccessToken
      (\ s a -> s{_pblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pblUploadType :: Lens' ProjectsBuildsList (Maybe Text)
pblUploadType
  = lens _pblUploadType
      (\ s a -> s{_pblUploadType = a})

-- | OAuth bearer token.
pblBearerToken :: Lens' ProjectsBuildsList (Maybe Text)
pblBearerToken
  = lens _pblBearerToken
      (\ s a -> s{_pblBearerToken = a})

-- | The raw filter text to constrain the results.
pblFilter :: Lens' ProjectsBuildsList (Maybe Text)
pblFilter
  = lens _pblFilter (\ s a -> s{_pblFilter = a})

-- | Token to provide to skip to a particular spot in the list.
pblPageToken :: Lens' ProjectsBuildsList (Maybe Text)
pblPageToken
  = lens _pblPageToken (\ s a -> s{_pblPageToken = a})

-- | ID of the project.
pblProjectId :: Lens' ProjectsBuildsList Text
pblProjectId
  = lens _pblProjectId (\ s a -> s{_pblProjectId = a})

-- | Number of results to return in the list.
pblPageSize :: Lens' ProjectsBuildsList (Maybe Int32)
pblPageSize
  = lens _pblPageSize (\ s a -> s{_pblPageSize = a}) .
      mapping _Coerce

-- | JSONP
pblCallback :: Lens' ProjectsBuildsList (Maybe Text)
pblCallback
  = lens _pblCallback (\ s a -> s{_pblCallback = a})

instance GoogleRequest ProjectsBuildsList where
        type Rs ProjectsBuildsList = ListBuildsResponse
        type Scopes ProjectsBuildsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBuildsList'{..}
          = go _pblProjectId _pblXgafv _pblUploadProtocol
              (Just _pblPp)
              _pblAccessToken
              _pblUploadType
              _pblBearerToken
              _pblFilter
              _pblPageToken
              _pblPageSize
              _pblCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBuildsListResource)
                      mempty
