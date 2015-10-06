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
    , tabUserIP
    , tabKey
    , tabPageToken
    , tabOAuthToken
    , tabMaxResults
    , tabFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableList@ which the
-- 'TableList'' request conforms to.
type TableListResource =
     "tables" :>
       QueryParam "pageToken" Text :>
         QueryParam "maxResults" Word32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] TableList

-- | Retrieves a list of tables a user owns.
--
-- /See:/ 'tableList'' smart constructor.
data TableList' = TableList'
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIP      :: !(Maybe Text)
    , _tabKey         :: !(Maybe AuthKey)
    , _tabPageToken   :: !(Maybe Text)
    , _tabOAuthToken  :: !(Maybe OAuthToken)
    , _tabMaxResults  :: !(Maybe Word32)
    , _tabFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableList'' with the minimum fields required to make a request.
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
-- * 'tabPageToken'
--
-- * 'tabOAuthToken'
--
-- * 'tabMaxResults'
--
-- * 'tabFields'
tableList'
    :: TableList'
tableList' =
    TableList'
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIP = Nothing
    , _tabKey = Nothing
    , _tabPageToken = Nothing
    , _tabOAuthToken = Nothing
    , _tabMaxResults = Nothing
    , _tabFields = Nothing
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
tabUserIP :: Lens' TableList' (Maybe Text)
tabUserIP
  = lens _tabUserIP (\ s a -> s{_tabUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TableList' (Maybe AuthKey)
tabKey = lens _tabKey (\ s a -> s{_tabKey = a})

-- | Continuation token specifying which result page to return.
tabPageToken :: Lens' TableList' (Maybe Text)
tabPageToken
  = lens _tabPageToken (\ s a -> s{_tabPageToken = a})

-- | OAuth 2.0 token for the current user.
tabOAuthToken :: Lens' TableList' (Maybe OAuthToken)
tabOAuthToken
  = lens _tabOAuthToken
      (\ s a -> s{_tabOAuthToken = a})

-- | Maximum number of tables to return. Default is 5.
tabMaxResults :: Lens' TableList' (Maybe Word32)
tabMaxResults
  = lens _tabMaxResults
      (\ s a -> s{_tabMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tabFields :: Lens' TableList' (Maybe Text)
tabFields
  = lens _tabFields (\ s a -> s{_tabFields = a})

instance GoogleAuth TableList' where
        _AuthKey = tabKey . _Just
        _AuthToken = tabOAuthToken . _Just

instance GoogleRequest TableList' where
        type Rs TableList' = TableList
        request = requestWith fusionTablesRequest
        requestWith rq TableList'{..}
          = go _tabPageToken _tabMaxResults _tabQuotaUser
              (Just _tabPrettyPrint)
              _tabUserIP
              _tabFields
              _tabKey
              _tabOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TableListResource) rq
