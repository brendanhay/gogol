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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.RevokeDeviceAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes access to all devices currently provisioned to the user. The
-- user will no longer be able to use the managed Play store on any of
-- their managed devices. This call only works with EMM-managed accounts.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.revokeDeviceAccess@.
module Network.Google.Resource.AndroidEnterprise.Users.RevokeDeviceAccess
    (
    -- * REST Resource
      UsersRevokeDeviceAccessResource

    -- * Creating a Request
    , usersRevokeDeviceAccess
    , UsersRevokeDeviceAccess

    -- * Request Lenses
    , urdaEnterpriseId
    , urdaUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.revokeDeviceAccess@ method which the
-- 'UsersRevokeDeviceAccess' request conforms to.
type UsersRevokeDeviceAccessResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "deviceAccess" :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Revokes access to all devices currently provisioned to the user. The
-- user will no longer be able to use the managed Play store on any of
-- their managed devices. This call only works with EMM-managed accounts.
--
-- /See:/ 'usersRevokeDeviceAccess' smart constructor.
data UsersRevokeDeviceAccess =
  UsersRevokeDeviceAccess'
    { _urdaEnterpriseId :: !Text
    , _urdaUserId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersRevokeDeviceAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdaEnterpriseId'
--
-- * 'urdaUserId'
usersRevokeDeviceAccess
    :: Text -- ^ 'urdaEnterpriseId'
    -> Text -- ^ 'urdaUserId'
    -> UsersRevokeDeviceAccess
usersRevokeDeviceAccess pUrdaEnterpriseId_ pUrdaUserId_ =
  UsersRevokeDeviceAccess'
    {_urdaEnterpriseId = pUrdaEnterpriseId_, _urdaUserId = pUrdaUserId_}

-- | The ID of the enterprise.
urdaEnterpriseId :: Lens' UsersRevokeDeviceAccess Text
urdaEnterpriseId
  = lens _urdaEnterpriseId
      (\ s a -> s{_urdaEnterpriseId = a})

-- | The ID of the user.
urdaUserId :: Lens' UsersRevokeDeviceAccess Text
urdaUserId
  = lens _urdaUserId (\ s a -> s{_urdaUserId = a})

instance GoogleRequest UsersRevokeDeviceAccess where
        type Rs UsersRevokeDeviceAccess = ()
        type Scopes UsersRevokeDeviceAccess =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersRevokeDeviceAccess'{..}
          = go _urdaEnterpriseId _urdaUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersRevokeDeviceAccessResource)
                      mempty
