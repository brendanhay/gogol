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
-- Module      : Network.Google.Resource.DLP.Projects.JobTriggers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.patch@.
module Network.Google.Resource.DLP.Projects.JobTriggers.Patch
    (
    -- * REST Resource
      ProjectsJobTriggersPatchResource

    -- * Creating a Request
    , projectsJobTriggersPatch
    , ProjectsJobTriggersPatch

    -- * Request Lenses
    , pjtpXgafv
    , pjtpUploadProtocol
    , pjtpAccessToken
    , pjtpUploadType
    , pjtpPayload
    , pjtpName
    , pjtpCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.jobTriggers.patch@ method which the
-- 'ProjectsJobTriggersPatch' request conforms to.
type ProjectsJobTriggersPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateJobTriggerRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Updates a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsJobTriggersPatch' smart constructor.
data ProjectsJobTriggersPatch =
  ProjectsJobTriggersPatch'
    { _pjtpXgafv          :: !(Maybe Xgafv)
    , _pjtpUploadProtocol :: !(Maybe Text)
    , _pjtpAccessToken    :: !(Maybe Text)
    , _pjtpUploadType     :: !(Maybe Text)
    , _pjtpPayload        :: !GooglePrivacyDlpV2UpdateJobTriggerRequest
    , _pjtpName           :: !Text
    , _pjtpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobTriggersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjtpXgafv'
--
-- * 'pjtpUploadProtocol'
--
-- * 'pjtpAccessToken'
--
-- * 'pjtpUploadType'
--
-- * 'pjtpPayload'
--
-- * 'pjtpName'
--
-- * 'pjtpCallback'
projectsJobTriggersPatch
    :: GooglePrivacyDlpV2UpdateJobTriggerRequest -- ^ 'pjtpPayload'
    -> Text -- ^ 'pjtpName'
    -> ProjectsJobTriggersPatch
projectsJobTriggersPatch pPjtpPayload_ pPjtpName_ =
  ProjectsJobTriggersPatch'
    { _pjtpXgafv = Nothing
    , _pjtpUploadProtocol = Nothing
    , _pjtpAccessToken = Nothing
    , _pjtpUploadType = Nothing
    , _pjtpPayload = pPjtpPayload_
    , _pjtpName = pPjtpName_
    , _pjtpCallback = Nothing
    }


-- | V1 error format.
pjtpXgafv :: Lens' ProjectsJobTriggersPatch (Maybe Xgafv)
pjtpXgafv
  = lens _pjtpXgafv (\ s a -> s{_pjtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjtpUploadProtocol :: Lens' ProjectsJobTriggersPatch (Maybe Text)
pjtpUploadProtocol
  = lens _pjtpUploadProtocol
      (\ s a -> s{_pjtpUploadProtocol = a})

-- | OAuth access token.
pjtpAccessToken :: Lens' ProjectsJobTriggersPatch (Maybe Text)
pjtpAccessToken
  = lens _pjtpAccessToken
      (\ s a -> s{_pjtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjtpUploadType :: Lens' ProjectsJobTriggersPatch (Maybe Text)
pjtpUploadType
  = lens _pjtpUploadType
      (\ s a -> s{_pjtpUploadType = a})

-- | Multipart request metadata.
pjtpPayload :: Lens' ProjectsJobTriggersPatch GooglePrivacyDlpV2UpdateJobTriggerRequest
pjtpPayload
  = lens _pjtpPayload (\ s a -> s{_pjtpPayload = a})

-- | Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pjtpName :: Lens' ProjectsJobTriggersPatch Text
pjtpName = lens _pjtpName (\ s a -> s{_pjtpName = a})

-- | JSONP
pjtpCallback :: Lens' ProjectsJobTriggersPatch (Maybe Text)
pjtpCallback
  = lens _pjtpCallback (\ s a -> s{_pjtpCallback = a})

instance GoogleRequest ProjectsJobTriggersPatch where
        type Rs ProjectsJobTriggersPatch =
             GooglePrivacyDlpV2JobTrigger
        type Scopes ProjectsJobTriggersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobTriggersPatch'{..}
          = go _pjtpName _pjtpXgafv _pjtpUploadProtocol
              _pjtpAccessToken
              _pjtpUploadType
              _pjtpCallback
              (Just AltJSON)
              _pjtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobTriggersPatchResource)
                      mempty
