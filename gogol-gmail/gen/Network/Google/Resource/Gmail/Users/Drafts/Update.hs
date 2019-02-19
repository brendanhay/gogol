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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces a draft\'s content.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.update@.
module Network.Google.Resource.Gmail.Users.Drafts.Update
    (
    -- * REST Resource
      UsersDraftsUpdateResource

    -- * Creating a Request
    , usersDraftsUpdate
    , UsersDraftsUpdate

    -- * Request Lenses
    , uduPayload
    , uduUserId
    , uduId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.update@ method which the
-- 'UsersDraftsUpdate' request conforms to.
type UsersDraftsUpdateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Draft :> Put '[JSON] Draft
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "drafts" :>
                   Capture "id" Text :>
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" Multipart :>
                         MultipartRelated '[JSON] Draft :> Put '[JSON] Draft

-- | Replaces a draft\'s content.
--
-- /See:/ 'usersDraftsUpdate' smart constructor.
data UsersDraftsUpdate =
  UsersDraftsUpdate'
    { _uduPayload :: !Draft
    , _uduUserId  :: !Text
    , _uduId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDraftsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uduPayload'
--
-- * 'uduUserId'
--
-- * 'uduId'
usersDraftsUpdate
    :: Draft -- ^ 'uduPayload'
    -> Text -- ^ 'uduId'
    -> UsersDraftsUpdate
usersDraftsUpdate pUduPayload_ pUduId_ =
  UsersDraftsUpdate'
    {_uduPayload = pUduPayload_, _uduUserId = "me", _uduId = pUduId_}


-- | Multipart request metadata.
uduPayload :: Lens' UsersDraftsUpdate Draft
uduPayload
  = lens _uduPayload (\ s a -> s{_uduPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uduUserId :: Lens' UsersDraftsUpdate Text
uduUserId
  = lens _uduUserId (\ s a -> s{_uduUserId = a})

-- | The ID of the draft to update.
uduId :: Lens' UsersDraftsUpdate Text
uduId = lens _uduId (\ s a -> s{_uduId = a})

instance GoogleRequest UsersDraftsUpdate where
        type Rs UsersDraftsUpdate = Draft
        type Scopes UsersDraftsUpdate =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersDraftsUpdate'{..}
          = go _uduUserId _uduId (Just AltJSON) _uduPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersDraftsUpdateResource)
                      mempty

instance GoogleRequest
           (MediaUpload UsersDraftsUpdate)
         where
        type Rs (MediaUpload UsersDraftsUpdate) = Draft
        type Scopes (MediaUpload UsersDraftsUpdate) =
             Scopes UsersDraftsUpdate
        requestClient
          (MediaUpload UsersDraftsUpdate'{..} body)
          = go _uduUserId _uduId (Just AltJSON)
              (Just Multipart)
              _uduPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsUpdateResource)
                      mempty
