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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new draft with the DRAFT label.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.create@.
module Network.Google.Resource.Gmail.Users.Drafts.Create
    (
    -- * REST Resource
      UsersDraftsCreateResource

    -- * Creating a Request
    , usersDraftsCreate
    , UsersDraftsCreate

    -- * Request Lenses
    , udcPayload
    , udcUserId
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.create@ method which the
-- 'UsersDraftsCreate' request conforms to.
type UsersDraftsCreateResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Draft :> Post '[JSON] Draft
       :<|>
       "upload" :>
         "gmail" :>
           "v1" :>
             "users" :>
               Capture "userId" Text :>
                 "drafts" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" AltMedia :>
                       MultipartRelated '[JSON] Draft RequestBody :>
                         Post '[JSON] Draft

-- | Creates a new draft with the DRAFT label.
--
-- /See:/ 'usersDraftsCreate' smart constructor.
data UsersDraftsCreate = UsersDraftsCreate
    { _udcPayload :: !Draft
    , _udcUserId  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcPayload'
--
-- * 'udcUserId'
usersDraftsCreate
    :: Draft -- ^ 'udcPayload'
    -> UsersDraftsCreate
usersDraftsCreate pUdcPayload_ =
    UsersDraftsCreate
    { _udcPayload = pUdcPayload_
    , _udcUserId = "me"
    }

-- | Multipart request metadata.
udcPayload :: Lens' UsersDraftsCreate Draft
udcPayload
  = lens _udcPayload (\ s a -> s{_udcPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udcUserId :: Lens' UsersDraftsCreate Text
udcUserId
  = lens _udcUserId (\ s a -> s{_udcUserId = a})

instance GoogleRequest UsersDraftsCreate where
        type Rs UsersDraftsCreate = Draft
        requestClient UsersDraftsCreate{..}
          = go _udcUserId (Just AltJSON) _udcPayload
              gmailService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy UsersDraftsCreateResource)
                      mempty

instance GoogleRequest
         (MediaUpload UsersDraftsCreate) where
        type Rs (MediaUpload UsersDraftsCreate) = Draft
        requestClient
          (MediaUpload UsersDraftsCreate{..} body)
          = go _udcUserId (Just AltJSON) (Just AltMedia)
              _udcPayload
              body
              gmailService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsCreateResource)
                      mempty
