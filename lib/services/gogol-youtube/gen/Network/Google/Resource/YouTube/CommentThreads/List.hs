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
-- Module      : Network.Google.Resource.YouTube.CommentThreads.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.commentThreads.list@.
module Network.Google.Resource.YouTube.CommentThreads.List
    (
    -- * REST Resource
      CommentThreadsListResource

    -- * Creating a Request
    , commentThreadsList
    , CommentThreadsList

    -- * Request Lenses
    , ctlXgafv
    , ctlPart
    , ctlUploadProtocol
    , ctlModerationStatus
    , ctlAccessToken
    , ctlSearchTerms
    , ctlUploadType
    , ctlChannelId
    , ctlAllThreadsRelatedToChannelId
    , ctlVideoId
    , ctlId
    , ctlPageToken
    , ctlOrder
    , ctlTextFormat
    , ctlMaxResults
    , ctlCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.commentThreads.list@ method which the
-- 'CommentThreadsList' request conforms to.
type CommentThreadsListResource =
     "youtube" :>
       "v3" :>
         "commentThreads" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "moderationStatus"
                   CommentThreadsListModerationStatus
                   :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchTerms" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "channelId" Text :>
                           QueryParam "allThreadsRelatedToChannelId" Text :>
                             QueryParam "videoId" Text :>
                               QueryParams "id" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "order" CommentThreadsListOrder :>
                                     QueryParam "textFormat"
                                       CommentThreadsListTextFormat
                                       :>
                                       QueryParam "maxResults" (Textual Word32)
                                         :>
                                         QueryParam "callback" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON]
                                               CommentThreadListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'commentThreadsList' smart constructor.
data CommentThreadsList =
  CommentThreadsList'
    { _ctlXgafv :: !(Maybe Xgafv)
    , _ctlPart :: ![Text]
    , _ctlUploadProtocol :: !(Maybe Text)
    , _ctlModerationStatus :: !CommentThreadsListModerationStatus
    , _ctlAccessToken :: !(Maybe Text)
    , _ctlSearchTerms :: !(Maybe Text)
    , _ctlUploadType :: !(Maybe Text)
    , _ctlChannelId :: !(Maybe Text)
    , _ctlAllThreadsRelatedToChannelId :: !(Maybe Text)
    , _ctlVideoId :: !(Maybe Text)
    , _ctlId :: !(Maybe [Text])
    , _ctlPageToken :: !(Maybe Text)
    , _ctlOrder :: !CommentThreadsListOrder
    , _ctlTextFormat :: !CommentThreadsListTextFormat
    , _ctlMaxResults :: !(Textual Word32)
    , _ctlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentThreadsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlXgafv'
--
-- * 'ctlPart'
--
-- * 'ctlUploadProtocol'
--
-- * 'ctlModerationStatus'
--
-- * 'ctlAccessToken'
--
-- * 'ctlSearchTerms'
--
-- * 'ctlUploadType'
--
-- * 'ctlChannelId'
--
-- * 'ctlAllThreadsRelatedToChannelId'
--
-- * 'ctlVideoId'
--
-- * 'ctlId'
--
-- * 'ctlPageToken'
--
-- * 'ctlOrder'
--
-- * 'ctlTextFormat'
--
-- * 'ctlMaxResults'
--
-- * 'ctlCallback'
commentThreadsList
    :: [Text] -- ^ 'ctlPart'
    -> CommentThreadsList
commentThreadsList pCtlPart_ =
  CommentThreadsList'
    { _ctlXgafv = Nothing
    , _ctlPart = _Coerce # pCtlPart_
    , _ctlUploadProtocol = Nothing
    , _ctlModerationStatus = Published
    , _ctlAccessToken = Nothing
    , _ctlSearchTerms = Nothing
    , _ctlUploadType = Nothing
    , _ctlChannelId = Nothing
    , _ctlAllThreadsRelatedToChannelId = Nothing
    , _ctlVideoId = Nothing
    , _ctlId = Nothing
    , _ctlPageToken = Nothing
    , _ctlOrder = CTLOTime
    , _ctlTextFormat = CTLTFHTML
    , _ctlMaxResults = 20
    , _ctlCallback = Nothing
    }


-- | V1 error format.
ctlXgafv :: Lens' CommentThreadsList (Maybe Xgafv)
ctlXgafv = lens _ctlXgafv (\ s a -> s{_ctlXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- commentThread resource properties that the API response will include.
ctlPart :: Lens' CommentThreadsList [Text]
ctlPart
  = lens _ctlPart (\ s a -> s{_ctlPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctlUploadProtocol :: Lens' CommentThreadsList (Maybe Text)
ctlUploadProtocol
  = lens _ctlUploadProtocol
      (\ s a -> s{_ctlUploadProtocol = a})

-- | Limits the returned comment threads to those with the specified
-- moderation status. Not compatible with the \'id\' filter. Valid values:
-- published, heldForReview, likelySpam.
ctlModerationStatus :: Lens' CommentThreadsList CommentThreadsListModerationStatus
ctlModerationStatus
  = lens _ctlModerationStatus
      (\ s a -> s{_ctlModerationStatus = a})

-- | OAuth access token.
ctlAccessToken :: Lens' CommentThreadsList (Maybe Text)
ctlAccessToken
  = lens _ctlAccessToken
      (\ s a -> s{_ctlAccessToken = a})

-- | Limits the returned comment threads to those matching the specified key
-- words. Not compatible with the \'id\' filter.
ctlSearchTerms :: Lens' CommentThreadsList (Maybe Text)
ctlSearchTerms
  = lens _ctlSearchTerms
      (\ s a -> s{_ctlSearchTerms = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctlUploadType :: Lens' CommentThreadsList (Maybe Text)
ctlUploadType
  = lens _ctlUploadType
      (\ s a -> s{_ctlUploadType = a})

-- | Returns the comment threads for all the channel comments (ie does not
-- include comments left on videos).
ctlChannelId :: Lens' CommentThreadsList (Maybe Text)
ctlChannelId
  = lens _ctlChannelId (\ s a -> s{_ctlChannelId = a})

-- | Returns the comment threads of all videos of the channel and the channel
-- comments as well.
ctlAllThreadsRelatedToChannelId :: Lens' CommentThreadsList (Maybe Text)
ctlAllThreadsRelatedToChannelId
  = lens _ctlAllThreadsRelatedToChannelId
      (\ s a -> s{_ctlAllThreadsRelatedToChannelId = a})

-- | Returns the comment threads of the specified video.
ctlVideoId :: Lens' CommentThreadsList (Maybe Text)
ctlVideoId
  = lens _ctlVideoId (\ s a -> s{_ctlVideoId = a})

-- | Returns the comment threads with the given IDs for Stubby or Apiary.
ctlId :: Lens' CommentThreadsList [Text]
ctlId
  = lens _ctlId (\ s a -> s{_ctlId = a}) . _Default .
      _Coerce

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
ctlPageToken :: Lens' CommentThreadsList (Maybe Text)
ctlPageToken
  = lens _ctlPageToken (\ s a -> s{_ctlPageToken = a})

ctlOrder :: Lens' CommentThreadsList CommentThreadsListOrder
ctlOrder = lens _ctlOrder (\ s a -> s{_ctlOrder = a})

-- | The requested text format for the returned comments.
ctlTextFormat :: Lens' CommentThreadsList CommentThreadsListTextFormat
ctlTextFormat
  = lens _ctlTextFormat
      (\ s a -> s{_ctlTextFormat = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
ctlMaxResults :: Lens' CommentThreadsList Word32
ctlMaxResults
  = lens _ctlMaxResults
      (\ s a -> s{_ctlMaxResults = a})
      . _Coerce

-- | JSONP
ctlCallback :: Lens' CommentThreadsList (Maybe Text)
ctlCallback
  = lens _ctlCallback (\ s a -> s{_ctlCallback = a})

instance GoogleRequest CommentThreadsList where
        type Rs CommentThreadsList =
             CommentThreadListResponse
        type Scopes CommentThreadsList =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentThreadsList'{..}
          = go _ctlPart _ctlXgafv _ctlUploadProtocol
              (Just _ctlModerationStatus)
              _ctlAccessToken
              _ctlSearchTerms
              _ctlUploadType
              _ctlChannelId
              _ctlAllThreadsRelatedToChannelId
              _ctlVideoId
              (_ctlId ^. _Default)
              _ctlPageToken
              (Just _ctlOrder)
              (Just _ctlTextFormat)
              (Just _ctlMaxResults)
              _ctlCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentThreadsListResource)
                      mempty
