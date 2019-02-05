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
-- Module      : Network.Google.Resource.Chat.Spaces.Messages.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a message.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference> for @chat.spaces.messages.create@.
module Network.Google.Resource.Chat.Spaces.Messages.Create
    (
    -- * REST Resource
      SpacesMessagesCreateResource

    -- * Creating a Request
    , spacesMessagesCreate
    , SpacesMessagesCreate

    -- * Request Lenses
    , smcParent
    , smcXgafv
    , smcUploadProtocol
    , smcAccessToken
    , smcUploadType
    , smcPayload
    , smcCallback
    , smcThreadKey
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude

-- | A resource alias for @chat.spaces.messages.create@ method which the
-- 'SpacesMessagesCreate' request conforms to.
type SpacesMessagesCreateResource =
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

-- | Creates a message.
--
-- /See:/ 'spacesMessagesCreate' smart constructor.
data SpacesMessagesCreate = SpacesMessagesCreate'
    { _smcParent         :: !Text
    , _smcXgafv          :: !(Maybe Xgafv)
    , _smcUploadProtocol :: !(Maybe Text)
    , _smcAccessToken    :: !(Maybe Text)
    , _smcUploadType     :: !(Maybe Text)
    , _smcPayload        :: !Message
    , _smcCallback       :: !(Maybe Text)
    , _smcThreadKey      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpacesMessagesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smcParent'
--
-- * 'smcXgafv'
--
-- * 'smcUploadProtocol'
--
-- * 'smcAccessToken'
--
-- * 'smcUploadType'
--
-- * 'smcPayload'
--
-- * 'smcCallback'
--
-- * 'smcThreadKey'
spacesMessagesCreate
    :: Text -- ^ 'smcParent'
    -> Message -- ^ 'smcPayload'
    -> SpacesMessagesCreate
spacesMessagesCreate pSmcParent_ pSmcPayload_ =
    SpacesMessagesCreate'
    { _smcParent = pSmcParent_
    , _smcXgafv = Nothing
    , _smcUploadProtocol = Nothing
    , _smcAccessToken = Nothing
    , _smcUploadType = Nothing
    , _smcPayload = pSmcPayload_
    , _smcCallback = Nothing
    , _smcThreadKey = Nothing
    }

-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
smcParent :: Lens' SpacesMessagesCreate Text
smcParent
  = lens _smcParent (\ s a -> s{_smcParent = a})

-- | V1 error format.
smcXgafv :: Lens' SpacesMessagesCreate (Maybe Xgafv)
smcXgafv = lens _smcXgafv (\ s a -> s{_smcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smcUploadProtocol :: Lens' SpacesMessagesCreate (Maybe Text)
smcUploadProtocol
  = lens _smcUploadProtocol
      (\ s a -> s{_smcUploadProtocol = a})

-- | OAuth access token.
smcAccessToken :: Lens' SpacesMessagesCreate (Maybe Text)
smcAccessToken
  = lens _smcAccessToken
      (\ s a -> s{_smcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smcUploadType :: Lens' SpacesMessagesCreate (Maybe Text)
smcUploadType
  = lens _smcUploadType
      (\ s a -> s{_smcUploadType = a})

-- | Multipart request metadata.
smcPayload :: Lens' SpacesMessagesCreate Message
smcPayload
  = lens _smcPayload (\ s a -> s{_smcPayload = a})

-- | JSONP
smcCallback :: Lens' SpacesMessagesCreate (Maybe Text)
smcCallback
  = lens _smcCallback (\ s a -> s{_smcCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
smcThreadKey :: Lens' SpacesMessagesCreate (Maybe Text)
smcThreadKey
  = lens _smcThreadKey (\ s a -> s{_smcThreadKey = a})

instance GoogleRequest SpacesMessagesCreate where
        type Rs SpacesMessagesCreate = Message
        type Scopes SpacesMessagesCreate = '[]
        requestClient SpacesMessagesCreate'{..}
          = go _smcParent _smcXgafv _smcUploadProtocol
              _smcAccessToken
              _smcUploadType
              _smcCallback
              _smcThreadKey
              (Just AltJSON)
              _smcPayload
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMessagesCreateResource)
                      mempty
