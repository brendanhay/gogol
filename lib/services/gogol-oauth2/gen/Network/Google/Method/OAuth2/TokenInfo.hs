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
-- Module      : Network.Google.Method.OAuth2.TokenInfo
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference> for @oauth2.tokeninfo@.
module Network.Google.Method.OAuth2.TokenInfo
    (
    -- * REST Resource
      TokenInfoMethod

    -- * Creating a Request
    , tokenInfo'
    , TokenInfo'

    -- * Request Lenses
    , tiAccessToken
    , tiIdToken
    ) where

import Network.Google.OAuth2.Types
import Network.Google.Prelude

-- | A resource alias for @oauth2.tokeninfo@ method which the
-- 'TokenInfo'' request conforms to.
type TokenInfoMethod =
     "oauth2" :>
       "v2" :>
         "tokeninfo" :>
           QueryParam "access_token" Text :>
             QueryParam "id_token" Text :>
               QueryParam "alt" AltJSON :> Post '[JSON] TokenInfo

--
-- /See:/ 'tokenInfo'' smart constructor.
data TokenInfo' =
  TokenInfo''
    { _tiAccessToken :: !(Maybe Text)
    , _tiIdToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TokenInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiAccessToken'
--
-- * 'tiIdToken'
tokenInfo'
    :: TokenInfo'
tokenInfo' = TokenInfo'' {_tiAccessToken = Nothing, _tiIdToken = Nothing}


tiAccessToken :: Lens' TokenInfo' (Maybe Text)
tiAccessToken
  = lens _tiAccessToken
      (\ s a -> s{_tiAccessToken = a})

tiIdToken :: Lens' TokenInfo' (Maybe Text)
tiIdToken
  = lens _tiIdToken (\ s a -> s{_tiIdToken = a})

instance GoogleRequest TokenInfo' where
        type Rs TokenInfo' = TokenInfo
        type Scopes TokenInfo' = '[]
        requestClient TokenInfo''{..}
          = go _tiAccessToken _tiIdToken (Just AltJSON)
              oAuth2Service
          where go
                  = buildClient (Proxy :: Proxy TokenInfoMethod) mempty
