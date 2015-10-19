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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all apps installed on the specified device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsList@.
module Network.Google.Resource.AndroidEnterprise.Installs.List
    (
    -- * REST Resource
      InstallsListResource

    -- * Creating a Request
    , installsList'
    , InstallsList'

    -- * Request Lenses
    , ilEnterpriseId
    , ilUserId
    , ilDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsList@ method which the
-- 'InstallsList'' request conforms to.
type InstallsListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] InstallsListResponse

-- | Retrieves the details of all apps installed on the specified device.
--
-- /See:/ 'installsList'' smart constructor.
data InstallsList' = InstallsList'
    { _ilEnterpriseId :: !Text
    , _ilUserId       :: !Text
    , _ilDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilEnterpriseId'
--
-- * 'ilUserId'
--
-- * 'ilDeviceId'
installsList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'deviceId'
    -> InstallsList'
installsList' pIlEnterpriseId_ pIlUserId_ pIlDeviceId_ =
    InstallsList'
    { _ilEnterpriseId = pIlEnterpriseId_
    , _ilUserId = pIlUserId_
    , _ilDeviceId = pIlDeviceId_
    }

-- | The ID of the enterprise.
ilEnterpriseId :: Lens' InstallsList' Text
ilEnterpriseId
  = lens _ilEnterpriseId
      (\ s a -> s{_ilEnterpriseId = a})

-- | The ID of the user.
ilUserId :: Lens' InstallsList' Text
ilUserId = lens _ilUserId (\ s a -> s{_ilUserId = a})

-- | The Android ID of the device.
ilDeviceId :: Lens' InstallsList' Text
ilDeviceId
  = lens _ilDeviceId (\ s a -> s{_ilDeviceId = a})

instance GoogleRequest InstallsList' where
        type Rs InstallsList' = InstallsListResponse
        requestClient InstallsList'{..}
          = go _ilEnterpriseId _ilUserId _ilDeviceId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsListResource)
                      mempty
