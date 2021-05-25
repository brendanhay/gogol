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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Finding.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.findings.get@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get
    (
    -- * REST Resource
      ProjectsScanConfigsScanRunsFindingsGetResource

    -- * Creating a Request
    , projectsScanConfigsScanRunsFindingsGet
    , ProjectsScanConfigsScanRunsFindingsGet

    -- * Request Lenses
    , pscsrfgXgafv
    , pscsrfgUploadProtocol
    , pscsrfgAccessToken
    , pscsrfgUploadType
    , pscsrfgName
    , pscsrfgCallback
    ) where

import Network.Google.Prelude
import Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.findings.get@ method which the
-- 'ProjectsScanConfigsScanRunsFindingsGet' request conforms to.
type ProjectsScanConfigsScanRunsFindingsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Finding

-- | Gets a Finding.
--
-- /See:/ 'projectsScanConfigsScanRunsFindingsGet' smart constructor.
data ProjectsScanConfigsScanRunsFindingsGet =
  ProjectsScanConfigsScanRunsFindingsGet'
    { _pscsrfgXgafv :: !(Maybe Xgafv)
    , _pscsrfgUploadProtocol :: !(Maybe Text)
    , _pscsrfgAccessToken :: !(Maybe Text)
    , _pscsrfgUploadType :: !(Maybe Text)
    , _pscsrfgName :: !Text
    , _pscsrfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsScanRunsFindingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscsrfgXgafv'
--
-- * 'pscsrfgUploadProtocol'
--
-- * 'pscsrfgAccessToken'
--
-- * 'pscsrfgUploadType'
--
-- * 'pscsrfgName'
--
-- * 'pscsrfgCallback'
projectsScanConfigsScanRunsFindingsGet
    :: Text -- ^ 'pscsrfgName'
    -> ProjectsScanConfigsScanRunsFindingsGet
projectsScanConfigsScanRunsFindingsGet pPscsrfgName_ =
  ProjectsScanConfigsScanRunsFindingsGet'
    { _pscsrfgXgafv = Nothing
    , _pscsrfgUploadProtocol = Nothing
    , _pscsrfgAccessToken = Nothing
    , _pscsrfgUploadType = Nothing
    , _pscsrfgName = pPscsrfgName_
    , _pscsrfgCallback = Nothing
    }


-- | V1 error format.
pscsrfgXgafv :: Lens' ProjectsScanConfigsScanRunsFindingsGet (Maybe Xgafv)
pscsrfgXgafv
  = lens _pscsrfgXgafv (\ s a -> s{_pscsrfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscsrfgUploadProtocol :: Lens' ProjectsScanConfigsScanRunsFindingsGet (Maybe Text)
pscsrfgUploadProtocol
  = lens _pscsrfgUploadProtocol
      (\ s a -> s{_pscsrfgUploadProtocol = a})

-- | OAuth access token.
pscsrfgAccessToken :: Lens' ProjectsScanConfigsScanRunsFindingsGet (Maybe Text)
pscsrfgAccessToken
  = lens _pscsrfgAccessToken
      (\ s a -> s{_pscsrfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscsrfgUploadType :: Lens' ProjectsScanConfigsScanRunsFindingsGet (Maybe Text)
pscsrfgUploadType
  = lens _pscsrfgUploadType
      (\ s a -> s{_pscsrfgUploadType = a})

-- | Required. The resource name of the Finding to be returned. The name
-- follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\/findings\/{findingId}\'.
pscsrfgName :: Lens' ProjectsScanConfigsScanRunsFindingsGet Text
pscsrfgName
  = lens _pscsrfgName (\ s a -> s{_pscsrfgName = a})

-- | JSONP
pscsrfgCallback :: Lens' ProjectsScanConfigsScanRunsFindingsGet (Maybe Text)
pscsrfgCallback
  = lens _pscsrfgCallback
      (\ s a -> s{_pscsrfgCallback = a})

instance GoogleRequest
           ProjectsScanConfigsScanRunsFindingsGet
         where
        type Rs ProjectsScanConfigsScanRunsFindingsGet =
             Finding
        type Scopes ProjectsScanConfigsScanRunsFindingsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsScanConfigsScanRunsFindingsGet'{..}
          = go _pscsrfgName _pscsrfgXgafv
              _pscsrfgUploadProtocol
              _pscsrfgAccessToken
              _pscsrfgUploadType
              _pscsrfgCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsScanConfigsScanRunsFindingsGetResource)
                      mempty
