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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a training or a batch prediction job.
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.jobs.create@.
module Network.Google.Resource.Ml.Projects.Jobs.Create
    (
    -- * REST Resource
      ProjectsJobsCreateResource

    -- * Creating a Request
    , projectsJobsCreate
    , ProjectsJobsCreate

    -- * Request Lenses
    , pParent
    , pXgafv
    , pUploadProtocol
    , pPp
    , pAccessToken
    , pUploadType
    , pPayload
    , pBearerToken
    , pCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.create@ method which the
-- 'ProjectsJobsCreate' request conforms to.
type ProjectsJobsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "jobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GoogleCloudMlV1beta1__Job :>
                             Post '[JSON] GoogleCloudMlV1beta1__Job

-- | Creates a training or a batch prediction job.
--
-- /See:/ 'projectsJobsCreate' smart constructor.
data ProjectsJobsCreate = ProjectsJobsCreate'
    { _pParent         :: !Text
    , _pXgafv          :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pPp             :: !Bool
    , _pAccessToken    :: !(Maybe Text)
    , _pUploadType     :: !(Maybe Text)
    , _pPayload        :: !GoogleCloudMlV1beta1__Job
    , _pBearerToken    :: !(Maybe Text)
    , _pCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pPp'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pBearerToken'
--
-- * 'pCallback'
projectsJobsCreate
    :: Text -- ^ 'pParent'
    -> GoogleCloudMlV1beta1__Job -- ^ 'pPayload'
    -> ProjectsJobsCreate
projectsJobsCreate pPParent_ pPPayload_ =
    ProjectsJobsCreate'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pPp = True
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pBearerToken = Nothing
    , _pCallback = Nothing
    }

-- | Required. The project name. Authorization: requires \`Editor\` role on
-- the specified project.
pParent :: Lens' ProjectsJobsCreate Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsJobsCreate (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsJobsCreate (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | Pretty-print response.
pPp :: Lens' ProjectsJobsCreate Bool
pPp = lens _pPp (\ s a -> s{_pPp = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsJobsCreate (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsJobsCreate (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsJobsCreate GoogleCloudMlV1beta1__Job
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | OAuth bearer token.
pBearerToken :: Lens' ProjectsJobsCreate (Maybe Text)
pBearerToken
  = lens _pBearerToken (\ s a -> s{_pBearerToken = a})

-- | JSONP
pCallback :: Lens' ProjectsJobsCreate (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsJobsCreate where
        type Rs ProjectsJobsCreate =
             GoogleCloudMlV1beta1__Job
        type Scopes ProjectsJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsCreate'{..}
          = go _pParent _pXgafv _pUploadProtocol (Just _pPp)
              _pAccessToken
              _pUploadType
              _pBearerToken
              _pCallback
              (Just AltJSON)
              _pPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsCreateResource)
                      mempty
