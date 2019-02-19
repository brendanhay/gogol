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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.create@.
module Network.Google.Resource.Gmail.Users.Labels.Create
    (
    -- * REST Resource
      UsersLabelsCreateResource

    -- * Creating a Request
    , usersLabelsCreate
    , UsersLabelsCreate

    -- * Request Lenses
    , ulcPayload
    , ulcUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.create@ method which the
-- 'UsersLabelsCreate' request conforms to.
type UsersLabelsCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "labels" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Label :> Post '[JSON] Label

-- | Creates a new label.
--
-- /See:/ 'usersLabelsCreate' smart constructor.
data UsersLabelsCreate =
  UsersLabelsCreate'
    { _ulcPayload :: !Label
    , _ulcUserId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersLabelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulcPayload'
--
-- * 'ulcUserId'
usersLabelsCreate
    :: Label -- ^ 'ulcPayload'
    -> UsersLabelsCreate
usersLabelsCreate pUlcPayload_ =
  UsersLabelsCreate' {_ulcPayload = pUlcPayload_, _ulcUserId = "me"}

-- | Multipart request metadata.
ulcPayload :: Lens' UsersLabelsCreate Label
ulcPayload
  = lens _ulcPayload (\ s a -> s{_ulcPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulcUserId :: Lens' UsersLabelsCreate Text
ulcUserId
  = lens _ulcUserId (\ s a -> s{_ulcUserId = a})

instance GoogleRequest UsersLabelsCreate where
        type Rs UsersLabelsCreate = Label
        type Scopes UsersLabelsCreate =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.labels",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersLabelsCreate'{..}
          = go _ulcUserId (Just AltJSON) _ulcPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsCreateResource)
                      mempty
