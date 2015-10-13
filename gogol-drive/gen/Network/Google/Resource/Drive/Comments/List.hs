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
-- Module      : Network.Google.Resource.Drive.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s comments.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsList@.
module Network.Google.Resource.Drive.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , cUpdatedMin
    , cPageToken
    , cFileId
    , cMaxResults
    , cIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsList@ method which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           QueryParam "updatedMin" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "includeDeleted" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] CommentList

-- | Lists a file\'s comments.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _cUpdatedMin     :: !(Maybe Text)
    , _cPageToken      :: !(Maybe Text)
    , _cFileId         :: !Text
    , _cMaxResults     :: !Int32
    , _cIncludeDeleted :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cUpdatedMin'
--
-- * 'cPageToken'
--
-- * 'cFileId'
--
-- * 'cMaxResults'
--
-- * 'cIncludeDeleted'
commentsList'
    :: Text -- ^ 'fileId'
    -> CommentsList'
commentsList' pCFileId_ =
    CommentsList'
    { _cUpdatedMin = Nothing
    , _cPageToken = Nothing
    , _cFileId = pCFileId_
    , _cMaxResults = 20
    , _cIncludeDeleted = False
    }

-- | Only discussions that were updated after this timestamp will be
-- returned. Formatted as an RFC 3339 timestamp.
cUpdatedMin :: Lens' CommentsList' (Maybe Text)
cUpdatedMin
  = lens _cUpdatedMin (\ s a -> s{_cUpdatedMin = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cPageToken :: Lens' CommentsList' (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | The ID of the file.
cFileId :: Lens' CommentsList' Text
cFileId = lens _cFileId (\ s a -> s{_cFileId = a})

-- | The maximum number of discussions to include in the response, used for
-- paging.
cMaxResults :: Lens' CommentsList' Int32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a})

-- | If set, all comments and replies, including deleted comments and replies
-- (with content stripped) will be returned.
cIncludeDeleted :: Lens' CommentsList' Bool
cIncludeDeleted
  = lens _cIncludeDeleted
      (\ s a -> s{_cIncludeDeleted = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentList
        requestClient CommentsList'{..}
          = go _cFileId _cUpdatedMin _cPageToken
              (Just _cMaxResults)
              (Just _cIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
