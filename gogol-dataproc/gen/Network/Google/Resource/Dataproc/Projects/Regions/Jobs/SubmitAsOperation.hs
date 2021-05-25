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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SubmitAsOperation
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits job to a cluster.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.jobs.submitAsOperation@.
module Network.Google.Resource.Dataproc.Projects.Regions.Jobs.SubmitAsOperation
    (
    -- * REST Resource
      ProjectsRegionsJobsSubmitAsOperationResource

    -- * Creating a Request
    , projectsRegionsJobsSubmitAsOperation
    , ProjectsRegionsJobsSubmitAsOperation

    -- * Request Lenses
    , prjsaoXgafv
    , prjsaoUploadProtocol
    , prjsaoAccessToken
    , prjsaoUploadType
    , prjsaoPayload
    , prjsaoRegion
    , prjsaoProjectId
    , prjsaoCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.jobs.submitAsOperation@ method which the
-- 'ProjectsRegionsJobsSubmitAsOperation' request conforms to.
type ProjectsRegionsJobsSubmitAsOperationResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "regions" :>
             Capture "region" Text :>
               "jobs:submitAsOperation" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SubmitJobRequest :>
                               Post '[JSON] Operation

-- | Submits job to a cluster.
--
-- /See:/ 'projectsRegionsJobsSubmitAsOperation' smart constructor.
data ProjectsRegionsJobsSubmitAsOperation =
  ProjectsRegionsJobsSubmitAsOperation'
    { _prjsaoXgafv :: !(Maybe Xgafv)
    , _prjsaoUploadProtocol :: !(Maybe Text)
    , _prjsaoAccessToken :: !(Maybe Text)
    , _prjsaoUploadType :: !(Maybe Text)
    , _prjsaoPayload :: !SubmitJobRequest
    , _prjsaoRegion :: !Text
    , _prjsaoProjectId :: !Text
    , _prjsaoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsJobsSubmitAsOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prjsaoXgafv'
--
-- * 'prjsaoUploadProtocol'
--
-- * 'prjsaoAccessToken'
--
-- * 'prjsaoUploadType'
--
-- * 'prjsaoPayload'
--
-- * 'prjsaoRegion'
--
-- * 'prjsaoProjectId'
--
-- * 'prjsaoCallback'
projectsRegionsJobsSubmitAsOperation
    :: SubmitJobRequest -- ^ 'prjsaoPayload'
    -> Text -- ^ 'prjsaoRegion'
    -> Text -- ^ 'prjsaoProjectId'
    -> ProjectsRegionsJobsSubmitAsOperation
projectsRegionsJobsSubmitAsOperation pPrjsaoPayload_ pPrjsaoRegion_ pPrjsaoProjectId_ =
  ProjectsRegionsJobsSubmitAsOperation'
    { _prjsaoXgafv = Nothing
    , _prjsaoUploadProtocol = Nothing
    , _prjsaoAccessToken = Nothing
    , _prjsaoUploadType = Nothing
    , _prjsaoPayload = pPrjsaoPayload_
    , _prjsaoRegion = pPrjsaoRegion_
    , _prjsaoProjectId = pPrjsaoProjectId_
    , _prjsaoCallback = Nothing
    }


-- | V1 error format.
prjsaoXgafv :: Lens' ProjectsRegionsJobsSubmitAsOperation (Maybe Xgafv)
prjsaoXgafv
  = lens _prjsaoXgafv (\ s a -> s{_prjsaoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prjsaoUploadProtocol :: Lens' ProjectsRegionsJobsSubmitAsOperation (Maybe Text)
prjsaoUploadProtocol
  = lens _prjsaoUploadProtocol
      (\ s a -> s{_prjsaoUploadProtocol = a})

-- | OAuth access token.
prjsaoAccessToken :: Lens' ProjectsRegionsJobsSubmitAsOperation (Maybe Text)
prjsaoAccessToken
  = lens _prjsaoAccessToken
      (\ s a -> s{_prjsaoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prjsaoUploadType :: Lens' ProjectsRegionsJobsSubmitAsOperation (Maybe Text)
prjsaoUploadType
  = lens _prjsaoUploadType
      (\ s a -> s{_prjsaoUploadType = a})

-- | Multipart request metadata.
prjsaoPayload :: Lens' ProjectsRegionsJobsSubmitAsOperation SubmitJobRequest
prjsaoPayload
  = lens _prjsaoPayload
      (\ s a -> s{_prjsaoPayload = a})

-- | Required. The Dataproc region in which to handle the request.
prjsaoRegion :: Lens' ProjectsRegionsJobsSubmitAsOperation Text
prjsaoRegion
  = lens _prjsaoRegion (\ s a -> s{_prjsaoRegion = a})

-- | Required. The ID of the Google Cloud Platform project that the job
-- belongs to.
prjsaoProjectId :: Lens' ProjectsRegionsJobsSubmitAsOperation Text
prjsaoProjectId
  = lens _prjsaoProjectId
      (\ s a -> s{_prjsaoProjectId = a})

-- | JSONP
prjsaoCallback :: Lens' ProjectsRegionsJobsSubmitAsOperation (Maybe Text)
prjsaoCallback
  = lens _prjsaoCallback
      (\ s a -> s{_prjsaoCallback = a})

instance GoogleRequest
           ProjectsRegionsJobsSubmitAsOperation
         where
        type Rs ProjectsRegionsJobsSubmitAsOperation =
             Operation
        type Scopes ProjectsRegionsJobsSubmitAsOperation =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsJobsSubmitAsOperation'{..}
          = go _prjsaoProjectId _prjsaoRegion _prjsaoXgafv
              _prjsaoUploadProtocol
              _prjsaoAccessToken
              _prjsaoUploadType
              _prjsaoCallback
              (Just AltJSON)
              _prjsaoPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsJobsSubmitAsOperationResource)
                      mempty
