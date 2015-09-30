{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Mirror.Timeline.List
    (
    -- * REST Resource
      TimelineListAPI

    -- * Creating a Request
    , timelineList
    , TimelineList

    -- * Request Lenses
    , tlPinnedOnly
    , tlQuotaUser
    , tlPrettyPrint
    , tlOrderBy
    , tlUserIp
    , tlBundleId
    , tlKey
    , tlSourceItemId
    , tlPageToken
    , tlOauthToken
    , tlMaxResults
    , tlIncludeDeleted
    , tlFields
    , tlAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineList@ which the
-- 'TimelineList' request conforms to.
type TimelineListAPI =
     "timeline" :>
       QueryParam "pinnedOnly" Bool :>
         QueryParam "orderBy" Text :>
           QueryParam "bundleId" Text :>
             QueryParam "sourceItemId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "includeDeleted" Bool :>
                     Get '[JSON] TimelineListResponse

-- | Retrieves a list of timeline items for the authenticated user.
--
-- /See:/ 'timelineList' smart constructor.
data TimelineList = TimelineList
    { _tlPinnedOnly     :: !(Maybe Bool)
    , _tlQuotaUser      :: !(Maybe Text)
    , _tlPrettyPrint    :: !Bool
    , _tlOrderBy        :: !(Maybe Text)
    , _tlUserIp         :: !(Maybe Text)
    , _tlBundleId       :: !(Maybe Text)
    , _tlKey            :: !(Maybe Text)
    , _tlSourceItemId   :: !(Maybe Text)
    , _tlPageToken      :: !(Maybe Text)
    , _tlOauthToken     :: !(Maybe Text)
    , _tlMaxResults     :: !(Maybe Word32)
    , _tlIncludeDeleted :: !(Maybe Bool)
    , _tlFields         :: !(Maybe Text)
    , _tlAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlPinnedOnly'
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlOrderBy'
--
-- * 'tlUserIp'
--
-- * 'tlBundleId'
--
-- * 'tlKey'
--
-- * 'tlSourceItemId'
--
-- * 'tlPageToken'
--
-- * 'tlOauthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlIncludeDeleted'
--
-- * 'tlFields'
--
-- * 'tlAlt'
timelineList
    :: TimelineList
timelineList =
    TimelineList
    { _tlPinnedOnly = Nothing
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlOrderBy = Nothing
    , _tlUserIp = Nothing
    , _tlBundleId = Nothing
    , _tlKey = Nothing
    , _tlSourceItemId = Nothing
    , _tlPageToken = Nothing
    , _tlOauthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlIncludeDeleted = Nothing
    , _tlFields = Nothing
    , _tlAlt = "json"
    }

-- | If true, only pinned items will be returned.
tlPinnedOnly :: Lens' TimelineList' (Maybe Bool)
tlPinnedOnly
  = lens _tlPinnedOnly (\ s a -> s{_tlPinnedOnly = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TimelineList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TimelineList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | Controls the order in which timeline items are returned.
tlOrderBy :: Lens' TimelineList' (Maybe Text)
tlOrderBy
  = lens _tlOrderBy (\ s a -> s{_tlOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TimelineList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | If provided, only items with the given bundleId will be returned.
tlBundleId :: Lens' TimelineList' (Maybe Text)
tlBundleId
  = lens _tlBundleId (\ s a -> s{_tlBundleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TimelineList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | If provided, only items with the given sourceItemId will be returned.
tlSourceItemId :: Lens' TimelineList' (Maybe Text)
tlSourceItemId
  = lens _tlSourceItemId
      (\ s a -> s{_tlSourceItemId = a})

-- | Token for the page of results to return.
tlPageToken :: Lens' TimelineList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TimelineList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | The maximum number of items to include in the response, used for paging.
tlMaxResults :: Lens' TimelineList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | If true, tombstone records for deleted items will be returned.
tlIncludeDeleted :: Lens' TimelineList' (Maybe Bool)
tlIncludeDeleted
  = lens _tlIncludeDeleted
      (\ s a -> s{_tlIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TimelineList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TimelineList' Text
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TimelineList' where
        type Rs TimelineList' = TimelineListResponse
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineList{..}
          = go _tlPinnedOnly _tlQuotaUser _tlPrettyPrint
              _tlOrderBy
              _tlUserIp
              _tlBundleId
              _tlKey
              _tlSourceItemId
              _tlPageToken
              _tlOauthToken
              _tlMaxResults
              _tlIncludeDeleted
              _tlFields
              _tlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TimelineListAPI) r
                      u
