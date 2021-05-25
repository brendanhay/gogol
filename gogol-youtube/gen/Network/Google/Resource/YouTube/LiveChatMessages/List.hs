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
-- Module      : Network.Google.Resource.YouTube.LiveChatMessages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveChatMessages.list@.
module Network.Google.Resource.YouTube.LiveChatMessages.List
    (
    -- * REST Resource
      LiveChatMessagesListResource

    -- * Creating a Request
    , liveChatMessagesList
    , LiveChatMessagesList

    -- * Request Lenses
    , lcmlXgafv
    , lcmlPart
    , lcmlUploadProtocol
    , lcmlLiveChatId
    , lcmlAccessToken
    , lcmlUploadType
    , lcmlHl
    , lcmlPageToken
    , lcmlMaxResults
    , lcmlProFileImageSize
    , lcmlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveChatMessages.list@ method which the
-- 'LiveChatMessagesList' request conforms to.
type LiveChatMessagesListResource =
     "youtube" :>
       "v3" :>
         "liveChat" :>
           "messages" :>
             QueryParam "liveChatId" Text :>
               QueryParams "part" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "hl" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "profileImageSize" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] LiveChatMessageListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'liveChatMessagesList' smart constructor.
data LiveChatMessagesList =
  LiveChatMessagesList'
    { _lcmlXgafv :: !(Maybe Xgafv)
    , _lcmlPart :: ![Text]
    , _lcmlUploadProtocol :: !(Maybe Text)
    , _lcmlLiveChatId :: !Text
    , _lcmlAccessToken :: !(Maybe Text)
    , _lcmlUploadType :: !(Maybe Text)
    , _lcmlHl :: !(Maybe Text)
    , _lcmlPageToken :: !(Maybe Text)
    , _lcmlMaxResults :: !(Textual Word32)
    , _lcmlProFileImageSize :: !(Maybe (Textual Word32))
    , _lcmlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveChatMessagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmlXgafv'
--
-- * 'lcmlPart'
--
-- * 'lcmlUploadProtocol'
--
-- * 'lcmlLiveChatId'
--
-- * 'lcmlAccessToken'
--
-- * 'lcmlUploadType'
--
-- * 'lcmlHl'
--
-- * 'lcmlPageToken'
--
-- * 'lcmlMaxResults'
--
-- * 'lcmlProFileImageSize'
--
-- * 'lcmlCallback'
liveChatMessagesList
    :: [Text] -- ^ 'lcmlPart'
    -> Text -- ^ 'lcmlLiveChatId'
    -> LiveChatMessagesList
liveChatMessagesList pLcmlPart_ pLcmlLiveChatId_ =
  LiveChatMessagesList'
    { _lcmlXgafv = Nothing
    , _lcmlPart = _Coerce # pLcmlPart_
    , _lcmlUploadProtocol = Nothing
    , _lcmlLiveChatId = pLcmlLiveChatId_
    , _lcmlAccessToken = Nothing
    , _lcmlUploadType = Nothing
    , _lcmlHl = Nothing
    , _lcmlPageToken = Nothing
    , _lcmlMaxResults = 500
    , _lcmlProFileImageSize = Nothing
    , _lcmlCallback = Nothing
    }


-- | V1 error format.
lcmlXgafv :: Lens' LiveChatMessagesList (Maybe Xgafv)
lcmlXgafv
  = lens _lcmlXgafv (\ s a -> s{_lcmlXgafv = a})

-- | The *part* parameter specifies the liveChatComment resource parts that
-- the API response will include. Supported values are id and snippet.
lcmlPart :: Lens' LiveChatMessagesList [Text]
lcmlPart
  = lens _lcmlPart (\ s a -> s{_lcmlPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcmlUploadProtocol :: Lens' LiveChatMessagesList (Maybe Text)
lcmlUploadProtocol
  = lens _lcmlUploadProtocol
      (\ s a -> s{_lcmlUploadProtocol = a})

-- | The id of the live chat for which comments should be returned.
lcmlLiveChatId :: Lens' LiveChatMessagesList Text
lcmlLiveChatId
  = lens _lcmlLiveChatId
      (\ s a -> s{_lcmlLiveChatId = a})

-- | OAuth access token.
lcmlAccessToken :: Lens' LiveChatMessagesList (Maybe Text)
lcmlAccessToken
  = lens _lcmlAccessToken
      (\ s a -> s{_lcmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcmlUploadType :: Lens' LiveChatMessagesList (Maybe Text)
lcmlUploadType
  = lens _lcmlUploadType
      (\ s a -> s{_lcmlUploadType = a})

-- | Specifies the localization language in which the system messages should
-- be returned.
lcmlHl :: Lens' LiveChatMessagesList (Maybe Text)
lcmlHl = lens _lcmlHl (\ s a -> s{_lcmlHl = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identify other pages that could be retrieved.
lcmlPageToken :: Lens' LiveChatMessagesList (Maybe Text)
lcmlPageToken
  = lens _lcmlPageToken
      (\ s a -> s{_lcmlPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
lcmlMaxResults :: Lens' LiveChatMessagesList Word32
lcmlMaxResults
  = lens _lcmlMaxResults
      (\ s a -> s{_lcmlMaxResults = a})
      . _Coerce

-- | Specifies the size of the profile image that should be returned for each
-- user.
lcmlProFileImageSize :: Lens' LiveChatMessagesList (Maybe Word32)
lcmlProFileImageSize
  = lens _lcmlProFileImageSize
      (\ s a -> s{_lcmlProFileImageSize = a})
      . mapping _Coerce

-- | JSONP
lcmlCallback :: Lens' LiveChatMessagesList (Maybe Text)
lcmlCallback
  = lens _lcmlCallback (\ s a -> s{_lcmlCallback = a})

instance GoogleRequest LiveChatMessagesList where
        type Rs LiveChatMessagesList =
             LiveChatMessageListResponse
        type Scopes LiveChatMessagesList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient LiveChatMessagesList'{..}
          = go (Just _lcmlLiveChatId) _lcmlPart _lcmlXgafv
              _lcmlUploadProtocol
              _lcmlAccessToken
              _lcmlUploadType
              _lcmlHl
              _lcmlPageToken
              (Just _lcmlMaxResults)
              _lcmlProFileImageSize
              _lcmlCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveChatMessagesListResource)
                      mempty
