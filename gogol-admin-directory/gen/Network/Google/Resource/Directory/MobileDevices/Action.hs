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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Action
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Takes an action that affects a mobile device. For example, remotely
-- wiping a device.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.action@.
module Network.Google.Resource.Directory.MobileDevices.Action
    (
    -- * REST Resource
      MobileDevicesActionResource

    -- * Creating a Request
    , mobileDevicesAction
    , MobileDevicesAction

    -- * Request Lenses
    , mdaXgafv
    , mdaResourceId
    , mdaUploadProtocol
    , mdaAccessToken
    , mdaUploadType
    , mdaPayload
    , mdaCustomerId
    , mdaCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.mobiledevices.action@ method which the
-- 'MobileDevicesAction' request conforms to.
type MobileDevicesActionResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   Capture "resourceId" Text :>
                     "action" :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] MobileDeviceAction :>
                                     Post '[JSON] ()

-- | Takes an action that affects a mobile device. For example, remotely
-- wiping a device.
--
-- /See:/ 'mobileDevicesAction' smart constructor.
data MobileDevicesAction =
  MobileDevicesAction'
    { _mdaXgafv :: !(Maybe Xgafv)
    , _mdaResourceId :: !Text
    , _mdaUploadProtocol :: !(Maybe Text)
    , _mdaAccessToken :: !(Maybe Text)
    , _mdaUploadType :: !(Maybe Text)
    , _mdaPayload :: !MobileDeviceAction
    , _mdaCustomerId :: !Text
    , _mdaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileDevicesAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdaXgafv'
--
-- * 'mdaResourceId'
--
-- * 'mdaUploadProtocol'
--
-- * 'mdaAccessToken'
--
-- * 'mdaUploadType'
--
-- * 'mdaPayload'
--
-- * 'mdaCustomerId'
--
-- * 'mdaCallback'
mobileDevicesAction
    :: Text -- ^ 'mdaResourceId'
    -> MobileDeviceAction -- ^ 'mdaPayload'
    -> Text -- ^ 'mdaCustomerId'
    -> MobileDevicesAction
mobileDevicesAction pMdaResourceId_ pMdaPayload_ pMdaCustomerId_ =
  MobileDevicesAction'
    { _mdaXgafv = Nothing
    , _mdaResourceId = pMdaResourceId_
    , _mdaUploadProtocol = Nothing
    , _mdaAccessToken = Nothing
    , _mdaUploadType = Nothing
    , _mdaPayload = pMdaPayload_
    , _mdaCustomerId = pMdaCustomerId_
    , _mdaCallback = Nothing
    }


-- | V1 error format.
mdaXgafv :: Lens' MobileDevicesAction (Maybe Xgafv)
mdaXgafv = lens _mdaXgafv (\ s a -> s{_mdaXgafv = a})

-- | The unique ID the API service uses to identify the mobile device.
mdaResourceId :: Lens' MobileDevicesAction Text
mdaResourceId
  = lens _mdaResourceId
      (\ s a -> s{_mdaResourceId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdaUploadProtocol :: Lens' MobileDevicesAction (Maybe Text)
mdaUploadProtocol
  = lens _mdaUploadProtocol
      (\ s a -> s{_mdaUploadProtocol = a})

-- | OAuth access token.
mdaAccessToken :: Lens' MobileDevicesAction (Maybe Text)
mdaAccessToken
  = lens _mdaAccessToken
      (\ s a -> s{_mdaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdaUploadType :: Lens' MobileDevicesAction (Maybe Text)
mdaUploadType
  = lens _mdaUploadType
      (\ s a -> s{_mdaUploadType = a})

-- | Multipart request metadata.
mdaPayload :: Lens' MobileDevicesAction MobileDeviceAction
mdaPayload
  = lens _mdaPayload (\ s a -> s{_mdaPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
mdaCustomerId :: Lens' MobileDevicesAction Text
mdaCustomerId
  = lens _mdaCustomerId
      (\ s a -> s{_mdaCustomerId = a})

-- | JSONP
mdaCallback :: Lens' MobileDevicesAction (Maybe Text)
mdaCallback
  = lens _mdaCallback (\ s a -> s{_mdaCallback = a})

instance GoogleRequest MobileDevicesAction where
        type Rs MobileDevicesAction = ()
        type Scopes MobileDevicesAction =
             '["https://www.googleapis.com/auth/admin.directory.device.mobile",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.action"]
        requestClient MobileDevicesAction'{..}
          = go _mdaCustomerId _mdaResourceId _mdaXgafv
              _mdaUploadProtocol
              _mdaAccessToken
              _mdaUploadType
              _mdaCallback
              (Just AltJSON)
              _mdaPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesActionResource)
                      mempty
