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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @OAuth2TokenInfo@.
module Network.Google.Method.OAuth2.TokenInfo
    (
    -- * REST Resource
      TokenInfoMethod

    -- * Creating a Request
    , tokenInfo'
    , TokenInfo'

    -- * Request Lenses
    , tAccessToken
    , tTokenHandle
    , tIdToken
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @OAuth2TokenInfo@ method which the
-- 'TokenInfo'' request conforms to.
type TokenInfoMethod =
     "oauth2" :>
       "v2" :>
         "tokeninfo" :>
           QueryParam "access_token" Text :>
             QueryParam "token_handle" Text :>
               QueryParam "id_token" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] TokenInfo

--
-- /See:/ 'tokenInfo'' smart constructor.
data TokenInfo' = TokenInfo'
    { _tAccessToken :: !(Maybe Text)
    , _tTokenHandle :: !(Maybe Text)
    , _tIdToken     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tAccessToken'
--
-- * 'tTokenHandle'
--
-- * 'tIdToken'
tokenInfo'
    :: TokenInfo'
tokenInfo' =
    TokenInfo'
    { _tAccessToken = Nothing
    , _tTokenHandle = Nothing
    , _tIdToken = Nothing
    }

tAccessToken :: Lens' TokenInfo' (Maybe Text)
tAccessToken
  = lens _tAccessToken (\ s a -> s{_tAccessToken = a})

tTokenHandle :: Lens' TokenInfo' (Maybe Text)
tTokenHandle
  = lens _tTokenHandle (\ s a -> s{_tTokenHandle = a})

tIdToken :: Lens' TokenInfo' (Maybe Text)
tIdToken = lens _tIdToken (\ s a -> s{_tIdToken = a})

instance GoogleRequest TokenInfo' where
        type Rs TokenInfo' = TokenInfo
        requestClient TokenInfo'{..}
          = go _tAccessToken _tTokenHandle _tIdToken
              (Just AltJSON)
              oAuth2
          where go
                  = buildClient (Proxy :: Proxy TokenInfoMethod) mempty
