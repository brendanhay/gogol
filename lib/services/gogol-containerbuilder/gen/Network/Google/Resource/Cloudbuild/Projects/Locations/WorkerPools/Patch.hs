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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a \`WorkerPool\`.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.patch@.
module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Patch
    (
    -- * REST Resource
      ProjectsLocationsWorkerPoolsPatchResource

    -- * Creating a Request
    , projectsLocationsWorkerPoolsPatch
    , ProjectsLocationsWorkerPoolsPatch

    -- * Request Lenses
    , plwppXgafv
    , plwppValidateOnly
    , plwppUploadProtocol
    , plwppUpdateMask
    , plwppAccessToken
    , plwppUploadType
    , plwppPayload
    , plwppName
    , plwppCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.locations.workerPools.patch@ method which the
-- 'ProjectsLocationsWorkerPoolsPatch' request conforms to.
type ProjectsLocationsWorkerPoolsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "validateOnly" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] WorkerPool :> Patch '[JSON] Operation

-- | Updates a \`WorkerPool\`.
--
-- /See:/ 'projectsLocationsWorkerPoolsPatch' smart constructor.
data ProjectsLocationsWorkerPoolsPatch =
  ProjectsLocationsWorkerPoolsPatch'
    { _plwppXgafv :: !(Maybe Xgafv)
    , _plwppValidateOnly :: !(Maybe Bool)
    , _plwppUploadProtocol :: !(Maybe Text)
    , _plwppUpdateMask :: !(Maybe GFieldMask)
    , _plwppAccessToken :: !(Maybe Text)
    , _plwppUploadType :: !(Maybe Text)
    , _plwppPayload :: !WorkerPool
    , _plwppName :: !Text
    , _plwppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkerPoolsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwppXgafv'
--
-- * 'plwppValidateOnly'
--
-- * 'plwppUploadProtocol'
--
-- * 'plwppUpdateMask'
--
-- * 'plwppAccessToken'
--
-- * 'plwppUploadType'
--
-- * 'plwppPayload'
--
-- * 'plwppName'
--
-- * 'plwppCallback'
projectsLocationsWorkerPoolsPatch
    :: WorkerPool -- ^ 'plwppPayload'
    -> Text -- ^ 'plwppName'
    -> ProjectsLocationsWorkerPoolsPatch
projectsLocationsWorkerPoolsPatch pPlwppPayload_ pPlwppName_ =
  ProjectsLocationsWorkerPoolsPatch'
    { _plwppXgafv = Nothing
    , _plwppValidateOnly = Nothing
    , _plwppUploadProtocol = Nothing
    , _plwppUpdateMask = Nothing
    , _plwppAccessToken = Nothing
    , _plwppUploadType = Nothing
    , _plwppPayload = pPlwppPayload_
    , _plwppName = pPlwppName_
    , _plwppCallback = Nothing
    }


-- | V1 error format.
plwppXgafv :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe Xgafv)
plwppXgafv
  = lens _plwppXgafv (\ s a -> s{_plwppXgafv = a})

-- | If set, validate the request and preview the response, but do not
-- actually post it.
plwppValidateOnly :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe Bool)
plwppValidateOnly
  = lens _plwppValidateOnly
      (\ s a -> s{_plwppValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwppUploadProtocol :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe Text)
plwppUploadProtocol
  = lens _plwppUploadProtocol
      (\ s a -> s{_plwppUploadProtocol = a})

-- | A mask specifying which fields in \`worker_pool\` to update.
plwppUpdateMask :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe GFieldMask)
plwppUpdateMask
  = lens _plwppUpdateMask
      (\ s a -> s{_plwppUpdateMask = a})

-- | OAuth access token.
plwppAccessToken :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe Text)
plwppAccessToken
  = lens _plwppAccessToken
      (\ s a -> s{_plwppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwppUploadType :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe Text)
plwppUploadType
  = lens _plwppUploadType
      (\ s a -> s{_plwppUploadType = a})

-- | Multipart request metadata.
plwppPayload :: Lens' ProjectsLocationsWorkerPoolsPatch WorkerPool
plwppPayload
  = lens _plwppPayload (\ s a -> s{_plwppPayload = a})

-- | Output only. The resource name of the \`WorkerPool\`, with format
-- \`projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}\`.
-- The value of \`{worker_pool}\` is provided by \`worker_pool_id\` in
-- \`CreateWorkerPool\` request and the value of \`{location}\` is
-- determined by the endpoint accessed.
plwppName :: Lens' ProjectsLocationsWorkerPoolsPatch Text
plwppName
  = lens _plwppName (\ s a -> s{_plwppName = a})

-- | JSONP
plwppCallback :: Lens' ProjectsLocationsWorkerPoolsPatch (Maybe Text)
plwppCallback
  = lens _plwppCallback
      (\ s a -> s{_plwppCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkerPoolsPatch
         where
        type Rs ProjectsLocationsWorkerPoolsPatch = Operation
        type Scopes ProjectsLocationsWorkerPoolsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsWorkerPoolsPatch'{..}
          = go _plwppName _plwppXgafv _plwppValidateOnly
              _plwppUploadProtocol
              _plwppUpdateMask
              _plwppAccessToken
              _plwppUploadType
              _plwppCallback
              (Just AltJSON)
              _plwppPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkerPoolsPatchResource)
                      mempty
