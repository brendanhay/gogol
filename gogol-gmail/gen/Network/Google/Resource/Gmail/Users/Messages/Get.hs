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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.get@.
module Network.Google.Resource.Gmail.Users.Messages.Get
    (
    -- * REST Resource
      UsersMessagesGetResource

    -- * Creating a Request
    , usersMessagesGet
    , UsersMessagesGet

    -- * Request Lenses
    , umgFormat
    , umgUserId
    , umgId
    , umgMetadataHeaders
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.get@ method which the
-- 'UsersMessagesGet' request conforms to.
type UsersMessagesGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "id" Text :>
                 QueryParam "format" UsersMessagesGetFormat :>
                   QueryParams "metadataHeaders" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Message

-- | Gets the specified message.
--
-- /See:/ 'usersMessagesGet' smart constructor.
data UsersMessagesGet = UsersMessagesGet
    { _umgFormat          :: !UsersMessagesGetFormat
    , _umgUserId          :: !Text
    , _umgId              :: !Text
    , _umgMetadataHeaders :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umgFormat'
--
-- * 'umgUserId'
--
-- * 'umgId'
--
-- * 'umgMetadataHeaders'
usersMessagesGet
    :: Text -- ^ 'umgId'
    -> UsersMessagesGet
usersMessagesGet pUmgId_ =
    UsersMessagesGet
    { _umgFormat = Full
    , _umgUserId = "me"
    , _umgId = pUmgId_
    , _umgMetadataHeaders = Nothing
    }

-- | The format to return the message in.
umgFormat :: Lens' UsersMessagesGet UsersMessagesGetFormat
umgFormat
  = lens _umgFormat (\ s a -> s{_umgFormat = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umgUserId :: Lens' UsersMessagesGet Text
umgUserId
  = lens _umgUserId (\ s a -> s{_umgUserId = a})

-- | The ID of the message to retrieve.
umgId :: Lens' UsersMessagesGet Text
umgId = lens _umgId (\ s a -> s{_umgId = a})

-- | When given and format is METADATA, only include headers specified.
umgMetadataHeaders :: Lens' UsersMessagesGet [Text]
umgMetadataHeaders
  = lens _umgMetadataHeaders
      (\ s a -> s{_umgMetadataHeaders = a})
      . _Default
      . _Coerce

instance GoogleRequest UsersMessagesGet where
        type Rs UsersMessagesGet = Message
        type Scopes UsersMessagesGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersMessagesGet{..}
          = go _umgUserId _umgId (Just _umgFormat)
              (_umgMetadataHeaders ^. _Default)
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesGetResource)
                      mempty
