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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces a draft\'s content.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsUpdate@.
module Network.Google.Resource.Gmail.Users.Drafts.Update
    (
    -- * REST Resource
      UsersDraftsUpdateResource

    -- * Creating a Request
    , usersDraftsUpdate'
    , UsersDraftsUpdate'

    -- * Request Lenses
    , uduPayload
    , uduUserId
    , uduMedia
    , uduId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsUpdate@ method which the
-- 'UsersDraftsUpdate'' request conforms to.
type UsersDraftsUpdateResource =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "alt" AltJSON :>
             MultipartRelated '[JSON] Draft Stream :>
               Put '[JSON] Draft

-- | Replaces a draft\'s content.
--
-- /See:/ 'usersDraftsUpdate'' smart constructor.
data UsersDraftsUpdate' = UsersDraftsUpdate'
    { _uduPayload :: !Draft
    , _uduUserId  :: !Text
    , _uduMedia   :: !Stream
    , _uduId      :: !Text
    }

-- | Creates a value of 'UsersDraftsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uduPayload'
--
-- * 'uduUserId'
--
-- * 'uduMedia'
--
-- * 'uduId'
usersDraftsUpdate'
    :: Draft -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Stream -- ^ 'id'
    -> Text
    -> UsersDraftsUpdate'
usersDraftsUpdate' pUduPayload_ pUduUserId_ pUduMedia_ pUduId_ =
    UsersDraftsUpdate'
    { _uduPayload = pUduPayload_
    , _uduUserId = pUduUserId_
    , _uduMedia = pUduMedia_
    , _uduId = pUduId_
    }

-- | Multipart request metadata.
uduPayload :: Lens' UsersDraftsUpdate' Draft
uduPayload
  = lens _uduPayload (\ s a -> s{_uduPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uduUserId :: Lens' UsersDraftsUpdate' Text
uduUserId
  = lens _uduUserId (\ s a -> s{_uduUserId = a})

uduMedia :: Lens' UsersDraftsUpdate' Stream
uduMedia = lens _uduMedia (\ s a -> s{_uduMedia = a})

-- | The ID of the draft to update.
uduId :: Lens' UsersDraftsUpdate' Text
uduId = lens _uduId (\ s a -> s{_uduId = a})

instance GoogleRequest UsersDraftsUpdate' where
        type Rs UsersDraftsUpdate' = Draft
        requestClient UsersDraftsUpdate'{..}
          = go _uduUserId _uduId (Just AltJSON) _uduPayload
              _uduMedia
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsUpdateResource)
                      mempty
