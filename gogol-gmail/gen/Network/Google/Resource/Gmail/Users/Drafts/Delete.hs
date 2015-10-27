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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.delete@.
module Network.Google.Resource.Gmail.Users.Drafts.Delete
    (
    -- * REST Resource
      UsersDraftsDeleteResource

    -- * Creating a Request
    , usersDraftsDelete
    , UsersDraftsDelete

    -- * Request Lenses
    , uddUserId
    , uddId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.delete@ method which the
-- 'UsersDraftsDelete' request conforms to.
type UsersDraftsDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
--
-- /See:/ 'usersDraftsDelete' smart constructor.
data UsersDraftsDelete = UsersDraftsDelete
    { _uddUserId :: !Text
    , _uddId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uddUserId'
--
-- * 'uddId'
usersDraftsDelete
    :: Text -- ^ 'uddId'
    -> UsersDraftsDelete
usersDraftsDelete pUddId_ =
    UsersDraftsDelete
    { _uddUserId = "me"
    , _uddId = pUddId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uddUserId :: Lens' UsersDraftsDelete Text
uddUserId
  = lens _uddUserId (\ s a -> s{_uddUserId = a})

-- | The ID of the draft to delete.
uddId :: Lens' UsersDraftsDelete Text
uddId = lens _uddId (\ s a -> s{_uddId = a})

instance GoogleRequest UsersDraftsDelete where
        type Rs UsersDraftsDelete = ()
        requestClient UsersDraftsDelete{..}
          = go _uddUserId _uddId (Just AltJSON) gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsDeleteResource)
                      mempty
