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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.RevokeToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes a previously generated token (activation code) for the user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.users.revokeToken@.
module Network.Google.Resource.AndroidEnterprise.Users.RevokeToken
    (
    -- * REST Resource
      UsersRevokeTokenResource

    -- * Creating a Request
    , usersRevokeToken'
    , UsersRevokeToken'

    -- * Request Lenses
    , urtEnterpriseId
    , urtUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.revokeToken@ method which the
-- 'UsersRevokeToken'' request conforms to.
type UsersRevokeTokenResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "token" :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Revokes a previously generated token (activation code) for the user.
--
-- /See:/ 'usersRevokeToken'' smart constructor.
data UsersRevokeToken' = UsersRevokeToken'
    { _urtEnterpriseId :: !Text
    , _urtUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersRevokeToken'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urtEnterpriseId'
--
-- * 'urtUserId'
usersRevokeToken'
    :: Text -- ^ 'urtEnterpriseId'
    -> Text -- ^ 'urtUserId'
    -> UsersRevokeToken'
usersRevokeToken' pUrtEnterpriseId_ pUrtUserId_ =
    UsersRevokeToken'
    { _urtEnterpriseId = pUrtEnterpriseId_
    , _urtUserId = pUrtUserId_
    }

-- | The ID of the enterprise.
urtEnterpriseId :: Lens' UsersRevokeToken' Text
urtEnterpriseId
  = lens _urtEnterpriseId
      (\ s a -> s{_urtEnterpriseId = a})

-- | The ID of the user.
urtUserId :: Lens' UsersRevokeToken' Text
urtUserId
  = lens _urtUserId (\ s a -> s{_urtUserId = a})

instance GoogleRequest UsersRevokeToken' where
        type Rs UsersRevokeToken' = ()
        requestClient UsersRevokeToken'{..}
          = go _urtEnterpriseId _urtUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersRevokeTokenResource)
                      mempty
