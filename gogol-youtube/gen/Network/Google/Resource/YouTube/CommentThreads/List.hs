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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of comment threads that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.commentThreads.list@.
module Network.Google.Resource.YouTube.CommentThreads.List
    (
    -- * REST Resource
      CommentThreadsListResource

    -- * Creating a Request
    , commentThreadsList
    , CommentThreadsList

    -- * Request Lenses
    , ctlPart
    , ctlModerationStatus
    , ctlSearchTerms
    , ctlChannelId
    , ctlAllThreadsRelatedToChannelId
    , ctlVideoId
    , ctlId
    , ctlPageToken
    , ctlOrder
    , ctlTextFormat
    , ctlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.commentThreads.list@ method which the
-- 'CommentThreadsList' request conforms to.
type CommentThreadsListResource =
     "youtube" :>
       "v3" :>
         "commentThreads" :>
           QueryParam "part" Text :>
             QueryParam "moderationStatus"
               CommentThreadsListModerationStatus
               :>
               QueryParam "searchTerms" Text :>
                 QueryParam "channelId" Text :>
                   QueryParam "allThreadsRelatedToChannelId" Text :>
                     QueryParam "videoId" Text :>
                       QueryParam "id" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "order" CommentThreadsListOrder :>
                             QueryParam "textFormat"
                               CommentThreadsListTextFormat
                               :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CommentThreadListResponse

-- | Returns a list of comment threads that match the API request parameters.
--
-- /See:/ 'commentThreadsList' smart constructor.
data CommentThreadsList = CommentThreadsList
    { _ctlPart                         :: !Text
    , _ctlModerationStatus             :: !CommentThreadsListModerationStatus
    , _ctlSearchTerms                  :: !(Maybe Text)
    , _ctlChannelId                    :: !(Maybe Text)
    , _ctlAllThreadsRelatedToChannelId :: !(Maybe Text)
    , _ctlVideoId                      :: !(Maybe Text)
    , _ctlId                           :: !(Maybe Text)
    , _ctlPageToken                    :: !(Maybe Text)
    , _ctlOrder                        :: !CommentThreadsListOrder
    , _ctlTextFormat                   :: !CommentThreadsListTextFormat
    , _ctlMaxResults                   :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlPart'
--
-- * 'ctlModerationStatus'
--
-- * 'ctlSearchTerms'
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
commentThreadsList
    :: Text -- ^ 'ctlPart'
    -> CommentThreadsList
commentThreadsList pCtlPart_ =
    CommentThreadsList
    { _ctlPart = pCtlPart_
    , _ctlModerationStatus = Published
    , _ctlSearchTerms = Nothing
    , _ctlChannelId = Nothing
    , _ctlAllThreadsRelatedToChannelId = Nothing
    , _ctlVideoId = Nothing
    , _ctlId = Nothing
    , _ctlPageToken = Nothing
    , _ctlOrder = CTLOTime
    , _ctlTextFormat = CTLTFHTML
    , _ctlMaxResults = 20
    }

-- | The part parameter specifies a comma-separated list of one or more
-- commentThread resource properties that the API response will include.
ctlPart :: Lens' CommentThreadsList Text
ctlPart = lens _ctlPart (\ s a -> s{_ctlPart = a})

-- | Set this parameter to limit the returned comment threads to a particular
-- moderation state. Note: This parameter is not supported for use in
-- conjunction with the id parameter.
ctlModerationStatus :: Lens' CommentThreadsList CommentThreadsListModerationStatus
ctlModerationStatus
  = lens _ctlModerationStatus
      (\ s a -> s{_ctlModerationStatus = a})

-- | The searchTerms parameter instructs the API to limit the API response to
-- only contain comments that contain the specified search terms. Note:
-- This parameter is not supported for use in conjunction with the id
-- parameter.
ctlSearchTerms :: Lens' CommentThreadsList (Maybe Text)
ctlSearchTerms
  = lens _ctlSearchTerms
      (\ s a -> s{_ctlSearchTerms = a})

-- | The channelId parameter instructs the API to return comment threads
-- containing comments about the specified channel. (The response will not
-- include comments left on videos that the channel uploaded.)
ctlChannelId :: Lens' CommentThreadsList (Maybe Text)
ctlChannelId
  = lens _ctlChannelId (\ s a -> s{_ctlChannelId = a})

-- | The allThreadsRelatedToChannelId parameter instructs the API to return
-- all comment threads associated with the specified channel. The response
-- can include comments about the channel or about the channel\'s videos.
ctlAllThreadsRelatedToChannelId :: Lens' CommentThreadsList (Maybe Text)
ctlAllThreadsRelatedToChannelId
  = lens _ctlAllThreadsRelatedToChannelId
      (\ s a -> s{_ctlAllThreadsRelatedToChannelId = a})

-- | The videoId parameter instructs the API to return comment threads
-- associated with the specified video ID.
ctlVideoId :: Lens' CommentThreadsList (Maybe Text)
ctlVideoId
  = lens _ctlVideoId (\ s a -> s{_ctlVideoId = a})

-- | The id parameter specifies a comma-separated list of comment thread IDs
-- for the resources that should be retrieved.
ctlId :: Lens' CommentThreadsList (Maybe Text)
ctlId = lens _ctlId (\ s a -> s{_ctlId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
ctlPageToken :: Lens' CommentThreadsList (Maybe Text)
ctlPageToken
  = lens _ctlPageToken (\ s a -> s{_ctlPageToken = a})

-- | The order parameter specifies the order in which the API response should
-- list comment threads. Valid values are: - time - Comment threads are
-- ordered by time. This is the default behavior. - relevance - Comment
-- threads are ordered by relevance.Note: This parameter is not supported
-- for use in conjunction with the id parameter.
ctlOrder :: Lens' CommentThreadsList CommentThreadsListOrder
ctlOrder = lens _ctlOrder (\ s a -> s{_ctlOrder = a})

-- | Set this parameter\'s value to html or plainText to instruct the API to
-- return the comments left by users in html formatted or in plain text.
ctlTextFormat :: Lens' CommentThreadsList CommentThreadsListTextFormat
ctlTextFormat
  = lens _ctlTextFormat
      (\ s a -> s{_ctlTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
ctlMaxResults :: Lens' CommentThreadsList Word32
ctlMaxResults
  = lens _ctlMaxResults
      (\ s a -> s{_ctlMaxResults = a})
      . _Coerce

instance GoogleRequest CommentThreadsList where
        type Rs CommentThreadsList =
             CommentThreadListResponse
        requestClient CommentThreadsList{..}
          = go (Just _ctlPart) (Just _ctlModerationStatus)
              _ctlSearchTerms
              _ctlChannelId
              _ctlAllThreadsRelatedToChannelId
              _ctlVideoId
              _ctlId
              _ctlPageToken
              (Just _ctlOrder)
              (Just _ctlTextFormat)
              (Just _ctlMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy CommentThreadsListResource)
                      mempty
