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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Modify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.modify@.
module Network.Google.Resource.Gmail.Users.Threads.Modify
    (
    -- * REST Resource
      UsersThreadsModifyResource

    -- * Creating a Request
    , usersThreadsModify
    , UsersThreadsModify

    -- * Request Lenses
    , utmXgafv
    , utmUploadProtocol
    , utmAccessToken
    , utmUploadType
    , utmPayload
    , utmUserId
    , utmId
    , utmCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.modify@ method which the
-- 'UsersThreadsModify' request conforms to.
type UsersThreadsModifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 "modify" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ModifyThreadRequest :>
                                 Post '[JSON] Thread

-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ 'usersThreadsModify' smart constructor.
data UsersThreadsModify =
  UsersThreadsModify'
    { _utmXgafv :: !(Maybe Xgafv)
    , _utmUploadProtocol :: !(Maybe Text)
    , _utmAccessToken :: !(Maybe Text)
    , _utmUploadType :: !(Maybe Text)
    , _utmPayload :: !ModifyThreadRequest
    , _utmUserId :: !Text
    , _utmId :: !Text
    , _utmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersThreadsModify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utmXgafv'
--
-- * 'utmUploadProtocol'
--
-- * 'utmAccessToken'
--
-- * 'utmUploadType'
--
-- * 'utmPayload'
--
-- * 'utmUserId'
--
-- * 'utmId'
--
-- * 'utmCallback'
usersThreadsModify
    :: ModifyThreadRequest -- ^ 'utmPayload'
    -> Text -- ^ 'utmId'
    -> UsersThreadsModify
usersThreadsModify pUtmPayload_ pUtmId_ =
  UsersThreadsModify'
    { _utmXgafv = Nothing
    , _utmUploadProtocol = Nothing
    , _utmAccessToken = Nothing
    , _utmUploadType = Nothing
    , _utmPayload = pUtmPayload_
    , _utmUserId = "me"
    , _utmId = pUtmId_
    , _utmCallback = Nothing
    }


-- | V1 error format.
utmXgafv :: Lens' UsersThreadsModify (Maybe Xgafv)
utmXgafv = lens _utmXgafv (\ s a -> s{_utmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
utmUploadProtocol :: Lens' UsersThreadsModify (Maybe Text)
utmUploadProtocol
  = lens _utmUploadProtocol
      (\ s a -> s{_utmUploadProtocol = a})

-- | OAuth access token.
utmAccessToken :: Lens' UsersThreadsModify (Maybe Text)
utmAccessToken
  = lens _utmAccessToken
      (\ s a -> s{_utmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
utmUploadType :: Lens' UsersThreadsModify (Maybe Text)
utmUploadType
  = lens _utmUploadType
      (\ s a -> s{_utmUploadType = a})

-- | Multipart request metadata.
utmPayload :: Lens' UsersThreadsModify ModifyThreadRequest
utmPayload
  = lens _utmPayload (\ s a -> s{_utmPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
utmUserId :: Lens' UsersThreadsModify Text
utmUserId
  = lens _utmUserId (\ s a -> s{_utmUserId = a})

-- | The ID of the thread to modify.
utmId :: Lens' UsersThreadsModify Text
utmId = lens _utmId (\ s a -> s{_utmId = a})

-- | JSONP
utmCallback :: Lens' UsersThreadsModify (Maybe Text)
utmCallback
  = lens _utmCallback (\ s a -> s{_utmCallback = a})

instance GoogleRequest UsersThreadsModify where
        type Rs UsersThreadsModify = Thread
        type Scopes UsersThreadsModify =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersThreadsModify'{..}
          = go _utmUserId _utmId _utmXgafv _utmUploadProtocol
              _utmAccessToken
              _utmUploadType
              _utmCallback
              (Just AltJSON)
              _utmPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsModifyResource)
                      mempty
