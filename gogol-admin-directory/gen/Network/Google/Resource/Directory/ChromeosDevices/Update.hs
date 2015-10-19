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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.chromeosdevices.update@.
module Network.Google.Resource.Directory.ChromeosDevices.Update
    (
    -- * REST Resource
      ChromeosDevicesUpdateResource

    -- * Creating a Request
    , chromeosDevicesUpdate'
    , ChromeosDevicesUpdate'

    -- * Request Lenses
    , cduPayload
    , cduCustomerId
    , cduDeviceId
    , cduProjection
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.update@ method which the
-- 'ChromeosDevicesUpdate'' request conforms to.
type ChromeosDevicesUpdateResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection"
                 ChromeosDevicesUpdateProjection
                 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ChromeOSDevice :>
                     Put '[JSON] ChromeOSDevice

-- | Update Chrome OS Device
--
-- /See:/ 'chromeosDevicesUpdate'' smart constructor.
data ChromeosDevicesUpdate' = ChromeosDevicesUpdate'
    { _cduPayload    :: !ChromeOSDevice
    , _cduCustomerId :: !Text
    , _cduDeviceId   :: !Text
    , _cduProjection :: !(Maybe ChromeosDevicesUpdateProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cduPayload'
--
-- * 'cduCustomerId'
--
-- * 'cduDeviceId'
--
-- * 'cduProjection'
chromeosDevicesUpdate'
    :: ChromeOSDevice -- ^ 'cduPayload'
    -> Text -- ^ 'cduCustomerId'
    -> Text -- ^ 'cduDeviceId'
    -> ChromeosDevicesUpdate'
chromeosDevicesUpdate' pCduPayload_ pCduCustomerId_ pCduDeviceId_ =
    ChromeosDevicesUpdate'
    { _cduPayload = pCduPayload_
    , _cduCustomerId = pCduCustomerId_
    , _cduDeviceId = pCduDeviceId_
    , _cduProjection = Nothing
    }

-- | Multipart request metadata.
cduPayload :: Lens' ChromeosDevicesUpdate' ChromeOSDevice
cduPayload
  = lens _cduPayload (\ s a -> s{_cduPayload = a})

-- | Immutable id of the Google Apps account
cduCustomerId :: Lens' ChromeosDevicesUpdate' Text
cduCustomerId
  = lens _cduCustomerId
      (\ s a -> s{_cduCustomerId = a})

-- | Immutable id of Chrome OS Device
cduDeviceId :: Lens' ChromeosDevicesUpdate' Text
cduDeviceId
  = lens _cduDeviceId (\ s a -> s{_cduDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cduProjection :: Lens' ChromeosDevicesUpdate' (Maybe ChromeosDevicesUpdateProjection)
cduProjection
  = lens _cduProjection
      (\ s a -> s{_cduProjection = a})

instance GoogleRequest ChromeosDevicesUpdate' where
        type Rs ChromeosDevicesUpdate' = ChromeOSDevice
        requestClient ChromeosDevicesUpdate'{..}
          = go _cduCustomerId _cduDeviceId _cduProjection
              (Just AltJSON)
              _cduPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesUpdateResource)
                      mempty
