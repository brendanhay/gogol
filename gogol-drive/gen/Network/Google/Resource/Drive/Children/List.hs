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
-- Module      : Network.Google.Resource.Drive.Children.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a folder\'s children.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenList@.
module Network.Google.Resource.Drive.Children.List
    (
    -- * REST Resource
      ChildrenListResource

    -- * Creating a Request
    , childrenList'
    , ChildrenList'

    -- * Request Lenses
    , clOrderBy
    , clFolderId
    , clQ
    , clPageToken
    , clMaxResults
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenList@ method which the
-- 'ChildrenList'' request conforms to.
type ChildrenListResource =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "orderBy" Text :>
             QueryParam "q" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ChildList

-- | Lists a folder\'s children.
--
-- /See:/ 'childrenList'' smart constructor.
data ChildrenList' = ChildrenList'
    { _clOrderBy    :: !(Maybe Text)
    , _clFolderId   :: !Text
    , _clQ          :: !(Maybe Text)
    , _clPageToken  :: !(Maybe Text)
    , _clMaxResults :: !Int32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clOrderBy'
--
-- * 'clFolderId'
--
-- * 'clQ'
--
-- * 'clPageToken'
--
-- * 'clMaxResults'
childrenList'
    :: Text -- ^ 'folderId'
    -> ChildrenList'
childrenList' pClFolderId_ =
    ChildrenList'
    { _clOrderBy = Nothing
    , _clFolderId = pClFolderId_
    , _clQ = Nothing
    , _clPageToken = Nothing
    , _clMaxResults = 100
    }

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
clOrderBy :: Lens' ChildrenList' (Maybe Text)
clOrderBy
  = lens _clOrderBy (\ s a -> s{_clOrderBy = a})

-- | The ID of the folder.
clFolderId :: Lens' ChildrenList' Text
clFolderId
  = lens _clFolderId (\ s a -> s{_clFolderId = a})

-- | Query string for searching children.
clQ :: Lens' ChildrenList' (Maybe Text)
clQ = lens _clQ (\ s a -> s{_clQ = a})

-- | Page token for children.
clPageToken :: Lens' ChildrenList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Maximum number of children to return.
clMaxResults :: Lens' ChildrenList' Int32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

instance GoogleRequest ChildrenList' where
        type Rs ChildrenList' = ChildList
        requestClient ChildrenList'{..}
          = go _clFolderId _clOrderBy _clQ _clPageToken
              (Just _clMaxResults)
              (Just AltJSON)
              drive
          where go
                  = buildClient (Proxy :: Proxy ChildrenListResource)
                      mempty
