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
-- Module      : Network.Google.Resource.FusionTables.Table.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of tables a user owns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableList@.
module Network.Google.Resource.FusionTables.Table.List
    (
    -- * REST Resource
      TableListResource

    -- * Creating a Request
    , tableList'
    , TableList'

    -- * Request Lenses
    , tabQuotaUser
    , tabPrettyPrint
    , tabUserIp
    , tabKey
    , tabPageToken
    , tabOauthToken
    , tabMaxResults
    , tabFields
    , tabAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableList@ which the
-- 'TableList'' request conforms to.
type TableListResource =
     "tables" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] TableList

-- | Retrieves a list of tables a user owns.
--
-- /See:/ 'tableList'' smart constructor.
data TableList' = TableList'
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIp      :: !(Maybe Text)
    , _tabKey         :: !(Maybe Text)
    , _tabPageToken   :: !(Maybe Text)
    , _tabOauthToken  :: !(Maybe Text)
    , _tabMaxResults  :: !(Maybe Word32)
    , _tabFields      :: !(Maybe Text)
    , _tabAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableList'' with the minimum fields required to make a request.
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
-- * 'tabPageToken'
--
-- * 'tabOauthToken'
--
-- * 'tabMaxResults'
--
-- * 'tabFields'
--
-- * 'tabAlt'
tableList'
    :: TableList'
tableList' =
    TableList'
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIp = Nothing
    , _tabKey = Nothing
    , _tabPageToken = Nothing
    , _tabOauthToken = Nothing
    , _tabMaxResults = Nothing
    , _tabFields = Nothing
    , _tabAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tabQuotaUser :: Lens' TableList' (Maybe Text)
tabQuotaUser
  = lens _tabQuotaUser (\ s a -> s{_tabQuotaUser = a})

-- | Returns response with indentations and line breaks.
tabPrettyPrint :: Lens' TableList' Bool
tabPrettyPrint
  = lens _tabPrettyPrint
      (\ s a -> s{_tabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tabUserIp :: Lens' TableList' (Maybe Text)
tabUserIp
  = lens _tabUserIp (\ s a -> s{_tabUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TableList' (Maybe Text)
tabKey = lens _tabKey (\ s a -> s{_tabKey = a})

-- | Continuation token specifying which result page to return.
tabPageToken :: Lens' TableList' (Maybe Text)
tabPageToken
  = lens _tabPageToken (\ s a -> s{_tabPageToken = a})

-- | OAuth 2.0 token for the current user.
tabOauthToken :: Lens' TableList' (Maybe Text)
tabOauthToken
  = lens _tabOauthToken
      (\ s a -> s{_tabOauthToken = a})

-- | Maximum number of tables to return. Default is 5.
tabMaxResults :: Lens' TableList' (Maybe Word32)
tabMaxResults
  = lens _tabMaxResults
      (\ s a -> s{_tabMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tabFields :: Lens' TableList' (Maybe Text)
tabFields
  = lens _tabFields (\ s a -> s{_tabFields = a})

-- | Data format for the response.
tabAlt :: Lens' TableList' Alt
tabAlt = lens _tabAlt (\ s a -> s{_tabAlt = a})

instance GoogleRequest TableList' where
        type Rs TableList' = TableList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableList'{..}
          = go _tabQuotaUser (Just _tabPrettyPrint) _tabUserIp
              _tabKey
              _tabPageToken
              _tabOauthToken
              _tabMaxResults
              _tabFields
              (Just _tabAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TableListResource)
                      r
                      u
