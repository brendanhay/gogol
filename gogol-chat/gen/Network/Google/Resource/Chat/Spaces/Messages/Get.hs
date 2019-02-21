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
-- Module      : Network.Google.Resource.Chat.Spaces.Messages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a message.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference> for @chat.spaces.messages.get@.
module Network.Google.Resource.Chat.Spaces.Messages.Get
    (
    -- * REST Resource
      SpacesMessagesGetResource

    -- * Creating a Request
    , spacesMessagesGet
    , SpacesMessagesGet

    -- * Request Lenses
    , smgXgafv
    , smgUploadProtocol
    , smgAccessToken
    , smgUploadType
    , smgName
    , smgCallback
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude

-- | A resource alias for @chat.spaces.messages.get@ method which the
-- 'SpacesMessagesGet' request conforms to.
type SpacesMessagesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Message

-- | Returns a message.
--
-- /See:/ 'spacesMessagesGet' smart constructor.
data SpacesMessagesGet =
  SpacesMessagesGet'
    { _smgXgafv          :: !(Maybe Xgafv)
    , _smgUploadProtocol :: !(Maybe Text)
    , _smgAccessToken    :: !(Maybe Text)
    , _smgUploadType     :: !(Maybe Text)
    , _smgName           :: !Text
    , _smgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpacesMessagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smgXgafv'
--
-- * 'smgUploadProtocol'
--
-- * 'smgAccessToken'
--
-- * 'smgUploadType'
--
-- * 'smgName'
--
-- * 'smgCallback'
spacesMessagesGet
    :: Text -- ^ 'smgName'
    -> SpacesMessagesGet
spacesMessagesGet pSmgName_ =
  SpacesMessagesGet'
    { _smgXgafv = Nothing
    , _smgUploadProtocol = Nothing
    , _smgAccessToken = Nothing
    , _smgUploadType = Nothing
    , _smgName = pSmgName_
    , _smgCallback = Nothing
    }


-- | V1 error format.
smgXgafv :: Lens' SpacesMessagesGet (Maybe Xgafv)
smgXgafv = lens _smgXgafv (\ s a -> s{_smgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smgUploadProtocol :: Lens' SpacesMessagesGet (Maybe Text)
smgUploadProtocol
  = lens _smgUploadProtocol
      (\ s a -> s{_smgUploadProtocol = a})

-- | OAuth access token.
smgAccessToken :: Lens' SpacesMessagesGet (Maybe Text)
smgAccessToken
  = lens _smgAccessToken
      (\ s a -> s{_smgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smgUploadType :: Lens' SpacesMessagesGet (Maybe Text)
smgUploadType
  = lens _smgUploadType
      (\ s a -> s{_smgUploadType = a})

-- | Required. Resource name of the message to be retrieved, in the form
-- \"spaces\/*\/messages\/*\". Example:
-- spaces\/AAAAMpdlehY\/messages\/UMxbHmzDlr4.UMxbHmzDlr4
smgName :: Lens' SpacesMessagesGet Text
smgName = lens _smgName (\ s a -> s{_smgName = a})

-- | JSONP
smgCallback :: Lens' SpacesMessagesGet (Maybe Text)
smgCallback
  = lens _smgCallback (\ s a -> s{_smgCallback = a})

instance GoogleRequest SpacesMessagesGet where
        type Rs SpacesMessagesGet = Message
        type Scopes SpacesMessagesGet = '[]
        requestClient SpacesMessagesGet'{..}
          = go _smgName _smgXgafv _smgUploadProtocol
              _smgAccessToken
              _smgUploadType
              _smgCallback
              (Just AltJSON)
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMessagesGetResource)
                      mempty
