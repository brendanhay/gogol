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
-- Module      : Network.Google.Resource.Chat.Spaces.Webhooks
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.webhooks@.
module Network.Google.Resource.Chat.Spaces.Webhooks
    (
    -- * REST Resource
      SpacesWebhooksResource

    -- * Creating a Request
    , spacesWebhooks
    , SpacesWebhooks

    -- * Request Lenses
    , swParent
    , swXgafv
    , swUploadProtocol
    , swAccessToken
    , swUploadType
    , swPayload
    , swCallback
    , swThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.spaces.webhooks@ method which the
-- 'SpacesWebhooks' request conforms to.
type SpacesWebhooksResource =
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
-- /See:/ 'spacesWebhooks' smart constructor.
data SpacesWebhooks =
  SpacesWebhooks'
    { _swParent :: !Text
    , _swXgafv :: !(Maybe Xgafv)
    , _swUploadProtocol :: !(Maybe Text)
    , _swAccessToken :: !(Maybe Text)
    , _swUploadType :: !(Maybe Text)
    , _swPayload :: !Message
    , _swCallback :: !(Maybe Text)
    , _swThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpacesWebhooks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swParent'
--
-- * 'swXgafv'
--
-- * 'swUploadProtocol'
--
-- * 'swAccessToken'
--
-- * 'swUploadType'
--
-- * 'swPayload'
--
-- * 'swCallback'
--
-- * 'swThreadKey'
spacesWebhooks
    :: Text -- ^ 'swParent'
    -> Message -- ^ 'swPayload'
    -> SpacesWebhooks
spacesWebhooks pSwParent_ pSwPayload_ =
  SpacesWebhooks'
    { _swParent = pSwParent_
    , _swXgafv = Nothing
    , _swUploadProtocol = Nothing
    , _swAccessToken = Nothing
    , _swUploadType = Nothing
    , _swPayload = pSwPayload_
    , _swCallback = Nothing
    , _swThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
swParent :: Lens' SpacesWebhooks Text
swParent = lens _swParent (\ s a -> s{_swParent = a})

-- | V1 error format.
swXgafv :: Lens' SpacesWebhooks (Maybe Xgafv)
swXgafv = lens _swXgafv (\ s a -> s{_swXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
swUploadProtocol :: Lens' SpacesWebhooks (Maybe Text)
swUploadProtocol
  = lens _swUploadProtocol
      (\ s a -> s{_swUploadProtocol = a})

-- | OAuth access token.
swAccessToken :: Lens' SpacesWebhooks (Maybe Text)
swAccessToken
  = lens _swAccessToken
      (\ s a -> s{_swAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
swUploadType :: Lens' SpacesWebhooks (Maybe Text)
swUploadType
  = lens _swUploadType (\ s a -> s{_swUploadType = a})

-- | Multipart request metadata.
swPayload :: Lens' SpacesWebhooks Message
swPayload
  = lens _swPayload (\ s a -> s{_swPayload = a})

-- | JSONP
swCallback :: Lens' SpacesWebhooks (Maybe Text)
swCallback
  = lens _swCallback (\ s a -> s{_swCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
swThreadKey :: Lens' SpacesWebhooks (Maybe Text)
swThreadKey
  = lens _swThreadKey (\ s a -> s{_swThreadKey = a})

instance GoogleRequest SpacesWebhooks where
        type Rs SpacesWebhooks = Message
        type Scopes SpacesWebhooks = '[]
        requestClient SpacesWebhooks'{..}
          = go _swParent _swXgafv _swUploadProtocol
              _swAccessToken
              _swUploadType
              _swCallback
              _swThreadKey
              (Just AltJSON)
              _swPayload
              chatService
          where go
                  = buildClient (Proxy :: Proxy SpacesWebhooksResource)
                      mempty
