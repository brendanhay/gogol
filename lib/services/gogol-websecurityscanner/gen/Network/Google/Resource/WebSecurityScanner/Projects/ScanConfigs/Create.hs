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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.create@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Create
    (
    -- * REST Resource
      ProjectsScanConfigsCreateResource

    -- * Creating a Request
    , projectsScanConfigsCreate
    , ProjectsScanConfigsCreate

    -- * Request Lenses
    , psccParent
    , psccXgafv
    , psccUploadProtocol
    , psccAccessToken
    , psccUploadType
    , psccPayload
    , psccCallback
    ) where

import Network.Google.Prelude
import Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.create@ method which the
-- 'ProjectsScanConfigsCreate' request conforms to.
type ProjectsScanConfigsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "scanConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ScanConfig :> Post '[JSON] ScanConfig

-- | Creates a new ScanConfig.
--
-- /See:/ 'projectsScanConfigsCreate' smart constructor.
data ProjectsScanConfigsCreate =
  ProjectsScanConfigsCreate'
    { _psccParent :: !Text
    , _psccXgafv :: !(Maybe Xgafv)
    , _psccUploadProtocol :: !(Maybe Text)
    , _psccAccessToken :: !(Maybe Text)
    , _psccUploadType :: !(Maybe Text)
    , _psccPayload :: !ScanConfig
    , _psccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psccParent'
--
-- * 'psccXgafv'
--
-- * 'psccUploadProtocol'
--
-- * 'psccAccessToken'
--
-- * 'psccUploadType'
--
-- * 'psccPayload'
--
-- * 'psccCallback'
projectsScanConfigsCreate
    :: Text -- ^ 'psccParent'
    -> ScanConfig -- ^ 'psccPayload'
    -> ProjectsScanConfigsCreate
projectsScanConfigsCreate pPsccParent_ pPsccPayload_ =
  ProjectsScanConfigsCreate'
    { _psccParent = pPsccParent_
    , _psccXgafv = Nothing
    , _psccUploadProtocol = Nothing
    , _psccAccessToken = Nothing
    , _psccUploadType = Nothing
    , _psccPayload = pPsccPayload_
    , _psccCallback = Nothing
    }


-- | Required. The parent resource name where the scan is created, which
-- should be a project resource name in the format
-- \'projects\/{projectId}\'.
psccParent :: Lens' ProjectsScanConfigsCreate Text
psccParent
  = lens _psccParent (\ s a -> s{_psccParent = a})

-- | V1 error format.
psccXgafv :: Lens' ProjectsScanConfigsCreate (Maybe Xgafv)
psccXgafv
  = lens _psccXgafv (\ s a -> s{_psccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psccUploadProtocol :: Lens' ProjectsScanConfigsCreate (Maybe Text)
psccUploadProtocol
  = lens _psccUploadProtocol
      (\ s a -> s{_psccUploadProtocol = a})

-- | OAuth access token.
psccAccessToken :: Lens' ProjectsScanConfigsCreate (Maybe Text)
psccAccessToken
  = lens _psccAccessToken
      (\ s a -> s{_psccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psccUploadType :: Lens' ProjectsScanConfigsCreate (Maybe Text)
psccUploadType
  = lens _psccUploadType
      (\ s a -> s{_psccUploadType = a})

-- | Multipart request metadata.
psccPayload :: Lens' ProjectsScanConfigsCreate ScanConfig
psccPayload
  = lens _psccPayload (\ s a -> s{_psccPayload = a})

-- | JSONP
psccCallback :: Lens' ProjectsScanConfigsCreate (Maybe Text)
psccCallback
  = lens _psccCallback (\ s a -> s{_psccCallback = a})

instance GoogleRequest ProjectsScanConfigsCreate
         where
        type Rs ProjectsScanConfigsCreate = ScanConfig
        type Scopes ProjectsScanConfigsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsCreate'{..}
          = go _psccParent _psccXgafv _psccUploadProtocol
              _psccAccessToken
              _psccUploadType
              _psccCallback
              (Just AltJSON)
              _psccPayload
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsCreateResource)
                      mempty
