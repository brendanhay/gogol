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
-- Module      : Network.Google.Resource.Jobs.Projects.Jobs.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified job. Typically, the job becomes unsearchable
-- within 10 seconds, but it may take up to 5 minutes.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.jobs.delete@.
module Network.Google.Resource.Jobs.Projects.Jobs.Delete
    (
    -- * REST Resource
      ProjectsJobsDeleteResource

    -- * Creating a Request
    , projectsJobsDelete
    , ProjectsJobsDelete

    -- * Request Lenses
    , pjdXgafv
    , pjdUploadProtocol
    , pjdAccessToken
    , pjdUploadType
    , pjdName
    , pjdCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.jobs.delete@ method which the
-- 'ProjectsJobsDelete' request conforms to.
type ProjectsJobsDeleteResource =
     "v3p1beta1" :>
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
-- /See:/ 'projectsJobsDelete' smart constructor.
data ProjectsJobsDelete =
  ProjectsJobsDelete'
    { _pjdXgafv          :: !(Maybe Xgafv)
    , _pjdUploadProtocol :: !(Maybe Text)
    , _pjdAccessToken    :: !(Maybe Text)
    , _pjdUploadType     :: !(Maybe Text)
    , _pjdName           :: !Text
    , _pjdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjdXgafv'
--
-- * 'pjdUploadProtocol'
--
-- * 'pjdAccessToken'
--
-- * 'pjdUploadType'
--
-- * 'pjdName'
--
-- * 'pjdCallback'
projectsJobsDelete
    :: Text -- ^ 'pjdName'
    -> ProjectsJobsDelete
projectsJobsDelete pPjdName_ =
  ProjectsJobsDelete'
    { _pjdXgafv = Nothing
    , _pjdUploadProtocol = Nothing
    , _pjdAccessToken = Nothing
    , _pjdUploadType = Nothing
    , _pjdName = pPjdName_
    , _pjdCallback = Nothing
    }


-- | V1 error format.
pjdXgafv :: Lens' ProjectsJobsDelete (Maybe Xgafv)
pjdXgafv = lens _pjdXgafv (\ s a -> s{_pjdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjdUploadProtocol :: Lens' ProjectsJobsDelete (Maybe Text)
pjdUploadProtocol
  = lens _pjdUploadProtocol
      (\ s a -> s{_pjdUploadProtocol = a})

-- | OAuth access token.
pjdAccessToken :: Lens' ProjectsJobsDelete (Maybe Text)
pjdAccessToken
  = lens _pjdAccessToken
      (\ s a -> s{_pjdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjdUploadType :: Lens' ProjectsJobsDelete (Maybe Text)
pjdUploadType
  = lens _pjdUploadType
      (\ s a -> s{_pjdUploadType = a})

-- | Required. The resource name of the job to be deleted. The format is
-- \"projects\/{project_id}\/jobs\/{job_id}\", for example,
-- \"projects\/api-test-project\/jobs\/1234\".
pjdName :: Lens' ProjectsJobsDelete Text
pjdName = lens _pjdName (\ s a -> s{_pjdName = a})

-- | JSONP
pjdCallback :: Lens' ProjectsJobsDelete (Maybe Text)
pjdCallback
  = lens _pjdCallback (\ s a -> s{_pjdCallback = a})

instance GoogleRequest ProjectsJobsDelete where
        type Rs ProjectsJobsDelete = Empty
        type Scopes ProjectsJobsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsJobsDelete'{..}
          = go _pjdName _pjdXgafv _pjdUploadProtocol
              _pjdAccessToken
              _pjdUploadType
              _pjdCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsDeleteResource)
                      mempty
