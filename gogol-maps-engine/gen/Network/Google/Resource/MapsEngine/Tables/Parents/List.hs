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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesParentsList@.
module Network.Google.Resource.MapsEngine.Tables.Parents.List
    (
    -- * REST Resource
      TablesParentsListResource

    -- * Creating a Request
    , tablesParentsList'
    , TablesParentsList'

    -- * Request Lenses
    , tabQuotaUser
    , tabPrettyPrint
    , tabUserIP
    , tabKey
    , tabId
    , tabPageToken
    , tabOAuthToken
    , tabMaxResults
    , tabFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesParentsList@ which the
-- 'TablesParentsList'' request conforms to.
type TablesParentsListResource =
     "tables" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified table.
--
-- /See:/ 'tablesParentsList'' smart constructor.
data TablesParentsList' = TablesParentsList'
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIP      :: !(Maybe Text)
    , _tabKey         :: !(Maybe AuthKey)
    , _tabId          :: !Text
    , _tabPageToken   :: !(Maybe Text)
    , _tabOAuthToken  :: !(Maybe OAuthToken)
    , _tabMaxResults  :: !(Maybe Word32)
    , _tabFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabQuotaUser'
--
-- * 'tabPrettyPrint'
--
-- * 'tabUserIP'
--
-- * 'tabKey'
--
-- * 'tabId'
--
-- * 'tabPageToken'
--
-- * 'tabOAuthToken'
--
-- * 'tabMaxResults'
--
-- * 'tabFields'
tablesParentsList'
    :: Text -- ^ 'id'
    -> TablesParentsList'
tablesParentsList' pTabId_ =
    TablesParentsList'
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIP = Nothing
    , _tabKey = Nothing
    , _tabId = pTabId_
    , _tabPageToken = Nothing
    , _tabOAuthToken = Nothing
    , _tabMaxResults = Nothing
    , _tabFields = Nothing
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
tabUserIP :: Lens' TablesParentsList' (Maybe Text)
tabUserIP
  = lens _tabUserIP (\ s a -> s{_tabUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TablesParentsList' (Maybe AuthKey)
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
tabOAuthToken :: Lens' TablesParentsList' (Maybe OAuthToken)
tabOAuthToken
  = lens _tabOAuthToken
      (\ s a -> s{_tabOAuthToken = a})

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

instance GoogleAuth TablesParentsList' where
        _AuthKey = tabKey . _Just
        _AuthToken = tabOAuthToken . _Just

instance GoogleRequest TablesParentsList' where
        type Rs TablesParentsList' = ParentsListResponse
        request = requestWith mapsEngineRequest
        requestWith rq TablesParentsList'{..}
          = go _tabId _tabPageToken _tabMaxResults
              _tabQuotaUser
              (Just _tabPrettyPrint)
              _tabUserIP
              _tabFields
              _tabKey
              _tabOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TablesParentsListResource)
                      rq
