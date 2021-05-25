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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running DlpJob. The server
-- makes a best effort to cancel the DlpJob, but success is not guaranteed.
-- See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.cancel@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Cancel
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsCancelResource

    -- * Creating a Request
    , projectsLocationsDlpJobsCancel
    , ProjectsLocationsDlpJobsCancel

    -- * Request Lenses
    , pldjcXgafv
    , pldjcUploadProtocol
    , pldjcAccessToken
    , pldjcUploadType
    , pldjcPayload
    , pldjcName
    , pldjcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.cancel@ method which the
-- 'ProjectsLocationsDlpJobsCancel' request conforms to.
type ProjectsLocationsDlpJobsCancelResource =
     "v2" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GooglePrivacyDlpV2CancelDlpJobRequest
                       :> Post '[JSON] GoogleProtobufEmpty

-- | Starts asynchronous cancellation on a long-running DlpJob. The server
-- makes a best effort to cancel the DlpJob, but success is not guaranteed.
-- See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ 'projectsLocationsDlpJobsCancel' smart constructor.
data ProjectsLocationsDlpJobsCancel =
  ProjectsLocationsDlpJobsCancel'
    { _pldjcXgafv :: !(Maybe Xgafv)
    , _pldjcUploadProtocol :: !(Maybe Text)
    , _pldjcAccessToken :: !(Maybe Text)
    , _pldjcUploadType :: !(Maybe Text)
    , _pldjcPayload :: !GooglePrivacyDlpV2CancelDlpJobRequest
    , _pldjcName :: !Text
    , _pldjcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldjcXgafv'
--
-- * 'pldjcUploadProtocol'
--
-- * 'pldjcAccessToken'
--
-- * 'pldjcUploadType'
--
-- * 'pldjcPayload'
--
-- * 'pldjcName'
--
-- * 'pldjcCallback'
projectsLocationsDlpJobsCancel
    :: GooglePrivacyDlpV2CancelDlpJobRequest -- ^ 'pldjcPayload'
    -> Text -- ^ 'pldjcName'
    -> ProjectsLocationsDlpJobsCancel
projectsLocationsDlpJobsCancel pPldjcPayload_ pPldjcName_ =
  ProjectsLocationsDlpJobsCancel'
    { _pldjcXgafv = Nothing
    , _pldjcUploadProtocol = Nothing
    , _pldjcAccessToken = Nothing
    , _pldjcUploadType = Nothing
    , _pldjcPayload = pPldjcPayload_
    , _pldjcName = pPldjcName_
    , _pldjcCallback = Nothing
    }


-- | V1 error format.
pldjcXgafv :: Lens' ProjectsLocationsDlpJobsCancel (Maybe Xgafv)
pldjcXgafv
  = lens _pldjcXgafv (\ s a -> s{_pldjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldjcUploadProtocol :: Lens' ProjectsLocationsDlpJobsCancel (Maybe Text)
pldjcUploadProtocol
  = lens _pldjcUploadProtocol
      (\ s a -> s{_pldjcUploadProtocol = a})

-- | OAuth access token.
pldjcAccessToken :: Lens' ProjectsLocationsDlpJobsCancel (Maybe Text)
pldjcAccessToken
  = lens _pldjcAccessToken
      (\ s a -> s{_pldjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldjcUploadType :: Lens' ProjectsLocationsDlpJobsCancel (Maybe Text)
pldjcUploadType
  = lens _pldjcUploadType
      (\ s a -> s{_pldjcUploadType = a})

-- | Multipart request metadata.
pldjcPayload :: Lens' ProjectsLocationsDlpJobsCancel GooglePrivacyDlpV2CancelDlpJobRequest
pldjcPayload
  = lens _pldjcPayload (\ s a -> s{_pldjcPayload = a})

-- | Required. The name of the DlpJob resource to be cancelled.
pldjcName :: Lens' ProjectsLocationsDlpJobsCancel Text
pldjcName
  = lens _pldjcName (\ s a -> s{_pldjcName = a})

-- | JSONP
pldjcCallback :: Lens' ProjectsLocationsDlpJobsCancel (Maybe Text)
pldjcCallback
  = lens _pldjcCallback
      (\ s a -> s{_pldjcCallback = a})

instance GoogleRequest ProjectsLocationsDlpJobsCancel
         where
        type Rs ProjectsLocationsDlpJobsCancel =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsDlpJobsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDlpJobsCancel'{..}
          = go _pldjcName _pldjcXgafv _pldjcUploadProtocol
              _pldjcAccessToken
              _pldjcUploadType
              _pldjcCallback
              (Just AltJSON)
              _pldjcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDlpJobsCancelResource)
                      mempty
