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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.BatchDelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes many messages by message ID. Provides no guarantees that
-- messages were not already deleted or even existed at all.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.batchDelete@.
module Network.Google.Resource.Gmail.Users.Messages.BatchDelete
    (
    -- * REST Resource
      UsersMessagesBatchDeleteResource

    -- * Creating a Request
    , usersMessagesBatchDelete
    , UsersMessagesBatchDelete

    -- * Request Lenses
    , umbdXgafv
    , umbdUploadProtocol
    , umbdAccessToken
    , umbdUploadType
    , umbdPayload
    , umbdUserId
    , umbdCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.batchDelete@ method which the
-- 'UsersMessagesBatchDelete' request conforms to.
type UsersMessagesBatchDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               "batchDelete" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BatchDeleteMessagesRequest :>
                               Post '[JSON] ()

-- | Deletes many messages by message ID. Provides no guarantees that
-- messages were not already deleted or even existed at all.
--
-- /See:/ 'usersMessagesBatchDelete' smart constructor.
data UsersMessagesBatchDelete =
  UsersMessagesBatchDelete'
    { _umbdXgafv :: !(Maybe Xgafv)
    , _umbdUploadProtocol :: !(Maybe Text)
    , _umbdAccessToken :: !(Maybe Text)
    , _umbdUploadType :: !(Maybe Text)
    , _umbdPayload :: !BatchDeleteMessagesRequest
    , _umbdUserId :: !Text
    , _umbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umbdXgafv'
--
-- * 'umbdUploadProtocol'
--
-- * 'umbdAccessToken'
--
-- * 'umbdUploadType'
--
-- * 'umbdPayload'
--
-- * 'umbdUserId'
--
-- * 'umbdCallback'
usersMessagesBatchDelete
    :: BatchDeleteMessagesRequest -- ^ 'umbdPayload'
    -> UsersMessagesBatchDelete
usersMessagesBatchDelete pUmbdPayload_ =
  UsersMessagesBatchDelete'
    { _umbdXgafv = Nothing
    , _umbdUploadProtocol = Nothing
    , _umbdAccessToken = Nothing
    , _umbdUploadType = Nothing
    , _umbdPayload = pUmbdPayload_
    , _umbdUserId = "me"
    , _umbdCallback = Nothing
    }


-- | V1 error format.
umbdXgafv :: Lens' UsersMessagesBatchDelete (Maybe Xgafv)
umbdXgafv
  = lens _umbdXgafv (\ s a -> s{_umbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umbdUploadProtocol :: Lens' UsersMessagesBatchDelete (Maybe Text)
umbdUploadProtocol
  = lens _umbdUploadProtocol
      (\ s a -> s{_umbdUploadProtocol = a})

-- | OAuth access token.
umbdAccessToken :: Lens' UsersMessagesBatchDelete (Maybe Text)
umbdAccessToken
  = lens _umbdAccessToken
      (\ s a -> s{_umbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umbdUploadType :: Lens' UsersMessagesBatchDelete (Maybe Text)
umbdUploadType
  = lens _umbdUploadType
      (\ s a -> s{_umbdUploadType = a})

-- | Multipart request metadata.
umbdPayload :: Lens' UsersMessagesBatchDelete BatchDeleteMessagesRequest
umbdPayload
  = lens _umbdPayload (\ s a -> s{_umbdPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umbdUserId :: Lens' UsersMessagesBatchDelete Text
umbdUserId
  = lens _umbdUserId (\ s a -> s{_umbdUserId = a})

-- | JSONP
umbdCallback :: Lens' UsersMessagesBatchDelete (Maybe Text)
umbdCallback
  = lens _umbdCallback (\ s a -> s{_umbdCallback = a})

instance GoogleRequest UsersMessagesBatchDelete where
        type Rs UsersMessagesBatchDelete = ()
        type Scopes UsersMessagesBatchDelete =
             '["https://mail.google.com/"]
        requestClient UsersMessagesBatchDelete'{..}
          = go _umbdUserId _umbdXgafv _umbdUploadProtocol
              _umbdAccessToken
              _umbdUploadType
              _umbdCallback
              (Just AltJSON)
              _umbdPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesBatchDeleteResource)
                      mempty
