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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GenerateAuthenticationToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an authentication token which the device policy client can use
-- to provision the given EMM-managed user account on a device. The
-- generated token is single-use and expires after a few minutes. You can
-- provision a maximum of 10 devices per user. This call only works with
-- EMM-managed accounts.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.generateAuthenticationToken@.
module Network.Google.Resource.AndroidEnterprise.Users.GenerateAuthenticationToken
    (
    -- * REST Resource
      UsersGenerateAuthenticationTokenResource

    -- * Creating a Request
    , usersGenerateAuthenticationToken
    , UsersGenerateAuthenticationToken

    -- * Request Lenses
    , ugatEnterpriseId
    , ugatUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.generateAuthenticationToken@ method which the
-- 'UsersGenerateAuthenticationToken' request conforms to.
type UsersGenerateAuthenticationTokenResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "authenticationToken" :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] AuthenticationToken

-- | Generates an authentication token which the device policy client can use
-- to provision the given EMM-managed user account on a device. The
-- generated token is single-use and expires after a few minutes. You can
-- provision a maximum of 10 devices per user. This call only works with
-- EMM-managed accounts.
--
-- /See:/ 'usersGenerateAuthenticationToken' smart constructor.
data UsersGenerateAuthenticationToken = UsersGenerateAuthenticationToken'
    { _ugatEnterpriseId :: !Text
    , _ugatUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGenerateAuthenticationToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugatEnterpriseId'
--
-- * 'ugatUserId'
usersGenerateAuthenticationToken
    :: Text -- ^ 'ugatEnterpriseId'
    -> Text -- ^ 'ugatUserId'
    -> UsersGenerateAuthenticationToken
usersGenerateAuthenticationToken pUgatEnterpriseId_ pUgatUserId_ =
    UsersGenerateAuthenticationToken'
    { _ugatEnterpriseId = pUgatEnterpriseId_
    , _ugatUserId = pUgatUserId_
    }

-- | The ID of the enterprise.
ugatEnterpriseId :: Lens' UsersGenerateAuthenticationToken Text
ugatEnterpriseId
  = lens _ugatEnterpriseId
      (\ s a -> s{_ugatEnterpriseId = a})

-- | The ID of the user.
ugatUserId :: Lens' UsersGenerateAuthenticationToken Text
ugatUserId
  = lens _ugatUserId (\ s a -> s{_ugatUserId = a})

instance GoogleRequest
         UsersGenerateAuthenticationToken where
        type Rs UsersGenerateAuthenticationToken =
             AuthenticationToken
        type Scopes UsersGenerateAuthenticationToken =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersGenerateAuthenticationToken'{..}
          = go _ugatEnterpriseId _ugatUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersGenerateAuthenticationTokenResource)
                      mempty
