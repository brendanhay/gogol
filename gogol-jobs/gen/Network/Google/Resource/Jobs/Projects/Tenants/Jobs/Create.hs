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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job. Typically, the job becomes searchable within 10
-- seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.create@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Create
    (
    -- * REST Resource
      ProjectsTenantsJobsCreateResource

    -- * Creating a Request
    , projectsTenantsJobsCreate
    , ProjectsTenantsJobsCreate

    -- * Request Lenses
    , ptjcParent
    , ptjcXgafv
    , ptjcUploadProtocol
    , ptjcAccessToken
    , ptjcUploadType
    , ptjcPayload
    , ptjcCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.create@ method which the
-- 'ProjectsTenantsJobsCreate' request conforms to.
type ProjectsTenantsJobsCreateResource =
     "v4" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Job :> Post '[JSON] Job

-- | Creates a new job. Typically, the job becomes searchable within 10
-- seconds, but it may take up to 5 minutes.
--
-- /See:/ 'projectsTenantsJobsCreate' smart constructor.
data ProjectsTenantsJobsCreate =
  ProjectsTenantsJobsCreate'
    { _ptjcParent :: !Text
    , _ptjcXgafv :: !(Maybe Xgafv)
    , _ptjcUploadProtocol :: !(Maybe Text)
    , _ptjcAccessToken :: !(Maybe Text)
    , _ptjcUploadType :: !(Maybe Text)
    , _ptjcPayload :: !Job
    , _ptjcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjcParent'
--
-- * 'ptjcXgafv'
--
-- * 'ptjcUploadProtocol'
--
-- * 'ptjcAccessToken'
--
-- * 'ptjcUploadType'
--
-- * 'ptjcPayload'
--
-- * 'ptjcCallback'
projectsTenantsJobsCreate
    :: Text -- ^ 'ptjcParent'
    -> Job -- ^ 'ptjcPayload'
    -> ProjectsTenantsJobsCreate
projectsTenantsJobsCreate pPtjcParent_ pPtjcPayload_ =
  ProjectsTenantsJobsCreate'
    { _ptjcParent = pPtjcParent_
    , _ptjcXgafv = Nothing
    , _ptjcUploadProtocol = Nothing
    , _ptjcAccessToken = Nothing
    , _ptjcUploadType = Nothing
    , _ptjcPayload = pPtjcPayload_
    , _ptjcCallback = Nothing
    }


-- | Required. The resource name of the tenant under which the job is
-- created. The format is \"projects\/{project_id}\/tenants\/{tenant_id}\".
-- For example, \"projects\/foo\/tenants\/bar\".
ptjcParent :: Lens' ProjectsTenantsJobsCreate Text
ptjcParent
  = lens _ptjcParent (\ s a -> s{_ptjcParent = a})

-- | V1 error format.
ptjcXgafv :: Lens' ProjectsTenantsJobsCreate (Maybe Xgafv)
ptjcXgafv
  = lens _ptjcXgafv (\ s a -> s{_ptjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjcUploadProtocol :: Lens' ProjectsTenantsJobsCreate (Maybe Text)
ptjcUploadProtocol
  = lens _ptjcUploadProtocol
      (\ s a -> s{_ptjcUploadProtocol = a})

-- | OAuth access token.
ptjcAccessToken :: Lens' ProjectsTenantsJobsCreate (Maybe Text)
ptjcAccessToken
  = lens _ptjcAccessToken
      (\ s a -> s{_ptjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjcUploadType :: Lens' ProjectsTenantsJobsCreate (Maybe Text)
ptjcUploadType
  = lens _ptjcUploadType
      (\ s a -> s{_ptjcUploadType = a})

-- | Multipart request metadata.
ptjcPayload :: Lens' ProjectsTenantsJobsCreate Job
ptjcPayload
  = lens _ptjcPayload (\ s a -> s{_ptjcPayload = a})

-- | JSONP
ptjcCallback :: Lens' ProjectsTenantsJobsCreate (Maybe Text)
ptjcCallback
  = lens _ptjcCallback (\ s a -> s{_ptjcCallback = a})

instance GoogleRequest ProjectsTenantsJobsCreate
         where
        type Rs ProjectsTenantsJobsCreate = Job
        type Scopes ProjectsTenantsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsCreate'{..}
          = go _ptjcParent _ptjcXgafv _ptjcUploadProtocol
              _ptjcAccessToken
              _ptjcUploadType
              _ptjcCallback
              (Just AltJSON)
              _ptjcPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsJobsCreateResource)
                      mempty
