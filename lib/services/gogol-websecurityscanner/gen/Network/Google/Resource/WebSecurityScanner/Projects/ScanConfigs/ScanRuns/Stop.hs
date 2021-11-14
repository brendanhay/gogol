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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a ScanRun. The stopped ScanRun is returned.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.stop@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsStopResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsStop
    , ProjectsScanConfigsScanRunsStop

    -- * Request Lenses
    , pscsrsXgafv
    , pscsrsUploadProtocol
    , pscsrsAccessToken
    , pscsrsUploadType
    , pscsrsPayload
    , pscsrsName
    , pscsrsCallback
    ) where

import Network.Google.Prelude
import Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.stop@ method which the
-- 'ProjectsScanConfigsScanRunsStop' request conforms to.
type ProjectsScanConfigsScanRunsStopResource =
     "v1" :>
       CaptureMode "name" "stop" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StopScanRunRequest :>
                       Post '[JSON] ScanRun

-- | Stops a ScanRun. The stopped ScanRun is returned.
--
-- /See:/ 'projectsScanConfigsScanRunsStop' smart constructor.
data ProjectsScanConfigsScanRunsStop =
  ProjectsScanConfigsScanRunsStop'
    { _pscsrsXgafv :: !(Maybe Xgafv)
    , _pscsrsUploadProtocol :: !(Maybe Text)
    , _pscsrsAccessToken :: !(Maybe Text)
    , _pscsrsUploadType :: !(Maybe Text)
    , _pscsrsPayload :: !StopScanRunRequest
    , _pscsrsName :: !Text
    , _pscsrsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsScanRunsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrsXgafv'
--
-- * 'pscsrsUploadProtocol'
--
-- * 'pscsrsAccessToken'
--
-- * 'pscsrsUploadType'
--
-- * 'pscsrsPayload'
--
-- * 'pscsrsName'
--
-- * 'pscsrsCallback'
projectsScanConfigsScanRunsStop
    :: StopScanRunRequest -- ^ 'pscsrsPayload'
    -> Text -- ^ 'pscsrsName'
    -> ProjectsScanConfigsScanRunsStop
projectsScanConfigsScanRunsStop pPscsrsPayload_ pPscsrsName_ =
  ProjectsScanConfigsScanRunsStop'
    { _pscsrsXgafv = Nothing
    , _pscsrsUploadProtocol = Nothing
    , _pscsrsAccessToken = Nothing
    , _pscsrsUploadType = Nothing
    , _pscsrsPayload = pPscsrsPayload_
    , _pscsrsName = pPscsrsName_
    , _pscsrsCallback = Nothing
    }


-- | V1 error format.
pscsrsXgafv :: Lens' ProjectsScanConfigsScanRunsStop (Maybe Xgafv)
pscsrsXgafv
  = lens _pscsrsXgafv (\ s a -> s{_pscsrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrsUploadProtocol :: Lens' ProjectsScanConfigsScanRunsStop (Maybe Text)
pscsrsUploadProtocol
  = lens _pscsrsUploadProtocol
      (\ s a -> s{_pscsrsUploadProtocol = a})

-- | OAuth access token.
pscsrsAccessToken :: Lens' ProjectsScanConfigsScanRunsStop (Maybe Text)
pscsrsAccessToken
  = lens _pscsrsAccessToken
      (\ s a -> s{_pscsrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrsUploadType :: Lens' ProjectsScanConfigsScanRunsStop (Maybe Text)
pscsrsUploadType
  = lens _pscsrsUploadType
      (\ s a -> s{_pscsrsUploadType = a})

-- | Multipart request metadata.
pscsrsPayload :: Lens' ProjectsScanConfigsScanRunsStop StopScanRunRequest
pscsrsPayload
  = lens _pscsrsPayload
      (\ s a -> s{_pscsrsPayload = a})

-- | Required. The resource name of the ScanRun to be stopped. The name
-- follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
pscsrsName :: Lens' ProjectsScanConfigsScanRunsStop Text
pscsrsName
  = lens _pscsrsName (\ s a -> s{_pscsrsName = a})

-- | JSONP
pscsrsCallback :: Lens' ProjectsScanConfigsScanRunsStop (Maybe Text)
pscsrsCallback
  = lens _pscsrsCallback
      (\ s a -> s{_pscsrsCallback = a})

instance GoogleRequest
           ProjectsScanConfigsScanRunsStop
         where
        type Rs ProjectsScanConfigsScanRunsStop = ScanRun
        type Scopes ProjectsScanConfigsScanRunsStop =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsScanRunsStop'{..}
          = go _pscsrsName _pscsrsXgafv _pscsrsUploadProtocol
              _pscsrsAccessToken
              _pscsrsUploadType
              _pscsrsCallback
              (Just AltJSON)
              _pscsrsPayload
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsScanConfigsScanRunsStopResource)
                      mempty
