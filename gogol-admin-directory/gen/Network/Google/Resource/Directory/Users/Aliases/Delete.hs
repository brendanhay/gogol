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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove a alias for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersAliasesDelete@.
module Network.Google.Resource.Directory.Users.Aliases.Delete
    (
    -- * REST Resource
      UsersAliasesDeleteResource

    -- * Creating a Request
    , usersAliasesDelete'
    , UsersAliasesDelete'

    -- * Request Lenses
    , uadAlias
    , uadUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersAliasesDelete@ method which the
-- 'UsersAliasesDelete'' request conforms to.
type UsersAliasesDeleteResource =
     "users" :>
       Capture "userKey" Text :>
         "aliases" :>
           Capture "alias" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove a alias for the user
--
-- /See:/ 'usersAliasesDelete'' smart constructor.
data UsersAliasesDelete' = UsersAliasesDelete'
    { _uadAlias   :: !Text
    , _uadUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uadAlias'
--
-- * 'uadUserKey'
usersAliasesDelete'
    :: Text -- ^ 'alias'
    -> Text -- ^ 'userKey'
    -> UsersAliasesDelete'
usersAliasesDelete' pUadAlias_ pUadUserKey_ =
    UsersAliasesDelete'
    { _uadAlias = pUadAlias_
    , _uadUserKey = pUadUserKey_
    }

-- | The alias to be removed
uadAlias :: Lens' UsersAliasesDelete' Text
uadAlias = lens _uadAlias (\ s a -> s{_uadAlias = a})

-- | Email or immutable Id of the user
uadUserKey :: Lens' UsersAliasesDelete' Text
uadUserKey
  = lens _uadUserKey (\ s a -> s{_uadUserKey = a})

instance GoogleRequest UsersAliasesDelete' where
        type Rs UsersAliasesDelete' = ()
        requestClient UsersAliasesDelete'{..}
          = go _uadUserKey _uadAlias (Just AltJSON) directory
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesDeleteResource)
                      mempty
