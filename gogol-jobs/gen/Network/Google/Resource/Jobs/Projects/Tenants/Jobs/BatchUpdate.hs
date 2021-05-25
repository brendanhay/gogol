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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins executing a batch update jobs operation.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.batchUpdate@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchUpdate
    (
    -- * REST Resource
      ProjectsTenantsJobsBatchUpdateResource

    -- * Creating a Request
    , projectsTenantsJobsBatchUpdate
    , ProjectsTenantsJobsBatchUpdate

    -- * Request Lenses
    , ptjbuParent
    , ptjbuXgafv
    , ptjbuUploadProtocol
    , ptjbuAccessToken
    , ptjbuUploadType
    , ptjbuPayload
    , ptjbuCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.batchUpdate@ method which the
-- 'ProjectsTenantsJobsBatchUpdate' request conforms to.
type ProjectsTenantsJobsBatchUpdateResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs:batchUpdate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchUpdateJobsRequest :>
                         Post '[JSON] Operation

-- | Begins executing a batch update jobs operation.
--
-- /See:/ 'projectsTenantsJobsBatchUpdate' smart constructor.
data ProjectsTenantsJobsBatchUpdate =
  ProjectsTenantsJobsBatchUpdate'
    { _ptjbuParent :: !Text
    , _ptjbuXgafv :: !(Maybe Xgafv)
    , _ptjbuUploadProtocol :: !(Maybe Text)
    , _ptjbuAccessToken :: !(Maybe Text)
    , _ptjbuUploadType :: !(Maybe Text)
    , _ptjbuPayload :: !BatchUpdateJobsRequest
    , _ptjbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjbuParent'
--
-- * 'ptjbuXgafv'
--
-- * 'ptjbuUploadProtocol'
--
-- * 'ptjbuAccessToken'
--
-- * 'ptjbuUploadType'
--
-- * 'ptjbuPayload'
--
-- * 'ptjbuCallback'
projectsTenantsJobsBatchUpdate
    :: Text -- ^ 'ptjbuParent'
    -> BatchUpdateJobsRequest -- ^ 'ptjbuPayload'
    -> ProjectsTenantsJobsBatchUpdate
projectsTenantsJobsBatchUpdate pPtjbuParent_ pPtjbuPayload_ =
  ProjectsTenantsJobsBatchUpdate'
    { _ptjbuParent = pPtjbuParent_
    , _ptjbuXgafv = Nothing
    , _ptjbuUploadProtocol = Nothing
    , _ptjbuAccessToken = Nothing
    , _ptjbuUploadType = Nothing
    , _ptjbuPayload = pPtjbuPayload_
    , _ptjbuCallback = Nothing
    }


-- | Required. The resource name of the tenant under which the job is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\".
-- For example, \"projects\/foo\/tenants\/bar\".
ptjbuParent :: Lens' ProjectsTenantsJobsBatchUpdate Text
ptjbuParent
  = lens _ptjbuParent (\ s a -> s{_ptjbuParent = a})

-- | V1 error format.
ptjbuXgafv :: Lens' ProjectsTenantsJobsBatchUpdate (Maybe Xgafv)
ptjbuXgafv
  = lens _ptjbuXgafv (\ s a -> s{_ptjbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjbuUploadProtocol :: Lens' ProjectsTenantsJobsBatchUpdate (Maybe Text)
ptjbuUploadProtocol
  = lens _ptjbuUploadProtocol
      (\ s a -> s{_ptjbuUploadProtocol = a})

-- | OAuth access token.
ptjbuAccessToken :: Lens' ProjectsTenantsJobsBatchUpdate (Maybe Text)
ptjbuAccessToken
  = lens _ptjbuAccessToken
      (\ s a -> s{_ptjbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjbuUploadType :: Lens' ProjectsTenantsJobsBatchUpdate (Maybe Text)
ptjbuUploadType
  = lens _ptjbuUploadType
      (\ s a -> s{_ptjbuUploadType = a})

-- | Multipart request metadata.
ptjbuPayload :: Lens' ProjectsTenantsJobsBatchUpdate BatchUpdateJobsRequest
ptjbuPayload
  = lens _ptjbuPayload (\ s a -> s{_ptjbuPayload = a})

-- | JSONP
ptjbuCallback :: Lens' ProjectsTenantsJobsBatchUpdate (Maybe Text)
ptjbuCallback
  = lens _ptjbuCallback
      (\ s a -> s{_ptjbuCallback = a})

instance GoogleRequest ProjectsTenantsJobsBatchUpdate
         where
        type Rs ProjectsTenantsJobsBatchUpdate = Operation
        type Scopes ProjectsTenantsJobsBatchUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsBatchUpdate'{..}
          = go _ptjbuParent _ptjbuXgafv _ptjbuUploadProtocol
              _ptjbuAccessToken
              _ptjbuUploadType
              _ptjbuCallback
              (Just AltJSON)
              _ptjbuPayload
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsJobsBatchUpdateResource)
                      mempty
