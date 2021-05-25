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
-- Module      : Network.Google.Resource.IAP.UpdateIapSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the IAP settings on a particular IAP protected resource. It
-- replaces all fields unless the \`update_mask\` is set.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.updateIapSettings@.
module Network.Google.Resource.IAP.UpdateIapSettings
    (
    -- * REST Resource
      UpdateIapSettingsResource

    -- * Creating a Request
    , updateIapSettings
    , UpdateIapSettings

    -- * Request Lenses
    , uisXgafv
    , uisUploadProtocol
    , uisUpdateMask
    , uisAccessToken
    , uisUploadType
    , uisPayload
    , uisName
    , uisCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.updateIapSettings@ method which the
-- 'UpdateIapSettings' request conforms to.
type UpdateIapSettingsResource =
     "v1" :>
       CaptureMode "name" "iapSettings" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] IapSettings :>
                         Patch '[JSON] IapSettings

-- | Updates the IAP settings on a particular IAP protected resource. It
-- replaces all fields unless the \`update_mask\` is set.
--
-- /See:/ 'updateIapSettings' smart constructor.
data UpdateIapSettings =
  UpdateIapSettings'
    { _uisXgafv :: !(Maybe Xgafv)
    , _uisUploadProtocol :: !(Maybe Text)
    , _uisUpdateMask :: !(Maybe GFieldMask)
    , _uisAccessToken :: !(Maybe Text)
    , _uisUploadType :: !(Maybe Text)
    , _uisPayload :: !IapSettings
    , _uisName :: !Text
    , _uisCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateIapSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uisXgafv'
--
-- * 'uisUploadProtocol'
--
-- * 'uisUpdateMask'
--
-- * 'uisAccessToken'
--
-- * 'uisUploadType'
--
-- * 'uisPayload'
--
-- * 'uisName'
--
-- * 'uisCallback'
updateIapSettings
    :: IapSettings -- ^ 'uisPayload'
    -> Text -- ^ 'uisName'
    -> UpdateIapSettings
updateIapSettings pUisPayload_ pUisName_ =
  UpdateIapSettings'
    { _uisXgafv = Nothing
    , _uisUploadProtocol = Nothing
    , _uisUpdateMask = Nothing
    , _uisAccessToken = Nothing
    , _uisUploadType = Nothing
    , _uisPayload = pUisPayload_
    , _uisName = pUisName_
    , _uisCallback = Nothing
    }


-- | V1 error format.
uisXgafv :: Lens' UpdateIapSettings (Maybe Xgafv)
uisXgafv = lens _uisXgafv (\ s a -> s{_uisXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uisUploadProtocol :: Lens' UpdateIapSettings (Maybe Text)
uisUploadProtocol
  = lens _uisUploadProtocol
      (\ s a -> s{_uisUploadProtocol = a})

-- | The field mask specifying which IAP settings should be updated. If
-- omitted, the all of the settings are updated. See
-- https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
uisUpdateMask :: Lens' UpdateIapSettings (Maybe GFieldMask)
uisUpdateMask
  = lens _uisUpdateMask
      (\ s a -> s{_uisUpdateMask = a})

-- | OAuth access token.
uisAccessToken :: Lens' UpdateIapSettings (Maybe Text)
uisAccessToken
  = lens _uisAccessToken
      (\ s a -> s{_uisAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uisUploadType :: Lens' UpdateIapSettings (Maybe Text)
uisUploadType
  = lens _uisUploadType
      (\ s a -> s{_uisUploadType = a})

-- | Multipart request metadata.
uisPayload :: Lens' UpdateIapSettings IapSettings
uisPayload
  = lens _uisPayload (\ s a -> s{_uisPayload = a})

-- | Required. The resource name of the IAP protected resource.
uisName :: Lens' UpdateIapSettings Text
uisName = lens _uisName (\ s a -> s{_uisName = a})

-- | JSONP
uisCallback :: Lens' UpdateIapSettings (Maybe Text)
uisCallback
  = lens _uisCallback (\ s a -> s{_uisCallback = a})

instance GoogleRequest UpdateIapSettings where
        type Rs UpdateIapSettings = IapSettings
        type Scopes UpdateIapSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient UpdateIapSettings'{..}
          = go _uisName _uisXgafv _uisUploadProtocol
              _uisUpdateMask
              _uisAccessToken
              _uisUploadType
              _uisCallback
              (Just AltJSON)
              _uisPayload
              iAPService
          where go
                  = buildClient
                      (Proxy :: Proxy UpdateIapSettingsResource)
                      mempty
