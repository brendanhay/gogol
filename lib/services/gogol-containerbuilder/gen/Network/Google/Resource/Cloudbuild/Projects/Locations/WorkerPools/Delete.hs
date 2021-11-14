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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a \`WorkerPool\`.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.delete@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Delete
    (
    -- * REST Resource
      ProjectsLocationsWorkerPoolsDeleteResource

    -- * Creating a Request
    , projectsLocationsWorkerPoolsDelete
    , ProjectsLocationsWorkerPoolsDelete

    -- * Request Lenses
    , plwpdXgafv
    , plwpdEtag
    , plwpdValidateOnly
    , plwpdUploadProtocol
    , plwpdAllowMissing
    , plwpdAccessToken
    , plwpdUploadType
    , plwpdName
    , plwpdCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.workerPools.delete@ method which the
-- 'ProjectsLocationsWorkerPoolsDelete' request conforms to.
type ProjectsLocationsWorkerPoolsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "etag" Text :>
             QueryParam "validateOnly" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "allowMissing" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a \`WorkerPool\`.
--
-- /See:/ 'projectsLocationsWorkerPoolsDelete' smart constructor.
data ProjectsLocationsWorkerPoolsDelete =
  ProjectsLocationsWorkerPoolsDelete'
    { _plwpdXgafv :: !(Maybe Xgafv)
    , _plwpdEtag :: !(Maybe Text)
    , _plwpdValidateOnly :: !(Maybe Bool)
    , _plwpdUploadProtocol :: !(Maybe Text)
    , _plwpdAllowMissing :: !(Maybe Bool)
    , _plwpdAccessToken :: !(Maybe Text)
    , _plwpdUploadType :: !(Maybe Text)
    , _plwpdName :: !Text
    , _plwpdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkerPoolsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwpdXgafv'
--
-- * 'plwpdEtag'
--
-- * 'plwpdValidateOnly'
--
-- * 'plwpdUploadProtocol'
--
-- * 'plwpdAllowMissing'
--
-- * 'plwpdAccessToken'
--
-- * 'plwpdUploadType'
--
-- * 'plwpdName'
--
-- * 'plwpdCallback'
projectsLocationsWorkerPoolsDelete
    :: Text -- ^ 'plwpdName'
    -> ProjectsLocationsWorkerPoolsDelete
projectsLocationsWorkerPoolsDelete pPlwpdName_ =
  ProjectsLocationsWorkerPoolsDelete'
    { _plwpdXgafv = Nothing
    , _plwpdEtag = Nothing
    , _plwpdValidateOnly = Nothing
    , _plwpdUploadProtocol = Nothing
    , _plwpdAllowMissing = Nothing
    , _plwpdAccessToken = Nothing
    , _plwpdUploadType = Nothing
    , _plwpdName = pPlwpdName_
    , _plwpdCallback = Nothing
    }


-- | V1 error format.
plwpdXgafv :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Xgafv)
plwpdXgafv
  = lens _plwpdXgafv (\ s a -> s{_plwpdXgafv = a})

-- | Optional. If this is provided, it must match the server\'s etag on the
-- workerpool for the request to be processed.
plwpdEtag :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Text)
plwpdEtag
  = lens _plwpdEtag (\ s a -> s{_plwpdEtag = a})

-- | If set, validate the request and preview the response, but do not
-- actually post it.
plwpdValidateOnly :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Bool)
plwpdValidateOnly
  = lens _plwpdValidateOnly
      (\ s a -> s{_plwpdValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwpdUploadProtocol :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Text)
plwpdUploadProtocol
  = lens _plwpdUploadProtocol
      (\ s a -> s{_plwpdUploadProtocol = a})

-- | If set to true, and the \`WorkerPool\` is not found, the request will
-- succeed but no action will be taken on the server.
plwpdAllowMissing :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Bool)
plwpdAllowMissing
  = lens _plwpdAllowMissing
      (\ s a -> s{_plwpdAllowMissing = a})

-- | OAuth access token.
plwpdAccessToken :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Text)
plwpdAccessToken
  = lens _plwpdAccessToken
      (\ s a -> s{_plwpdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwpdUploadType :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Text)
plwpdUploadType
  = lens _plwpdUploadType
      (\ s a -> s{_plwpdUploadType = a})

-- | Required. The name of the \`WorkerPool\` to delete. Format:
-- \`projects\/{project}\/locations\/{workerPool}\/workerPools\/{workerPool}\`.
plwpdName :: Lens' ProjectsLocationsWorkerPoolsDelete Text
plwpdName
  = lens _plwpdName (\ s a -> s{_plwpdName = a})

-- | JSONP
plwpdCallback :: Lens' ProjectsLocationsWorkerPoolsDelete (Maybe Text)
plwpdCallback
  = lens _plwpdCallback
      (\ s a -> s{_plwpdCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkerPoolsDelete
         where
        type Rs ProjectsLocationsWorkerPoolsDelete =
             Operation
        type Scopes ProjectsLocationsWorkerPoolsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsWorkerPoolsDelete'{..}
          = go _plwpdName _plwpdXgafv _plwpdEtag
              _plwpdValidateOnly
              _plwpdUploadProtocol
              _plwpdAllowMissing
              _plwpdAccessToken
              _plwpdUploadType
              _plwpdCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkerPoolsDeleteResource)
                      mempty
