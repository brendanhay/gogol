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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a ScanRun.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.get@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsGetResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsGet
    , ProjectsScanConfigsScanRunsGet

    -- * Request Lenses
    , pscsrgXgafv
    , pscsrgUploadProtocol
    , pscsrgAccessToken
    , pscsrgUploadType
    , pscsrgName
    , pscsrgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.get@ method which the
-- 'ProjectsScanConfigsScanRunsGet' request conforms to.
type ProjectsScanConfigsScanRunsGetResource =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ScanRun

-- | Gets a ScanRun.
--
-- /See:/ 'projectsScanConfigsScanRunsGet' smart constructor.
data ProjectsScanConfigsScanRunsGet =
  ProjectsScanConfigsScanRunsGet'
    { _pscsrgXgafv          :: !(Maybe Xgafv)
    , _pscsrgUploadProtocol :: !(Maybe Text)
    , _pscsrgAccessToken    :: !(Maybe Text)
    , _pscsrgUploadType     :: !(Maybe Text)
    , _pscsrgName           :: !Text
    , _pscsrgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsScanConfigsScanRunsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrgXgafv'
--
-- * 'pscsrgUploadProtocol'
--
-- * 'pscsrgAccessToken'
--
-- * 'pscsrgUploadType'
--
-- * 'pscsrgName'
--
-- * 'pscsrgCallback'
projectsScanConfigsScanRunsGet
    :: Text -- ^ 'pscsrgName'
    -> ProjectsScanConfigsScanRunsGet
projectsScanConfigsScanRunsGet pPscsrgName_ =
  ProjectsScanConfigsScanRunsGet'
    { _pscsrgXgafv = Nothing
    , _pscsrgUploadProtocol = Nothing
    , _pscsrgAccessToken = Nothing
    , _pscsrgUploadType = Nothing
    , _pscsrgName = pPscsrgName_
    , _pscsrgCallback = Nothing
    }

-- | V1 error format.
pscsrgXgafv :: Lens' ProjectsScanConfigsScanRunsGet (Maybe Xgafv)
pscsrgXgafv
  = lens _pscsrgXgafv (\ s a -> s{_pscsrgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrgUploadProtocol :: Lens' ProjectsScanConfigsScanRunsGet (Maybe Text)
pscsrgUploadProtocol
  = lens _pscsrgUploadProtocol
      (\ s a -> s{_pscsrgUploadProtocol = a})

-- | OAuth access token.
pscsrgAccessToken :: Lens' ProjectsScanConfigsScanRunsGet (Maybe Text)
pscsrgAccessToken
  = lens _pscsrgAccessToken
      (\ s a -> s{_pscsrgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrgUploadType :: Lens' ProjectsScanConfigsScanRunsGet (Maybe Text)
pscsrgUploadType
  = lens _pscsrgUploadType
      (\ s a -> s{_pscsrgUploadType = a})

-- | Required. The resource name of the ScanRun to be returned. The name
-- follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
pscsrgName :: Lens' ProjectsScanConfigsScanRunsGet Text
pscsrgName
  = lens _pscsrgName (\ s a -> s{_pscsrgName = a})

-- | JSONP
pscsrgCallback :: Lens' ProjectsScanConfigsScanRunsGet (Maybe Text)
pscsrgCallback
  = lens _pscsrgCallback
      (\ s a -> s{_pscsrgCallback = a})

instance GoogleRequest ProjectsScanConfigsScanRunsGet
         where
        type Rs ProjectsScanConfigsScanRunsGet = ScanRun
        type Scopes ProjectsScanConfigsScanRunsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsScanRunsGet'{..}
          = go _pscsrgName _pscsrgXgafv _pscsrgUploadProtocol
              _pscsrgAccessToken
              _pscsrgUploadType
              _pscsrgCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsScanConfigsScanRunsGetResource)
                      mempty
