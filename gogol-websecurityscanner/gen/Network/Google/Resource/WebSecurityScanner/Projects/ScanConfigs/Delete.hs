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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing ScanConfig and its child resources.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.delete@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Delete
    (
    -- * REST Resource
      ProjectsScanConfigsDeleteResource

    -- * Creating a Request
    , projectsScanConfigsDelete
    , ProjectsScanConfigsDelete

    -- * Request Lenses
    , pscdXgafv
    , pscdUploadProtocol
    , pscdAccessToken
    , pscdUploadType
    , pscdName
    , pscdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.delete@ method which the
-- 'ProjectsScanConfigsDelete' request conforms to.
type ProjectsScanConfigsDeleteResource =
     "v1beta" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an existing ScanConfig and its child resources.
--
-- /See:/ 'projectsScanConfigsDelete' smart constructor.
data ProjectsScanConfigsDelete =
  ProjectsScanConfigsDelete'
    { _pscdXgafv          :: !(Maybe Xgafv)
    , _pscdUploadProtocol :: !(Maybe Text)
    , _pscdAccessToken    :: !(Maybe Text)
    , _pscdUploadType     :: !(Maybe Text)
    , _pscdName           :: !Text
    , _pscdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscdXgafv'
--
-- * 'pscdUploadProtocol'
--
-- * 'pscdAccessToken'
--
-- * 'pscdUploadType'
--
-- * 'pscdName'
--
-- * 'pscdCallback'
projectsScanConfigsDelete
    :: Text -- ^ 'pscdName'
    -> ProjectsScanConfigsDelete
projectsScanConfigsDelete pPscdName_ =
  ProjectsScanConfigsDelete'
    { _pscdXgafv = Nothing
    , _pscdUploadProtocol = Nothing
    , _pscdAccessToken = Nothing
    , _pscdUploadType = Nothing
    , _pscdName = pPscdName_
    , _pscdCallback = Nothing
    }


-- | V1 error format.
pscdXgafv :: Lens' ProjectsScanConfigsDelete (Maybe Xgafv)
pscdXgafv
  = lens _pscdXgafv (\ s a -> s{_pscdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscdUploadProtocol :: Lens' ProjectsScanConfigsDelete (Maybe Text)
pscdUploadProtocol
  = lens _pscdUploadProtocol
      (\ s a -> s{_pscdUploadProtocol = a})

-- | OAuth access token.
pscdAccessToken :: Lens' ProjectsScanConfigsDelete (Maybe Text)
pscdAccessToken
  = lens _pscdAccessToken
      (\ s a -> s{_pscdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscdUploadType :: Lens' ProjectsScanConfigsDelete (Maybe Text)
pscdUploadType
  = lens _pscdUploadType
      (\ s a -> s{_pscdUploadType = a})

-- | Required. The resource name of the ScanConfig to be deleted. The name
-- follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
pscdName :: Lens' ProjectsScanConfigsDelete Text
pscdName = lens _pscdName (\ s a -> s{_pscdName = a})

-- | JSONP
pscdCallback :: Lens' ProjectsScanConfigsDelete (Maybe Text)
pscdCallback
  = lens _pscdCallback (\ s a -> s{_pscdCallback = a})

instance GoogleRequest ProjectsScanConfigsDelete
         where
        type Rs ProjectsScanConfigsDelete = Empty
        type Scopes ProjectsScanConfigsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsDelete'{..}
          = go _pscdName _pscdXgafv _pscdUploadProtocol
              _pscdAccessToken
              _pscdUploadType
              _pscdCallback
              (Just AltJSON)
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsDeleteResource)
                      mempty
