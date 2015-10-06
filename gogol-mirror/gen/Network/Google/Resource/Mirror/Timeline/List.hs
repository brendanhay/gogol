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
    , tlQuotaUser
    , tlPrettyPrint
    , tlOrderBy
    , tlUserIP
    , tlBundleId
    , tlKey
    , tlSourceItemId
    , tlPageToken
    , tlOAuthToken
    , tlMaxResults
    , tlIncludeDeleted
    , tlFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineList@ which the
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
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] TimelineListResponse

-- | Retrieves a list of timeline items for the authenticated user.
--
-- /See:/ 'timelineList'' smart constructor.
data TimelineList' = TimelineList'
    { _tlPinnedOnly     :: !(Maybe Bool)
    , _tlQuotaUser      :: !(Maybe Text)
    , _tlPrettyPrint    :: !Bool
    , _tlOrderBy        :: !(Maybe TimelineListOrderBy)
    , _tlUserIP         :: !(Maybe Text)
    , _tlBundleId       :: !(Maybe Text)
    , _tlKey            :: !(Maybe AuthKey)
    , _tlSourceItemId   :: !(Maybe Text)
    , _tlPageToken      :: !(Maybe Text)
    , _tlOAuthToken     :: !(Maybe OAuthToken)
    , _tlMaxResults     :: !(Maybe Word32)
    , _tlIncludeDeleted :: !(Maybe Bool)
    , _tlFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tlUserIP'
--
-- * 'tlBundleId'
--
-- * 'tlKey'
--
-- * 'tlSourceItemId'
--
-- * 'tlPageToken'
--
-- * 'tlOAuthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlIncludeDeleted'
--
-- * 'tlFields'
timelineList'
    :: TimelineList'
timelineList' =
    TimelineList'
    { _tlPinnedOnly = Nothing
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlOrderBy = Nothing
    , _tlUserIP = Nothing
    , _tlBundleId = Nothing
    , _tlKey = Nothing
    , _tlSourceItemId = Nothing
    , _tlPageToken = Nothing
    , _tlOAuthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlIncludeDeleted = Nothing
    , _tlFields = Nothing
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
tlOrderBy :: Lens' TimelineList' (Maybe TimelineListOrderBy)
tlOrderBy
  = lens _tlOrderBy (\ s a -> s{_tlOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TimelineList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | If provided, only items with the given bundleId will be returned.
tlBundleId :: Lens' TimelineList' (Maybe Text)
tlBundleId
  = lens _tlBundleId (\ s a -> s{_tlBundleId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TimelineList' (Maybe AuthKey)
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
tlOAuthToken :: Lens' TimelineList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

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

instance GoogleAuth TimelineList' where
        _AuthKey = tlKey . _Just
        _AuthToken = tlOAuthToken . _Just

instance GoogleRequest TimelineList' where
        type Rs TimelineList' = TimelineListResponse
        request = requestWith mirrorRequest
        requestWith rq TimelineList'{..}
          = go _tlPinnedOnly _tlOrderBy _tlBundleId
              _tlSourceItemId
              _tlPageToken
              _tlMaxResults
              _tlIncludeDeleted
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TimelineListResource)
                      rq
