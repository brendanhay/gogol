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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Chrome OS Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryChromeosDevicesGet@.
module Network.Google.Resource.Directory.ChromeosDevices.Get
    (
    -- * REST Resource
      ChromeosDevicesGetResource

    -- * Creating a Request
    , chromeosDevicesGet'
    , ChromeosDevicesGet'

    -- * Request Lenses
    , cdgCustomerId
    , cdgDeviceId
    , cdgProjection
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryChromeosDevicesGet@ method which the
-- 'ChromeosDevicesGet'' request conforms to.
type ChromeosDevicesGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "chromeos" :>
             Capture "deviceId" Text :>
               QueryParam "projection" ChromeosDevicesGetProjection
                 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ChromeOSDevice

-- | Retrieve Chrome OS Device
--
-- /See:/ 'chromeosDevicesGet'' smart constructor.
data ChromeosDevicesGet' = ChromeosDevicesGet'
    { _cdgCustomerId :: !Text
    , _cdgDeviceId   :: !Text
    , _cdgProjection :: !(Maybe ChromeosDevicesGetProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdgCustomerId'
--
-- * 'cdgDeviceId'
--
-- * 'cdgProjection'
chromeosDevicesGet'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'deviceId'
    -> ChromeosDevicesGet'
chromeosDevicesGet' pCdgCustomerId_ pCdgDeviceId_ =
    ChromeosDevicesGet'
    { _cdgCustomerId = pCdgCustomerId_
    , _cdgDeviceId = pCdgDeviceId_
    , _cdgProjection = Nothing
    }

-- | Immutable id of the Google Apps account
cdgCustomerId :: Lens' ChromeosDevicesGet' Text
cdgCustomerId
  = lens _cdgCustomerId
      (\ s a -> s{_cdgCustomerId = a})

-- | Immutable id of Chrome OS Device
cdgDeviceId :: Lens' ChromeosDevicesGet' Text
cdgDeviceId
  = lens _cdgDeviceId (\ s a -> s{_cdgDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cdgProjection :: Lens' ChromeosDevicesGet' (Maybe ChromeosDevicesGetProjection)
cdgProjection
  = lens _cdgProjection
      (\ s a -> s{_cdgProjection = a})

instance GoogleRequest ChromeosDevicesGet' where
        type Rs ChromeosDevicesGet' = ChromeOSDevice
        requestClient ChromeosDevicesGet'{..}
          = go _cdgCustomerId _cdgDeviceId _cdgProjection
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesGetResource)
                      mempty
