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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Start
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start a ScanRun according to the given ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.start@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Start
    (
    -- * REST Resource
      ProjectsScanConfigsStartResource

    -- * Creating a Request
    , projectsScanConfigsStart
    , ProjectsScanConfigsStart

    -- * Request Lenses
    , pscsXgafv
    , pscsUploadProtocol
    , pscsAccessToken
    , pscsUploadType
    , pscsPayload
    , pscsName
    , pscsCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.start@ method which the
-- 'ProjectsScanConfigsStart' request conforms to.
type ProjectsScanConfigsStartResource =
     "v1alpha" :>
       CaptureMode "name" "start" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] StartScanRunRequest :>
                       Post '[JSON] ScanRun

-- | Start a ScanRun according to the given ScanConfig.
--
-- /See:/ 'projectsScanConfigsStart' smart constructor.
data ProjectsScanConfigsStart =
  ProjectsScanConfigsStart'
    { _pscsXgafv          :: !(Maybe Xgafv)
    , _pscsUploadProtocol :: !(Maybe Text)
    , _pscsAccessToken    :: !(Maybe Text)
    , _pscsUploadType     :: !(Maybe Text)
    , _pscsPayload        :: !StartScanRunRequest
    , _pscsName           :: !Text
    , _pscsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsScanConfigsStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsXgafv'
--
-- * 'pscsUploadProtocol'
--
-- * 'pscsAccessToken'
--
-- * 'pscsUploadType'
--
-- * 'pscsPayload'
--
-- * 'pscsName'
--
-- * 'pscsCallback'
projectsScanConfigsStart
    :: StartScanRunRequest -- ^ 'pscsPayload'
    -> Text -- ^ 'pscsName'
    -> ProjectsScanConfigsStart
projectsScanConfigsStart pPscsPayload_ pPscsName_ =
  ProjectsScanConfigsStart'
    { _pscsXgafv = Nothing
    , _pscsUploadProtocol = Nothing
    , _pscsAccessToken = Nothing
    , _pscsUploadType = Nothing
    , _pscsPayload = pPscsPayload_
    , _pscsName = pPscsName_
    , _pscsCallback = Nothing
    }

-- | V1 error format.
pscsXgafv :: Lens' ProjectsScanConfigsStart (Maybe Xgafv)
pscsXgafv
  = lens _pscsXgafv (\ s a -> s{_pscsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsUploadProtocol :: Lens' ProjectsScanConfigsStart (Maybe Text)
pscsUploadProtocol
  = lens _pscsUploadProtocol
      (\ s a -> s{_pscsUploadProtocol = a})

-- | OAuth access token.
pscsAccessToken :: Lens' ProjectsScanConfigsStart (Maybe Text)
pscsAccessToken
  = lens _pscsAccessToken
      (\ s a -> s{_pscsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsUploadType :: Lens' ProjectsScanConfigsStart (Maybe Text)
pscsUploadType
  = lens _pscsUploadType
      (\ s a -> s{_pscsUploadType = a})

-- | Multipart request metadata.
pscsPayload :: Lens' ProjectsScanConfigsStart StartScanRunRequest
pscsPayload
  = lens _pscsPayload (\ s a -> s{_pscsPayload = a})

-- | Required. The resource name of the ScanConfig to be used. The name
-- follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
pscsName :: Lens' ProjectsScanConfigsStart Text
pscsName = lens _pscsName (\ s a -> s{_pscsName = a})

-- | JSONP
pscsCallback :: Lens' ProjectsScanConfigsStart (Maybe Text)
pscsCallback
  = lens _pscsCallback (\ s a -> s{_pscsCallback = a})

instance GoogleRequest ProjectsScanConfigsStart where
        type Rs ProjectsScanConfigsStart = ScanRun
        type Scopes ProjectsScanConfigsStart =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsStart'{..}
          = go _pscsName _pscsXgafv _pscsUploadProtocol
              _pscsAccessToken
              _pscsUploadType
              _pscsCallback
              (Just AltJSON)
              _pscsPayload
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsStartResource)
                      mempty
