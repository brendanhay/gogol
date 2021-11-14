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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.get@.
module Network.Google.Resource.Gmail.Users.Messages.Get
    (
    -- * REST Resource
      UsersMessagesGetResource

    -- * Creating a Request
    , usersMessagesGet
    , UsersMessagesGet

    -- * Request Lenses
    , umgXgafv
    , umgUploadProtocol
    , umgAccessToken
    , umgFormat
    , umgUploadType
    , umgUserId
    , umgId
    , umgMetadataHeaders
    , umgCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.get@ method which the
-- 'UsersMessagesGet' request conforms to.
type UsersMessagesGetResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "format" UsersMessagesGetFormat :>
                         QueryParam "uploadType" Text :>
                           QueryParams "metadataHeaders" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Message

-- | Gets the specified message.
--
-- /See:/ 'usersMessagesGet' smart constructor.
data UsersMessagesGet =
  UsersMessagesGet'
    { _umgXgafv :: !(Maybe Xgafv)
    , _umgUploadProtocol :: !(Maybe Text)
    , _umgAccessToken :: !(Maybe Text)
    , _umgFormat :: !UsersMessagesGetFormat
    , _umgUploadType :: !(Maybe Text)
    , _umgUserId :: !Text
    , _umgId :: !Text
    , _umgMetadataHeaders :: !(Maybe [Text])
    , _umgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umgXgafv'
--
-- * 'umgUploadProtocol'
--
-- * 'umgAccessToken'
--
-- * 'umgFormat'
--
-- * 'umgUploadType'
--
-- * 'umgUserId'
--
-- * 'umgId'
--
-- * 'umgMetadataHeaders'
--
-- * 'umgCallback'
usersMessagesGet
    :: Text -- ^ 'umgId'
    -> UsersMessagesGet
usersMessagesGet pUmgId_ =
  UsersMessagesGet'
    { _umgXgafv = Nothing
    , _umgUploadProtocol = Nothing
    , _umgAccessToken = Nothing
    , _umgFormat = Full
    , _umgUploadType = Nothing
    , _umgUserId = "me"
    , _umgId = pUmgId_
    , _umgMetadataHeaders = Nothing
    , _umgCallback = Nothing
    }


-- | V1 error format.
umgXgafv :: Lens' UsersMessagesGet (Maybe Xgafv)
umgXgafv = lens _umgXgafv (\ s a -> s{_umgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umgUploadProtocol :: Lens' UsersMessagesGet (Maybe Text)
umgUploadProtocol
  = lens _umgUploadProtocol
      (\ s a -> s{_umgUploadProtocol = a})

-- | OAuth access token.
umgAccessToken :: Lens' UsersMessagesGet (Maybe Text)
umgAccessToken
  = lens _umgAccessToken
      (\ s a -> s{_umgAccessToken = a})

-- | The format to return the message in.
umgFormat :: Lens' UsersMessagesGet UsersMessagesGetFormat
umgFormat
  = lens _umgFormat (\ s a -> s{_umgFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umgUploadType :: Lens' UsersMessagesGet (Maybe Text)
umgUploadType
  = lens _umgUploadType
      (\ s a -> s{_umgUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umgUserId :: Lens' UsersMessagesGet Text
umgUserId
  = lens _umgUserId (\ s a -> s{_umgUserId = a})

-- | The ID of the message to retrieve. This ID is usually retrieved using
-- \`messages.list\`. The ID is also contained in the result when a message
-- is inserted (\`messages.insert\`) or imported (\`messages.import\`).
umgId :: Lens' UsersMessagesGet Text
umgId = lens _umgId (\ s a -> s{_umgId = a})

-- | When given and format is \`METADATA\`, only include headers specified.
umgMetadataHeaders :: Lens' UsersMessagesGet [Text]
umgMetadataHeaders
  = lens _umgMetadataHeaders
      (\ s a -> s{_umgMetadataHeaders = a})
      . _Default
      . _Coerce

-- | JSONP
umgCallback :: Lens' UsersMessagesGet (Maybe Text)
umgCallback
  = lens _umgCallback (\ s a -> s{_umgCallback = a})

instance GoogleRequest UsersMessagesGet where
        type Rs UsersMessagesGet = Message
        type Scopes UsersMessagesGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.message.action",
               "https://www.googleapis.com/auth/gmail.addons.current.message.metadata",
               "https://www.googleapis.com/auth/gmail.addons.current.message.readonly",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersMessagesGet'{..}
          = go _umgUserId _umgId _umgXgafv _umgUploadProtocol
              _umgAccessToken
              (Just _umgFormat)
              _umgUploadType
              (_umgMetadataHeaders ^. _Default)
              _umgCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesGetResource)
                      mempty
