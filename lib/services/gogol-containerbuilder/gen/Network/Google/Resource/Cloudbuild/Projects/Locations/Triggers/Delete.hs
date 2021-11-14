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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a \`BuildTrigger\` by its project ID and trigger ID. This API is
-- experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.delete@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Delete
    (
    -- * REST Resource
      ProjectsLocationsTriggersDeleteResource

    -- * Creating a Request
    , projectsLocationsTriggersDelete
    , ProjectsLocationsTriggersDelete

    -- * Request Lenses
    , pltdXgafv
    , pltdUploadProtocol
    , pltdTriggerId
    , pltdAccessToken
    , pltdUploadType
    , pltdName
    , pltdProjectId
    , pltdCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.triggers.delete@ method which the
-- 'ProjectsLocationsTriggersDelete' request conforms to.
type ProjectsLocationsTriggersDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "triggerId" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a \`BuildTrigger\` by its project ID and trigger ID. This API is
-- experimental.
--
-- /See:/ 'projectsLocationsTriggersDelete' smart constructor.
data ProjectsLocationsTriggersDelete =
  ProjectsLocationsTriggersDelete'
    { _pltdXgafv :: !(Maybe Xgafv)
    , _pltdUploadProtocol :: !(Maybe Text)
    , _pltdTriggerId :: !(Maybe Text)
    , _pltdAccessToken :: !(Maybe Text)
    , _pltdUploadType :: !(Maybe Text)
    , _pltdName :: !Text
    , _pltdProjectId :: !(Maybe Text)
    , _pltdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltdXgafv'
--
-- * 'pltdUploadProtocol'
--
-- * 'pltdTriggerId'
--
-- * 'pltdAccessToken'
--
-- * 'pltdUploadType'
--
-- * 'pltdName'
--
-- * 'pltdProjectId'
--
-- * 'pltdCallback'
projectsLocationsTriggersDelete
    :: Text -- ^ 'pltdName'
    -> ProjectsLocationsTriggersDelete
projectsLocationsTriggersDelete pPltdName_ =
  ProjectsLocationsTriggersDelete'
    { _pltdXgafv = Nothing
    , _pltdUploadProtocol = Nothing
    , _pltdTriggerId = Nothing
    , _pltdAccessToken = Nothing
    , _pltdUploadType = Nothing
    , _pltdName = pPltdName_
    , _pltdProjectId = Nothing
    , _pltdCallback = Nothing
    }


-- | V1 error format.
pltdXgafv :: Lens' ProjectsLocationsTriggersDelete (Maybe Xgafv)
pltdXgafv
  = lens _pltdXgafv (\ s a -> s{_pltdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltdUploadProtocol :: Lens' ProjectsLocationsTriggersDelete (Maybe Text)
pltdUploadProtocol
  = lens _pltdUploadProtocol
      (\ s a -> s{_pltdUploadProtocol = a})

-- | Required. ID of the \`BuildTrigger\` to delete.
pltdTriggerId :: Lens' ProjectsLocationsTriggersDelete (Maybe Text)
pltdTriggerId
  = lens _pltdTriggerId
      (\ s a -> s{_pltdTriggerId = a})

-- | OAuth access token.
pltdAccessToken :: Lens' ProjectsLocationsTriggersDelete (Maybe Text)
pltdAccessToken
  = lens _pltdAccessToken
      (\ s a -> s{_pltdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltdUploadType :: Lens' ProjectsLocationsTriggersDelete (Maybe Text)
pltdUploadType
  = lens _pltdUploadType
      (\ s a -> s{_pltdUploadType = a})

-- | The name of the \`Trigger\` to delete. Format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`
pltdName :: Lens' ProjectsLocationsTriggersDelete Text
pltdName = lens _pltdName (\ s a -> s{_pltdName = a})

-- | Required. ID of the project that owns the trigger.
pltdProjectId :: Lens' ProjectsLocationsTriggersDelete (Maybe Text)
pltdProjectId
  = lens _pltdProjectId
      (\ s a -> s{_pltdProjectId = a})

-- | JSONP
pltdCallback :: Lens' ProjectsLocationsTriggersDelete (Maybe Text)
pltdCallback
  = lens _pltdCallback (\ s a -> s{_pltdCallback = a})

instance GoogleRequest
           ProjectsLocationsTriggersDelete
         where
        type Rs ProjectsLocationsTriggersDelete = Empty
        type Scopes ProjectsLocationsTriggersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsTriggersDelete'{..}
          = go _pltdName _pltdXgafv _pltdUploadProtocol
              _pltdTriggerId
              _pltdAccessToken
              _pltdUploadType
              _pltdProjectId
              _pltdCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTriggersDeleteResource)
                      mempty
