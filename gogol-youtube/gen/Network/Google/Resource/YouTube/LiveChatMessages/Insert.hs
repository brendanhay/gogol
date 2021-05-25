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
-- Module      : Network.Google.Resource.YouTube.LiveChatMessages.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new resource into this collection.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.insert@.
module Network.Google.Resource.YouTube.LiveChatMessages.Insert
    (
    -- * REST Resource
      LiveChatMessagesInsertResource

    -- * Creating a Request
    , liveChatMessagesInsert
    , LiveChatMessagesInsert

    -- * Request Lenses
    , lcmiXgafv
    , lcmiPart
    , lcmiUploadProtocol
    , lcmiAccessToken
    , lcmiUploadType
    , lcmiPayload
    , lcmiCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.insert@ method which the
-- 'LiveChatMessagesInsert' request conforms to.
type LiveChatMessagesInsertResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "messages" :>
             QueryParams "part" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LiveChatMessage :>
                             Post '[JSON] LiveChatMessage

-- | Inserts a new resource into this collection.
--
-- /See:/ 'liveChatMessagesInsert' smart constructor.
data LiveChatMessagesInsert =
  LiveChatMessagesInsert'
    { _lcmiXgafv :: !(Maybe Xgafv)
    , _lcmiPart :: ![Text]
    , _lcmiUploadProtocol :: !(Maybe Text)
    , _lcmiAccessToken :: !(Maybe Text)
    , _lcmiUploadType :: !(Maybe Text)
    , _lcmiPayload :: !LiveChatMessage
    , _lcmiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatMessagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmiXgafv'
--
-- * 'lcmiPart'
--
-- * 'lcmiUploadProtocol'
--
-- * 'lcmiAccessToken'
--
-- * 'lcmiUploadType'
--
-- * 'lcmiPayload'
--
-- * 'lcmiCallback'
liveChatMessagesInsert
    :: [Text] -- ^ 'lcmiPart'
    -> LiveChatMessage -- ^ 'lcmiPayload'
    -> LiveChatMessagesInsert
liveChatMessagesInsert pLcmiPart_ pLcmiPayload_ =
  LiveChatMessagesInsert'
    { _lcmiXgafv = Nothing
    , _lcmiPart = _Coerce # pLcmiPart_
    , _lcmiUploadProtocol = Nothing
    , _lcmiAccessToken = Nothing
    , _lcmiUploadType = Nothing
    , _lcmiPayload = pLcmiPayload_
    , _lcmiCallback = Nothing
    }


-- | V1 error format.
lcmiXgafv :: Lens' LiveChatMessagesInsert (Maybe Xgafv)
lcmiXgafv
  = lens _lcmiXgafv (\ s a -> s{_lcmiXgafv = a})

-- | The *part* parameter serves two purposes. It identifies the properties
-- that the write operation will set as well as the properties that the API
-- response will include. Set the parameter value to snippet.
lcmiPart :: Lens' LiveChatMessagesInsert [Text]
lcmiPart
  = lens _lcmiPart (\ s a -> s{_lcmiPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcmiUploadProtocol :: Lens' LiveChatMessagesInsert (Maybe Text)
lcmiUploadProtocol
  = lens _lcmiUploadProtocol
      (\ s a -> s{_lcmiUploadProtocol = a})

-- | OAuth access token.
lcmiAccessToken :: Lens' LiveChatMessagesInsert (Maybe Text)
lcmiAccessToken
  = lens _lcmiAccessToken
      (\ s a -> s{_lcmiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcmiUploadType :: Lens' LiveChatMessagesInsert (Maybe Text)
lcmiUploadType
  = lens _lcmiUploadType
      (\ s a -> s{_lcmiUploadType = a})

-- | Multipart request metadata.
lcmiPayload :: Lens' LiveChatMessagesInsert LiveChatMessage
lcmiPayload
  = lens _lcmiPayload (\ s a -> s{_lcmiPayload = a})

-- | JSONP
lcmiCallback :: Lens' LiveChatMessagesInsert (Maybe Text)
lcmiCallback
  = lens _lcmiCallback (\ s a -> s{_lcmiCallback = a})

instance GoogleRequest LiveChatMessagesInsert where
        type Rs LiveChatMessagesInsert = LiveChatMessage
        type Scopes LiveChatMessagesInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatMessagesInsert'{..}
          = go _lcmiPart _lcmiXgafv _lcmiUploadProtocol
              _lcmiAccessToken
              _lcmiUploadType
              _lcmiCallback
              (Just AltJSON)
              _lcmiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatMessagesInsertResource)
                      mempty
