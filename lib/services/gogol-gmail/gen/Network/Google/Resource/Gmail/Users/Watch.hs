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
-- Module      : Network.Google.Resource.Gmail.Users.Watch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.watch@.
module Network.Google.Resource.Gmail.Users.Watch
    (
    -- * REST Resource
      UsersWatchResource

    -- * Creating a Request
    , usersWatch
    , UsersWatch

    -- * Request Lenses
    , uwXgafv
    , uwUploadProtocol
    , uwAccessToken
    , uwUploadType
    , uwPayload
    , uwUserId
    , uwCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.watch@ method which the
-- 'UsersWatch' request conforms to.
type UsersWatchResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "watch" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] WatchRequest :>
                             Post '[JSON] WatchResponse

-- | Set up or update a push notification watch on the given user mailbox.
--
-- /See:/ 'usersWatch' smart constructor.
data UsersWatch =
  UsersWatch'
    { _uwXgafv :: !(Maybe Xgafv)
    , _uwUploadProtocol :: !(Maybe Text)
    , _uwAccessToken :: !(Maybe Text)
    , _uwUploadType :: !(Maybe Text)
    , _uwPayload :: !WatchRequest
    , _uwUserId :: !Text
    , _uwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwXgafv'
--
-- * 'uwUploadProtocol'
--
-- * 'uwAccessToken'
--
-- * 'uwUploadType'
--
-- * 'uwPayload'
--
-- * 'uwUserId'
--
-- * 'uwCallback'
usersWatch
    :: WatchRequest -- ^ 'uwPayload'
    -> UsersWatch
usersWatch pUwPayload_ =
  UsersWatch'
    { _uwXgafv = Nothing
    , _uwUploadProtocol = Nothing
    , _uwAccessToken = Nothing
    , _uwUploadType = Nothing
    , _uwPayload = pUwPayload_
    , _uwUserId = "me"
    , _uwCallback = Nothing
    }


-- | V1 error format.
uwXgafv :: Lens' UsersWatch (Maybe Xgafv)
uwXgafv = lens _uwXgafv (\ s a -> s{_uwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uwUploadProtocol :: Lens' UsersWatch (Maybe Text)
uwUploadProtocol
  = lens _uwUploadProtocol
      (\ s a -> s{_uwUploadProtocol = a})

-- | OAuth access token.
uwAccessToken :: Lens' UsersWatch (Maybe Text)
uwAccessToken
  = lens _uwAccessToken
      (\ s a -> s{_uwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uwUploadType :: Lens' UsersWatch (Maybe Text)
uwUploadType
  = lens _uwUploadType (\ s a -> s{_uwUploadType = a})

-- | Multipart request metadata.
uwPayload :: Lens' UsersWatch WatchRequest
uwPayload
  = lens _uwPayload (\ s a -> s{_uwPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
uwUserId :: Lens' UsersWatch Text
uwUserId = lens _uwUserId (\ s a -> s{_uwUserId = a})

-- | JSONP
uwCallback :: Lens' UsersWatch (Maybe Text)
uwCallback
  = lens _uwCallback (\ s a -> s{_uwCallback = a})

instance GoogleRequest UsersWatch where
        type Rs UsersWatch = WatchResponse
        type Scopes UsersWatch =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersWatch'{..}
          = go _uwUserId _uwXgafv _uwUploadProtocol
              _uwAccessToken
              _uwUploadType
              _uwCallback
              (Just AltJSON)
              _uwPayload
              gmailService
          where go
                  = buildClient (Proxy :: Proxy UsersWatchResource)
                      mempty
