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
-- Module      : Network.Google.Resource.Chat.Rooms.Conversations.Messages
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.rooms.conversations.messages@.
module Network.Google.Resource.Chat.Rooms.Conversations.Messages
    (
    -- * REST Resource
      RoomsConversationsMessagesResource

    -- * Creating a Request
    , roomsConversationsMessages
    , RoomsConversationsMessages

    -- * Request Lenses
    , rcmParent
    , rcmXgafv
    , rcmUploadProtocol
    , rcmAccessToken
    , rcmUploadType
    , rcmPayload
    , rcmCallback
    , rcmThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.rooms.conversations.messages@ method which the
-- 'RoomsConversationsMessages' request conforms to.
type RoomsConversationsMessagesResource =
     "v1" :>
       Capture "parent" Text :>
         "messages" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "threadKey" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Message :> Post '[JSON] Message

-- | Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ 'roomsConversationsMessages' smart constructor.
data RoomsConversationsMessages =
  RoomsConversationsMessages'
    { _rcmParent :: !Text
    , _rcmXgafv :: !(Maybe Xgafv)
    , _rcmUploadProtocol :: !(Maybe Text)
    , _rcmAccessToken :: !(Maybe Text)
    , _rcmUploadType :: !(Maybe Text)
    , _rcmPayload :: !Message
    , _rcmCallback :: !(Maybe Text)
    , _rcmThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoomsConversationsMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcmParent'
--
-- * 'rcmXgafv'
--
-- * 'rcmUploadProtocol'
--
-- * 'rcmAccessToken'
--
-- * 'rcmUploadType'
--
-- * 'rcmPayload'
--
-- * 'rcmCallback'
--
-- * 'rcmThreadKey'
roomsConversationsMessages
    :: Text -- ^ 'rcmParent'
    -> Message -- ^ 'rcmPayload'
    -> RoomsConversationsMessages
roomsConversationsMessages pRcmParent_ pRcmPayload_ =
  RoomsConversationsMessages'
    { _rcmParent = pRcmParent_
    , _rcmXgafv = Nothing
    , _rcmUploadProtocol = Nothing
    , _rcmAccessToken = Nothing
    , _rcmUploadType = Nothing
    , _rcmPayload = pRcmPayload_
    , _rcmCallback = Nothing
    , _rcmThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
rcmParent :: Lens' RoomsConversationsMessages Text
rcmParent
  = lens _rcmParent (\ s a -> s{_rcmParent = a})

-- | V1 error format.
rcmXgafv :: Lens' RoomsConversationsMessages (Maybe Xgafv)
rcmXgafv = lens _rcmXgafv (\ s a -> s{_rcmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcmUploadProtocol :: Lens' RoomsConversationsMessages (Maybe Text)
rcmUploadProtocol
  = lens _rcmUploadProtocol
      (\ s a -> s{_rcmUploadProtocol = a})

-- | OAuth access token.
rcmAccessToken :: Lens' RoomsConversationsMessages (Maybe Text)
rcmAccessToken
  = lens _rcmAccessToken
      (\ s a -> s{_rcmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcmUploadType :: Lens' RoomsConversationsMessages (Maybe Text)
rcmUploadType
  = lens _rcmUploadType
      (\ s a -> s{_rcmUploadType = a})

-- | Multipart request metadata.
rcmPayload :: Lens' RoomsConversationsMessages Message
rcmPayload
  = lens _rcmPayload (\ s a -> s{_rcmPayload = a})

-- | JSONP
rcmCallback :: Lens' RoomsConversationsMessages (Maybe Text)
rcmCallback
  = lens _rcmCallback (\ s a -> s{_rcmCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
rcmThreadKey :: Lens' RoomsConversationsMessages (Maybe Text)
rcmThreadKey
  = lens _rcmThreadKey (\ s a -> s{_rcmThreadKey = a})

instance GoogleRequest RoomsConversationsMessages
         where
        type Rs RoomsConversationsMessages = Message
        type Scopes RoomsConversationsMessages = '[]
        requestClient RoomsConversationsMessages'{..}
          = go _rcmParent _rcmXgafv _rcmUploadProtocol
              _rcmAccessToken
              _rcmUploadType
              _rcmCallback
              _rcmThreadKey
              (Just AltJSON)
              _rcmPayload
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy RoomsConversationsMessagesResource)
                      mempty
