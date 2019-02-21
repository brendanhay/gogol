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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , cStartModifiedTime
    , cPageToken
    , cFileId
    , cPageSize
    , cIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.comments.list@ method which the
-- 'CommentsList' request conforms to.
type CommentsListResource =
     "drive" :>
       "v3" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               QueryParam "startModifiedTime" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "includeDeleted" Bool :>
                       QueryParam "alt" AltJSON :> Get '[JSON] CommentList

-- | Lists a file\'s comments.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList =
  CommentsList'
    { _cStartModifiedTime :: !(Maybe Text)
    , _cPageToken         :: !(Maybe Text)
    , _cFileId            :: !Text
    , _cPageSize          :: !(Textual Int32)
    , _cIncludeDeleted    :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CommentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cStartModifiedTime'
--
-- * 'cPageToken'
--
-- * 'cFileId'
--
-- * 'cPageSize'
--
-- * 'cIncludeDeleted'
commentsList
    :: Text -- ^ 'cFileId'
    -> CommentsList
commentsList pCFileId_ =
  CommentsList'
    { _cStartModifiedTime = Nothing
    , _cPageToken = Nothing
    , _cFileId = pCFileId_
    , _cPageSize = 20
    , _cIncludeDeleted = False
    }


-- | The minimum value of \'modifiedTime\' for the result comments (RFC 3339
-- date-time).
cStartModifiedTime :: Lens' CommentsList (Maybe Text)
cStartModifiedTime
  = lens _cStartModifiedTime
      (\ s a -> s{_cStartModifiedTime = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response.
cPageToken :: Lens' CommentsList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | The ID of the file.
cFileId :: Lens' CommentsList Text
cFileId = lens _cFileId (\ s a -> s{_cFileId = a})

-- | The maximum number of comments to return per page.
cPageSize :: Lens' CommentsList Int32
cPageSize
  = lens _cPageSize (\ s a -> s{_cPageSize = a}) .
      _Coerce

-- | Whether to include deleted comments. Deleted comments will not include
-- their original content.
cIncludeDeleted :: Lens' CommentsList Bool
cIncludeDeleted
  = lens _cIncludeDeleted
      (\ s a -> s{_cIncludeDeleted = a})

instance GoogleRequest CommentsList where
        type Rs CommentsList = CommentList
        type Scopes CommentsList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient CommentsList'{..}
          = go _cFileId _cStartModifiedTime _cPageToken
              (Just _cPageSize)
              (Just _cIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy CommentsListResource)
                      mempty
