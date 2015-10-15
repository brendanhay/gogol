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
-- Module      : Network.Google.Resource.Mirror.Timeline.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of timeline items for the authenticated user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineList@.
module Network.Google.Resource.Mirror.Timeline.List
    (
    -- * REST Resource
      TimelineListResource

    -- * Creating a Request
    , timelineList'
    , TimelineList'

    -- * Request Lenses
    , tlPinnedOnly
    , tlOrderBy
    , tlBundleId
    , tlSourceItemId
    , tlPageToken
    , tlMaxResults
    , tlIncludeDeleted
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineList@ method which the
-- 'TimelineList'' request conforms to.
type TimelineListResource =
     "timeline" :>
       QueryParam "pinnedOnly" Bool :>
         QueryParam "orderBy" TimelineListOrderBy :>
           QueryParam "bundleId" Text :>
             QueryParam "sourceItemId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "includeDeleted" Bool :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TimelineListResponse

-- | Retrieves a list of timeline items for the authenticated user.
--
-- /See:/ 'timelineList'' smart constructor.
data TimelineList' = TimelineList'
    { _tlPinnedOnly     :: !(Maybe Bool)
    , _tlOrderBy        :: !(Maybe TimelineListOrderBy)
    , _tlBundleId       :: !(Maybe Text)
    , _tlSourceItemId   :: !(Maybe Text)
    , _tlPageToken      :: !(Maybe Text)
    , _tlMaxResults     :: !(Maybe Word32)
    , _tlIncludeDeleted :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlPinnedOnly'
--
-- * 'tlOrderBy'
--
-- * 'tlBundleId'
--
-- * 'tlSourceItemId'
--
-- * 'tlPageToken'
--
-- * 'tlMaxResults'
--
-- * 'tlIncludeDeleted'
timelineList'
    :: TimelineList'
timelineList' =
    TimelineList'
    { _tlPinnedOnly = Nothing
    , _tlOrderBy = Nothing
    , _tlBundleId = Nothing
    , _tlSourceItemId = Nothing
    , _tlPageToken = Nothing
    , _tlMaxResults = Nothing
    , _tlIncludeDeleted = Nothing
    }

-- | If true, only pinned items will be returned.
tlPinnedOnly :: Lens' TimelineList' (Maybe Bool)
tlPinnedOnly
  = lens _tlPinnedOnly (\ s a -> s{_tlPinnedOnly = a})

-- | Controls the order in which timeline items are returned.
tlOrderBy :: Lens' TimelineList' (Maybe TimelineListOrderBy)
tlOrderBy
  = lens _tlOrderBy (\ s a -> s{_tlOrderBy = a})

-- | If provided, only items with the given bundleId will be returned.
tlBundleId :: Lens' TimelineList' (Maybe Text)
tlBundleId
  = lens _tlBundleId (\ s a -> s{_tlBundleId = a})

-- | If provided, only items with the given sourceItemId will be returned.
tlSourceItemId :: Lens' TimelineList' (Maybe Text)
tlSourceItemId
  = lens _tlSourceItemId
      (\ s a -> s{_tlSourceItemId = a})

-- | Token for the page of results to return.
tlPageToken :: Lens' TimelineList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | The maximum number of items to include in the response, used for paging.
tlMaxResults :: Lens' TimelineList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | If true, tombstone records for deleted items will be returned.
tlIncludeDeleted :: Lens' TimelineList' (Maybe Bool)
tlIncludeDeleted
  = lens _tlIncludeDeleted
      (\ s a -> s{_tlIncludeDeleted = a})

instance GoogleRequest TimelineList' where
        type Rs TimelineList' = TimelineListResponse
        requestClient TimelineList'{..}
          = go _tlPinnedOnly _tlOrderBy _tlBundleId
              _tlSourceItemId
              _tlPageToken
              _tlMaxResults
              _tlIncludeDeleted
              (Just AltJSON)
              mirror
          where go
                  = buildClient (Proxy :: Proxy TimelineListResource)
                      mempty
