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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Finish
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finish a running hybrid DlpJob. Triggers the finalization steps and
-- running of any enabled actions that have not yet run.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.finish@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Finish
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsFinishResource

    -- * Creating a Request
    , projectsLocationsDlpJobsFinish
    , ProjectsLocationsDlpJobsFinish

    -- * Request Lenses
    , pldjfXgafv
    , pldjfUploadProtocol
    , pldjfAccessToken
    , pldjfUploadType
    , pldjfPayload
    , pldjfName
    , pldjfCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.finish@ method which the
-- 'ProjectsLocationsDlpJobsFinish' request conforms to.
type ProjectsLocationsDlpJobsFinishResource =
     "v2" :>
       CaptureMode "name" "finish" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GooglePrivacyDlpV2FinishDlpJobRequest
                       :> Post '[JSON] GoogleProtobufEmpty

-- | Finish a running hybrid DlpJob. Triggers the finalization steps and
-- running of any enabled actions that have not yet run.
--
-- /See:/ 'projectsLocationsDlpJobsFinish' smart constructor.
data ProjectsLocationsDlpJobsFinish =
  ProjectsLocationsDlpJobsFinish'
    { _pldjfXgafv :: !(Maybe Xgafv)
    , _pldjfUploadProtocol :: !(Maybe Text)
    , _pldjfAccessToken :: !(Maybe Text)
    , _pldjfUploadType :: !(Maybe Text)
    , _pldjfPayload :: !GooglePrivacyDlpV2FinishDlpJobRequest
    , _pldjfName :: !Text
    , _pldjfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsFinish' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldjfXgafv'
--
-- * 'pldjfUploadProtocol'
--
-- * 'pldjfAccessToken'
--
-- * 'pldjfUploadType'
--
-- * 'pldjfPayload'
--
-- * 'pldjfName'
--
-- * 'pldjfCallback'
projectsLocationsDlpJobsFinish
    :: GooglePrivacyDlpV2FinishDlpJobRequest -- ^ 'pldjfPayload'
    -> Text -- ^ 'pldjfName'
    -> ProjectsLocationsDlpJobsFinish
projectsLocationsDlpJobsFinish pPldjfPayload_ pPldjfName_ =
  ProjectsLocationsDlpJobsFinish'
    { _pldjfXgafv = Nothing
    , _pldjfUploadProtocol = Nothing
    , _pldjfAccessToken = Nothing
    , _pldjfUploadType = Nothing
    , _pldjfPayload = pPldjfPayload_
    , _pldjfName = pPldjfName_
    , _pldjfCallback = Nothing
    }


-- | V1 error format.
pldjfXgafv :: Lens' ProjectsLocationsDlpJobsFinish (Maybe Xgafv)
pldjfXgafv
  = lens _pldjfXgafv (\ s a -> s{_pldjfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldjfUploadProtocol :: Lens' ProjectsLocationsDlpJobsFinish (Maybe Text)
pldjfUploadProtocol
  = lens _pldjfUploadProtocol
      (\ s a -> s{_pldjfUploadProtocol = a})

-- | OAuth access token.
pldjfAccessToken :: Lens' ProjectsLocationsDlpJobsFinish (Maybe Text)
pldjfAccessToken
  = lens _pldjfAccessToken
      (\ s a -> s{_pldjfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldjfUploadType :: Lens' ProjectsLocationsDlpJobsFinish (Maybe Text)
pldjfUploadType
  = lens _pldjfUploadType
      (\ s a -> s{_pldjfUploadType = a})

-- | Multipart request metadata.
pldjfPayload :: Lens' ProjectsLocationsDlpJobsFinish GooglePrivacyDlpV2FinishDlpJobRequest
pldjfPayload
  = lens _pldjfPayload (\ s a -> s{_pldjfPayload = a})

-- | Required. The name of the DlpJob resource to be cancelled.
pldjfName :: Lens' ProjectsLocationsDlpJobsFinish Text
pldjfName
  = lens _pldjfName (\ s a -> s{_pldjfName = a})

-- | JSONP
pldjfCallback :: Lens' ProjectsLocationsDlpJobsFinish (Maybe Text)
pldjfCallback
  = lens _pldjfCallback
      (\ s a -> s{_pldjfCallback = a})

instance GoogleRequest ProjectsLocationsDlpJobsFinish
         where
        type Rs ProjectsLocationsDlpJobsFinish =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsDlpJobsFinish =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDlpJobsFinish'{..}
          = go _pldjfName _pldjfXgafv _pldjfUploadProtocol
              _pldjfAccessToken
              _pldjfUploadType
              _pldjfCallback
              (Just AltJSON)
              _pldjfPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDlpJobsFinishResource)
                      mempty
