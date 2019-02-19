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
-- Module      : Network.Google.Resource.DLP.Projects.JobTriggers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job trigger to run DLP actions such as scanning storage for
-- sensitive information on a set schedule. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.create@.
module Network.Google.Resource.DLP.Projects.JobTriggers.Create
    (
    -- * REST Resource
      ProjectsJobTriggersCreateResource

    -- * Creating a Request
    , projectsJobTriggersCreate
    , ProjectsJobTriggersCreate

    -- * Request Lenses
    , pjtcParent
    , pjtcXgafv
    , pjtcUploadProtocol
    , pjtcAccessToken
    , pjtcUploadType
    , pjtcPayload
    , pjtcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.jobTriggers.create@ method which the
-- 'ProjectsJobTriggersCreate' request conforms to.
type ProjectsJobTriggersCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "jobTriggers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateJobTriggerRequest
                         :> Post '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Creates a job trigger to run DLP actions such as scanning storage for
-- sensitive information on a set schedule. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsJobTriggersCreate' smart constructor.
data ProjectsJobTriggersCreate =
  ProjectsJobTriggersCreate'
    { _pjtcParent         :: !Text
    , _pjtcXgafv          :: !(Maybe Xgafv)
    , _pjtcUploadProtocol :: !(Maybe Text)
    , _pjtcAccessToken    :: !(Maybe Text)
    , _pjtcUploadType     :: !(Maybe Text)
    , _pjtcPayload        :: !GooglePrivacyDlpV2CreateJobTriggerRequest
    , _pjtcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjtcParent'
--
-- * 'pjtcXgafv'
--
-- * 'pjtcUploadProtocol'
--
-- * 'pjtcAccessToken'
--
-- * 'pjtcUploadType'
--
-- * 'pjtcPayload'
--
-- * 'pjtcCallback'
projectsJobTriggersCreate
    :: Text -- ^ 'pjtcParent'
    -> GooglePrivacyDlpV2CreateJobTriggerRequest -- ^ 'pjtcPayload'
    -> ProjectsJobTriggersCreate
projectsJobTriggersCreate pPjtcParent_ pPjtcPayload_ =
  ProjectsJobTriggersCreate'
    { _pjtcParent = pPjtcParent_
    , _pjtcXgafv = Nothing
    , _pjtcUploadProtocol = Nothing
    , _pjtcAccessToken = Nothing
    , _pjtcUploadType = Nothing
    , _pjtcPayload = pPjtcPayload_
    , _pjtcCallback = Nothing
    }


-- | The parent resource name, for example projects\/my-project-id.
pjtcParent :: Lens' ProjectsJobTriggersCreate Text
pjtcParent
  = lens _pjtcParent (\ s a -> s{_pjtcParent = a})

-- | V1 error format.
pjtcXgafv :: Lens' ProjectsJobTriggersCreate (Maybe Xgafv)
pjtcXgafv
  = lens _pjtcXgafv (\ s a -> s{_pjtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjtcUploadProtocol :: Lens' ProjectsJobTriggersCreate (Maybe Text)
pjtcUploadProtocol
  = lens _pjtcUploadProtocol
      (\ s a -> s{_pjtcUploadProtocol = a})

-- | OAuth access token.
pjtcAccessToken :: Lens' ProjectsJobTriggersCreate (Maybe Text)
pjtcAccessToken
  = lens _pjtcAccessToken
      (\ s a -> s{_pjtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjtcUploadType :: Lens' ProjectsJobTriggersCreate (Maybe Text)
pjtcUploadType
  = lens _pjtcUploadType
      (\ s a -> s{_pjtcUploadType = a})

-- | Multipart request metadata.
pjtcPayload :: Lens' ProjectsJobTriggersCreate GooglePrivacyDlpV2CreateJobTriggerRequest
pjtcPayload
  = lens _pjtcPayload (\ s a -> s{_pjtcPayload = a})

-- | JSONP
pjtcCallback :: Lens' ProjectsJobTriggersCreate (Maybe Text)
pjtcCallback
  = lens _pjtcCallback (\ s a -> s{_pjtcCallback = a})

instance GoogleRequest ProjectsJobTriggersCreate
         where
        type Rs ProjectsJobTriggersCreate =
             GooglePrivacyDlpV2JobTrigger
        type Scopes ProjectsJobTriggersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobTriggersCreate'{..}
          = go _pjtcParent _pjtcXgafv _pjtcUploadProtocol
              _pjtcAccessToken
              _pjtcUploadType
              _pjtcCallback
              (Just AltJSON)
              _pjtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobTriggersCreateResource)
                      mempty
