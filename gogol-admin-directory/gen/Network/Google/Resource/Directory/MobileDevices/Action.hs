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
-- Take action on Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.action@.
module Network.Google.Resource.Directory.MobileDevices.Action
    (
    -- * REST Resource
      MobileDevicesActionResource

    -- * Creating a Request
    , mobileDevicesAction
    , MobileDevicesAction

    -- * Request Lenses
    , mdaResourceId
    , mdaPayload
    , mdaCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] MobileDeviceAction :> Post '[JSON] ()

-- | Take action on Mobile Device
--
-- /See:/ 'mobileDevicesAction' smart constructor.
data MobileDevicesAction = MobileDevicesAction
    { _mdaResourceId :: !Text
    , _mdaPayload    :: !MobileDeviceAction
    , _mdaCustomerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdaResourceId'
--
-- * 'mdaPayload'
--
-- * 'mdaCustomerId'
mobileDevicesAction
    :: Text -- ^ 'mdaResourceId'
    -> MobileDeviceAction -- ^ 'mdaPayload'
    -> Text -- ^ 'mdaCustomerId'
    -> MobileDevicesAction
mobileDevicesAction pMdaResourceId_ pMdaPayload_ pMdaCustomerId_ =
    MobileDevicesAction
    { _mdaResourceId = pMdaResourceId_
    , _mdaPayload = pMdaPayload_
    , _mdaCustomerId = pMdaCustomerId_
    }

-- | Immutable id of Mobile Device
mdaResourceId :: Lens' MobileDevicesAction Text
mdaResourceId
  = lens _mdaResourceId
      (\ s a -> s{_mdaResourceId = a})

-- | Multipart request metadata.
mdaPayload :: Lens' MobileDevicesAction MobileDeviceAction
mdaPayload
  = lens _mdaPayload (\ s a -> s{_mdaPayload = a})

-- | Immutable id of the Google Apps account
mdaCustomerId :: Lens' MobileDevicesAction Text
mdaCustomerId
  = lens _mdaCustomerId
      (\ s a -> s{_mdaCustomerId = a})

instance GoogleRequest MobileDevicesAction where
        type Rs MobileDevicesAction = ()
        requestClient MobileDevicesAction{..}
          = go _mdaCustomerId _mdaResourceId (Just AltJSON)
              _mdaPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesActionResource)
                      mempty
