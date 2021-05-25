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
-- Module      : Network.Google.Resource.Chat.Spaces.Messages.Attachments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of a message attachment. The attachment data is
-- fetched using the media API.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.messages.attachments.get@.
module Network.Google.Resource.Chat.Spaces.Messages.Attachments.Get
    (
    -- * REST Resource
      SpacesMessagesAttachmentsGetResource

    -- * Creating a Request
    , spacesMessagesAttachmentsGet
    , SpacesMessagesAttachmentsGet

    -- * Request Lenses
    , smagXgafv
    , smagUploadProtocol
    , smagAccessToken
    , smagUploadType
    , smagName
    , smagCallback
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.spaces.messages.attachments.get@ method which the
-- 'SpacesMessagesAttachmentsGet' request conforms to.
type SpacesMessagesAttachmentsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Attachment

-- | Gets the metadata of a message attachment. The attachment data is
-- fetched using the media API.
--
-- /See:/ 'spacesMessagesAttachmentsGet' smart constructor.
data SpacesMessagesAttachmentsGet =
  SpacesMessagesAttachmentsGet'
    { _smagXgafv :: !(Maybe Xgafv)
    , _smagUploadProtocol :: !(Maybe Text)
    , _smagAccessToken :: !(Maybe Text)
    , _smagUploadType :: !(Maybe Text)
    , _smagName :: !Text
    , _smagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpacesMessagesAttachmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smagXgafv'
--
-- * 'smagUploadProtocol'
--
-- * 'smagAccessToken'
--
-- * 'smagUploadType'
--
-- * 'smagName'
--
-- * 'smagCallback'
spacesMessagesAttachmentsGet
    :: Text -- ^ 'smagName'
    -> SpacesMessagesAttachmentsGet
spacesMessagesAttachmentsGet pSmagName_ =
  SpacesMessagesAttachmentsGet'
    { _smagXgafv = Nothing
    , _smagUploadProtocol = Nothing
    , _smagAccessToken = Nothing
    , _smagUploadType = Nothing
    , _smagName = pSmagName_
    , _smagCallback = Nothing
    }


-- | V1 error format.
smagXgafv :: Lens' SpacesMessagesAttachmentsGet (Maybe Xgafv)
smagXgafv
  = lens _smagXgafv (\ s a -> s{_smagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smagUploadProtocol :: Lens' SpacesMessagesAttachmentsGet (Maybe Text)
smagUploadProtocol
  = lens _smagUploadProtocol
      (\ s a -> s{_smagUploadProtocol = a})

-- | OAuth access token.
smagAccessToken :: Lens' SpacesMessagesAttachmentsGet (Maybe Text)
smagAccessToken
  = lens _smagAccessToken
      (\ s a -> s{_smagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smagUploadType :: Lens' SpacesMessagesAttachmentsGet (Maybe Text)
smagUploadType
  = lens _smagUploadType
      (\ s a -> s{_smagUploadType = a})

-- | Resource name of the attachment, in the form
-- \"spaces\/*\/messages\/*\/attachments\/*\".
smagName :: Lens' SpacesMessagesAttachmentsGet Text
smagName = lens _smagName (\ s a -> s{_smagName = a})

-- | JSONP
smagCallback :: Lens' SpacesMessagesAttachmentsGet (Maybe Text)
smagCallback
  = lens _smagCallback (\ s a -> s{_smagCallback = a})

instance GoogleRequest SpacesMessagesAttachmentsGet
         where
        type Rs SpacesMessagesAttachmentsGet = Attachment
        type Scopes SpacesMessagesAttachmentsGet = '[]
        requestClient SpacesMessagesAttachmentsGet'{..}
          = go _smagName _smagXgafv _smagUploadProtocol
              _smagAccessToken
              _smagUploadType
              _smagCallback
              (Just AltJSON)
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMessagesAttachmentsGetResource)
                      mempty
