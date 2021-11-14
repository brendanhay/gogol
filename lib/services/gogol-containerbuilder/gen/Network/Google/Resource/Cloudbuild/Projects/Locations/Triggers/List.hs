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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists existing \`BuildTrigger\`s. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.list@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.List
    (
    -- * REST Resource
      ProjectsLocationsTriggersListResource

    -- * Creating a Request
    , projectsLocationsTriggersList
    , ProjectsLocationsTriggersList

    -- * Request Lenses
    , pltlParent
    , pltlXgafv
    , pltlUploadProtocol
    , pltlAccessToken
    , pltlUploadType
    , pltlPageToken
    , pltlProjectId
    , pltlPageSize
    , pltlCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.triggers.list@ method which the
-- 'ProjectsLocationsTriggersList' request conforms to.
type ProjectsLocationsTriggersListResource =
     "v1" :>
       Capture "parent" Text :>
         "triggers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListBuildTriggersResponse

-- | Lists existing \`BuildTrigger\`s. This API is experimental.
--
-- /See:/ 'projectsLocationsTriggersList' smart constructor.
data ProjectsLocationsTriggersList =
  ProjectsLocationsTriggersList'
    { _pltlParent :: !Text
    , _pltlXgafv :: !(Maybe Xgafv)
    , _pltlUploadProtocol :: !(Maybe Text)
    , _pltlAccessToken :: !(Maybe Text)
    , _pltlUploadType :: !(Maybe Text)
    , _pltlPageToken :: !(Maybe Text)
    , _pltlProjectId :: !(Maybe Text)
    , _pltlPageSize :: !(Maybe (Textual Int32))
    , _pltlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTriggersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltlParent'
--
-- * 'pltlXgafv'
--
-- * 'pltlUploadProtocol'
--
-- * 'pltlAccessToken'
--
-- * 'pltlUploadType'
--
-- * 'pltlPageToken'
--
-- * 'pltlProjectId'
--
-- * 'pltlPageSize'
--
-- * 'pltlCallback'
projectsLocationsTriggersList
    :: Text -- ^ 'pltlParent'
    -> ProjectsLocationsTriggersList
projectsLocationsTriggersList pPltlParent_ =
  ProjectsLocationsTriggersList'
    { _pltlParent = pPltlParent_
    , _pltlXgafv = Nothing
    , _pltlUploadProtocol = Nothing
    , _pltlAccessToken = Nothing
    , _pltlUploadType = Nothing
    , _pltlPageToken = Nothing
    , _pltlProjectId = Nothing
    , _pltlPageSize = Nothing
    , _pltlCallback = Nothing
    }


-- | The parent of the collection of \`Triggers\`. Format:
-- \`projects\/{project}\/locations\/{location}\`
pltlParent :: Lens' ProjectsLocationsTriggersList Text
pltlParent
  = lens _pltlParent (\ s a -> s{_pltlParent = a})

-- | V1 error format.
pltlXgafv :: Lens' ProjectsLocationsTriggersList (Maybe Xgafv)
pltlXgafv
  = lens _pltlXgafv (\ s a -> s{_pltlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltlUploadProtocol :: Lens' ProjectsLocationsTriggersList (Maybe Text)
pltlUploadProtocol
  = lens _pltlUploadProtocol
      (\ s a -> s{_pltlUploadProtocol = a})

-- | OAuth access token.
pltlAccessToken :: Lens' ProjectsLocationsTriggersList (Maybe Text)
pltlAccessToken
  = lens _pltlAccessToken
      (\ s a -> s{_pltlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltlUploadType :: Lens' ProjectsLocationsTriggersList (Maybe Text)
pltlUploadType
  = lens _pltlUploadType
      (\ s a -> s{_pltlUploadType = a})

-- | Token to provide to skip to a particular spot in the list.
pltlPageToken :: Lens' ProjectsLocationsTriggersList (Maybe Text)
pltlPageToken
  = lens _pltlPageToken
      (\ s a -> s{_pltlPageToken = a})

-- | Required. ID of the project for which to list BuildTriggers.
pltlProjectId :: Lens' ProjectsLocationsTriggersList (Maybe Text)
pltlProjectId
  = lens _pltlProjectId
      (\ s a -> s{_pltlProjectId = a})

-- | Number of results to return in the list.
pltlPageSize :: Lens' ProjectsLocationsTriggersList (Maybe Int32)
pltlPageSize
  = lens _pltlPageSize (\ s a -> s{_pltlPageSize = a})
      . mapping _Coerce

-- | JSONP
pltlCallback :: Lens' ProjectsLocationsTriggersList (Maybe Text)
pltlCallback
  = lens _pltlCallback (\ s a -> s{_pltlCallback = a})

instance GoogleRequest ProjectsLocationsTriggersList
         where
        type Rs ProjectsLocationsTriggersList =
             ListBuildTriggersResponse
        type Scopes ProjectsLocationsTriggersList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsTriggersList'{..}
          = go _pltlParent _pltlXgafv _pltlUploadProtocol
              _pltlAccessToken
              _pltlUploadType
              _pltlPageToken
              _pltlProjectId
              _pltlPageSize
              _pltlCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTriggersListResource)
                      mempty
