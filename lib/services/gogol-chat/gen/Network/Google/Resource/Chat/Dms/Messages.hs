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
-- Module      : Network.Google.Resource.Chat.Dms.Messages
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.dms.messages@.
module Network.Google.Resource.Chat.Dms.Messages
    (
    -- * REST Resource
      DmsMessagesResource

    -- * Creating a Request
    , dmsMessages
    , DmsMessages

    -- * Request Lenses
    , dmParent
    , dmXgafv
    , dmUploadProtocol
    , dmAccessToken
    , dmUploadType
    , dmPayload
    , dmCallback
    , dmThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.dms.messages@ method which the
-- 'DmsMessages' request conforms to.
type DmsMessagesResource =
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
-- /See:/ 'dmsMessages' smart constructor.
data DmsMessages =
  DmsMessages'
    { _dmParent :: !Text
    , _dmXgafv :: !(Maybe Xgafv)
    , _dmUploadProtocol :: !(Maybe Text)
    , _dmAccessToken :: !(Maybe Text)
    , _dmUploadType :: !(Maybe Text)
    , _dmPayload :: !Message
    , _dmCallback :: !(Maybe Text)
    , _dmThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DmsMessages' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmParent'
--
-- * 'dmXgafv'
--
-- * 'dmUploadProtocol'
--
-- * 'dmAccessToken'
--
-- * 'dmUploadType'
--
-- * 'dmPayload'
--
-- * 'dmCallback'
--
-- * 'dmThreadKey'
dmsMessages
    :: Text -- ^ 'dmParent'
    -> Message -- ^ 'dmPayload'
    -> DmsMessages
dmsMessages pDmParent_ pDmPayload_ =
  DmsMessages'
    { _dmParent = pDmParent_
    , _dmXgafv = Nothing
    , _dmUploadProtocol = Nothing
    , _dmAccessToken = Nothing
    , _dmUploadType = Nothing
    , _dmPayload = pDmPayload_
    , _dmCallback = Nothing
    , _dmThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
dmParent :: Lens' DmsMessages Text
dmParent = lens _dmParent (\ s a -> s{_dmParent = a})

-- | V1 error format.
dmXgafv :: Lens' DmsMessages (Maybe Xgafv)
dmXgafv = lens _dmXgafv (\ s a -> s{_dmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dmUploadProtocol :: Lens' DmsMessages (Maybe Text)
dmUploadProtocol
  = lens _dmUploadProtocol
      (\ s a -> s{_dmUploadProtocol = a})

-- | OAuth access token.
dmAccessToken :: Lens' DmsMessages (Maybe Text)
dmAccessToken
  = lens _dmAccessToken
      (\ s a -> s{_dmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dmUploadType :: Lens' DmsMessages (Maybe Text)
dmUploadType
  = lens _dmUploadType (\ s a -> s{_dmUploadType = a})

-- | Multipart request metadata.
dmPayload :: Lens' DmsMessages Message
dmPayload
  = lens _dmPayload (\ s a -> s{_dmPayload = a})

-- | JSONP
dmCallback :: Lens' DmsMessages (Maybe Text)
dmCallback
  = lens _dmCallback (\ s a -> s{_dmCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
dmThreadKey :: Lens' DmsMessages (Maybe Text)
dmThreadKey
  = lens _dmThreadKey (\ s a -> s{_dmThreadKey = a})

instance GoogleRequest DmsMessages where
        type Rs DmsMessages = Message
        type Scopes DmsMessages = '[]
        requestClient DmsMessages'{..}
          = go _dmParent _dmXgafv _dmUploadProtocol
              _dmAccessToken
              _dmUploadType
              _dmCallback
              _dmThreadKey
              (Just AltJSON)
              _dmPayload
              chatService
          where go
                  = buildClient (Proxy :: Proxy DmsMessagesResource)
                      mempty
