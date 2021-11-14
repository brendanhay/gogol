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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified scan configuration.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.scanConfigs.update@.
module Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Update
    (
    -- * REST Resource
      ProjectsScanConfigsUpdateResource

    -- * Creating a Request
    , projectsScanConfigsUpdate
    , ProjectsScanConfigsUpdate

    -- * Request Lenses
    , pscuXgafv
    , pscuUploadProtocol
    , pscuAccessToken
    , pscuUploadType
    , pscuPayload
    , pscuName
    , pscuCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.scanConfigs.update@ method which the
-- 'ProjectsScanConfigsUpdate' request conforms to.
type ProjectsScanConfigsUpdateResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ScanConfig :> Put '[JSON] ScanConfig

-- | Updates the specified scan configuration.
--
-- /See:/ 'projectsScanConfigsUpdate' smart constructor.
data ProjectsScanConfigsUpdate =
  ProjectsScanConfigsUpdate'
    { _pscuXgafv :: !(Maybe Xgafv)
    , _pscuUploadProtocol :: !(Maybe Text)
    , _pscuAccessToken :: !(Maybe Text)
    , _pscuUploadType :: !(Maybe Text)
    , _pscuPayload :: !ScanConfig
    , _pscuName :: !Text
    , _pscuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscuXgafv'
--
-- * 'pscuUploadProtocol'
--
-- * 'pscuAccessToken'
--
-- * 'pscuUploadType'
--
-- * 'pscuPayload'
--
-- * 'pscuName'
--
-- * 'pscuCallback'
projectsScanConfigsUpdate
    :: ScanConfig -- ^ 'pscuPayload'
    -> Text -- ^ 'pscuName'
    -> ProjectsScanConfigsUpdate
projectsScanConfigsUpdate pPscuPayload_ pPscuName_ =
  ProjectsScanConfigsUpdate'
    { _pscuXgafv = Nothing
    , _pscuUploadProtocol = Nothing
    , _pscuAccessToken = Nothing
    , _pscuUploadType = Nothing
    , _pscuPayload = pPscuPayload_
    , _pscuName = pPscuName_
    , _pscuCallback = Nothing
    }


-- | V1 error format.
pscuXgafv :: Lens' ProjectsScanConfigsUpdate (Maybe Xgafv)
pscuXgafv
  = lens _pscuXgafv (\ s a -> s{_pscuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscuUploadProtocol :: Lens' ProjectsScanConfigsUpdate (Maybe Text)
pscuUploadProtocol
  = lens _pscuUploadProtocol
      (\ s a -> s{_pscuUploadProtocol = a})

-- | OAuth access token.
pscuAccessToken :: Lens' ProjectsScanConfigsUpdate (Maybe Text)
pscuAccessToken
  = lens _pscuAccessToken
      (\ s a -> s{_pscuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscuUploadType :: Lens' ProjectsScanConfigsUpdate (Maybe Text)
pscuUploadType
  = lens _pscuUploadType
      (\ s a -> s{_pscuUploadType = a})

-- | Multipart request metadata.
pscuPayload :: Lens' ProjectsScanConfigsUpdate ScanConfig
pscuPayload
  = lens _pscuPayload (\ s a -> s{_pscuPayload = a})

-- | Required. The name of the scan configuration in the form of
-- \`projects\/[PROJECT_ID]\/scanConfigs\/[SCAN_CONFIG_ID]\`.
pscuName :: Lens' ProjectsScanConfigsUpdate Text
pscuName = lens _pscuName (\ s a -> s{_pscuName = a})

-- | JSONP
pscuCallback :: Lens' ProjectsScanConfigsUpdate (Maybe Text)
pscuCallback
  = lens _pscuCallback (\ s a -> s{_pscuCallback = a})

instance GoogleRequest ProjectsScanConfigsUpdate
         where
        type Rs ProjectsScanConfigsUpdate = ScanConfig
        type Scopes ProjectsScanConfigsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsUpdate'{..}
          = go _pscuName _pscuXgafv _pscuUploadProtocol
              _pscuAccessToken
              _pscuUploadType
              _pscuCallback
              (Just AltJSON)
              _pscuPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsUpdateResource)
                      mempty
