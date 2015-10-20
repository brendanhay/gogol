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
-- Lists a file\'s comments.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.list@.
module Network.Google.Resource.Drive.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , cllUpdatedMin
    , cllPageToken
    , cllFileId
    , cllMaxResults
    , cllIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.comments.list@ method which the
-- 'CommentsList' request conforms to.
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
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _cllUpdatedMin     :: !(Maybe Text)
    , _cllPageToken      :: !(Maybe Text)
    , _cllFileId         :: !Text
    , _cllMaxResults     :: !Int32
    , _cllIncludeDeleted :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllUpdatedMin'
--
-- * 'cllPageToken'
--
-- * 'cllFileId'
--
-- * 'cllMaxResults'
--
-- * 'cllIncludeDeleted'
commentsList
    :: Text -- ^ 'cllFileId'
    -> CommentsList
commentsList pCllFileId_ =
    CommentsList
    { _cllUpdatedMin = Nothing
    , _cllPageToken = Nothing
    , _cllFileId = pCllFileId_
    , _cllMaxResults = 20
    , _cllIncludeDeleted = False
    }

-- | Only discussions that were updated after this timestamp will be
-- returned. Formatted as an RFC 3339 timestamp.
cllUpdatedMin :: Lens' CommentsList (Maybe Text)
cllUpdatedMin
  = lens _cllUpdatedMin
      (\ s a -> s{_cllUpdatedMin = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
cllPageToken :: Lens' CommentsList (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | The ID of the file.
cllFileId :: Lens' CommentsList Text
cllFileId
  = lens _cllFileId (\ s a -> s{_cllFileId = a})

-- | The maximum number of discussions to include in the response, used for
-- paging.
cllMaxResults :: Lens' CommentsList Int32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | If set, all comments and replies, including deleted comments and replies
-- (with content stripped) will be returned.
cllIncludeDeleted :: Lens' CommentsList Bool
cllIncludeDeleted
  = lens _cllIncludeDeleted
      (\ s a -> s{_cllIncludeDeleted = a})

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentList
        requestClient CommentsList{..}
          = go _cllFileId _cllUpdatedMin _cllPageToken
              (Just _cllMaxResults)
              (Just _cllIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
