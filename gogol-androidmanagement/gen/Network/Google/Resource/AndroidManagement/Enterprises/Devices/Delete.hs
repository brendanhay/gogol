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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a device. This operation wipes the device.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.delete@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Delete
    (
    -- * REST Resource
      EnterprisesDevicesDeleteResource

    -- * Creating a Request
    , enterprisesDevicesDelete
    , EnterprisesDevicesDelete

    -- * Request Lenses
    , eddXgafv
    , eddWipeReasonMessage
    , eddWipeDataFlags
    , eddUploadProtocol
    , eddAccessToken
    , eddUploadType
    , eddName
    , eddCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.delete@ method which the
-- 'EnterprisesDevicesDelete' request conforms to.
type EnterprisesDevicesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "wipeReasonMessage" Text :>
             QueryParams "wipeDataFlags"
               EnterprisesDevicesDeleteWipeDataFlags
               :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a device. This operation wipes the device.
--
-- /See:/ 'enterprisesDevicesDelete' smart constructor.
data EnterprisesDevicesDelete =
  EnterprisesDevicesDelete'
    { _eddXgafv :: !(Maybe Xgafv)
    , _eddWipeReasonMessage :: !(Maybe Text)
    , _eddWipeDataFlags :: !(Maybe [EnterprisesDevicesDeleteWipeDataFlags])
    , _eddUploadProtocol :: !(Maybe Text)
    , _eddAccessToken :: !(Maybe Text)
    , _eddUploadType :: !(Maybe Text)
    , _eddName :: !Text
    , _eddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesDevicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eddXgafv'
--
-- * 'eddWipeReasonMessage'
--
-- * 'eddWipeDataFlags'
--
-- * 'eddUploadProtocol'
--
-- * 'eddAccessToken'
--
-- * 'eddUploadType'
--
-- * 'eddName'
--
-- * 'eddCallback'
enterprisesDevicesDelete
    :: Text -- ^ 'eddName'
    -> EnterprisesDevicesDelete
enterprisesDevicesDelete pEddName_ =
  EnterprisesDevicesDelete'
    { _eddXgafv = Nothing
    , _eddWipeReasonMessage = Nothing
    , _eddWipeDataFlags = Nothing
    , _eddUploadProtocol = Nothing
    , _eddAccessToken = Nothing
    , _eddUploadType = Nothing
    , _eddName = pEddName_
    , _eddCallback = Nothing
    }


-- | V1 error format.
eddXgafv :: Lens' EnterprisesDevicesDelete (Maybe Xgafv)
eddXgafv = lens _eddXgafv (\ s a -> s{_eddXgafv = a})

-- | Optional. A short message displayed to the user before wiping the work
-- profile on personal devices. This has no effect on company owned
-- devices. The maximum message length is 200 characters.
eddWipeReasonMessage :: Lens' EnterprisesDevicesDelete (Maybe Text)
eddWipeReasonMessage
  = lens _eddWipeReasonMessage
      (\ s a -> s{_eddWipeReasonMessage = a})

-- | Optional flags that control the device wiping behavior.
eddWipeDataFlags :: Lens' EnterprisesDevicesDelete [EnterprisesDevicesDeleteWipeDataFlags]
eddWipeDataFlags
  = lens _eddWipeDataFlags
      (\ s a -> s{_eddWipeDataFlags = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eddUploadProtocol :: Lens' EnterprisesDevicesDelete (Maybe Text)
eddUploadProtocol
  = lens _eddUploadProtocol
      (\ s a -> s{_eddUploadProtocol = a})

-- | OAuth access token.
eddAccessToken :: Lens' EnterprisesDevicesDelete (Maybe Text)
eddAccessToken
  = lens _eddAccessToken
      (\ s a -> s{_eddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eddUploadType :: Lens' EnterprisesDevicesDelete (Maybe Text)
eddUploadType
  = lens _eddUploadType
      (\ s a -> s{_eddUploadType = a})

-- | The name of the device in the form
-- enterprises\/{enterpriseId}\/devices\/{deviceId}.
eddName :: Lens' EnterprisesDevicesDelete Text
eddName = lens _eddName (\ s a -> s{_eddName = a})

-- | JSONP
eddCallback :: Lens' EnterprisesDevicesDelete (Maybe Text)
eddCallback
  = lens _eddCallback (\ s a -> s{_eddCallback = a})

instance GoogleRequest EnterprisesDevicesDelete where
        type Rs EnterprisesDevicesDelete = Empty
        type Scopes EnterprisesDevicesDelete =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesDelete'{..}
          = go _eddName _eddXgafv _eddWipeReasonMessage
              (_eddWipeDataFlags ^. _Default)
              _eddUploadProtocol
              _eddAccessToken
              _eddUploadType
              _eddCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesDevicesDeleteResource)
                      mempty
