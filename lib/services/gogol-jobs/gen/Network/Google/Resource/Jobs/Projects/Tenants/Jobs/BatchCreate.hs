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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchCreate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins executing a batch create jobs operation.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.batchCreate@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.BatchCreate
    (
    -- * REST Resource
      ProjectsTenantsJobsBatchCreateResource

    -- * Creating a Request
    , projectsTenantsJobsBatchCreate
    , ProjectsTenantsJobsBatchCreate

    -- * Request Lenses
    , ptjbcParent
    , ptjbcXgafv
    , ptjbcUploadProtocol
    , ptjbcAccessToken
    , ptjbcUploadType
    , ptjbcPayload
    , ptjbcCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.batchCreate@ method which the
-- 'ProjectsTenantsJobsBatchCreate' request conforms to.
type ProjectsTenantsJobsBatchCreateResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs:batchCreate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchCreateJobsRequest :>
                         Post '[JSON] Operation

-- | Begins executing a batch create jobs operation.
--
-- /See:/ 'projectsTenantsJobsBatchCreate' smart constructor.
data ProjectsTenantsJobsBatchCreate =
  ProjectsTenantsJobsBatchCreate'
    { _ptjbcParent :: !Text
    , _ptjbcXgafv :: !(Maybe Xgafv)
    , _ptjbcUploadProtocol :: !(Maybe Text)
    , _ptjbcAccessToken :: !(Maybe Text)
    , _ptjbcUploadType :: !(Maybe Text)
    , _ptjbcPayload :: !BatchCreateJobsRequest
    , _ptjbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjbcParent'
--
-- * 'ptjbcXgafv'
--
-- * 'ptjbcUploadProtocol'
--
-- * 'ptjbcAccessToken'
--
-- * 'ptjbcUploadType'
--
-- * 'ptjbcPayload'
--
-- * 'ptjbcCallback'
projectsTenantsJobsBatchCreate
    :: Text -- ^ 'ptjbcParent'
    -> BatchCreateJobsRequest -- ^ 'ptjbcPayload'
    -> ProjectsTenantsJobsBatchCreate
projectsTenantsJobsBatchCreate pPtjbcParent_ pPtjbcPayload_ =
  ProjectsTenantsJobsBatchCreate'
    { _ptjbcParent = pPtjbcParent_
    , _ptjbcXgafv = Nothing
    , _ptjbcUploadProtocol = Nothing
    , _ptjbcAccessToken = Nothing
    , _ptjbcUploadType = Nothing
    , _ptjbcPayload = pPtjbcPayload_
    , _ptjbcCallback = Nothing
    }


-- | Required. The resource name of the tenant under which the job is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\".
-- For example, \"projects\/foo\/tenants\/bar\".
ptjbcParent :: Lens' ProjectsTenantsJobsBatchCreate Text
ptjbcParent
  = lens _ptjbcParent (\ s a -> s{_ptjbcParent = a})

-- | V1 error format.
ptjbcXgafv :: Lens' ProjectsTenantsJobsBatchCreate (Maybe Xgafv)
ptjbcXgafv
  = lens _ptjbcXgafv (\ s a -> s{_ptjbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjbcUploadProtocol :: Lens' ProjectsTenantsJobsBatchCreate (Maybe Text)
ptjbcUploadProtocol
  = lens _ptjbcUploadProtocol
      (\ s a -> s{_ptjbcUploadProtocol = a})

-- | OAuth access token.
ptjbcAccessToken :: Lens' ProjectsTenantsJobsBatchCreate (Maybe Text)
ptjbcAccessToken
  = lens _ptjbcAccessToken
      (\ s a -> s{_ptjbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjbcUploadType :: Lens' ProjectsTenantsJobsBatchCreate (Maybe Text)
ptjbcUploadType
  = lens _ptjbcUploadType
      (\ s a -> s{_ptjbcUploadType = a})

-- | Multipart request metadata.
ptjbcPayload :: Lens' ProjectsTenantsJobsBatchCreate BatchCreateJobsRequest
ptjbcPayload
  = lens _ptjbcPayload (\ s a -> s{_ptjbcPayload = a})

-- | JSONP
ptjbcCallback :: Lens' ProjectsTenantsJobsBatchCreate (Maybe Text)
ptjbcCallback
  = lens _ptjbcCallback
      (\ s a -> s{_ptjbcCallback = a})

instance GoogleRequest ProjectsTenantsJobsBatchCreate
         where
        type Rs ProjectsTenantsJobsBatchCreate = Operation
        type Scopes ProjectsTenantsJobsBatchCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsBatchCreate'{..}
          = go _ptjbcParent _ptjbcXgafv _ptjbcUploadProtocol
              _ptjbcAccessToken
              _ptjbcUploadType
              _ptjbcCallback
              (Just AltJSON)
              _ptjbcPayload
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsJobsBatchCreateResource)
                      mempty
