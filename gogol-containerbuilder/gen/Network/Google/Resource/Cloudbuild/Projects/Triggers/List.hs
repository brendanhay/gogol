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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists existing \`BuildTrigger\`s. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.list@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.List
    (
    -- * REST Resource
      ProjectsTriggersListResource

    -- * Creating a Request
    , projectsTriggersList
    , ProjectsTriggersList

    -- * Request Lenses
    , ptlXgafv
    , ptlUploadProtocol
    , ptlAccessToken
    , ptlUploadType
    , ptlPageToken
    , ptlProjectId
    , ptlPageSize
    , ptlCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.list@ method which the
-- 'ProjectsTriggersList' request conforms to.
type ProjectsTriggersListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListBuildTriggersResponse

-- | Lists existing \`BuildTrigger\`s. This API is experimental.
--
-- /See:/ 'projectsTriggersList' smart constructor.
data ProjectsTriggersList =
  ProjectsTriggersList'
    { _ptlXgafv          :: !(Maybe Xgafv)
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlAccessToken    :: !(Maybe Text)
    , _ptlUploadType     :: !(Maybe Text)
    , _ptlPageToken      :: !(Maybe Text)
    , _ptlProjectId      :: !Text
    , _ptlPageSize       :: !(Maybe (Textual Int32))
    , _ptlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlXgafv'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlPageToken'
--
-- * 'ptlProjectId'
--
-- * 'ptlPageSize'
--
-- * 'ptlCallback'
projectsTriggersList
    :: Text -- ^ 'ptlProjectId'
    -> ProjectsTriggersList
projectsTriggersList pPtlProjectId_ =
  ProjectsTriggersList'
    { _ptlXgafv = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlPageToken = Nothing
    , _ptlProjectId = pPtlProjectId_
    , _ptlPageSize = Nothing
    , _ptlCallback = Nothing
    }


-- | V1 error format.
ptlXgafv :: Lens' ProjectsTriggersList (Maybe Xgafv)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTriggersList (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTriggersList (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTriggersList (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | Token to provide to skip to a particular spot in the list.
ptlPageToken :: Lens' ProjectsTriggersList (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | ID of the project for which to list BuildTriggers.
ptlProjectId :: Lens' ProjectsTriggersList Text
ptlProjectId
  = lens _ptlProjectId (\ s a -> s{_ptlProjectId = a})

-- | Number of results to return in the list.
ptlPageSize :: Lens' ProjectsTriggersList (Maybe Int32)
ptlPageSize
  = lens _ptlPageSize (\ s a -> s{_ptlPageSize = a}) .
      mapping _Coerce

-- | JSONP
ptlCallback :: Lens' ProjectsTriggersList (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

instance GoogleRequest ProjectsTriggersList where
        type Rs ProjectsTriggersList =
             ListBuildTriggersResponse
        type Scopes ProjectsTriggersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTriggersList'{..}
          = go _ptlProjectId _ptlXgafv _ptlUploadProtocol
              _ptlAccessToken
              _ptlUploadType
              _ptlPageToken
              _ptlPageSize
              _ptlCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersListResource)
                      mempty
