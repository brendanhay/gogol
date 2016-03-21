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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a alias for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.aliases.insert@.
module Network.Google.Resource.Directory.Users.Aliases.Insert
    (
    -- * REST Resource
      UsersAliasesInsertResource

    -- * Creating a Request
    , usersAliasesInsert
    , UsersAliasesInsert

    -- * Request Lenses
    , uaiPayload
    , uaiUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.insert@ method which the
-- 'UsersAliasesInsert' request conforms to.
type UsersAliasesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Alias :> Post '[JSON] Alias

-- | Add a alias for the user
--
-- /See:/ 'usersAliasesInsert' smart constructor.
data UsersAliasesInsert = UsersAliasesInsert'
    { _uaiPayload :: !Alias
    , _uaiUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaiPayload'
--
-- * 'uaiUserKey'
usersAliasesInsert
    :: Alias -- ^ 'uaiPayload'
    -> Text -- ^ 'uaiUserKey'
    -> UsersAliasesInsert
usersAliasesInsert pUaiPayload_ pUaiUserKey_ =
    UsersAliasesInsert'
    { _uaiPayload = pUaiPayload_
    , _uaiUserKey = pUaiUserKey_
    }

-- | Multipart request metadata.
uaiPayload :: Lens' UsersAliasesInsert Alias
uaiPayload
  = lens _uaiPayload (\ s a -> s{_uaiPayload = a})

-- | Email or immutable Id of the user
uaiUserKey :: Lens' UsersAliasesInsert Text
uaiUserKey
  = lens _uaiUserKey (\ s a -> s{_uaiUserKey = a})

instance GoogleRequest UsersAliasesInsert where
        type Rs UsersAliasesInsert = Alias
        type Scopes UsersAliasesInsert =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.alias"]
        requestClient UsersAliasesInsert'{..}
          = go _uaiUserKey (Just AltJSON) _uaiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesInsertResource)
                      mempty
