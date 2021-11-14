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
-- Module      : Network.Google.Resource.Chat.Dms.Webhooks
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Legacy path for creating message. Calling these will result in a
-- BadRequest response.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.dms.webhooks@.
module Network.Google.Resource.Chat.Dms.Webhooks
    (
    -- * REST Resource
      DmsWebhooksResource

    -- * Creating a Request
    , dmsWebhooks
    , DmsWebhooks

    -- * Request Lenses
    , dwParent
    , dwXgafv
    , dwUploadProtocol
    , dwAccessToken
    , dwUploadType
    , dwPayload
    , dwCallback
    , dwThreadKey
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.dms.webhooks@ method which the
-- 'DmsWebhooks' request conforms to.
type DmsWebhooksResource =
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
-- /See:/ 'dmsWebhooks' smart constructor.
data DmsWebhooks =
  DmsWebhooks'
    { _dwParent :: !Text
    , _dwXgafv :: !(Maybe Xgafv)
    , _dwUploadProtocol :: !(Maybe Text)
    , _dwAccessToken :: !(Maybe Text)
    , _dwUploadType :: !(Maybe Text)
    , _dwPayload :: !Message
    , _dwCallback :: !(Maybe Text)
    , _dwThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DmsWebhooks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwParent'
--
-- * 'dwXgafv'
--
-- * 'dwUploadProtocol'
--
-- * 'dwAccessToken'
--
-- * 'dwUploadType'
--
-- * 'dwPayload'
--
-- * 'dwCallback'
--
-- * 'dwThreadKey'
dmsWebhooks
    :: Text -- ^ 'dwParent'
    -> Message -- ^ 'dwPayload'
    -> DmsWebhooks
dmsWebhooks pDwParent_ pDwPayload_ =
  DmsWebhooks'
    { _dwParent = pDwParent_
    , _dwXgafv = Nothing
    , _dwUploadProtocol = Nothing
    , _dwAccessToken = Nothing
    , _dwUploadType = Nothing
    , _dwPayload = pDwPayload_
    , _dwCallback = Nothing
    , _dwThreadKey = Nothing
    }


-- | Required. Space resource name, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehY
dwParent :: Lens' DmsWebhooks Text
dwParent = lens _dwParent (\ s a -> s{_dwParent = a})

-- | V1 error format.
dwXgafv :: Lens' DmsWebhooks (Maybe Xgafv)
dwXgafv = lens _dwXgafv (\ s a -> s{_dwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dwUploadProtocol :: Lens' DmsWebhooks (Maybe Text)
dwUploadProtocol
  = lens _dwUploadProtocol
      (\ s a -> s{_dwUploadProtocol = a})

-- | OAuth access token.
dwAccessToken :: Lens' DmsWebhooks (Maybe Text)
dwAccessToken
  = lens _dwAccessToken
      (\ s a -> s{_dwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dwUploadType :: Lens' DmsWebhooks (Maybe Text)
dwUploadType
  = lens _dwUploadType (\ s a -> s{_dwUploadType = a})

-- | Multipart request metadata.
dwPayload :: Lens' DmsWebhooks Message
dwPayload
  = lens _dwPayload (\ s a -> s{_dwPayload = a})

-- | JSONP
dwCallback :: Lens' DmsWebhooks (Maybe Text)
dwCallback
  = lens _dwCallback (\ s a -> s{_dwCallback = a})

-- | Opaque thread identifier string that can be specified to group messages
-- into a single thread. If this is the first message with a given thread
-- identifier, a new thread is created. Subsequent messages with the same
-- thread identifier will be posted into the same thread. This relieves
-- bots and webhooks from having to store the Hangouts Chat thread ID of a
-- thread (created earlier by them) to post further updates to it. Has no
-- effect if thread field, corresponding to an existing thread, is set in
-- message.
dwThreadKey :: Lens' DmsWebhooks (Maybe Text)
dwThreadKey
  = lens _dwThreadKey (\ s a -> s{_dwThreadKey = a})

instance GoogleRequest DmsWebhooks where
        type Rs DmsWebhooks = Message
        type Scopes DmsWebhooks = '[]
        requestClient DmsWebhooks'{..}
          = go _dwParent _dwXgafv _dwUploadProtocol
              _dwAccessToken
              _dwUploadType
              _dwCallback
              _dwThreadKey
              (Just AltJSON)
              _dwPayload
              chatService
          where go
                  = buildClient (Proxy :: Proxy DmsWebhooksResource)
                      mempty
