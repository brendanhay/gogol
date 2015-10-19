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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all aliases for a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.aliases.list@.
module Network.Google.Resource.Directory.Users.Aliases.List
    (
    -- * REST Resource
      UsersAliasesListResource

    -- * Creating a Request
    , usersAliasesList'
    , UsersAliasesList'

    -- * Request Lenses
    , ualEvent
    , ualUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.list@ method which the
-- 'UsersAliasesList'' request conforms to.
type UsersAliasesListResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           QueryParam "event" UsersAliasesListEvent :>
             QueryParam "alt" AltJSON :> Get '[JSON] Aliases

-- | List all aliases for a user
--
-- /See:/ 'usersAliasesList'' smart constructor.
data UsersAliasesList' = UsersAliasesList'
    { _ualEvent   :: !(Maybe UsersAliasesListEvent)
    , _ualUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ualEvent'
--
-- * 'ualUserKey'
usersAliasesList'
    :: Text -- ^ 'ualUserKey'
    -> UsersAliasesList'
usersAliasesList' pUalUserKey_ =
    UsersAliasesList'
    { _ualEvent = Nothing
    , _ualUserKey = pUalUserKey_
    }

-- | Event on which subscription is intended (if subscribing)
ualEvent :: Lens' UsersAliasesList' (Maybe UsersAliasesListEvent)
ualEvent = lens _ualEvent (\ s a -> s{_ualEvent = a})

-- | Email or immutable Id of the user
ualUserKey :: Lens' UsersAliasesList' Text
ualUserKey
  = lens _ualUserKey (\ s a -> s{_ualUserKey = a})

instance GoogleRequest UsersAliasesList' where
        type Rs UsersAliasesList' = Aliases
        requestClient UsersAliasesList'{..}
          = go _ualUserKey _ualEvent (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesListResource)
                      mempty
