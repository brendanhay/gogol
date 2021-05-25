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
-- Module      : Network.Google.Resource.Chat.Rooms.Messages
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.rooms.messages@.
module Network.Google.Resource.Chat.Rooms.Messages
    (
    -- * REST Resource
      RoomsMessagesResource

    -- * Creating a Request
    , roomsMessages
    , RoomsMessages

    -- * Request Lenses
    , rmParent
    , rmXgafv
    , rmUploadProtocol
    , rmAccessToken
    , rmUploadType
    , rmPayload
    , rmCallback
    , rmThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.rooms.messages@ method which the
-- 'RoomsMessages' request conforms to.
type RoomsMessagesResource =
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
-- /See:/ 'roomsMessages' smart constructor.
data RoomsMessages =
  RoomsMessages'
    { _rmParent :: !Text
    , _rmXgafv :: !(Maybe Xgafv)
    , _rmUploadProtocol :: !(Maybe Text)
    , _rmAccessToken :: !(Maybe Text)
    , _rmUploadType :: !(Maybe Text)
    , _rmPayload :: !Message
    , _rmCallback :: !(Maybe Text)
    , _rmThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoomsMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmParent'
--
-- * 'rmXgafv'
--
-- * 'rmUploadProtocol'
--
-- * 'rmAccessToken'
--
-- * 'rmUploadType'
--
-- * 'rmPayload'
--
-- * 'rmCallback'
--
-- * 'rmThreadKey'
roomsMessages
    :: Text -- ^ 'rmParent'
    -> Message -- ^ 'rmPayload'
    -> RoomsMessages
roomsMessages pRmParent_ pRmPayload_ =
  RoomsMessages'
    { _rmParent = pRmParent_
    , _rmXgafv = Nothing
    , _rmUploadProtocol = Nothing
    , _rmAccessToken = Nothing
    , _rmUploadType = Nothing
    , _rmPayload = pRmPayload_
    , _rmCallback = Nothing
    , _rmThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
rmParent :: Lens' RoomsMessages Text
rmParent = lens _rmParent (\ s a -> s{_rmParent = a})

-- | V1 error format.
rmXgafv :: Lens' RoomsMessages (Maybe Xgafv)
rmXgafv = lens _rmXgafv (\ s a -> s{_rmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rmUploadProtocol :: Lens' RoomsMessages (Maybe Text)
rmUploadProtocol
  = lens _rmUploadProtocol
      (\ s a -> s{_rmUploadProtocol = a})

-- | OAuth access token.
rmAccessToken :: Lens' RoomsMessages (Maybe Text)
rmAccessToken
  = lens _rmAccessToken
      (\ s a -> s{_rmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rmUploadType :: Lens' RoomsMessages (Maybe Text)
rmUploadType
  = lens _rmUploadType (\ s a -> s{_rmUploadType = a})

-- | Multipart request metadata.
rmPayload :: Lens' RoomsMessages Message
rmPayload
  = lens _rmPayload (\ s a -> s{_rmPayload = a})

-- | JSONP
rmCallback :: Lens' RoomsMessages (Maybe Text)
rmCallback
  = lens _rmCallback (\ s a -> s{_rmCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
rmThreadKey :: Lens' RoomsMessages (Maybe Text)
rmThreadKey
  = lens _rmThreadKey (\ s a -> s{_rmThreadKey = a})

instance GoogleRequest RoomsMessages where
        type Rs RoomsMessages = Message
        type Scopes RoomsMessages = '[]
        requestClient RoomsMessages'{..}
          = go _rmParent _rmXgafv _rmUploadProtocol
              _rmAccessToken
              _rmUploadType
              _rmCallback
              _rmThreadKey
              (Just AltJSON)
              _rmPayload
              chatService
          where go
                  = buildClient (Proxy :: Proxy RoomsMessagesResource)
                      mempty
