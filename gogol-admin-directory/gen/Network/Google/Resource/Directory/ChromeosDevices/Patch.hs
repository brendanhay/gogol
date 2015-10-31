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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.chromeosdevices.patch@.
module Network.Google.Resource.Directory.ChromeosDevices.Patch
    (
    -- * REST Resource
      ChromeosDevicesPatchResource

    -- * Creating a Request
    , chromeosDevicesPatch
    , ChromeosDevicesPatch

    -- * Request Lenses
    , cdpPayload
    , cdpCustomerId
    , cdpDeviceId
    , cdpProjection
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.patch@ method which the
-- 'ChromeosDevicesPatch' request conforms to.
type ChromeosDevicesPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "projection"
                       ChromeosDevicesPatchProjection
                       :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ChromeOSDevice :>
                           Patch '[JSON] ChromeOSDevice

-- | Update Chrome OS Device. This method supports patch semantics.
--
-- /See:/ 'chromeosDevicesPatch' smart constructor.
data ChromeosDevicesPatch = ChromeosDevicesPatch
    { _cdpPayload    :: !ChromeOSDevice
    , _cdpCustomerId :: !Text
    , _cdpDeviceId   :: !Text
    , _cdpProjection :: !(Maybe ChromeosDevicesPatchProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChromeosDevicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpPayload'
--
-- * 'cdpCustomerId'
--
-- * 'cdpDeviceId'
--
-- * 'cdpProjection'
chromeosDevicesPatch
    :: ChromeOSDevice -- ^ 'cdpPayload'
    -> Text -- ^ 'cdpCustomerId'
    -> Text -- ^ 'cdpDeviceId'
    -> ChromeosDevicesPatch
chromeosDevicesPatch pCdpPayload_ pCdpCustomerId_ pCdpDeviceId_ =
    ChromeosDevicesPatch
    { _cdpPayload = pCdpPayload_
    , _cdpCustomerId = pCdpCustomerId_
    , _cdpDeviceId = pCdpDeviceId_
    , _cdpProjection = Nothing
    }

-- | Multipart request metadata.
cdpPayload :: Lens' ChromeosDevicesPatch ChromeOSDevice
cdpPayload
  = lens _cdpPayload (\ s a -> s{_cdpPayload = a})

-- | Immutable id of the Google Apps account
cdpCustomerId :: Lens' ChromeosDevicesPatch Text
cdpCustomerId
  = lens _cdpCustomerId
      (\ s a -> s{_cdpCustomerId = a})

-- | Immutable id of Chrome OS Device
cdpDeviceId :: Lens' ChromeosDevicesPatch Text
cdpDeviceId
  = lens _cdpDeviceId (\ s a -> s{_cdpDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cdpProjection :: Lens' ChromeosDevicesPatch (Maybe ChromeosDevicesPatchProjection)
cdpProjection
  = lens _cdpProjection
      (\ s a -> s{_cdpProjection = a})

instance GoogleRequest ChromeosDevicesPatch where
        type Rs ChromeosDevicesPatch = ChromeOSDevice
        type Scopes ChromeosDevicesPatch =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient ChromeosDevicesPatch{..}
          = go _cdpCustomerId _cdpDeviceId _cdpProjection
              (Just AltJSON)
              _cdpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesPatchResource)
                      mempty
