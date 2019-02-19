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
-- Module      : Network.Google.Resource.Jobs.Projects.Jobs.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a list of Jobs by filter.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.jobs.batchDelete@.
module Network.Google.Resource.Jobs.Projects.Jobs.BatchDelete
    (
    -- * REST Resource
      ProjectsJobsBatchDeleteResource

    -- * Creating a Request
    , projectsJobsBatchDelete
    , ProjectsJobsBatchDelete

    -- * Request Lenses
    , pjbdParent
    , pjbdXgafv
    , pjbdUploadProtocol
    , pjbdAccessToken
    , pjbdUploadType
    , pjbdPayload
    , pjbdCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.jobs.batchDelete@ method which the
-- 'ProjectsJobsBatchDelete' request conforms to.
type ProjectsJobsBatchDeleteResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "jobs:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchDeleteJobsRequest :>
                         Post '[JSON] Empty

-- | Deletes a list of Jobs by filter.
--
-- /See:/ 'projectsJobsBatchDelete' smart constructor.
data ProjectsJobsBatchDelete =
  ProjectsJobsBatchDelete'
    { _pjbdParent         :: !Text
    , _pjbdXgafv          :: !(Maybe Xgafv)
    , _pjbdUploadProtocol :: !(Maybe Text)
    , _pjbdAccessToken    :: !(Maybe Text)
    , _pjbdUploadType     :: !(Maybe Text)
    , _pjbdPayload        :: !BatchDeleteJobsRequest
    , _pjbdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjbdParent'
--
-- * 'pjbdXgafv'
--
-- * 'pjbdUploadProtocol'
--
-- * 'pjbdAccessToken'
--
-- * 'pjbdUploadType'
--
-- * 'pjbdPayload'
--
-- * 'pjbdCallback'
projectsJobsBatchDelete
    :: Text -- ^ 'pjbdParent'
    -> BatchDeleteJobsRequest -- ^ 'pjbdPayload'
    -> ProjectsJobsBatchDelete
projectsJobsBatchDelete pPjbdParent_ pPjbdPayload_ =
  ProjectsJobsBatchDelete'
    { _pjbdParent = pPjbdParent_
    , _pjbdXgafv = Nothing
    , _pjbdUploadProtocol = Nothing
    , _pjbdAccessToken = Nothing
    , _pjbdUploadType = Nothing
    , _pjbdPayload = pPjbdPayload_
    , _pjbdCallback = Nothing
    }


-- | Required. The resource name of the project under which the job is
-- created. The format is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pjbdParent :: Lens' ProjectsJobsBatchDelete Text
pjbdParent
  = lens _pjbdParent (\ s a -> s{_pjbdParent = a})

-- | V1 error format.
pjbdXgafv :: Lens' ProjectsJobsBatchDelete (Maybe Xgafv)
pjbdXgafv
  = lens _pjbdXgafv (\ s a -> s{_pjbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjbdUploadProtocol :: Lens' ProjectsJobsBatchDelete (Maybe Text)
pjbdUploadProtocol
  = lens _pjbdUploadProtocol
      (\ s a -> s{_pjbdUploadProtocol = a})

-- | OAuth access token.
pjbdAccessToken :: Lens' ProjectsJobsBatchDelete (Maybe Text)
pjbdAccessToken
  = lens _pjbdAccessToken
      (\ s a -> s{_pjbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjbdUploadType :: Lens' ProjectsJobsBatchDelete (Maybe Text)
pjbdUploadType
  = lens _pjbdUploadType
      (\ s a -> s{_pjbdUploadType = a})

-- | Multipart request metadata.
pjbdPayload :: Lens' ProjectsJobsBatchDelete BatchDeleteJobsRequest
pjbdPayload
  = lens _pjbdPayload (\ s a -> s{_pjbdPayload = a})

-- | JSONP
pjbdCallback :: Lens' ProjectsJobsBatchDelete (Maybe Text)
pjbdCallback
  = lens _pjbdCallback (\ s a -> s{_pjbdCallback = a})

instance GoogleRequest ProjectsJobsBatchDelete where
        type Rs ProjectsJobsBatchDelete = Empty
        type Scopes ProjectsJobsBatchDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsJobsBatchDelete'{..}
          = go _pjbdParent _pjbdXgafv _pjbdUploadProtocol
              _pjbdAccessToken
              _pjbdUploadType
              _pjbdCallback
              (Just AltJSON)
              _pjbdPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsBatchDeleteResource)
                      mempty
