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
-- Lists a folder\'s children.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.children.list@.
module Network.Google.Resource.Drive.Children.List
    (
    -- * REST Resource
      ChildrenListResource

    -- * Creating a Request
    , childrenList
    , ChildrenList

    -- * Request Lenses
    , cOrderBy
    , cFolderId
    , cQ
    , cPageToken
    , cMaxResults
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.children.list@ method which the
-- 'ChildrenList' request conforms to.
type ChildrenListResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "folderId" Text :>
             "children" :>
               QueryParam "orderBy" Text :>
                 QueryParam "q" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ChildList

-- | Lists a folder\'s children.
--
-- /See:/ 'childrenList' smart constructor.
data ChildrenList = ChildrenList
    { _cOrderBy    :: !(Maybe Text)
    , _cFolderId   :: !Text
    , _cQ          :: !(Maybe Text)
    , _cPageToken  :: !(Maybe Text)
    , _cMaxResults :: !(JSONText Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cOrderBy'
--
-- * 'cFolderId'
--
-- * 'cQ'
--
-- * 'cPageToken'
--
-- * 'cMaxResults'
childrenList
    :: Text -- ^ 'cFolderId'
    -> ChildrenList
childrenList pCFolderId_ =
    ChildrenList
    { _cOrderBy = Nothing
    , _cFolderId = pCFolderId_
    , _cQ = Nothing
    , _cPageToken = Nothing
    , _cMaxResults = 100
    }

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
cOrderBy :: Lens' ChildrenList (Maybe Text)
cOrderBy = lens _cOrderBy (\ s a -> s{_cOrderBy = a})

-- | The ID of the folder.
cFolderId :: Lens' ChildrenList Text
cFolderId
  = lens _cFolderId (\ s a -> s{_cFolderId = a})

-- | Query string for searching children.
cQ :: Lens' ChildrenList (Maybe Text)
cQ = lens _cQ (\ s a -> s{_cQ = a})

-- | Page token for children.
cPageToken :: Lens' ChildrenList (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | Maximum number of children to return.
cMaxResults :: Lens' ChildrenList Int32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a}) .
      _Coerce

instance GoogleRequest ChildrenList where
        type Rs ChildrenList = ChildList
        requestClient ChildrenList{..}
          = go _cFolderId _cOrderBy _cQ _cPageToken
              (Just _cMaxResults)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChildrenListResource)
                      mempty
