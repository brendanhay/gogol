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
-- Module      : Network.Google.Resource.Chat.Rooms.Webhooks
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.rooms.webhooks@.
module Network.Google.Resource.Chat.Rooms.Webhooks
    (
    -- * REST Resource
      RoomsWebhooksResource

    -- * Creating a Request
    , roomsWebhooks
    , RoomsWebhooks

    -- * Request Lenses
    , rwParent
    , rwXgafv
    , rwUploadProtocol
    , rwAccessToken
    , rwUploadType
    , rwPayload
    , rwCallback
    , rwThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.rooms.webhooks@ method which the
-- 'RoomsWebhooks' request conforms to.
type RoomsWebhooksResource =
     "v1" :>
       Capture "parent" Text :>
         "webhooks" :>
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
-- /See:/ 'roomsWebhooks' smart constructor.
data RoomsWebhooks =
  RoomsWebhooks'
    { _rwParent :: !Text
    , _rwXgafv :: !(Maybe Xgafv)
    , _rwUploadProtocol :: !(Maybe Text)
    , _rwAccessToken :: !(Maybe Text)
    , _rwUploadType :: !(Maybe Text)
    , _rwPayload :: !Message
    , _rwCallback :: !(Maybe Text)
    , _rwThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoomsWebhooks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwParent'
--
-- * 'rwXgafv'
--
-- * 'rwUploadProtocol'
--
-- * 'rwAccessToken'
--
-- * 'rwUploadType'
--
-- * 'rwPayload'
--
-- * 'rwCallback'
--
-- * 'rwThreadKey'
roomsWebhooks
    :: Text -- ^ 'rwParent'
    -> Message -- ^ 'rwPayload'
    -> RoomsWebhooks
roomsWebhooks pRwParent_ pRwPayload_ =
  RoomsWebhooks'
    { _rwParent = pRwParent_
    , _rwXgafv = Nothing
    , _rwUploadProtocol = Nothing
    , _rwAccessToken = Nothing
    , _rwUploadType = Nothing
    , _rwPayload = pRwPayload_
    , _rwCallback = Nothing
    , _rwThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
rwParent :: Lens' RoomsWebhooks Text
rwParent = lens _rwParent (\ s a -> s{_rwParent = a})

-- | V1 error format.
rwXgafv :: Lens' RoomsWebhooks (Maybe Xgafv)
rwXgafv = lens _rwXgafv (\ s a -> s{_rwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rwUploadProtocol :: Lens' RoomsWebhooks (Maybe Text)
rwUploadProtocol
  = lens _rwUploadProtocol
      (\ s a -> s{_rwUploadProtocol = a})

-- | OAuth access token.
rwAccessToken :: Lens' RoomsWebhooks (Maybe Text)
rwAccessToken
  = lens _rwAccessToken
      (\ s a -> s{_rwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rwUploadType :: Lens' RoomsWebhooks (Maybe Text)
rwUploadType
  = lens _rwUploadType (\ s a -> s{_rwUploadType = a})

-- | Multipart request metadata.
rwPayload :: Lens' RoomsWebhooks Message
rwPayload
  = lens _rwPayload (\ s a -> s{_rwPayload = a})

-- | JSONP
rwCallback :: Lens' RoomsWebhooks (Maybe Text)
rwCallback
  = lens _rwCallback (\ s a -> s{_rwCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
rwThreadKey :: Lens' RoomsWebhooks (Maybe Text)
rwThreadKey
  = lens _rwThreadKey (\ s a -> s{_rwThreadKey = a})

instance GoogleRequest RoomsWebhooks where
        type Rs RoomsWebhooks = Message
        type Scopes RoomsWebhooks = '[]
        requestClient RoomsWebhooks'{..}
          = go _rwParent _rwXgafv _rwUploadProtocol
              _rwAccessToken
              _rwUploadType
              _rwCallback
              _rwThreadKey
              (Just AltJSON)
              _rwPayload
              chatService
          where go
                  = buildClient (Proxy :: Proxy RoomsWebhooksResource)
                      mempty
