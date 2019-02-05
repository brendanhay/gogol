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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.get@.
module Network.Google.Resource.Gmail.Users.Labels.Get
    (
    -- * REST Resource
      UsersLabelsGetResource

    -- * Creating a Request
    , usersLabelsGet
    , UsersLabelsGet

    -- * Request Lenses
    , ulgUserId
    , ulgId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.get@ method which the
-- 'UsersLabelsGet' request conforms to.
type UsersLabelsGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "labels" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Label

-- | Gets the specified label.
--
-- /See:/ 'usersLabelsGet' smart constructor.
data UsersLabelsGet = UsersLabelsGet'
    { _ulgUserId :: !Text
    , _ulgId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulgUserId'
--
-- * 'ulgId'
usersLabelsGet
    :: Text -- ^ 'ulgId'
    -> UsersLabelsGet
usersLabelsGet pUlgId_ =
    UsersLabelsGet'
    { _ulgUserId = "me"
    , _ulgId = pUlgId_
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulgUserId :: Lens' UsersLabelsGet Text
ulgUserId
  = lens _ulgUserId (\ s a -> s{_ulgUserId = a})

-- | The ID of the label to retrieve.
ulgId :: Lens' UsersLabelsGet Text
ulgId = lens _ulgId (\ s a -> s{_ulgId = a})

instance GoogleRequest UsersLabelsGet where
        type Rs UsersLabelsGet = Label
        type Scopes UsersLabelsGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.labels",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersLabelsGet'{..}
          = go _ulgUserId _ulgId (Just AltJSON) gmailService
          where go
                  = buildClient (Proxy :: Proxy UsersLabelsGetResource)
                      mempty
