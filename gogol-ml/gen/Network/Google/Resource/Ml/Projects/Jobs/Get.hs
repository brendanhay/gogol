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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a job.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.jobs.get@.
module Network.Google.Resource.Ml.Projects.Jobs.Get
    (
    -- * REST Resource
      ProjectsJobsGetResource

    -- * Creating a Request
    , projectsJobsGet
    , ProjectsJobsGet

    -- * Request Lenses
    , pjgXgafv
    , pjgUploadProtocol
    , pjgAccessToken
    , pjgUploadType
    , pjgName
    , pjgCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.get@ method which the
-- 'ProjectsJobsGet' request conforms to.
type ProjectsJobsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudMlV1__Job

-- | Describes a job.
--
-- /See:/ 'projectsJobsGet' smart constructor.
data ProjectsJobsGet =
  ProjectsJobsGet'
    { _pjgXgafv :: !(Maybe Xgafv)
    , _pjgUploadProtocol :: !(Maybe Text)
    , _pjgAccessToken :: !(Maybe Text)
    , _pjgUploadType :: !(Maybe Text)
    , _pjgName :: !Text
    , _pjgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjgXgafv'
--
-- * 'pjgUploadProtocol'
--
-- * 'pjgAccessToken'
--
-- * 'pjgUploadType'
--
-- * 'pjgName'
--
-- * 'pjgCallback'
projectsJobsGet
    :: Text -- ^ 'pjgName'
    -> ProjectsJobsGet
projectsJobsGet pPjgName_ =
  ProjectsJobsGet'
    { _pjgXgafv = Nothing
    , _pjgUploadProtocol = Nothing
    , _pjgAccessToken = Nothing
    , _pjgUploadType = Nothing
    , _pjgName = pPjgName_
    , _pjgCallback = Nothing
    }


-- | V1 error format.
pjgXgafv :: Lens' ProjectsJobsGet (Maybe Xgafv)
pjgXgafv = lens _pjgXgafv (\ s a -> s{_pjgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjgUploadProtocol :: Lens' ProjectsJobsGet (Maybe Text)
pjgUploadProtocol
  = lens _pjgUploadProtocol
      (\ s a -> s{_pjgUploadProtocol = a})

-- | OAuth access token.
pjgAccessToken :: Lens' ProjectsJobsGet (Maybe Text)
pjgAccessToken
  = lens _pjgAccessToken
      (\ s a -> s{_pjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjgUploadType :: Lens' ProjectsJobsGet (Maybe Text)
pjgUploadType
  = lens _pjgUploadType
      (\ s a -> s{_pjgUploadType = a})

-- | Required. The name of the job to get the description of.
pjgName :: Lens' ProjectsJobsGet Text
pjgName = lens _pjgName (\ s a -> s{_pjgName = a})

-- | JSONP
pjgCallback :: Lens' ProjectsJobsGet (Maybe Text)
pjgCallback
  = lens _pjgCallback (\ s a -> s{_pjgCallback = a})

instance GoogleRequest ProjectsJobsGet where
        type Rs ProjectsJobsGet = GoogleCloudMlV1__Job
        type Scopes ProjectsJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsJobsGet'{..}
          = go _pjgName _pjgXgafv _pjgUploadProtocol
              _pjgAccessToken
              _pjgUploadType
              _pjgCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsGetResource)
                      mempty
