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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.update@.
module Network.Google.Resource.Gmail.Users.Labels.Update
    (
    -- * REST Resource
      UsersLabelsUpdateResource

    -- * Creating a Request
    , usersLabelsUpdate
    , UsersLabelsUpdate

    -- * Request Lenses
    , uluPayload
    , uluUserId
    , uluId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.update@ method which the
-- 'UsersLabelsUpdate' request conforms to.
type UsersLabelsUpdateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "labels" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Label :> Put '[JSON] Label

-- | Updates the specified label.
--
-- /See:/ 'usersLabelsUpdate' smart constructor.
data UsersLabelsUpdate = UsersLabelsUpdate
    { _uluPayload :: !Label
    , _uluUserId  :: !Text
    , _uluId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uluPayload'
--
-- * 'uluUserId'
--
-- * 'uluId'
usersLabelsUpdate
    :: Label -- ^ 'uluPayload'
    -> Text -- ^ 'uluId'
    -> Text
    -> UsersLabelsUpdate
usersLabelsUpdate pUluPayload_ pUluUserId_ pUluId_ =
    UsersLabelsUpdate
    { _uluPayload = pUluPayload_
    , _uluUserId = "me"
    , _uluId = pUluId_
    }

-- | Multipart request metadata.
uluPayload :: Lens' UsersLabelsUpdate Label
uluPayload
  = lens _uluPayload (\ s a -> s{_uluPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uluUserId :: Lens' UsersLabelsUpdate Text
uluUserId
  = lens _uluUserId (\ s a -> s{_uluUserId = a})

-- | The ID of the label to update.
uluId :: Lens' UsersLabelsUpdate Text
uluId = lens _uluId (\ s a -> s{_uluId = a})

instance GoogleRequest UsersLabelsUpdate where
        type Rs UsersLabelsUpdate = Label
        requestClient UsersLabelsUpdate{..}
          = go _uluUserId _uluId (Just AltJSON) _uluPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsUpdateResource)
                      mempty
