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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified job. Typically, the job becomes unsearchable
-- within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.jobs.delete@.
module Network.Google.Resource.Jobs.Projects.Tenants.Jobs.Delete
    (
    -- * REST Resource
      ProjectsTenantsJobsDeleteResource

    -- * Creating a Request
    , projectsTenantsJobsDelete
    , ProjectsTenantsJobsDelete

    -- * Request Lenses
    , ptjdXgafv
    , ptjdUploadProtocol
    , ptjdAccessToken
    , ptjdUploadType
    , ptjdName
    , ptjdCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.jobs.delete@ method which the
-- 'ProjectsTenantsJobsDelete' request conforms to.
type ProjectsTenantsJobsDeleteResource =
     "v4" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified job. Typically, the job becomes unsearchable
-- within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ 'projectsTenantsJobsDelete' smart constructor.
data ProjectsTenantsJobsDelete =
  ProjectsTenantsJobsDelete'
    { _ptjdXgafv :: !(Maybe Xgafv)
    , _ptjdUploadProtocol :: !(Maybe Text)
    , _ptjdAccessToken :: !(Maybe Text)
    , _ptjdUploadType :: !(Maybe Text)
    , _ptjdName :: !Text
    , _ptjdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsJobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptjdXgafv'
--
-- * 'ptjdUploadProtocol'
--
-- * 'ptjdAccessToken'
--
-- * 'ptjdUploadType'
--
-- * 'ptjdName'
--
-- * 'ptjdCallback'
projectsTenantsJobsDelete
    :: Text -- ^ 'ptjdName'
    -> ProjectsTenantsJobsDelete
projectsTenantsJobsDelete pPtjdName_ =
  ProjectsTenantsJobsDelete'
    { _ptjdXgafv = Nothing
    , _ptjdUploadProtocol = Nothing
    , _ptjdAccessToken = Nothing
    , _ptjdUploadType = Nothing
    , _ptjdName = pPtjdName_
    , _ptjdCallback = Nothing
    }


-- | V1 error format.
ptjdXgafv :: Lens' ProjectsTenantsJobsDelete (Maybe Xgafv)
ptjdXgafv
  = lens _ptjdXgafv (\ s a -> s{_ptjdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptjdUploadProtocol :: Lens' ProjectsTenantsJobsDelete (Maybe Text)
ptjdUploadProtocol
  = lens _ptjdUploadProtocol
      (\ s a -> s{_ptjdUploadProtocol = a})

-- | OAuth access token.
ptjdAccessToken :: Lens' ProjectsTenantsJobsDelete (Maybe Text)
ptjdAccessToken
  = lens _ptjdAccessToken
      (\ s a -> s{_ptjdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptjdUploadType :: Lens' ProjectsTenantsJobsDelete (Maybe Text)
ptjdUploadType
  = lens _ptjdUploadType
      (\ s a -> s{_ptjdUploadType = a})

-- | Required. The resource name of the job to be deleted. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/jobs\/{job_id}\". For
-- example, \"projects\/foo\/tenants\/bar\/jobs\/baz\".
ptjdName :: Lens' ProjectsTenantsJobsDelete Text
ptjdName = lens _ptjdName (\ s a -> s{_ptjdName = a})

-- | JSONP
ptjdCallback :: Lens' ProjectsTenantsJobsDelete (Maybe Text)
ptjdCallback
  = lens _ptjdCallback (\ s a -> s{_ptjdCallback = a})

instance GoogleRequest ProjectsTenantsJobsDelete
         where
        type Rs ProjectsTenantsJobsDelete = Empty
        type Scopes ProjectsTenantsJobsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsJobsDelete'{..}
          = go _ptjdName _ptjdXgafv _ptjdUploadProtocol
              _ptjdAccessToken
              _ptjdUploadType
              _ptjdCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsJobsDeleteResource)
                      mempty
