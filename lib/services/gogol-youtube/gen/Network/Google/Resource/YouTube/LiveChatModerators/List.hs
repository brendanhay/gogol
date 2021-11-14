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
-- Module      : Network.Google.Resource.YouTube.LiveChatModerators.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatModerators.list@.
module Network.Google.Resource.YouTube.LiveChatModerators.List
    (
    -- * REST Resource
      LiveChatModeratorsListResource

    -- * Creating a Request
    , liveChatModeratorsList
    , LiveChatModeratorsList

    -- * Request Lenses
    , livXgafv
    , livPart
    , livUploadProtocol
    , livLiveChatId
    , livAccessToken
    , livUploadType
    , livPageToken
    , livMaxResults
    , livCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatModerators.list@ method which the
-- 'LiveChatModeratorsList' request conforms to.
type LiveChatModeratorsListResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "moderators" :>
             QueryParam "liveChatId" Text :>
               QueryParams "part" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] LiveChatModeratorListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'liveChatModeratorsList' smart constructor.
data LiveChatModeratorsList =
  LiveChatModeratorsList'
    { _livXgafv :: !(Maybe Xgafv)
    , _livPart :: ![Text]
    , _livUploadProtocol :: !(Maybe Text)
    , _livLiveChatId :: !Text
    , _livAccessToken :: !(Maybe Text)
    , _livUploadType :: !(Maybe Text)
    , _livPageToken :: !(Maybe Text)
    , _livMaxResults :: !(Textual Word32)
    , _livCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatModeratorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'livXgafv'
--
-- * 'livPart'
--
-- * 'livUploadProtocol'
--
-- * 'livLiveChatId'
--
-- * 'livAccessToken'
--
-- * 'livUploadType'
--
-- * 'livPageToken'
--
-- * 'livMaxResults'
--
-- * 'livCallback'
liveChatModeratorsList
    :: [Text] -- ^ 'livPart'
    -> Text -- ^ 'livLiveChatId'
    -> LiveChatModeratorsList
liveChatModeratorsList pLivPart_ pLivLiveChatId_ =
  LiveChatModeratorsList'
    { _livXgafv = Nothing
    , _livPart = _Coerce # pLivPart_
    , _livUploadProtocol = Nothing
    , _livLiveChatId = pLivLiveChatId_
    , _livAccessToken = Nothing
    , _livUploadType = Nothing
    , _livPageToken = Nothing
    , _livMaxResults = 5
    , _livCallback = Nothing
    }


-- | V1 error format.
livXgafv :: Lens' LiveChatModeratorsList (Maybe Xgafv)
livXgafv = lens _livXgafv (\ s a -> s{_livXgafv = a})

-- | The *part* parameter specifies the liveChatModerator resource parts that
-- the API response will include. Supported values are id and snippet.
livPart :: Lens' LiveChatModeratorsList [Text]
livPart
  = lens _livPart (\ s a -> s{_livPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
livUploadProtocol :: Lens' LiveChatModeratorsList (Maybe Text)
livUploadProtocol
  = lens _livUploadProtocol
      (\ s a -> s{_livUploadProtocol = a})

-- | The id of the live chat for which moderators should be returned.
livLiveChatId :: Lens' LiveChatModeratorsList Text
livLiveChatId
  = lens _livLiveChatId
      (\ s a -> s{_livLiveChatId = a})

-- | OAuth access token.
livAccessToken :: Lens' LiveChatModeratorsList (Maybe Text)
livAccessToken
  = lens _livAccessToken
      (\ s a -> s{_livAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
livUploadType :: Lens' LiveChatModeratorsList (Maybe Text)
livUploadType
  = lens _livUploadType
      (\ s a -> s{_livUploadType = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
livPageToken :: Lens' LiveChatModeratorsList (Maybe Text)
livPageToken
  = lens _livPageToken (\ s a -> s{_livPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
livMaxResults :: Lens' LiveChatModeratorsList Word32
livMaxResults
  = lens _livMaxResults
      (\ s a -> s{_livMaxResults = a})
      . _Coerce

-- | JSONP
livCallback :: Lens' LiveChatModeratorsList (Maybe Text)
livCallback
  = lens _livCallback (\ s a -> s{_livCallback = a})

instance GoogleRequest LiveChatModeratorsList where
        type Rs LiveChatModeratorsList =
             LiveChatModeratorListResponse
        type Scopes LiveChatModeratorsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient LiveChatModeratorsList'{..}
          = go (Just _livLiveChatId) _livPart _livXgafv
              _livUploadProtocol
              _livAccessToken
              _livUploadType
              _livPageToken
              (Just _livMaxResults)
              _livCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatModeratorsListResource)
                      mempty
