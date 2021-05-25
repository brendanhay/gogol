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
-- Module      : Network.Google.Resource.Gmail.Users.Stop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stop receiving push notifications for the given user mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.stop@.
module Network.Google.Resource.Gmail.Users.Stop
    (
    -- * REST Resource
      UsersStopResource

    -- * Creating a Request
    , usersStop
    , UsersStop

    -- * Request Lenses
    , usXgafv
    , usUploadProtocol
    , usAccessToken
    , usUploadType
    , usUserId
    , usCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.stop@ method which the
-- 'UsersStop' request conforms to.
type UsersStopResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "stop" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Stop receiving push notifications for the given user mailbox.
--
-- /See:/ 'usersStop' smart constructor.
data UsersStop =
  UsersStop'
    { _usXgafv :: !(Maybe Xgafv)
    , _usUploadProtocol :: !(Maybe Text)
    , _usAccessToken :: !(Maybe Text)
    , _usUploadType :: !(Maybe Text)
    , _usUserId :: !Text
    , _usCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usXgafv'
--
-- * 'usUploadProtocol'
--
-- * 'usAccessToken'
--
-- * 'usUploadType'
--
-- * 'usUserId'
--
-- * 'usCallback'
usersStop
    :: UsersStop
usersStop =
  UsersStop'
    { _usXgafv = Nothing
    , _usUploadProtocol = Nothing
    , _usAccessToken = Nothing
    , _usUploadType = Nothing
    , _usUserId = "me"
    , _usCallback = Nothing
    }


-- | V1 error format.
usXgafv :: Lens' UsersStop (Maybe Xgafv)
usXgafv = lens _usXgafv (\ s a -> s{_usXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usUploadProtocol :: Lens' UsersStop (Maybe Text)
usUploadProtocol
  = lens _usUploadProtocol
      (\ s a -> s{_usUploadProtocol = a})

-- | OAuth access token.
usAccessToken :: Lens' UsersStop (Maybe Text)
usAccessToken
  = lens _usAccessToken
      (\ s a -> s{_usAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usUploadType :: Lens' UsersStop (Maybe Text)
usUploadType
  = lens _usUploadType (\ s a -> s{_usUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
usUserId :: Lens' UsersStop Text
usUserId = lens _usUserId (\ s a -> s{_usUserId = a})

-- | JSONP
usCallback :: Lens' UsersStop (Maybe Text)
usCallback
  = lens _usCallback (\ s a -> s{_usCallback = a})

instance GoogleRequest UsersStop where
        type Rs UsersStop = ()
        type Scopes UsersStop =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersStop'{..}
          = go _usUserId _usXgafv _usUploadProtocol
              _usAccessToken
              _usUploadType
              _usCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient (Proxy :: Proxy UsersStopResource)
                      mempty
