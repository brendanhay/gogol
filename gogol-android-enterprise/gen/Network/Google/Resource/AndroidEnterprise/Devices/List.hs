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
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseDevicesList@.
module Network.Google.Resource.AndroidEnterprise.Devices.List
    (
    -- * REST Resource
      DevicesListResource

    -- * Creating a Request
    , devicesList'
    , DevicesList'

    -- * Request Lenses
    , dlEnterpriseId
    , dlUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseDevicesList@ method which the
-- 'DevicesList'' request conforms to.
type DevicesListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] DevicesListResponse

-- | Retrieves the IDs of all of a user\'s devices.
--
-- /See:/ 'devicesList'' smart constructor.
data DevicesList' = DevicesList'
    { _dlEnterpriseId :: !Text
    , _dlUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DevicesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlEnterpriseId'
--
-- * 'dlUserId'
devicesList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> DevicesList'
devicesList' pDlEnterpriseId_ pDlUserId_ =
    DevicesList'
    { _dlEnterpriseId = pDlEnterpriseId_
    , _dlUserId = pDlUserId_
    }

-- | The ID of the enterprise.
dlEnterpriseId :: Lens' DevicesList' Text
dlEnterpriseId
  = lens _dlEnterpriseId
      (\ s a -> s{_dlEnterpriseId = a})

-- | The ID of the user.
dlUserId :: Lens' DevicesList' Text
dlUserId = lens _dlUserId (\ s a -> s{_dlUserId = a})

instance GoogleRequest DevicesList' where
        type Rs DevicesList' = DevicesListResponse
        requestClient DevicesList'{..}
          = go _dlEnterpriseId _dlUserId (Just AltJSON)
              androidEnterprise
          where go
                  = buildClient (Proxy :: Proxy DevicesListResource)
                      mempty
