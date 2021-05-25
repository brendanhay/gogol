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
-- Module      : Network.Google.Resource.Chat.Dms.Conversations.Messages
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.dms.conversations.messages@.
module Network.Google.Resource.Chat.Dms.Conversations.Messages
    (
    -- * REST Resource
      DmsConversationsMessagesResource

    -- * Creating a Request
    , dmsConversationsMessages
    , DmsConversationsMessages

    -- * Request Lenses
    , dcmParent
    , dcmXgafv
    , dcmUploadProtocol
    , dcmAccessToken
    , dcmUploadType
    , dcmPayload
    , dcmCallback
    , dcmThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.dms.conversations.messages@ method which the
-- 'DmsConversationsMessages' request conforms to.
type DmsConversationsMessagesResource =
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
-- /See:/ 'dmsConversationsMessages' smart constructor.
data DmsConversationsMessages =
  DmsConversationsMessages'
    { _dcmParent :: !Text
    , _dcmXgafv :: !(Maybe Xgafv)
    , _dcmUploadProtocol :: !(Maybe Text)
    , _dcmAccessToken :: !(Maybe Text)
    , _dcmUploadType :: !(Maybe Text)
    , _dcmPayload :: !Message
    , _dcmCallback :: !(Maybe Text)
    , _dcmThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DmsConversationsMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcmParent'
--
-- * 'dcmXgafv'
--
-- * 'dcmUploadProtocol'
--
-- * 'dcmAccessToken'
--
-- * 'dcmUploadType'
--
-- * 'dcmPayload'
--
-- * 'dcmCallback'
--
-- * 'dcmThreadKey'
dmsConversationsMessages
    :: Text -- ^ 'dcmParent'
    -> Message -- ^ 'dcmPayload'
    -> DmsConversationsMessages
dmsConversationsMessages pDcmParent_ pDcmPayload_ =
  DmsConversationsMessages'
    { _dcmParent = pDcmParent_
    , _dcmXgafv = Nothing
    , _dcmUploadProtocol = Nothing
    , _dcmAccessToken = Nothing
    , _dcmUploadType = Nothing
    , _dcmPayload = pDcmPayload_
    , _dcmCallback = Nothing
    , _dcmThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
dcmParent :: Lens' DmsConversationsMessages Text
dcmParent
  = lens _dcmParent (\ s a -> s{_dcmParent = a})

-- | V1 error format.
dcmXgafv :: Lens' DmsConversationsMessages (Maybe Xgafv)
dcmXgafv = lens _dcmXgafv (\ s a -> s{_dcmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcmUploadProtocol :: Lens' DmsConversationsMessages (Maybe Text)
dcmUploadProtocol
  = lens _dcmUploadProtocol
      (\ s a -> s{_dcmUploadProtocol = a})

-- | OAuth access token.
dcmAccessToken :: Lens' DmsConversationsMessages (Maybe Text)
dcmAccessToken
  = lens _dcmAccessToken
      (\ s a -> s{_dcmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcmUploadType :: Lens' DmsConversationsMessages (Maybe Text)
dcmUploadType
  = lens _dcmUploadType
      (\ s a -> s{_dcmUploadType = a})

-- | Multipart request metadata.
dcmPayload :: Lens' DmsConversationsMessages Message
dcmPayload
  = lens _dcmPayload (\ s a -> s{_dcmPayload = a})

-- | JSONP
dcmCallback :: Lens' DmsConversationsMessages (Maybe Text)
dcmCallback
  = lens _dcmCallback (\ s a -> s{_dcmCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
dcmThreadKey :: Lens' DmsConversationsMessages (Maybe Text)
dcmThreadKey
  = lens _dcmThreadKey (\ s a -> s{_dcmThreadKey = a})

instance GoogleRequest DmsConversationsMessages where
        type Rs DmsConversationsMessages = Message
        type Scopes DmsConversationsMessages = '[]
        requestClient DmsConversationsMessages'{..}
          = go _dcmParent _dcmXgafv _dcmUploadProtocol
              _dcmAccessToken
              _dcmUploadType
              _dcmCallback
              _dcmThreadKey
              (Just AltJSON)
              _dcmPayload
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy DmsConversationsMessagesResource)
                      mempty
