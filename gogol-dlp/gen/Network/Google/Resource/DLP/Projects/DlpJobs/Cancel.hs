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
-- Module      : Network.Google.Resource.DLP.Projects.DlpJobs.Cancel
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.cancel@.
module Network.Google.Resource.DLP.Projects.DlpJobs.Cancel
    (
    -- * REST Resource
      ProjectsDlpJobsCancelResource

    -- * Creating a Request
    , projectsDlpJobsCancel
    , ProjectsDlpJobsCancel

    -- * Request Lenses
    , pdjcXgafv
    , pdjcUploadProtocol
    , pdjcAccessToken
    , pdjcUploadType
    , pdjcPayload
    , pdjcName
    , pdjcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.dlpJobs.cancel@ method which the
-- 'ProjectsDlpJobsCancel' request conforms to.
type ProjectsDlpJobsCancelResource =
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
-- /See:/ 'projectsDlpJobsCancel' smart constructor.
data ProjectsDlpJobsCancel = ProjectsDlpJobsCancel'
    { _pdjcXgafv          :: !(Maybe Xgafv)
    , _pdjcUploadProtocol :: !(Maybe Text)
    , _pdjcAccessToken    :: !(Maybe Text)
    , _pdjcUploadType     :: !(Maybe Text)
    , _pdjcPayload        :: !GooglePrivacyDlpV2CancelDlpJobRequest
    , _pdjcName           :: !Text
    , _pdjcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDlpJobsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdjcXgafv'
--
-- * 'pdjcUploadProtocol'
--
-- * 'pdjcAccessToken'
--
-- * 'pdjcUploadType'
--
-- * 'pdjcPayload'
--
-- * 'pdjcName'
--
-- * 'pdjcCallback'
projectsDlpJobsCancel
    :: GooglePrivacyDlpV2CancelDlpJobRequest -- ^ 'pdjcPayload'
    -> Text -- ^ 'pdjcName'
    -> ProjectsDlpJobsCancel
projectsDlpJobsCancel pPdjcPayload_ pPdjcName_ =
    ProjectsDlpJobsCancel'
    { _pdjcXgafv = Nothing
    , _pdjcUploadProtocol = Nothing
    , _pdjcAccessToken = Nothing
    , _pdjcUploadType = Nothing
    , _pdjcPayload = pPdjcPayload_
    , _pdjcName = pPdjcName_
    , _pdjcCallback = Nothing
    }

-- | V1 error format.
pdjcXgafv :: Lens' ProjectsDlpJobsCancel (Maybe Xgafv)
pdjcXgafv
  = lens _pdjcXgafv (\ s a -> s{_pdjcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdjcUploadProtocol :: Lens' ProjectsDlpJobsCancel (Maybe Text)
pdjcUploadProtocol
  = lens _pdjcUploadProtocol
      (\ s a -> s{_pdjcUploadProtocol = a})

-- | OAuth access token.
pdjcAccessToken :: Lens' ProjectsDlpJobsCancel (Maybe Text)
pdjcAccessToken
  = lens _pdjcAccessToken
      (\ s a -> s{_pdjcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdjcUploadType :: Lens' ProjectsDlpJobsCancel (Maybe Text)
pdjcUploadType
  = lens _pdjcUploadType
      (\ s a -> s{_pdjcUploadType = a})

-- | Multipart request metadata.
pdjcPayload :: Lens' ProjectsDlpJobsCancel GooglePrivacyDlpV2CancelDlpJobRequest
pdjcPayload
  = lens _pdjcPayload (\ s a -> s{_pdjcPayload = a})

-- | The name of the DlpJob resource to be cancelled.
pdjcName :: Lens' ProjectsDlpJobsCancel Text
pdjcName = lens _pdjcName (\ s a -> s{_pdjcName = a})

-- | JSONP
pdjcCallback :: Lens' ProjectsDlpJobsCancel (Maybe Text)
pdjcCallback
  = lens _pdjcCallback (\ s a -> s{_pdjcCallback = a})

instance GoogleRequest ProjectsDlpJobsCancel where
        type Rs ProjectsDlpJobsCancel = GoogleProtobufEmpty
        type Scopes ProjectsDlpJobsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDlpJobsCancel'{..}
          = go _pdjcName _pdjcXgafv _pdjcUploadProtocol
              _pdjcAccessToken
              _pdjcUploadType
              _pdjcCallback
              (Just AltJSON)
              _pdjcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDlpJobsCancelResource)
                      mempty
