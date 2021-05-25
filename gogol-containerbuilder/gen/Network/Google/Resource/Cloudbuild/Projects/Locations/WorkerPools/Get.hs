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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details of a \`WorkerPool\`.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.get@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Get
    (
    -- * REST Resource
      ProjectsLocationsWorkerPoolsGetResource

    -- * Creating a Request
    , projectsLocationsWorkerPoolsGet
    , ProjectsLocationsWorkerPoolsGet

    -- * Request Lenses
    , plwpgXgafv
    , plwpgUploadProtocol
    , plwpgAccessToken
    , plwpgUploadType
    , plwpgName
    , plwpgCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.workerPools.get@ method which the
-- 'ProjectsLocationsWorkerPoolsGet' request conforms to.
type ProjectsLocationsWorkerPoolsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] WorkerPool

-- | Returns details of a \`WorkerPool\`.
--
-- /See:/ 'projectsLocationsWorkerPoolsGet' smart constructor.
data ProjectsLocationsWorkerPoolsGet =
  ProjectsLocationsWorkerPoolsGet'
    { _plwpgXgafv :: !(Maybe Xgafv)
    , _plwpgUploadProtocol :: !(Maybe Text)
    , _plwpgAccessToken :: !(Maybe Text)
    , _plwpgUploadType :: !(Maybe Text)
    , _plwpgName :: !Text
    , _plwpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkerPoolsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwpgXgafv'
--
-- * 'plwpgUploadProtocol'
--
-- * 'plwpgAccessToken'
--
-- * 'plwpgUploadType'
--
-- * 'plwpgName'
--
-- * 'plwpgCallback'
projectsLocationsWorkerPoolsGet
    :: Text -- ^ 'plwpgName'
    -> ProjectsLocationsWorkerPoolsGet
projectsLocationsWorkerPoolsGet pPlwpgName_ =
  ProjectsLocationsWorkerPoolsGet'
    { _plwpgXgafv = Nothing
    , _plwpgUploadProtocol = Nothing
    , _plwpgAccessToken = Nothing
    , _plwpgUploadType = Nothing
    , _plwpgName = pPlwpgName_
    , _plwpgCallback = Nothing
    }


-- | V1 error format.
plwpgXgafv :: Lens' ProjectsLocationsWorkerPoolsGet (Maybe Xgafv)
plwpgXgafv
  = lens _plwpgXgafv (\ s a -> s{_plwpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwpgUploadProtocol :: Lens' ProjectsLocationsWorkerPoolsGet (Maybe Text)
plwpgUploadProtocol
  = lens _plwpgUploadProtocol
      (\ s a -> s{_plwpgUploadProtocol = a})

-- | OAuth access token.
plwpgAccessToken :: Lens' ProjectsLocationsWorkerPoolsGet (Maybe Text)
plwpgAccessToken
  = lens _plwpgAccessToken
      (\ s a -> s{_plwpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwpgUploadType :: Lens' ProjectsLocationsWorkerPoolsGet (Maybe Text)
plwpgUploadType
  = lens _plwpgUploadType
      (\ s a -> s{_plwpgUploadType = a})

-- | Required. The name of the \`WorkerPool\` to retrieve. Format:
-- \`projects\/{project}\/locations\/{location}\/workerPools\/{workerPool}\`.
plwpgName :: Lens' ProjectsLocationsWorkerPoolsGet Text
plwpgName
  = lens _plwpgName (\ s a -> s{_plwpgName = a})

-- | JSONP
plwpgCallback :: Lens' ProjectsLocationsWorkerPoolsGet (Maybe Text)
plwpgCallback
  = lens _plwpgCallback
      (\ s a -> s{_plwpgCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkerPoolsGet
         where
        type Rs ProjectsLocationsWorkerPoolsGet = WorkerPool
        type Scopes ProjectsLocationsWorkerPoolsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsWorkerPoolsGet'{..}
          = go _plwpgName _plwpgXgafv _plwpgUploadProtocol
              _plwpgAccessToken
              _plwpgUploadType
              _plwpgCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkerPoolsGetResource)
                      mempty
