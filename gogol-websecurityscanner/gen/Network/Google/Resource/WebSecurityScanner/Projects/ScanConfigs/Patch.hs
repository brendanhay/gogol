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
-- Module      : Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a ScanConfig. This method support partial update of a
-- ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.patch@.
module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Patch
    (
    -- * REST Resource
      ProjectsScanConfigsPatchResource

    -- * Creating a Request
    , projectsScanConfigsPatch
    , ProjectsScanConfigsPatch

    -- * Request Lenses
    , pscpXgafv
    , pscpUploadProtocol
    , pscpUpdateMask
    , pscpAccessToken
    , pscpUploadType
    , pscpPayload
    , pscpName
    , pscpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.patch@ method which the
-- 'ProjectsScanConfigsPatch' request conforms to.
type ProjectsScanConfigsPatchResource =
     "v1beta" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ScanConfig :>
                         Patch '[JSON] ScanConfig

-- | Updates a ScanConfig. This method support partial update of a
-- ScanConfig.
--
-- /See:/ 'projectsScanConfigsPatch' smart constructor.
data ProjectsScanConfigsPatch =
  ProjectsScanConfigsPatch'
    { _pscpXgafv          :: !(Maybe Xgafv)
    , _pscpUploadProtocol :: !(Maybe Text)
    , _pscpUpdateMask     :: !(Maybe GFieldMask)
    , _pscpAccessToken    :: !(Maybe Text)
    , _pscpUploadType     :: !(Maybe Text)
    , _pscpPayload        :: !ScanConfig
    , _pscpName           :: !Text
    , _pscpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsScanConfigsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscpXgafv'
--
-- * 'pscpUploadProtocol'
--
-- * 'pscpUpdateMask'
--
-- * 'pscpAccessToken'
--
-- * 'pscpUploadType'
--
-- * 'pscpPayload'
--
-- * 'pscpName'
--
-- * 'pscpCallback'
projectsScanConfigsPatch
    :: ScanConfig -- ^ 'pscpPayload'
    -> Text -- ^ 'pscpName'
    -> ProjectsScanConfigsPatch
projectsScanConfigsPatch pPscpPayload_ pPscpName_ =
  ProjectsScanConfigsPatch'
    { _pscpXgafv = Nothing
    , _pscpUploadProtocol = Nothing
    , _pscpUpdateMask = Nothing
    , _pscpAccessToken = Nothing
    , _pscpUploadType = Nothing
    , _pscpPayload = pPscpPayload_
    , _pscpName = pPscpName_
    , _pscpCallback = Nothing
    }


-- | V1 error format.
pscpXgafv :: Lens' ProjectsScanConfigsPatch (Maybe Xgafv)
pscpXgafv
  = lens _pscpXgafv (\ s a -> s{_pscpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscpUploadProtocol :: Lens' ProjectsScanConfigsPatch (Maybe Text)
pscpUploadProtocol
  = lens _pscpUploadProtocol
      (\ s a -> s{_pscpUploadProtocol = a})

-- | Required. The update mask applies to the resource. For the \`FieldMask\`
-- definition, see
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
pscpUpdateMask :: Lens' ProjectsScanConfigsPatch (Maybe GFieldMask)
pscpUpdateMask
  = lens _pscpUpdateMask
      (\ s a -> s{_pscpUpdateMask = a})

-- | OAuth access token.
pscpAccessToken :: Lens' ProjectsScanConfigsPatch (Maybe Text)
pscpAccessToken
  = lens _pscpAccessToken
      (\ s a -> s{_pscpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscpUploadType :: Lens' ProjectsScanConfigsPatch (Maybe Text)
pscpUploadType
  = lens _pscpUploadType
      (\ s a -> s{_pscpUploadType = a})

-- | Multipart request metadata.
pscpPayload :: Lens' ProjectsScanConfigsPatch ScanConfig
pscpPayload
  = lens _pscpPayload (\ s a -> s{_pscpPayload = a})

-- | The resource name of the ScanConfig. The name follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. The ScanConfig
-- IDs are generated by the system.
pscpName :: Lens' ProjectsScanConfigsPatch Text
pscpName = lens _pscpName (\ s a -> s{_pscpName = a})

-- | JSONP
pscpCallback :: Lens' ProjectsScanConfigsPatch (Maybe Text)
pscpCallback
  = lens _pscpCallback (\ s a -> s{_pscpCallback = a})

instance GoogleRequest ProjectsScanConfigsPatch where
        type Rs ProjectsScanConfigsPatch = ScanConfig
        type Scopes ProjectsScanConfigsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsScanConfigsPatch'{..}
          = go _pscpName _pscpXgafv _pscpUploadProtocol
              _pscpUpdateMask
              _pscpAccessToken
              _pscpUploadType
              _pscpCallback
              (Just AltJSON)
              _pscpPayload
              webSecurityScannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsScanConfigsPatchResource)
                      mempty
