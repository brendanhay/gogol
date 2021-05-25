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
-- Module      : Network.Google.Resource.YouTube.LiveChatModerators.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a chat moderator.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatModerators.delete@.
module Network.Google.Resource.YouTube.LiveChatModerators.Delete
    (
    -- * REST Resource
      LiveChatModeratorsDeleteResource

    -- * Creating a Request
    , liveChatModeratorsDelete
    , LiveChatModeratorsDelete

    -- * Request Lenses
    , lcmdXgafv
    , lcmdUploadProtocol
    , lcmdAccessToken
    , lcmdUploadType
    , lcmdId
    , lcmdCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.delete@ method which the
-- 'LiveChatModeratorsDelete' request conforms to.
type LiveChatModeratorsDeleteResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "moderators" :>
             QueryParam "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a chat moderator.
--
-- /See:/ 'liveChatModeratorsDelete' smart constructor.
data LiveChatModeratorsDelete =
  LiveChatModeratorsDelete'
    { _lcmdXgafv :: !(Maybe Xgafv)
    , _lcmdUploadProtocol :: !(Maybe Text)
    , _lcmdAccessToken :: !(Maybe Text)
    , _lcmdUploadType :: !(Maybe Text)
    , _lcmdId :: !Text
    , _lcmdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatModeratorsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmdXgafv'
--
-- * 'lcmdUploadProtocol'
--
-- * 'lcmdAccessToken'
--
-- * 'lcmdUploadType'
--
-- * 'lcmdId'
--
-- * 'lcmdCallback'
liveChatModeratorsDelete
    :: Text -- ^ 'lcmdId'
    -> LiveChatModeratorsDelete
liveChatModeratorsDelete pLcmdId_ =
  LiveChatModeratorsDelete'
    { _lcmdXgafv = Nothing
    , _lcmdUploadProtocol = Nothing
    , _lcmdAccessToken = Nothing
    , _lcmdUploadType = Nothing
    , _lcmdId = pLcmdId_
    , _lcmdCallback = Nothing
    }


-- | V1 error format.
lcmdXgafv :: Lens' LiveChatModeratorsDelete (Maybe Xgafv)
lcmdXgafv
  = lens _lcmdXgafv (\ s a -> s{_lcmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcmdUploadProtocol :: Lens' LiveChatModeratorsDelete (Maybe Text)
lcmdUploadProtocol
  = lens _lcmdUploadProtocol
      (\ s a -> s{_lcmdUploadProtocol = a})

-- | OAuth access token.
lcmdAccessToken :: Lens' LiveChatModeratorsDelete (Maybe Text)
lcmdAccessToken
  = lens _lcmdAccessToken
      (\ s a -> s{_lcmdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcmdUploadType :: Lens' LiveChatModeratorsDelete (Maybe Text)
lcmdUploadType
  = lens _lcmdUploadType
      (\ s a -> s{_lcmdUploadType = a})

lcmdId :: Lens' LiveChatModeratorsDelete Text
lcmdId = lens _lcmdId (\ s a -> s{_lcmdId = a})

-- | JSONP
lcmdCallback :: Lens' LiveChatModeratorsDelete (Maybe Text)
lcmdCallback
  = lens _lcmdCallback (\ s a -> s{_lcmdCallback = a})

instance GoogleRequest LiveChatModeratorsDelete where
        type Rs LiveChatModeratorsDelete = ()
        type Scopes LiveChatModeratorsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient LiveChatModeratorsDelete'{..}
          = go (Just _lcmdId) _lcmdXgafv _lcmdUploadProtocol
              _lcmdAccessToken
              _lcmdUploadType
              _lcmdCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatModeratorsDeleteResource)
                      mempty
