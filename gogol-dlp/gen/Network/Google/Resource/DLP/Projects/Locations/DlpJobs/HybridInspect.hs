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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.HybridInspect
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspect hybrid content and store findings to a job. To review the
-- findings, inspect the job. Inspection will occur asynchronously.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.hybridInspect@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.HybridInspect
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsHybridInspectResource

    -- * Creating a Request
    , projectsLocationsDlpJobsHybridInspect
    , ProjectsLocationsDlpJobsHybridInspect

    -- * Request Lenses
    , pldjhiXgafv
    , pldjhiUploadProtocol
    , pldjhiAccessToken
    , pldjhiUploadType
    , pldjhiPayload
    , pldjhiName
    , pldjhiCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.hybridInspect@ method which the
-- 'ProjectsLocationsDlpJobsHybridInspect' request conforms to.
type ProjectsLocationsDlpJobsHybridInspectResource =
     "v2" :>
       CaptureMode "name" "hybridInspect" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2HybridInspectDlpJobRequest
                       :>
                       Post '[JSON] GooglePrivacyDlpV2HybridInspectResponse

-- | Inspect hybrid content and store findings to a job. To review the
-- findings, inspect the job. Inspection will occur asynchronously.
--
-- /See:/ 'projectsLocationsDlpJobsHybridInspect' smart constructor.
data ProjectsLocationsDlpJobsHybridInspect =
  ProjectsLocationsDlpJobsHybridInspect'
    { _pldjhiXgafv :: !(Maybe Xgafv)
    , _pldjhiUploadProtocol :: !(Maybe Text)
    , _pldjhiAccessToken :: !(Maybe Text)
    , _pldjhiUploadType :: !(Maybe Text)
    , _pldjhiPayload :: !GooglePrivacyDlpV2HybridInspectDlpJobRequest
    , _pldjhiName :: !Text
    , _pldjhiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsHybridInspect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldjhiXgafv'
--
-- * 'pldjhiUploadProtocol'
--
-- * 'pldjhiAccessToken'
--
-- * 'pldjhiUploadType'
--
-- * 'pldjhiPayload'
--
-- * 'pldjhiName'
--
-- * 'pldjhiCallback'
projectsLocationsDlpJobsHybridInspect
    :: GooglePrivacyDlpV2HybridInspectDlpJobRequest -- ^ 'pldjhiPayload'
    -> Text -- ^ 'pldjhiName'
    -> ProjectsLocationsDlpJobsHybridInspect
projectsLocationsDlpJobsHybridInspect pPldjhiPayload_ pPldjhiName_ =
  ProjectsLocationsDlpJobsHybridInspect'
    { _pldjhiXgafv = Nothing
    , _pldjhiUploadProtocol = Nothing
    , _pldjhiAccessToken = Nothing
    , _pldjhiUploadType = Nothing
    , _pldjhiPayload = pPldjhiPayload_
    , _pldjhiName = pPldjhiName_
    , _pldjhiCallback = Nothing
    }


-- | V1 error format.
pldjhiXgafv :: Lens' ProjectsLocationsDlpJobsHybridInspect (Maybe Xgafv)
pldjhiXgafv
  = lens _pldjhiXgafv (\ s a -> s{_pldjhiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldjhiUploadProtocol :: Lens' ProjectsLocationsDlpJobsHybridInspect (Maybe Text)
pldjhiUploadProtocol
  = lens _pldjhiUploadProtocol
      (\ s a -> s{_pldjhiUploadProtocol = a})

-- | OAuth access token.
pldjhiAccessToken :: Lens' ProjectsLocationsDlpJobsHybridInspect (Maybe Text)
pldjhiAccessToken
  = lens _pldjhiAccessToken
      (\ s a -> s{_pldjhiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldjhiUploadType :: Lens' ProjectsLocationsDlpJobsHybridInspect (Maybe Text)
pldjhiUploadType
  = lens _pldjhiUploadType
      (\ s a -> s{_pldjhiUploadType = a})

-- | Multipart request metadata.
pldjhiPayload :: Lens' ProjectsLocationsDlpJobsHybridInspect GooglePrivacyDlpV2HybridInspectDlpJobRequest
pldjhiPayload
  = lens _pldjhiPayload
      (\ s a -> s{_pldjhiPayload = a})

-- | Required. Resource name of the job to execute a hybrid inspect on, for
-- example \`projects\/dlp-test-project\/dlpJob\/53234423\`.
pldjhiName :: Lens' ProjectsLocationsDlpJobsHybridInspect Text
pldjhiName
  = lens _pldjhiName (\ s a -> s{_pldjhiName = a})

-- | JSONP
pldjhiCallback :: Lens' ProjectsLocationsDlpJobsHybridInspect (Maybe Text)
pldjhiCallback
  = lens _pldjhiCallback
      (\ s a -> s{_pldjhiCallback = a})

instance GoogleRequest
           ProjectsLocationsDlpJobsHybridInspect
         where
        type Rs ProjectsLocationsDlpJobsHybridInspect =
             GooglePrivacyDlpV2HybridInspectResponse
        type Scopes ProjectsLocationsDlpJobsHybridInspect =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDlpJobsHybridInspect'{..}
          = go _pldjhiName _pldjhiXgafv _pldjhiUploadProtocol
              _pldjhiAccessToken
              _pldjhiUploadType
              _pldjhiCallback
              (Just AltJSON)
              _pldjhiPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDlpJobsHybridInspectResource)
                      mempty
