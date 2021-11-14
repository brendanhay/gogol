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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a \`WorkerPool\`.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.create@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Create
    (
    -- * REST Resource
      ProjectsLocationsWorkerPoolsCreateResource

    -- * Creating a Request
    , projectsLocationsWorkerPoolsCreate
    , ProjectsLocationsWorkerPoolsCreate

    -- * Request Lenses
    , plwpcParent
    , plwpcXgafv
    , plwpcWorkerPoolId
    , plwpcValidateOnly
    , plwpcUploadProtocol
    , plwpcAccessToken
    , plwpcUploadType
    , plwpcPayload
    , plwpcCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.workerPools.create@ method which the
-- 'ProjectsLocationsWorkerPoolsCreate' request conforms to.
type ProjectsLocationsWorkerPoolsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "workerPools" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "workerPoolId" Text :>
               QueryParam "validateOnly" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] WorkerPool :> Post '[JSON] Operation

-- | Creates a \`WorkerPool\`.
--
-- /See:/ 'projectsLocationsWorkerPoolsCreate' smart constructor.
data ProjectsLocationsWorkerPoolsCreate =
  ProjectsLocationsWorkerPoolsCreate'
    { _plwpcParent :: !Text
    , _plwpcXgafv :: !(Maybe Xgafv)
    , _plwpcWorkerPoolId :: !(Maybe Text)
    , _plwpcValidateOnly :: !(Maybe Bool)
    , _plwpcUploadProtocol :: !(Maybe Text)
    , _plwpcAccessToken :: !(Maybe Text)
    , _plwpcUploadType :: !(Maybe Text)
    , _plwpcPayload :: !WorkerPool
    , _plwpcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkerPoolsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwpcParent'
--
-- * 'plwpcXgafv'
--
-- * 'plwpcWorkerPoolId'
--
-- * 'plwpcValidateOnly'
--
-- * 'plwpcUploadProtocol'
--
-- * 'plwpcAccessToken'
--
-- * 'plwpcUploadType'
--
-- * 'plwpcPayload'
--
-- * 'plwpcCallback'
projectsLocationsWorkerPoolsCreate
    :: Text -- ^ 'plwpcParent'
    -> WorkerPool -- ^ 'plwpcPayload'
    -> ProjectsLocationsWorkerPoolsCreate
projectsLocationsWorkerPoolsCreate pPlwpcParent_ pPlwpcPayload_ =
  ProjectsLocationsWorkerPoolsCreate'
    { _plwpcParent = pPlwpcParent_
    , _plwpcXgafv = Nothing
    , _plwpcWorkerPoolId = Nothing
    , _plwpcValidateOnly = Nothing
    , _plwpcUploadProtocol = Nothing
    , _plwpcAccessToken = Nothing
    , _plwpcUploadType = Nothing
    , _plwpcPayload = pPlwpcPayload_
    , _plwpcCallback = Nothing
    }


-- | Required. The parent resource where this worker pool will be created.
-- Format: \`projects\/{project}\/locations\/{location}\`.
plwpcParent :: Lens' ProjectsLocationsWorkerPoolsCreate Text
plwpcParent
  = lens _plwpcParent (\ s a -> s{_plwpcParent = a})

-- | V1 error format.
plwpcXgafv :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Xgafv)
plwpcXgafv
  = lens _plwpcXgafv (\ s a -> s{_plwpcXgafv = a})

-- | Required. Immutable. The ID to use for the \`WorkerPool\`, which will
-- become the final component of the resource name. This value should be
-- 1-63 characters, and valid characters are \/a-z-\/.
plwpcWorkerPoolId :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Text)
plwpcWorkerPoolId
  = lens _plwpcWorkerPoolId
      (\ s a -> s{_plwpcWorkerPoolId = a})

-- | If set, validate the request and preview the response, but do not
-- actually post it.
plwpcValidateOnly :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Bool)
plwpcValidateOnly
  = lens _plwpcValidateOnly
      (\ s a -> s{_plwpcValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwpcUploadProtocol :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Text)
plwpcUploadProtocol
  = lens _plwpcUploadProtocol
      (\ s a -> s{_plwpcUploadProtocol = a})

-- | OAuth access token.
plwpcAccessToken :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Text)
plwpcAccessToken
  = lens _plwpcAccessToken
      (\ s a -> s{_plwpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwpcUploadType :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Text)
plwpcUploadType
  = lens _plwpcUploadType
      (\ s a -> s{_plwpcUploadType = a})

-- | Multipart request metadata.
plwpcPayload :: Lens' ProjectsLocationsWorkerPoolsCreate WorkerPool
plwpcPayload
  = lens _plwpcPayload (\ s a -> s{_plwpcPayload = a})

-- | JSONP
plwpcCallback :: Lens' ProjectsLocationsWorkerPoolsCreate (Maybe Text)
plwpcCallback
  = lens _plwpcCallback
      (\ s a -> s{_plwpcCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkerPoolsCreate
         where
        type Rs ProjectsLocationsWorkerPoolsCreate =
             Operation
        type Scopes ProjectsLocationsWorkerPoolsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsWorkerPoolsCreate'{..}
          = go _plwpcParent _plwpcXgafv _plwpcWorkerPoolId
              _plwpcValidateOnly
              _plwpcUploadProtocol
              _plwpcAccessToken
              _plwpcUploadType
              _plwpcCallback
              (Just AltJSON)
              _plwpcPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkerPoolsCreateResource)
                      mempty
