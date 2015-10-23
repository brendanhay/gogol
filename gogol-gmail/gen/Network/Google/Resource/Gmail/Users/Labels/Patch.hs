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
-- Module      : Network.Google.Resource.Gmail.Users.Labels.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified label. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.labels.patch@.
module Network.Google.Resource.Gmail.Users.Labels.Patch
    (
    -- * REST Resource
      UsersLabelsPatchResource

    -- * Creating a Request
    , usersLabelsPatch
    , UsersLabelsPatch

    -- * Request Lenses
    , ulpPayload
    , ulpUserId
    , ulpId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.labels.patch@ method which the
-- 'UsersLabelsPatch' request conforms to.
type UsersLabelsPatchResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "labels" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Label :> Patch '[JSON] Label

-- | Updates the specified label. This method supports patch semantics.
--
-- /See:/ 'usersLabelsPatch' smart constructor.
data UsersLabelsPatch = UsersLabelsPatch
    { _ulpPayload :: !Label
    , _ulpUserId  :: !Text
    , _ulpId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersLabelsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulpPayload'
--
-- * 'ulpUserId'
--
-- * 'ulpId'
usersLabelsPatch
    :: Label -- ^ 'ulpPayload'
    -> Text -- ^ 'ulpId'
    -> Text
    -> UsersLabelsPatch
usersLabelsPatch pUlpPayload_ pUlpUserId_ pUlpId_ =
    UsersLabelsPatch
    { _ulpPayload = pUlpPayload_
    , _ulpUserId = pUlpUserId_
    , _ulpId = pUlpId_
    }

-- | Multipart request metadata.
ulpPayload :: Lens' UsersLabelsPatch Label
ulpPayload
  = lens _ulpPayload (\ s a -> s{_ulpPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ulpUserId :: Lens' UsersLabelsPatch Text
ulpUserId
  = lens _ulpUserId (\ s a -> s{_ulpUserId = a})

-- | The ID of the label to update.
ulpId :: Lens' UsersLabelsPatch Text
ulpId = lens _ulpId (\ s a -> s{_ulpId = a})

instance GoogleRequest UsersLabelsPatch where
        type Rs UsersLabelsPatch = Label
        requestClient UsersLabelsPatch{..}
          = go _ulpUserId _ulpId (Just AltJSON) _ulpPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLabelsPatchResource)
                      mempty
