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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.delete@.
module Network.Google.Resource.Directory.MobileDevices.Delete
    (
    -- * REST Resource
      MobileDevicesDeleteResource

    -- * Creating a Request
    , mobileDevicesDelete
    , MobileDevicesDelete

    -- * Request Lenses
    , mddResourceId
    , mddCustomerId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.mobiledevices.delete@ method which the
-- 'MobileDevicesDelete' request conforms to.
type MobileDevicesDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   Capture "resourceId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete Mobile Device
--
-- /See:/ 'mobileDevicesDelete' smart constructor.
data MobileDevicesDelete = MobileDevicesDelete
    { _mddResourceId :: !Text
    , _mddCustomerId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddResourceId'
--
-- * 'mddCustomerId'
mobileDevicesDelete
    :: Text -- ^ 'mddResourceId'
    -> Text -- ^ 'mddCustomerId'
    -> MobileDevicesDelete
mobileDevicesDelete pMddResourceId_ pMddCustomerId_ =
    MobileDevicesDelete
    { _mddResourceId = pMddResourceId_
    , _mddCustomerId = pMddCustomerId_
    }

-- | Immutable id of Mobile Device
mddResourceId :: Lens' MobileDevicesDelete Text
mddResourceId
  = lens _mddResourceId
      (\ s a -> s{_mddResourceId = a})

-- | Immutable id of the Google Apps account
mddCustomerId :: Lens' MobileDevicesDelete Text
mddCustomerId
  = lens _mddCustomerId
      (\ s a -> s{_mddCustomerId = a})

instance GoogleRequest MobileDevicesDelete where
        type Rs MobileDevicesDelete = ()
        type Scopes MobileDevicesDelete =
             '["https://www.googleapis.com/auth/admin.directory.device.mobile"]
        requestClient MobileDevicesDelete{..}
          = go _mddCustomerId _mddResourceId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesDeleteResource)
                      mempty
