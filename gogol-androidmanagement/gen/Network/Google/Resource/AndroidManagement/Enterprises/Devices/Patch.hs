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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.patch@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Patch
    (
    -- * REST Resource
      EnterprisesDevicesPatchResource

    -- * Creating a Request
    , enterprisesDevicesPatch
    , EnterprisesDevicesPatch

    -- * Request Lenses
    , edpXgafv
    , edpUploadProtocol
    , edpUpdateMask
    , edpAccessToken
    , edpUploadType
    , edpPayload
    , edpName
    , edpCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.patch@ method which the
-- 'EnterprisesDevicesPatch' request conforms to.
type EnterprisesDevicesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Device :> Patch '[JSON] Device

-- | Updates a device.
--
-- /See:/ 'enterprisesDevicesPatch' smart constructor.
data EnterprisesDevicesPatch =
  EnterprisesDevicesPatch'
    { _edpXgafv          :: !(Maybe Xgafv)
    , _edpUploadProtocol :: !(Maybe Text)
    , _edpUpdateMask     :: !(Maybe GFieldMask)
    , _edpAccessToken    :: !(Maybe Text)
    , _edpUploadType     :: !(Maybe Text)
    , _edpPayload        :: !Device
    , _edpName           :: !Text
    , _edpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edpXgafv'
--
-- * 'edpUploadProtocol'
--
-- * 'edpUpdateMask'
--
-- * 'edpAccessToken'
--
-- * 'edpUploadType'
--
-- * 'edpPayload'
--
-- * 'edpName'
--
-- * 'edpCallback'
enterprisesDevicesPatch
    :: Device -- ^ 'edpPayload'
    -> Text -- ^ 'edpName'
    -> EnterprisesDevicesPatch
enterprisesDevicesPatch pEdpPayload_ pEdpName_ =
  EnterprisesDevicesPatch'
    { _edpXgafv = Nothing
    , _edpUploadProtocol = Nothing
    , _edpUpdateMask = Nothing
    , _edpAccessToken = Nothing
    , _edpUploadType = Nothing
    , _edpPayload = pEdpPayload_
    , _edpName = pEdpName_
    , _edpCallback = Nothing
    }


-- | V1 error format.
edpXgafv :: Lens' EnterprisesDevicesPatch (Maybe Xgafv)
edpXgafv = lens _edpXgafv (\ s a -> s{_edpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edpUploadProtocol :: Lens' EnterprisesDevicesPatch (Maybe Text)
edpUploadProtocol
  = lens _edpUploadProtocol
      (\ s a -> s{_edpUploadProtocol = a})

-- | The field mask indicating the fields to update. If not set, all
-- modifiable fields will be modified.
edpUpdateMask :: Lens' EnterprisesDevicesPatch (Maybe GFieldMask)
edpUpdateMask
  = lens _edpUpdateMask
      (\ s a -> s{_edpUpdateMask = a})

-- | OAuth access token.
edpAccessToken :: Lens' EnterprisesDevicesPatch (Maybe Text)
edpAccessToken
  = lens _edpAccessToken
      (\ s a -> s{_edpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edpUploadType :: Lens' EnterprisesDevicesPatch (Maybe Text)
edpUploadType
  = lens _edpUploadType
      (\ s a -> s{_edpUploadType = a})

-- | Multipart request metadata.
edpPayload :: Lens' EnterprisesDevicesPatch Device
edpPayload
  = lens _edpPayload (\ s a -> s{_edpPayload = a})

-- | The name of the device in the form
-- enterprises\/{enterpriseId}\/devices\/{deviceId}.
edpName :: Lens' EnterprisesDevicesPatch Text
edpName = lens _edpName (\ s a -> s{_edpName = a})

-- | JSONP
edpCallback :: Lens' EnterprisesDevicesPatch (Maybe Text)
edpCallback
  = lens _edpCallback (\ s a -> s{_edpCallback = a})

instance GoogleRequest EnterprisesDevicesPatch where
        type Rs EnterprisesDevicesPatch = Device
        type Scopes EnterprisesDevicesPatch =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesPatch'{..}
          = go _edpName _edpXgafv _edpUploadProtocol
              _edpUpdateMask
              _edpAccessToken
              _edpUploadType
              _edpCallback
              (Just AltJSON)
              _edpPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDevicesPatchResource)
                      mempty
