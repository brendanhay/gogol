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
-- Module      : Network.Google.Resource.Chat.Spaces.Messages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a message.
--
-- /See:/ <https://developers.google.com/hangouts/chat Hangouts Chat API Reference> for @chat.spaces.messages.delete@.
module Network.Google.Resource.Chat.Spaces.Messages.Delete
    (
    -- * REST Resource
      SpacesMessagesDeleteResource

    -- * Creating a Request
    , spacesMessagesDelete
    , SpacesMessagesDelete

    -- * Request Lenses
    , smdXgafv
    , smdUploadProtocol
    , smdAccessToken
    , smdUploadType
    , smdName
    , smdCallback
    ) where

import           Network.Google.Chat.Types
import           Network.Google.Prelude

-- | A resource alias for @chat.spaces.messages.delete@ method which the
-- 'SpacesMessagesDelete' request conforms to.
type SpacesMessagesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a message.
--
-- /See:/ 'spacesMessagesDelete' smart constructor.
data SpacesMessagesDelete = SpacesMessagesDelete'
    { _smdXgafv          :: !(Maybe Xgafv)
    , _smdUploadProtocol :: !(Maybe Text)
    , _smdAccessToken    :: !(Maybe Text)
    , _smdUploadType     :: !(Maybe Text)
    , _smdName           :: !Text
    , _smdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SpacesMessagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smdXgafv'
--
-- * 'smdUploadProtocol'
--
-- * 'smdAccessToken'
--
-- * 'smdUploadType'
--
-- * 'smdName'
--
-- * 'smdCallback'
spacesMessagesDelete
    :: Text -- ^ 'smdName'
    -> SpacesMessagesDelete
spacesMessagesDelete pSmdName_ =
    SpacesMessagesDelete'
    { _smdXgafv = Nothing
    , _smdUploadProtocol = Nothing
    , _smdAccessToken = Nothing
    , _smdUploadType = Nothing
    , _smdName = pSmdName_
    , _smdCallback = Nothing
    }

-- | V1 error format.
smdXgafv :: Lens' SpacesMessagesDelete (Maybe Xgafv)
smdXgafv = lens _smdXgafv (\ s a -> s{_smdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
smdUploadProtocol :: Lens' SpacesMessagesDelete (Maybe Text)
smdUploadProtocol
  = lens _smdUploadProtocol
      (\ s a -> s{_smdUploadProtocol = a})

-- | OAuth access token.
smdAccessToken :: Lens' SpacesMessagesDelete (Maybe Text)
smdAccessToken
  = lens _smdAccessToken
      (\ s a -> s{_smdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
smdUploadType :: Lens' SpacesMessagesDelete (Maybe Text)
smdUploadType
  = lens _smdUploadType
      (\ s a -> s{_smdUploadType = a})

-- | Required. Resource name of the message to be deleted, in the form
-- \"spaces\/*\/messages\/*\" Example:
-- spaces\/AAAAMpdlehY\/messages\/UMxbHmzDlr4.UMxbHmzDlr4
smdName :: Lens' SpacesMessagesDelete Text
smdName = lens _smdName (\ s a -> s{_smdName = a})

-- | JSONP
smdCallback :: Lens' SpacesMessagesDelete (Maybe Text)
smdCallback
  = lens _smdCallback (\ s a -> s{_smdCallback = a})

instance GoogleRequest SpacesMessagesDelete where
        type Rs SpacesMessagesDelete = Empty
        type Scopes SpacesMessagesDelete = '[]
        requestClient SpacesMessagesDelete'{..}
          = go _smdName _smdXgafv _smdUploadProtocol
              _smdAccessToken
              _smdUploadType
              _smdCallback
              (Just AltJSON)
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMessagesDeleteResource)
                      mempty
