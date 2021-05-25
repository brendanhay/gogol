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
-- Module      : Network.Google.Resource.YouTube.LiveChatBans.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a chat ban.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatBans.delete@.
module Network.Google.Resource.YouTube.LiveChatBans.Delete
    (
    -- * REST Resource
      LiveChatBansDeleteResource

    -- * Creating a Request
    , liveChatBansDelete
    , LiveChatBansDelete

    -- * Request Lenses
    , lcbdXgafv
    , lcbdUploadProtocol
    , lcbdAccessToken
    , lcbdUploadType
    , lcbdId
    , lcbdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatBans.delete@ method which the
-- 'LiveChatBansDelete' request conforms to.
type LiveChatBansDeleteResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "bans" :>
             QueryParam "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a chat ban.
--
-- /See:/ 'liveChatBansDelete' smart constructor.
data LiveChatBansDelete =
  LiveChatBansDelete'
    { _lcbdXgafv :: !(Maybe Xgafv)
    , _lcbdUploadProtocol :: !(Maybe Text)
    , _lcbdAccessToken :: !(Maybe Text)
    , _lcbdUploadType :: !(Maybe Text)
    , _lcbdId :: !Text
    , _lcbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatBansDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbdXgafv'
--
-- * 'lcbdUploadProtocol'
--
-- * 'lcbdAccessToken'
--
-- * 'lcbdUploadType'
--
-- * 'lcbdId'
--
-- * 'lcbdCallback'
liveChatBansDelete
    :: Text -- ^ 'lcbdId'
    -> LiveChatBansDelete
liveChatBansDelete pLcbdId_ =
  LiveChatBansDelete'
    { _lcbdXgafv = Nothing
    , _lcbdUploadProtocol = Nothing
    , _lcbdAccessToken = Nothing
    , _lcbdUploadType = Nothing
    , _lcbdId = pLcbdId_
    , _lcbdCallback = Nothing
    }


-- | V1 error format.
lcbdXgafv :: Lens' LiveChatBansDelete (Maybe Xgafv)
lcbdXgafv
  = lens _lcbdXgafv (\ s a -> s{_lcbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcbdUploadProtocol :: Lens' LiveChatBansDelete (Maybe Text)
lcbdUploadProtocol
  = lens _lcbdUploadProtocol
      (\ s a -> s{_lcbdUploadProtocol = a})

-- | OAuth access token.
lcbdAccessToken :: Lens' LiveChatBansDelete (Maybe Text)
lcbdAccessToken
  = lens _lcbdAccessToken
      (\ s a -> s{_lcbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcbdUploadType :: Lens' LiveChatBansDelete (Maybe Text)
lcbdUploadType
  = lens _lcbdUploadType
      (\ s a -> s{_lcbdUploadType = a})

lcbdId :: Lens' LiveChatBansDelete Text
lcbdId = lens _lcbdId (\ s a -> s{_lcbdId = a})

-- | JSONP
lcbdCallback :: Lens' LiveChatBansDelete (Maybe Text)
lcbdCallback
  = lens _lcbdCallback (\ s a -> s{_lcbdCallback = a})

instance GoogleRequest LiveChatBansDelete where
        type Rs LiveChatBansDelete = ()
        type Scopes LiveChatBansDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatBansDelete'{..}
          = go (Just _lcbdId) _lcbdXgafv _lcbdUploadProtocol
              _lcbdAccessToken
              _lcbdUploadType
              _lcbdCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatBansDeleteResource)
                      mempty
