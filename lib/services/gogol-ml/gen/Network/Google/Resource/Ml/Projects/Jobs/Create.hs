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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a training or a batch prediction job.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.jobs.create@.
module Network.Google.Resource.Ml.Projects.Jobs.Create
    (
    -- * REST Resource
      ProjectsJobsCreateResource

    -- * Creating a Request
    , projectsJobsCreate
    , ProjectsJobsCreate

    -- * Request Lenses
    , pjcjParent
    , pjcjXgafv
    , pjcjUploadProtocol
    , pjcjAccessToken
    , pjcjUploadType
    , pjcjPayload
    , pjcjCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.create@ method which the
-- 'ProjectsJobsCreate' request conforms to.
type ProjectsJobsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudMlV1__Job :>
                         Post '[JSON] GoogleCloudMlV1__Job

-- | Creates a training or a batch prediction job.
--
-- /See:/ 'projectsJobsCreate' smart constructor.
data ProjectsJobsCreate =
  ProjectsJobsCreate'
    { _pjcjParent :: !Text
    , _pjcjXgafv :: !(Maybe Xgafv)
    , _pjcjUploadProtocol :: !(Maybe Text)
    , _pjcjAccessToken :: !(Maybe Text)
    , _pjcjUploadType :: !(Maybe Text)
    , _pjcjPayload :: !GoogleCloudMlV1__Job
    , _pjcjCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjcjParent'
--
-- * 'pjcjXgafv'
--
-- * 'pjcjUploadProtocol'
--
-- * 'pjcjAccessToken'
--
-- * 'pjcjUploadType'
--
-- * 'pjcjPayload'
--
-- * 'pjcjCallback'
projectsJobsCreate
    :: Text -- ^ 'pjcjParent'
    -> GoogleCloudMlV1__Job -- ^ 'pjcjPayload'
    -> ProjectsJobsCreate
projectsJobsCreate pPjcjParent_ pPjcjPayload_ =
  ProjectsJobsCreate'
    { _pjcjParent = pPjcjParent_
    , _pjcjXgafv = Nothing
    , _pjcjUploadProtocol = Nothing
    , _pjcjAccessToken = Nothing
    , _pjcjUploadType = Nothing
    , _pjcjPayload = pPjcjPayload_
    , _pjcjCallback = Nothing
    }


-- | Required. The project name.
pjcjParent :: Lens' ProjectsJobsCreate Text
pjcjParent
  = lens _pjcjParent (\ s a -> s{_pjcjParent = a})

-- | V1 error format.
pjcjXgafv :: Lens' ProjectsJobsCreate (Maybe Xgafv)
pjcjXgafv
  = lens _pjcjXgafv (\ s a -> s{_pjcjXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjcjUploadProtocol :: Lens' ProjectsJobsCreate (Maybe Text)
pjcjUploadProtocol
  = lens _pjcjUploadProtocol
      (\ s a -> s{_pjcjUploadProtocol = a})

-- | OAuth access token.
pjcjAccessToken :: Lens' ProjectsJobsCreate (Maybe Text)
pjcjAccessToken
  = lens _pjcjAccessToken
      (\ s a -> s{_pjcjAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjcjUploadType :: Lens' ProjectsJobsCreate (Maybe Text)
pjcjUploadType
  = lens _pjcjUploadType
      (\ s a -> s{_pjcjUploadType = a})

-- | Multipart request metadata.
pjcjPayload :: Lens' ProjectsJobsCreate GoogleCloudMlV1__Job
pjcjPayload
  = lens _pjcjPayload (\ s a -> s{_pjcjPayload = a})

-- | JSONP
pjcjCallback :: Lens' ProjectsJobsCreate (Maybe Text)
pjcjCallback
  = lens _pjcjCallback (\ s a -> s{_pjcjCallback = a})

instance GoogleRequest ProjectsJobsCreate where
        type Rs ProjectsJobsCreate = GoogleCloudMlV1__Job
        type Scopes ProjectsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsCreate'{..}
          = go _pjcjParent _pjcjXgafv _pjcjUploadProtocol
              _pjcjAccessToken
              _pjcjUploadType
              _pjcjCallback
              (Just AltJSON)
              _pjcjPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsCreateResource)
                      mempty
