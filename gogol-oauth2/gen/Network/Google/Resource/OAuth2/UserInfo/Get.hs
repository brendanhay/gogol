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
-- Module      : Network.Google.Resource.OAuth2.UserInfo.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference> for @oauth2.userinfo.get@.
module Network.Google.Resource.OAuth2.UserInfo.Get
    (
    -- * REST Resource
      UserInfoGetResource

    -- * Creating a Request
    , userInfoGet
    , UserInfoGet

    ) where

import Network.Google.OAuth2.Types
import Network.Google.Prelude

-- | A resource alias for @oauth2.userinfo.get@ method which the
-- 'UserInfoGet' request conforms to.
type UserInfoGetResource =
     "oauth2" :>
       "v2" :>
         "userinfo" :>
           QueryParam "alt" AltJSON :> Get '[JSON] UserInfo

--
-- /See:/ 'userInfoGet' smart constructor.
data UserInfoGet =
  UserInfoGet'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserInfoGet' with the minimum fields required to make a request.
--
userInfoGet
    :: UserInfoGet
userInfoGet = UserInfoGet'


instance GoogleRequest UserInfoGet where
        type Rs UserInfoGet = UserInfo
        type Scopes UserInfoGet =
             '["openid",
               "https://www.googleapis.com/auth/userinfo.email",
               "https://www.googleapis.com/auth/userinfo.profile"]
        requestClient UserInfoGet'{}
          = go (Just AltJSON) oAuth2Service
          where go
                  = buildClient (Proxy :: Proxy UserInfoGetResource)
                      mempty
