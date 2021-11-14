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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GenerateToken
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a token (activation code) to allow this user to configure
-- their managed account in the Android Setup Wizard. Revokes any
-- previously generated token. This call only works with Google managed
-- accounts.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.generateToken@.
module Network.Google.Resource.AndroidEnterprise.Users.GenerateToken
    (
    -- * REST Resource
      UsersGenerateTokenResource

    -- * Creating a Request
    , usersGenerateToken
    , UsersGenerateToken

    -- * Request Lenses
    , ugtEnterpriseId
    , ugtUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.generateToken@ method which the
-- 'UsersGenerateToken' request conforms to.
type UsersGenerateTokenResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "token" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] UserToken

-- | Generates a token (activation code) to allow this user to configure
-- their managed account in the Android Setup Wizard. Revokes any
-- previously generated token. This call only works with Google managed
-- accounts.
--
-- /See:/ 'usersGenerateToken' smart constructor.
data UsersGenerateToken =
  UsersGenerateToken'
    { _ugtEnterpriseId :: !Text
    , _ugtUserId       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGenerateToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugtEnterpriseId'
--
-- * 'ugtUserId'
usersGenerateToken
    :: Text -- ^ 'ugtEnterpriseId'
    -> Text -- ^ 'ugtUserId'
    -> UsersGenerateToken
usersGenerateToken pUgtEnterpriseId_ pUgtUserId_ =
  UsersGenerateToken'
    {_ugtEnterpriseId = pUgtEnterpriseId_, _ugtUserId = pUgtUserId_}


-- | The ID of the enterprise.
ugtEnterpriseId :: Lens' UsersGenerateToken Text
ugtEnterpriseId
  = lens _ugtEnterpriseId
      (\ s a -> s{_ugtEnterpriseId = a})

-- | The ID of the user.
ugtUserId :: Lens' UsersGenerateToken Text
ugtUserId
  = lens _ugtUserId (\ s a -> s{_ugtUserId = a})

instance GoogleRequest UsersGenerateToken where
        type Rs UsersGenerateToken = UserToken
        type Scopes UsersGenerateToken =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersGenerateToken'{..}
          = go _ugtEnterpriseId _ugtUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersGenerateTokenResource)
                      mempty
