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
-- Module      : Network.Google.Resource.YouTube.Comments.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.comments.list@.
module Network.Google.Resource.YouTube.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , cllXgafv
    , cllPart
    , cllUploadProtocol
    , cllAccessToken
    , cllUploadType
    , cllId
    , cllPageToken
    , cllTextFormat
    , cllMaxResults
    , cllParentId
    , cllCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.comments.list@ method which the
-- 'CommentsList' request conforms to.
type CommentsListResource =
     "youtube" :>
       "v3" :>
         "comments" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "id" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "textFormat" CommentsListTextFormat :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "parentId" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CommentListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList =
  CommentsList'
    { _cllXgafv :: !(Maybe Xgafv)
    , _cllPart :: ![Text]
    , _cllUploadProtocol :: !(Maybe Text)
    , _cllAccessToken :: !(Maybe Text)
    , _cllUploadType :: !(Maybe Text)
    , _cllId :: !(Maybe [Text])
    , _cllPageToken :: !(Maybe Text)
    , _cllTextFormat :: !CommentsListTextFormat
    , _cllMaxResults :: !(Textual Word32)
    , _cllParentId :: !(Maybe Text)
    , _cllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllXgafv'
--
-- * 'cllPart'
--
-- * 'cllUploadProtocol'
--
-- * 'cllAccessToken'
--
-- * 'cllUploadType'
--
-- * 'cllId'
--
-- * 'cllPageToken'
--
-- * 'cllTextFormat'
--
-- * 'cllMaxResults'
--
-- * 'cllParentId'
--
-- * 'cllCallback'
commentsList
    :: [Text] -- ^ 'cllPart'
    -> CommentsList
commentsList pCllPart_ =
  CommentsList'
    { _cllXgafv = Nothing
    , _cllPart = _Coerce # pCllPart_
    , _cllUploadProtocol = Nothing
    , _cllAccessToken = Nothing
    , _cllUploadType = Nothing
    , _cllId = Nothing
    , _cllPageToken = Nothing
    , _cllTextFormat = HTML
    , _cllMaxResults = 20
    , _cllParentId = Nothing
    , _cllCallback = Nothing
    }


-- | V1 error format.
cllXgafv :: Lens' CommentsList (Maybe Xgafv)
cllXgafv = lens _cllXgafv (\ s a -> s{_cllXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- comment resource properties that the API response will include.
cllPart :: Lens' CommentsList [Text]
cllPart
  = lens _cllPart (\ s a -> s{_cllPart = a}) . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cllUploadProtocol :: Lens' CommentsList (Maybe Text)
cllUploadProtocol
  = lens _cllUploadProtocol
      (\ s a -> s{_cllUploadProtocol = a})

-- | OAuth access token.
cllAccessToken :: Lens' CommentsList (Maybe Text)
cllAccessToken
  = lens _cllAccessToken
      (\ s a -> s{_cllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cllUploadType :: Lens' CommentsList (Maybe Text)
cllUploadType
  = lens _cllUploadType
      (\ s a -> s{_cllUploadType = a})

-- | Returns the comments with the given IDs for One Platform.
cllId :: Lens' CommentsList [Text]
cllId
  = lens _cllId (\ s a -> s{_cllId = a}) . _Default .
      _Coerce

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
cllPageToken :: Lens' CommentsList (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | The requested text format for the returned comments.
cllTextFormat :: Lens' CommentsList CommentsListTextFormat
cllTextFormat
  = lens _cllTextFormat
      (\ s a -> s{_cllTextFormat = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
cllMaxResults :: Lens' CommentsList Word32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})
      . _Coerce

-- | Returns replies to the specified comment. Note, currently YouTube
-- features only one level of replies (ie replies to top level comments).
-- However replies to replies may be supported in the future.
cllParentId :: Lens' CommentsList (Maybe Text)
cllParentId
  = lens _cllParentId (\ s a -> s{_cllParentId = a})

-- | JSONP
cllCallback :: Lens' CommentsList (Maybe Text)
cllCallback
  = lens _cllCallback (\ s a -> s{_cllCallback = a})

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentListResponse
        type Scopes CommentsList =
             '["https://www.googleapis.com/auth/youtube.force-ssl"]
        requestClient CommentsList'{..}
          = go _cllPart _cllXgafv _cllUploadProtocol
              _cllAccessToken
              _cllUploadType
              (_cllId ^. _Default)
              _cllPageToken
              (Just _cllTextFormat)
              (Just _cllMaxResults)
              _cllParentId
              _cllCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
