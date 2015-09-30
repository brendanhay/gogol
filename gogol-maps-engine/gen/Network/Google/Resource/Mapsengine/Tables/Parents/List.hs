{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesParentsList@.
module Network.Google.Resource.Mapsengine.Tables.Parents.List
    (
    -- * REST Resource
      TablesParentsListResource

    -- * Creating a Request
    , tablesParentsList'
    , TablesParentsList'

    -- * Request Lenses
    , tabQuotaUser
    , tabPrettyPrint
    , tabUserIp
    , tabKey
    , tabId
    , tabPageToken
    , tabOauthToken
    , tabMaxResults
    , tabFields
    , tabAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesParentsList@ which the
-- 'TablesParentsList'' request conforms to.
type TablesParentsListResource =
     "tables" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified table.
--
-- /See:/ 'tablesParentsList'' smart constructor.
data TablesParentsList' = TablesParentsList'
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIp      :: !(Maybe Text)
    , _tabKey         :: !(Maybe Text)
    , _tabId          :: !Text
    , _tabPageToken   :: !(Maybe Text)
    , _tabOauthToken  :: !(Maybe Text)
    , _tabMaxResults  :: !(Maybe Word32)
    , _tabFields      :: !(Maybe Text)
    , _tabAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabQuotaUser'
--
-- * 'tabPrettyPrint'
--
-- * 'tabUserIp'
--
-- * 'tabKey'
--
-- * 'tabId'
--
-- * 'tabPageToken'
--
-- * 'tabOauthToken'
--
-- * 'tabMaxResults'
--
-- * 'tabFields'
--
-- * 'tabAlt'
tablesParentsList'
    :: Text -- ^ 'id'
    -> TablesParentsList'
tablesParentsList' pTabId_ =
    TablesParentsList'
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIp = Nothing
    , _tabKey = Nothing
    , _tabId = pTabId_
    , _tabPageToken = Nothing
    , _tabOauthToken = Nothing
    , _tabMaxResults = Nothing
    , _tabFields = Nothing
    , _tabAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tabQuotaUser :: Lens' TablesParentsList' (Maybe Text)
tabQuotaUser
  = lens _tabQuotaUser (\ s a -> s{_tabQuotaUser = a})

-- | Returns response with indentations and line breaks.
tabPrettyPrint :: Lens' TablesParentsList' Bool
tabPrettyPrint
  = lens _tabPrettyPrint
      (\ s a -> s{_tabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tabUserIp :: Lens' TablesParentsList' (Maybe Text)
tabUserIp
  = lens _tabUserIp (\ s a -> s{_tabUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TablesParentsList' (Maybe Text)
tabKey = lens _tabKey (\ s a -> s{_tabKey = a})

-- | The ID of the table whose parents will be listed.
tabId :: Lens' TablesParentsList' Text
tabId = lens _tabId (\ s a -> s{_tabId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
tabPageToken :: Lens' TablesParentsList' (Maybe Text)
tabPageToken
  = lens _tabPageToken (\ s a -> s{_tabPageToken = a})

-- | OAuth 2.0 token for the current user.
tabOauthToken :: Lens' TablesParentsList' (Maybe Text)
tabOauthToken
  = lens _tabOauthToken
      (\ s a -> s{_tabOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
tabMaxResults :: Lens' TablesParentsList' (Maybe Word32)
tabMaxResults
  = lens _tabMaxResults
      (\ s a -> s{_tabMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tabFields :: Lens' TablesParentsList' (Maybe Text)
tabFields
  = lens _tabFields (\ s a -> s{_tabFields = a})

-- | Data format for the response.
tabAlt :: Lens' TablesParentsList' Alt
tabAlt = lens _tabAlt (\ s a -> s{_tabAlt = a})

instance GoogleRequest TablesParentsList' where
        type Rs TablesParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesParentsList'{..}
          = go _tabQuotaUser (Just _tabPrettyPrint) _tabUserIp
              _tabKey
              _tabId
              _tabPageToken
              _tabOauthToken
              _tabMaxResults
              _tabFields
              (Just _tabAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesParentsListResource)
                      r
                      u
