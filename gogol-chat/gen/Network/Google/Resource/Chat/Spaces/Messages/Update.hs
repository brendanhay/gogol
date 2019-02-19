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
-- Module      : Network.Google.Resource.Chat.Spaces.Messages.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a message.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference> for @chat.spaces.messages.update@.
module Network.Google.Resource.Chat.Spaces.Messages.Update
    (
    -- * REST Resource
      SpacesMessagesUpdateResource

    -- * Creating a Request
    , spacesMessagesUpdate
    , SpacesMessagesUpdate

    -- * Request Lenses
    , smuXgafv
    , smuUploadProtocol
    , smuUpdateMask
    , smuAccessToken
    , smuUploadType
    , smuPayload
    , smuName
    , smuCallback
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude

-- | A resource alias for @chat.spaces.messages.update@ method which the
-- 'SpacesMessagesUpdate' request conforms to.
type SpacesMessagesUpdateResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Message :> Put '[JSON] Message

-- | Updates a message.
--
-- /See:/ 'spacesMessagesUpdate' smart constructor.
data SpacesMessagesUpdate =
  SpacesMessagesUpdate'
    { _smuXgafv          :: !(Maybe Xgafv)
    , _smuUploadProtocol :: !(Maybe Text)
    , _smuUpdateMask     :: !(Maybe GFieldMask)
    , _smuAccessToken    :: !(Maybe Text)
    , _smuUploadType     :: !(Maybe Text)
    , _smuPayload        :: !Message
    , _smuName           :: !Text
    , _smuCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpacesMessagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smuXgafv'
--
-- * 'smuUploadProtocol'
--
-- * 'smuUpdateMask'
--
-- * 'smuAccessToken'
--
-- * 'smuUploadType'
--
-- * 'smuPayload'
--
-- * 'smuName'
--
-- * 'smuCallback'
spacesMessagesUpdate
    :: Message -- ^ 'smuPayload'
    -> Text -- ^ 'smuName'
    -> SpacesMessagesUpdate
spacesMessagesUpdate pSmuPayload_ pSmuName_ =
  SpacesMessagesUpdate'
    { _smuXgafv = Nothing
    , _smuUploadProtocol = Nothing
    , _smuUpdateMask = Nothing
    , _smuAccessToken = Nothing
    , _smuUploadType = Nothing
    , _smuPayload = pSmuPayload_
    , _smuName = pSmuName_
    , _smuCallback = Nothing
    }


-- | V1 error format.
smuXgafv :: Lens' SpacesMessagesUpdate (Maybe Xgafv)
smuXgafv = lens _smuXgafv (\ s a -> s{_smuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smuUploadProtocol :: Lens' SpacesMessagesUpdate (Maybe Text)
smuUploadProtocol
  = lens _smuUploadProtocol
      (\ s a -> s{_smuUploadProtocol = a})

-- | Required. The field paths to be updated. Currently supported field
-- paths: \"text\", \"cards\".
smuUpdateMask :: Lens' SpacesMessagesUpdate (Maybe GFieldMask)
smuUpdateMask
  = lens _smuUpdateMask
      (\ s a -> s{_smuUpdateMask = a})

-- | OAuth access token.
smuAccessToken :: Lens' SpacesMessagesUpdate (Maybe Text)
smuAccessToken
  = lens _smuAccessToken
      (\ s a -> s{_smuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smuUploadType :: Lens' SpacesMessagesUpdate (Maybe Text)
smuUploadType
  = lens _smuUploadType
      (\ s a -> s{_smuUploadType = a})

-- | Multipart request metadata.
smuPayload :: Lens' SpacesMessagesUpdate Message
smuPayload
  = lens _smuPayload (\ s a -> s{_smuPayload = a})

-- | Resource name, in the form \"spaces\/*\/messages\/*\". Example:
-- spaces\/AAAAMpdlehY\/messages\/UMxbHmzDlr4.UMxbHmzDlr4
smuName :: Lens' SpacesMessagesUpdate Text
smuName = lens _smuName (\ s a -> s{_smuName = a})

-- | JSONP
smuCallback :: Lens' SpacesMessagesUpdate (Maybe Text)
smuCallback
  = lens _smuCallback (\ s a -> s{_smuCallback = a})

instance GoogleRequest SpacesMessagesUpdate where
        type Rs SpacesMessagesUpdate = Message
        type Scopes SpacesMessagesUpdate = '[]
        requestClient SpacesMessagesUpdate'{..}
          = go _smuName _smuXgafv _smuUploadProtocol
              _smuUpdateMask
              _smuAccessToken
              _smuUploadType
              _smuCallback
              (Just AltJSON)
              _smuPayload
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMessagesUpdateResource)
                      mempty
