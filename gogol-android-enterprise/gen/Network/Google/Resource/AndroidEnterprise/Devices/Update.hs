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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the device policy. To ensure the policy is properly enforced,
-- you need to prevent unmanaged accounts from accessing Google Play by
-- setting the allowed_accounts in the managed configuration for the Google
-- Play package. See restrict accounts in Google Play. When provisioning a
-- new device, you should set the device policy using this method before
-- adding the managed Google Play Account to the device, otherwise the
-- policy will not be applied for a short period of time after adding the
-- account to the device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.update@.
module Network.Google.Resource.AndroidEnterprise.Devices.Update
    (
    -- * REST Resource
      DevicesUpdateResource

    -- * Creating a Request
    , devicesUpdate
    , DevicesUpdate

    -- * Request Lenses
    , duXgafv
    , duUploadProtocol
    , duUpdateMask
    , duEnterpriseId
    , duAccessToken
    , duUploadType
    , duPayload
    , duUserId
    , duDeviceId
    , duCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.update@ method which the
-- 'DevicesUpdate' request conforms to.
type DevicesUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "updateMask" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Device :> Put '[JSON] Device

-- | Updates the device policy. To ensure the policy is properly enforced,
-- you need to prevent unmanaged accounts from accessing Google Play by
-- setting the allowed_accounts in the managed configuration for the Google
-- Play package. See restrict accounts in Google Play. When provisioning a
-- new device, you should set the device policy using this method before
-- adding the managed Google Play Account to the device, otherwise the
-- policy will not be applied for a short period of time after adding the
-- account to the device.
--
-- /See:/ 'devicesUpdate' smart constructor.
data DevicesUpdate =
  DevicesUpdate'
    { _duXgafv :: !(Maybe Xgafv)
    , _duUploadProtocol :: !(Maybe Text)
    , _duUpdateMask :: !(Maybe Text)
    , _duEnterpriseId :: !Text
    , _duAccessToken :: !(Maybe Text)
    , _duUploadType :: !(Maybe Text)
    , _duPayload :: !Device
    , _duUserId :: !Text
    , _duDeviceId :: !Text
    , _duCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duXgafv'
--
-- * 'duUploadProtocol'
--
-- * 'duUpdateMask'
--
-- * 'duEnterpriseId'
--
-- * 'duAccessToken'
--
-- * 'duUploadType'
--
-- * 'duPayload'
--
-- * 'duUserId'
--
-- * 'duDeviceId'
--
-- * 'duCallback'
devicesUpdate
    :: Text -- ^ 'duEnterpriseId'
    -> Device -- ^ 'duPayload'
    -> Text -- ^ 'duUserId'
    -> Text -- ^ 'duDeviceId'
    -> DevicesUpdate
devicesUpdate pDuEnterpriseId_ pDuPayload_ pDuUserId_ pDuDeviceId_ =
  DevicesUpdate'
    { _duXgafv = Nothing
    , _duUploadProtocol = Nothing
    , _duUpdateMask = Nothing
    , _duEnterpriseId = pDuEnterpriseId_
    , _duAccessToken = Nothing
    , _duUploadType = Nothing
    , _duPayload = pDuPayload_
    , _duUserId = pDuUserId_
    , _duDeviceId = pDuDeviceId_
    , _duCallback = Nothing
    }


-- | V1 error format.
duXgafv :: Lens' DevicesUpdate (Maybe Xgafv)
duXgafv = lens _duXgafv (\ s a -> s{_duXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
duUploadProtocol :: Lens' DevicesUpdate (Maybe Text)
duUploadProtocol
  = lens _duUploadProtocol
      (\ s a -> s{_duUploadProtocol = a})

-- | Mask that identifies which fields to update. If not set, all modifiable
-- fields will be modified. When set in a query parameter, this field
-- should be specified as updateMask=,,...
duUpdateMask :: Lens' DevicesUpdate (Maybe Text)
duUpdateMask
  = lens _duUpdateMask (\ s a -> s{_duUpdateMask = a})

-- | The ID of the enterprise.
duEnterpriseId :: Lens' DevicesUpdate Text
duEnterpriseId
  = lens _duEnterpriseId
      (\ s a -> s{_duEnterpriseId = a})

-- | OAuth access token.
duAccessToken :: Lens' DevicesUpdate (Maybe Text)
duAccessToken
  = lens _duAccessToken
      (\ s a -> s{_duAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
duUploadType :: Lens' DevicesUpdate (Maybe Text)
duUploadType
  = lens _duUploadType (\ s a -> s{_duUploadType = a})

-- | Multipart request metadata.
duPayload :: Lens' DevicesUpdate Device
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | The ID of the user.
duUserId :: Lens' DevicesUpdate Text
duUserId = lens _duUserId (\ s a -> s{_duUserId = a})

-- | The ID of the device.
duDeviceId :: Lens' DevicesUpdate Text
duDeviceId
  = lens _duDeviceId (\ s a -> s{_duDeviceId = a})

-- | JSONP
duCallback :: Lens' DevicesUpdate (Maybe Text)
duCallback
  = lens _duCallback (\ s a -> s{_duCallback = a})

instance GoogleRequest DevicesUpdate where
        type Rs DevicesUpdate = Device
        type Scopes DevicesUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesUpdate'{..}
          = go _duEnterpriseId _duUserId _duDeviceId _duXgafv
              _duUploadProtocol
              _duUpdateMask
              _duAccessToken
              _duUploadType
              _duCallback
              (Just AltJSON)
              _duPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy DevicesUpdateResource)
                      mempty
