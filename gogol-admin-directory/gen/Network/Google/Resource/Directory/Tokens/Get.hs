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
-- Module      : Network.Google.Resource.Directory.Tokens.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about an access token issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.tokens.get@.
module Network.Google.Resource.Directory.Tokens.Get
    (
    -- * REST Resource
      TokensGetResource

    -- * Creating a Request
    , tokensGet
    , TokensGet

    -- * Request Lenses
    , tgClientId
    , tgUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.tokens.get@ method which the
-- 'TokensGet' request conforms to.
type TokensGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 Capture "clientId" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Token

-- | Get information about an access token issued by a user.
--
-- /See:/ 'tokensGet' smart constructor.
data TokensGet = TokensGet
    { _tgClientId :: !Text
    , _tgUserKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokensGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgClientId'
--
-- * 'tgUserKey'
tokensGet
    :: Text -- ^ 'tgClientId'
    -> Text -- ^ 'tgUserKey'
    -> TokensGet
tokensGet pTgClientId_ pTgUserKey_ =
    TokensGet
    { _tgClientId = pTgClientId_
    , _tgUserKey = pTgUserKey_
    }

-- | The Client ID of the application the token is issued to.
tgClientId :: Lens' TokensGet Text
tgClientId
  = lens _tgClientId (\ s a -> s{_tgClientId = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tgUserKey :: Lens' TokensGet Text
tgUserKey
  = lens _tgUserKey (\ s a -> s{_tgUserKey = a})

instance GoogleRequest TokensGet where
        type Rs TokensGet = Token
        type Scopes TokensGet =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient TokensGet{..}
          = go _tgUserKey _tgClientId (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy TokensGetResource)
                      mempty
