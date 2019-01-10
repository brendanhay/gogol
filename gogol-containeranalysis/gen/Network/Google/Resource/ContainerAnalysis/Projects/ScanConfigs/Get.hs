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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified scan configuration.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.scanConfigs.get@.
module Network.Google.Resource.ContainerAnalysis.Projects.ScanConfigs.Get
    (
    -- * REST Resource
      ProjectsScanConfigsGetResource

    -- * Creating a Request
    , projectsScanConfigsGet
    , ProjectsScanConfigsGet

    -- * Request Lenses
    , pscgXgafv
    , pscgUploadProtocol
    , pscgAccessToken
    , pscgUploadType
    , pscgName
    , pscgCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.scanConfigs.get@ method which the
-- 'ProjectsScanConfigsGet' request conforms to.
type ProjectsScanConfigsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ScanConfig

-- | Gets the specified scan configuration.
--
-- /See:/ 'projectsScanConfigsGet' smart constructor.
data ProjectsScanConfigsGet = ProjectsScanConfigsGet'
    { _pscgXgafv          :: !(Maybe Xgafv)
    , _pscgUploadProtocol :: !(Maybe Text)
    , _pscgAccessToken    :: !(Maybe Text)
    , _pscgUploadType     :: !(Maybe Text)
    , _pscgName           :: !Text
    , _pscgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsScanConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscgXgafv'
--
-- * 'pscgUploadProtocol'
--
-- * 'pscgAccessToken'
--
-- * 'pscgUploadType'
--
-- * 'pscgName'
--
-- * 'pscgCallback'
projectsScanConfigsGet
    :: Text -- ^ 'pscgName'
    -> ProjectsScanConfigsGet
projectsScanConfigsGet pPscgName_ =
    ProjectsScanConfigsGet'
    { _pscgXgafv = Nothing
    , _pscgUploadProtocol = Nothing
    , _pscgAccessToken = Nothing
    , _pscgUploadType = Nothing
    , _pscgName = pPscgName_
    , _pscgCallback = Nothing
    }

-- | V1 error format.
pscgXgafv :: Lens' ProjectsScanConfigsGet (Maybe Xgafv)
pscgXgafv
  = lens _pscgXgafv (\ s a -> s{_pscgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscgUploadProtocol :: Lens' ProjectsScanConfigsGet (Maybe Text)
pscgUploadProtocol
  = lens _pscgUploadProtocol
      (\ s a -> s{_pscgUploadProtocol = a})

-- | OAuth access token.
pscgAccessToken :: Lens' ProjectsScanConfigsGet (Maybe Text)
pscgAccessToken
  = lens _pscgAccessToken
      (\ s a -> s{_pscgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscgUploadType :: Lens' ProjectsScanConfigsGet (Maybe Text)
pscgUploadType
  = lens _pscgUploadType
      (\ s a -> s{_pscgUploadType = a})

-- | The name of the scan configuration in the form of
-- \`projects\/[PROJECT_ID]\/scanConfigs\/[SCAN_CONFIG_ID]\`.
pscgName :: Lens' ProjectsScanConfigsGet Text
pscgName = lens _pscgName (\ s a -> s{_pscgName = a})

-- | JSONP
pscgCallback :: Lens' ProjectsScanConfigsGet (Maybe Text)
pscgCallback
  = lens _pscgCallback (\ s a -> s{_pscgCallback = a})

instance GoogleRequest ProjectsScanConfigsGet where
        type Rs ProjectsScanConfigsGet = ScanConfig
        type Scopes ProjectsScanConfigsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsGet'{..}
          = go _pscgName _pscgXgafv _pscgUploadProtocol
              _pscgAccessToken
              _pscgUploadType
              _pscgCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsGetResource)
                      mempty
