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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a running job.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.jobs.cancel@.
module Network.Google.Resource.Ml.Projects.Jobs.Cancel
    (
    -- * REST Resource
      ProjectsJobsCancelResource

    -- * Creating a Request
    , projectsJobsCancel
    , ProjectsJobsCancel

    -- * Request Lenses
    , pjcXgafv
    , pjcUploadProtocol
    , pjcAccessToken
    , pjcUploadType
    , pjcPayload
    , pjcName
    , pjcCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.cancel@ method which the
-- 'ProjectsJobsCancel' request conforms to.
type ProjectsJobsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleCloudMlV1__CancelJobRequest :>
                       Post '[JSON] GoogleProtobuf__Empty

-- | Cancels a running job.
--
-- /See:/ 'projectsJobsCancel' smart constructor.
data ProjectsJobsCancel =
  ProjectsJobsCancel'
    { _pjcXgafv          :: !(Maybe Xgafv)
    , _pjcUploadProtocol :: !(Maybe Text)
    , _pjcAccessToken    :: !(Maybe Text)
    , _pjcUploadType     :: !(Maybe Text)
    , _pjcPayload        :: !GoogleCloudMlV1__CancelJobRequest
    , _pjcName           :: !Text
    , _pjcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjcXgafv'
--
-- * 'pjcUploadProtocol'
--
-- * 'pjcAccessToken'
--
-- * 'pjcUploadType'
--
-- * 'pjcPayload'
--
-- * 'pjcName'
--
-- * 'pjcCallback'
projectsJobsCancel
    :: GoogleCloudMlV1__CancelJobRequest -- ^ 'pjcPayload'
    -> Text -- ^ 'pjcName'
    -> ProjectsJobsCancel
projectsJobsCancel pPjcPayload_ pPjcName_ =
  ProjectsJobsCancel'
    { _pjcXgafv = Nothing
    , _pjcUploadProtocol = Nothing
    , _pjcAccessToken = Nothing
    , _pjcUploadType = Nothing
    , _pjcPayload = pPjcPayload_
    , _pjcName = pPjcName_
    , _pjcCallback = Nothing
    }


-- | V1 error format.
pjcXgafv :: Lens' ProjectsJobsCancel (Maybe Xgafv)
pjcXgafv = lens _pjcXgafv (\ s a -> s{_pjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjcUploadProtocol :: Lens' ProjectsJobsCancel (Maybe Text)
pjcUploadProtocol
  = lens _pjcUploadProtocol
      (\ s a -> s{_pjcUploadProtocol = a})

-- | OAuth access token.
pjcAccessToken :: Lens' ProjectsJobsCancel (Maybe Text)
pjcAccessToken
  = lens _pjcAccessToken
      (\ s a -> s{_pjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjcUploadType :: Lens' ProjectsJobsCancel (Maybe Text)
pjcUploadType
  = lens _pjcUploadType
      (\ s a -> s{_pjcUploadType = a})

-- | Multipart request metadata.
pjcPayload :: Lens' ProjectsJobsCancel GoogleCloudMlV1__CancelJobRequest
pjcPayload
  = lens _pjcPayload (\ s a -> s{_pjcPayload = a})

-- | Required. The name of the job to cancel.
pjcName :: Lens' ProjectsJobsCancel Text
pjcName = lens _pjcName (\ s a -> s{_pjcName = a})

-- | JSONP
pjcCallback :: Lens' ProjectsJobsCancel (Maybe Text)
pjcCallback
  = lens _pjcCallback (\ s a -> s{_pjcCallback = a})

instance GoogleRequest ProjectsJobsCancel where
        type Rs ProjectsJobsCancel = GoogleProtobuf__Empty
        type Scopes ProjectsJobsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsCancel'{..}
          = go _pjcName _pjcXgafv _pjcUploadProtocol
              _pjcAccessToken
              _pjcUploadType
              _pjcCallback
              (Just AltJSON)
              _pjcPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsCancelResource)
                      mempty
