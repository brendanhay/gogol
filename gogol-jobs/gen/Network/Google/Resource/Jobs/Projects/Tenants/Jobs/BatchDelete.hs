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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins executing a batch delete jobs operation.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.batchDelete@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchDelete
    (
    -- * REST Resource
      ProjectsTenantsJobsBatchDeleteResource

    -- * Creating a Request
    , projectsTenantsJobsBatchDelete
    , ProjectsTenantsJobsBatchDelete

    -- * Request Lenses
    , ptjbdParent
    , ptjbdXgafv
    , ptjbdUploadProtocol
    , ptjbdAccessToken
    , ptjbdUploadType
    , ptjbdPayload
    , ptjbdCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.batchDelete@ method which the
-- 'ProjectsTenantsJobsBatchDelete' request conforms to.
type ProjectsTenantsJobsBatchDeleteResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchDeleteJobsRequest :>
                         Post '[JSON] Operation

-- | Begins executing a batch delete jobs operation.
--
-- /See:/ 'projectsTenantsJobsBatchDelete' smart constructor.
data ProjectsTenantsJobsBatchDelete =
  ProjectsTenantsJobsBatchDelete'
    { _ptjbdParent :: !Text
    , _ptjbdXgafv :: !(Maybe Xgafv)
    , _ptjbdUploadProtocol :: !(Maybe Text)
    , _ptjbdAccessToken :: !(Maybe Text)
    , _ptjbdUploadType :: !(Maybe Text)
    , _ptjbdPayload :: !BatchDeleteJobsRequest
    , _ptjbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjbdParent'
--
-- * 'ptjbdXgafv'
--
-- * 'ptjbdUploadProtocol'
--
-- * 'ptjbdAccessToken'
--
-- * 'ptjbdUploadType'
--
-- * 'ptjbdPayload'
--
-- * 'ptjbdCallback'
projectsTenantsJobsBatchDelete
    :: Text -- ^ 'ptjbdParent'
    -> BatchDeleteJobsRequest -- ^ 'ptjbdPayload'
    -> ProjectsTenantsJobsBatchDelete
projectsTenantsJobsBatchDelete pPtjbdParent_ pPtjbdPayload_ =
  ProjectsTenantsJobsBatchDelete'
    { _ptjbdParent = pPtjbdParent_
    , _ptjbdXgafv = Nothing
    , _ptjbdUploadProtocol = Nothing
    , _ptjbdAccessToken = Nothing
    , _ptjbdUploadType = Nothing
    , _ptjbdPayload = pPtjbdPayload_
    , _ptjbdCallback = Nothing
    }


-- | Required. The resource name of the tenant under which the job is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\".
-- For example, \"projects\/foo\/tenants\/bar\". The parent of all of the
-- jobs specified in \`names\` must match this field.
ptjbdParent :: Lens' ProjectsTenantsJobsBatchDelete Text
ptjbdParent
  = lens _ptjbdParent (\ s a -> s{_ptjbdParent = a})

-- | V1 error format.
ptjbdXgafv :: Lens' ProjectsTenantsJobsBatchDelete (Maybe Xgafv)
ptjbdXgafv
  = lens _ptjbdXgafv (\ s a -> s{_ptjbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjbdUploadProtocol :: Lens' ProjectsTenantsJobsBatchDelete (Maybe Text)
ptjbdUploadProtocol
  = lens _ptjbdUploadProtocol
      (\ s a -> s{_ptjbdUploadProtocol = a})

-- | OAuth access token.
ptjbdAccessToken :: Lens' ProjectsTenantsJobsBatchDelete (Maybe Text)
ptjbdAccessToken
  = lens _ptjbdAccessToken
      (\ s a -> s{_ptjbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjbdUploadType :: Lens' ProjectsTenantsJobsBatchDelete (Maybe Text)
ptjbdUploadType
  = lens _ptjbdUploadType
      (\ s a -> s{_ptjbdUploadType = a})

-- | Multipart request metadata.
ptjbdPayload :: Lens' ProjectsTenantsJobsBatchDelete BatchDeleteJobsRequest
ptjbdPayload
  = lens _ptjbdPayload (\ s a -> s{_ptjbdPayload = a})

-- | JSONP
ptjbdCallback :: Lens' ProjectsTenantsJobsBatchDelete (Maybe Text)
ptjbdCallback
  = lens _ptjbdCallback
      (\ s a -> s{_ptjbdCallback = a})

instance GoogleRequest ProjectsTenantsJobsBatchDelete
         where
        type Rs ProjectsTenantsJobsBatchDelete = Operation
        type Scopes ProjectsTenantsJobsBatchDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsBatchDelete'{..}
          = go _ptjbdParent _ptjbdXgafv _ptjbdUploadProtocol
              _ptjbdAccessToken
              _ptjbdUploadType
              _ptjbdCallback
              (Just AltJSON)
              _ptjbdPayload
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsJobsBatchDeleteResource)
                      mempty
