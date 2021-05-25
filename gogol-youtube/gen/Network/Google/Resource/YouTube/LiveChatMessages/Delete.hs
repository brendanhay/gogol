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
-- Module      : Network.Google.Resource.YouTube.LiveChatMessages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a chat message.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.delete@.
module Network.Google.Resource.YouTube.LiveChatMessages.Delete
    (
    -- * REST Resource
      LiveChatMessagesDeleteResource

    -- * Creating a Request
    , liveChatMessagesDelete
    , LiveChatMessagesDelete

    -- * Request Lenses
    , lcmdcXgafv
    , lcmdcUploadProtocol
    , lcmdcAccessToken
    , lcmdcUploadType
    , lcmdcId
    , lcmdcCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.delete@ method which the
-- 'LiveChatMessagesDelete' request conforms to.
type LiveChatMessagesDeleteResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "messages" :>
             QueryParam "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a chat message.
--
-- /See:/ 'liveChatMessagesDelete' smart constructor.
data LiveChatMessagesDelete =
  LiveChatMessagesDelete'
    { _lcmdcXgafv :: !(Maybe Xgafv)
    , _lcmdcUploadProtocol :: !(Maybe Text)
    , _lcmdcAccessToken :: !(Maybe Text)
    , _lcmdcUploadType :: !(Maybe Text)
    , _lcmdcId :: !Text
    , _lcmdcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatMessagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmdcXgafv'
--
-- * 'lcmdcUploadProtocol'
--
-- * 'lcmdcAccessToken'
--
-- * 'lcmdcUploadType'
--
-- * 'lcmdcId'
--
-- * 'lcmdcCallback'
liveChatMessagesDelete
    :: Text -- ^ 'lcmdcId'
    -> LiveChatMessagesDelete
liveChatMessagesDelete pLcmdcId_ =
  LiveChatMessagesDelete'
    { _lcmdcXgafv = Nothing
    , _lcmdcUploadProtocol = Nothing
    , _lcmdcAccessToken = Nothing
    , _lcmdcUploadType = Nothing
    , _lcmdcId = pLcmdcId_
    , _lcmdcCallback = Nothing
    }


-- | V1 error format.
lcmdcXgafv :: Lens' LiveChatMessagesDelete (Maybe Xgafv)
lcmdcXgafv
  = lens _lcmdcXgafv (\ s a -> s{_lcmdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcmdcUploadProtocol :: Lens' LiveChatMessagesDelete (Maybe Text)
lcmdcUploadProtocol
  = lens _lcmdcUploadProtocol
      (\ s a -> s{_lcmdcUploadProtocol = a})

-- | OAuth access token.
lcmdcAccessToken :: Lens' LiveChatMessagesDelete (Maybe Text)
lcmdcAccessToken
  = lens _lcmdcAccessToken
      (\ s a -> s{_lcmdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcmdcUploadType :: Lens' LiveChatMessagesDelete (Maybe Text)
lcmdcUploadType
  = lens _lcmdcUploadType
      (\ s a -> s{_lcmdcUploadType = a})

lcmdcId :: Lens' LiveChatMessagesDelete Text
lcmdcId = lens _lcmdcId (\ s a -> s{_lcmdcId = a})

-- | JSONP
lcmdcCallback :: Lens' LiveChatMessagesDelete (Maybe Text)
lcmdcCallback
  = lens _lcmdcCallback
      (\ s a -> s{_lcmdcCallback = a})

instance GoogleRequest LiveChatMessagesDelete where
        type Rs LiveChatMessagesDelete = ()
        type Scopes LiveChatMessagesDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatMessagesDelete'{..}
          = go (Just _lcmdcId) _lcmdcXgafv _lcmdcUploadProtocol
              _lcmdcAccessToken
              _lcmdcUploadType
              _lcmdcCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatMessagesDeleteResource)
                      mempty
