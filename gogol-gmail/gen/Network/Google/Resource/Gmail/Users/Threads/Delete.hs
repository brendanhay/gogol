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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer \`threads.trash\` instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.delete@.
module Network.Google.Resource.Gmail.Users.Threads.Delete
    (
    -- * REST Resource
      UsersThreadsDeleteResource

    -- * Creating a Request
    , usersThreadsDelete
    , UsersThreadsDelete

    -- * Request Lenses
    , utdXgafv
    , utdUploadProtocol
    , utdAccessToken
    , utdUploadType
    , utdUserId
    , utdId
    , utdCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.delete@ method which the
-- 'UsersThreadsDelete' request conforms to.
type UsersThreadsDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer \`threads.trash\` instead.
--
-- /See:/ 'usersThreadsDelete' smart constructor.
data UsersThreadsDelete =
  UsersThreadsDelete'
    { _utdXgafv :: !(Maybe Xgafv)
    , _utdUploadProtocol :: !(Maybe Text)
    , _utdAccessToken :: !(Maybe Text)
    , _utdUploadType :: !(Maybe Text)
    , _utdUserId :: !Text
    , _utdId :: !Text
    , _utdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersThreadsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utdXgafv'
--
-- * 'utdUploadProtocol'
--
-- * 'utdAccessToken'
--
-- * 'utdUploadType'
--
-- * 'utdUserId'
--
-- * 'utdId'
--
-- * 'utdCallback'
usersThreadsDelete
    :: Text -- ^ 'utdId'
    -> UsersThreadsDelete
usersThreadsDelete pUtdId_ =
  UsersThreadsDelete'
    { _utdXgafv = Nothing
    , _utdUploadProtocol = Nothing
    , _utdAccessToken = Nothing
    , _utdUploadType = Nothing
    , _utdUserId = "me"
    , _utdId = pUtdId_
    , _utdCallback = Nothing
    }


-- | V1 error format.
utdXgafv :: Lens' UsersThreadsDelete (Maybe Xgafv)
utdXgafv = lens _utdXgafv (\ s a -> s{_utdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
utdUploadProtocol :: Lens' UsersThreadsDelete (Maybe Text)
utdUploadProtocol
  = lens _utdUploadProtocol
      (\ s a -> s{_utdUploadProtocol = a})

-- | OAuth access token.
utdAccessToken :: Lens' UsersThreadsDelete (Maybe Text)
utdAccessToken
  = lens _utdAccessToken
      (\ s a -> s{_utdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
utdUploadType :: Lens' UsersThreadsDelete (Maybe Text)
utdUploadType
  = lens _utdUploadType
      (\ s a -> s{_utdUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
utdUserId :: Lens' UsersThreadsDelete Text
utdUserId
  = lens _utdUserId (\ s a -> s{_utdUserId = a})

-- | ID of the Thread to delete.
utdId :: Lens' UsersThreadsDelete Text
utdId = lens _utdId (\ s a -> s{_utdId = a})

-- | JSONP
utdCallback :: Lens' UsersThreadsDelete (Maybe Text)
utdCallback
  = lens _utdCallback (\ s a -> s{_utdCallback = a})

instance GoogleRequest UsersThreadsDelete where
        type Rs UsersThreadsDelete = ()
        type Scopes UsersThreadsDelete =
             '["https://mail.google.com/"]
        requestClient UsersThreadsDelete'{..}
          = go _utdUserId _utdId _utdXgafv _utdUploadProtocol
              _utdAccessToken
              _utdUploadType
              _utdCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsDeleteResource)
                      mempty
