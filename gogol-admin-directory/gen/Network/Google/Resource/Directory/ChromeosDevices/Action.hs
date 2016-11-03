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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Action
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Take action on Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.chromeosdevices.action@.
module Network.Google.Resource.Directory.ChromeosDevices.Action
    (
    -- * REST Resource
      ChromeosDevicesActionResource

    -- * Creating a Request
    , chromeosDevicesAction
    , ChromeosDevicesAction

    -- * Request Lenses
    , cdaResourceId
    , cdaPayload
    , cdaCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.action@ method which the
-- 'ChromeosDevicesAction' request conforms to.
type ChromeosDevicesActionResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "resourceId" Text :>
                     "action" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ChromeOSDeviceAction :>
                           Post '[JSON] ()

-- | Take action on Chrome OS Device
--
-- /See:/ 'chromeosDevicesAction' smart constructor.
data ChromeosDevicesAction = ChromeosDevicesAction'
    { _cdaResourceId :: !Text
    , _cdaPayload    :: !ChromeOSDeviceAction
    , _cdaCustomerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdaResourceId'
--
-- * 'cdaPayload'
--
-- * 'cdaCustomerId'
chromeosDevicesAction
    :: Text -- ^ 'cdaResourceId'
    -> ChromeOSDeviceAction -- ^ 'cdaPayload'
    -> Text -- ^ 'cdaCustomerId'
    -> ChromeosDevicesAction
chromeosDevicesAction pCdaResourceId_ pCdaPayload_ pCdaCustomerId_ =
    ChromeosDevicesAction'
    { _cdaResourceId = pCdaResourceId_
    , _cdaPayload = pCdaPayload_
    , _cdaCustomerId = pCdaCustomerId_
    }

-- | Immutable id of Chrome OS Device
cdaResourceId :: Lens' ChromeosDevicesAction Text
cdaResourceId
  = lens _cdaResourceId
      (\ s a -> s{_cdaResourceId = a})

-- | Multipart request metadata.
cdaPayload :: Lens' ChromeosDevicesAction ChromeOSDeviceAction
cdaPayload
  = lens _cdaPayload (\ s a -> s{_cdaPayload = a})

-- | Immutable id of the Google Apps account
cdaCustomerId :: Lens' ChromeosDevicesAction Text
cdaCustomerId
  = lens _cdaCustomerId
      (\ s a -> s{_cdaCustomerId = a})

instance GoogleRequest ChromeosDevicesAction where
        type Rs ChromeosDevicesAction = ()
        type Scopes ChromeosDevicesAction =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient ChromeosDevicesAction'{..}
          = go _cdaCustomerId _cdaResourceId (Just AltJSON)
              _cdaPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesActionResource)
                      mempty
