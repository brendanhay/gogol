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
-- Module      : Network.Google.Resource.Jobs.Projects.Jobs.SearchForAlert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for jobs using the provided SearchJobsRequest. This API call is
-- intended for the use case of targeting passive job seekers (for example,
-- job seekers who have signed up to receive email alerts about potential
-- job opportunities), and has different algorithmic adjustments that are
-- targeted to passive job seekers. This call constrains the visibility of
-- jobs present in the database, and only returns jobs the caller has
-- permission to search against.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.jobs.searchForAlert@.
module Network.Google.Resource.Jobs.Projects.Jobs.SearchForAlert
    (
    -- * REST Resource
      ProjectsJobsSearchForAlertResource

    -- * Creating a Request
    , projectsJobsSearchForAlert
    , ProjectsJobsSearchForAlert

    -- * Request Lenses
    , pjsfaParent
    , pjsfaXgafv
    , pjsfaUploadProtocol
    , pjsfaAccessToken
    , pjsfaUploadType
    , pjsfaPayload
    , pjsfaCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.jobs.searchForAlert@ method which the
-- 'ProjectsJobsSearchForAlert' request conforms to.
type ProjectsJobsSearchForAlertResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "jobs:searchForAlert" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SearchJobsRequest :>
                         Post '[JSON] SearchJobsResponse

-- | Searches for jobs using the provided SearchJobsRequest. This API call is
-- intended for the use case of targeting passive job seekers (for example,
-- job seekers who have signed up to receive email alerts about potential
-- job opportunities), and has different algorithmic adjustments that are
-- targeted to passive job seekers. This call constrains the visibility of
-- jobs present in the database, and only returns jobs the caller has
-- permission to search against.
--
-- /See:/ 'projectsJobsSearchForAlert' smart constructor.
data ProjectsJobsSearchForAlert =
  ProjectsJobsSearchForAlert'
    { _pjsfaParent         :: !Text
    , _pjsfaXgafv          :: !(Maybe Xgafv)
    , _pjsfaUploadProtocol :: !(Maybe Text)
    , _pjsfaAccessToken    :: !(Maybe Text)
    , _pjsfaUploadType     :: !(Maybe Text)
    , _pjsfaPayload        :: !SearchJobsRequest
    , _pjsfaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsJobsSearchForAlert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjsfaParent'
--
-- * 'pjsfaXgafv'
--
-- * 'pjsfaUploadProtocol'
--
-- * 'pjsfaAccessToken'
--
-- * 'pjsfaUploadType'
--
-- * 'pjsfaPayload'
--
-- * 'pjsfaCallback'
projectsJobsSearchForAlert
    :: Text -- ^ 'pjsfaParent'
    -> SearchJobsRequest -- ^ 'pjsfaPayload'
    -> ProjectsJobsSearchForAlert
projectsJobsSearchForAlert pPjsfaParent_ pPjsfaPayload_ =
  ProjectsJobsSearchForAlert'
    { _pjsfaParent = pPjsfaParent_
    , _pjsfaXgafv = Nothing
    , _pjsfaUploadProtocol = Nothing
    , _pjsfaAccessToken = Nothing
    , _pjsfaUploadType = Nothing
    , _pjsfaPayload = pPjsfaPayload_
    , _pjsfaCallback = Nothing
    }

-- | Required. The resource name of the project to search within. The format
-- is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pjsfaParent :: Lens' ProjectsJobsSearchForAlert Text
pjsfaParent
  = lens _pjsfaParent (\ s a -> s{_pjsfaParent = a})

-- | V1 error format.
pjsfaXgafv :: Lens' ProjectsJobsSearchForAlert (Maybe Xgafv)
pjsfaXgafv
  = lens _pjsfaXgafv (\ s a -> s{_pjsfaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjsfaUploadProtocol :: Lens' ProjectsJobsSearchForAlert (Maybe Text)
pjsfaUploadProtocol
  = lens _pjsfaUploadProtocol
      (\ s a -> s{_pjsfaUploadProtocol = a})

-- | OAuth access token.
pjsfaAccessToken :: Lens' ProjectsJobsSearchForAlert (Maybe Text)
pjsfaAccessToken
  = lens _pjsfaAccessToken
      (\ s a -> s{_pjsfaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjsfaUploadType :: Lens' ProjectsJobsSearchForAlert (Maybe Text)
pjsfaUploadType
  = lens _pjsfaUploadType
      (\ s a -> s{_pjsfaUploadType = a})

-- | Multipart request metadata.
pjsfaPayload :: Lens' ProjectsJobsSearchForAlert SearchJobsRequest
pjsfaPayload
  = lens _pjsfaPayload (\ s a -> s{_pjsfaPayload = a})

-- | JSONP
pjsfaCallback :: Lens' ProjectsJobsSearchForAlert (Maybe Text)
pjsfaCallback
  = lens _pjsfaCallback
      (\ s a -> s{_pjsfaCallback = a})

instance GoogleRequest ProjectsJobsSearchForAlert
         where
        type Rs ProjectsJobsSearchForAlert =
             SearchJobsResponse
        type Scopes ProjectsJobsSearchForAlert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsJobsSearchForAlert'{..}
          = go _pjsfaParent _pjsfaXgafv _pjsfaUploadProtocol
              _pjsfaAccessToken
              _pjsfaUploadType
              _pjsfaCallback
              (Just AltJSON)
              _pjsfaPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsSearchForAlertResource)
                      mempty
