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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.BatchModify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the labels on the specified messages.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.batchModify@.
module Network.Google.Resource.Gmail.Users.Messages.BatchModify
    (
    -- * REST Resource
      UsersMessagesBatchModifyResource

    -- * Creating a Request
    , usersMessagesBatchModify
    , UsersMessagesBatchModify

    -- * Request Lenses
    , umbmXgafv
    , umbmUploadProtocol
    , umbmAccessToken
    , umbmUploadType
    , umbmPayload
    , umbmUserId
    , umbmCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.batchModify@ method which the
-- 'UsersMessagesBatchModify' request conforms to.
type UsersMessagesBatchModifyResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               "batchModify" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BatchModifyMessagesRequest :>
                               Post '[JSON] ()

-- | Modifies the labels on the specified messages.
--
-- /See:/ 'usersMessagesBatchModify' smart constructor.
data UsersMessagesBatchModify =
  UsersMessagesBatchModify'
    { _umbmXgafv :: !(Maybe Xgafv)
    , _umbmUploadProtocol :: !(Maybe Text)
    , _umbmAccessToken :: !(Maybe Text)
    , _umbmUploadType :: !(Maybe Text)
    , _umbmPayload :: !BatchModifyMessagesRequest
    , _umbmUserId :: !Text
    , _umbmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesBatchModify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umbmXgafv'
--
-- * 'umbmUploadProtocol'
--
-- * 'umbmAccessToken'
--
-- * 'umbmUploadType'
--
-- * 'umbmPayload'
--
-- * 'umbmUserId'
--
-- * 'umbmCallback'
usersMessagesBatchModify
    :: BatchModifyMessagesRequest -- ^ 'umbmPayload'
    -> UsersMessagesBatchModify
usersMessagesBatchModify pUmbmPayload_ =
  UsersMessagesBatchModify'
    { _umbmXgafv = Nothing
    , _umbmUploadProtocol = Nothing
    , _umbmAccessToken = Nothing
    , _umbmUploadType = Nothing
    , _umbmPayload = pUmbmPayload_
    , _umbmUserId = "me"
    , _umbmCallback = Nothing
    }


-- | V1 error format.
umbmXgafv :: Lens' UsersMessagesBatchModify (Maybe Xgafv)
umbmXgafv
  = lens _umbmXgafv (\ s a -> s{_umbmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umbmUploadProtocol :: Lens' UsersMessagesBatchModify (Maybe Text)
umbmUploadProtocol
  = lens _umbmUploadProtocol
      (\ s a -> s{_umbmUploadProtocol = a})

-- | OAuth access token.
umbmAccessToken :: Lens' UsersMessagesBatchModify (Maybe Text)
umbmAccessToken
  = lens _umbmAccessToken
      (\ s a -> s{_umbmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umbmUploadType :: Lens' UsersMessagesBatchModify (Maybe Text)
umbmUploadType
  = lens _umbmUploadType
      (\ s a -> s{_umbmUploadType = a})

-- | Multipart request metadata.
umbmPayload :: Lens' UsersMessagesBatchModify BatchModifyMessagesRequest
umbmPayload
  = lens _umbmPayload (\ s a -> s{_umbmPayload = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umbmUserId :: Lens' UsersMessagesBatchModify Text
umbmUserId
  = lens _umbmUserId (\ s a -> s{_umbmUserId = a})

-- | JSONP
umbmCallback :: Lens' UsersMessagesBatchModify (Maybe Text)
umbmCallback
  = lens _umbmCallback (\ s a -> s{_umbmCallback = a})

instance GoogleRequest UsersMessagesBatchModify where
        type Rs UsersMessagesBatchModify = ()
        type Scopes UsersMessagesBatchModify =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesBatchModify'{..}
          = go _umbmUserId _umbmXgafv _umbmUploadProtocol
              _umbmAccessToken
              _umbmUploadType
              _umbmCallback
              (Just AltJSON)
              _umbmPayload
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesBatchModifyResource)
                      mempty
