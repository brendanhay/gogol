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
-- Module      : Network.Google.Resource.Directory.Users.Aliases.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes in user aliases list
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.aliases.watch@.
module Network.Google.Resource.Directory.Users.Aliases.Watch
    (
    -- * REST Resource
      UsersAliasesWatchResource

    -- * Creating a Request
    , usersAliasesWatch
    , UsersAliasesWatch

    -- * Request Lenses
    , uawEvent
    , uawPayload
    , uawUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.aliases.watch@ method which the
-- 'UsersAliasesWatch' request conforms to.
type UsersAliasesWatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "aliases" :>
                 "watch" :>
                   QueryParam "event" UsersAliasesWatchEvent :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes in user aliases list
--
-- /See:/ 'usersAliasesWatch' smart constructor.
data UsersAliasesWatch = UsersAliasesWatch
    { _uawEvent   :: !(Maybe UsersAliasesWatchEvent)
    , _uawPayload :: !Channel
    , _uawUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersAliasesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uawEvent'
--
-- * 'uawPayload'
--
-- * 'uawUserKey'
usersAliasesWatch
    :: Channel -- ^ 'uawPayload'
    -> Text -- ^ 'uawUserKey'
    -> UsersAliasesWatch
usersAliasesWatch pUawPayload_ pUawUserKey_ =
    UsersAliasesWatch
    { _uawEvent = Nothing
    , _uawPayload = pUawPayload_
    , _uawUserKey = pUawUserKey_
    }

-- | Event on which subscription is intended (if subscribing)
uawEvent :: Lens' UsersAliasesWatch (Maybe UsersAliasesWatchEvent)
uawEvent = lens _uawEvent (\ s a -> s{_uawEvent = a})

-- | Multipart request metadata.
uawPayload :: Lens' UsersAliasesWatch Channel
uawPayload
  = lens _uawPayload (\ s a -> s{_uawPayload = a})

-- | Email or immutable Id of the user
uawUserKey :: Lens' UsersAliasesWatch Text
uawUserKey
  = lens _uawUserKey (\ s a -> s{_uawUserKey = a})

instance GoogleRequest UsersAliasesWatch where
        type Rs UsersAliasesWatch = Channel
        requestClient UsersAliasesWatch{..}
          = go _uawUserKey _uawEvent (Just AltJSON) _uawPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAliasesWatchResource)
                      mempty
