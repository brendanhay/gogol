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
-- Module      : Network.Google.Resource.Directory.Tokens.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete all access tokens issued by a user for an application.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.tokens.delete@.
module Network.Google.Resource.Directory.Tokens.Delete
    (
    -- * REST Resource
      TokensDeleteResource

    -- * Creating a Request
    , tokensDelete
    , TokensDelete

    -- * Request Lenses
    , tdClientId
    , tdUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.tokens.delete@ method which the
-- 'TokensDelete' request conforms to.
type TokensDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "tokens" :>
                 Capture "clientId" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete all access tokens issued by a user for an application.
--
-- /See:/ 'tokensDelete' smart constructor.
data TokensDelete = TokensDelete
    { _tdClientId :: !Text
    , _tdUserKey  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokensDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdClientId'
--
-- * 'tdUserKey'
tokensDelete
    :: Text -- ^ 'tdClientId'
    -> Text -- ^ 'tdUserKey'
    -> TokensDelete
tokensDelete pTdClientId_ pTdUserKey_ =
    TokensDelete
    { _tdClientId = pTdClientId_
    , _tdUserKey = pTdUserKey_
    }

-- | The Client ID of the application the token is issued to.
tdClientId :: Lens' TokensDelete Text
tdClientId
  = lens _tdClientId (\ s a -> s{_tdClientId = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tdUserKey :: Lens' TokensDelete Text
tdUserKey
  = lens _tdUserKey (\ s a -> s{_tdUserKey = a})

instance GoogleRequest TokensDelete where
        type Rs TokensDelete = ()
        requestClient TokensDelete{..}
          = go _tdUserKey _tdClientId (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy TokensDeleteResource)
                      mempty
