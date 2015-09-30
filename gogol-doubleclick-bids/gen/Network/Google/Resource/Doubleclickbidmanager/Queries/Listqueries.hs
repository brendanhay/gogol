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
-- Module      : Network.Google.Resource.Doubleclickbidmanager.Queries.Listqueries
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves stored queries.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleclickbidmanagerQueriesListqueries@.
module Network.Google.Resource.Doubleclickbidmanager.Queries.Listqueries
    (
    -- * REST Resource
      QueriesListqueriesResource

    -- * Creating a Request
    , queriesListqueries'
    , QueriesListqueries'

    -- * Request Lenses
    , qlQuotaUser
    , qlPrettyPrint
    , qlUserIp
    , qlKey
    , qlOauthToken
    , qlFields
    , qlAlt
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclickbidmanagerQueriesListqueries@ which the
-- 'QueriesListqueries'' request conforms to.
type QueriesListqueriesResource =
     "queries" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] ListQueriesResponse

-- | Retrieves stored queries.
--
-- /See:/ 'queriesListqueries'' smart constructor.
data QueriesListqueries' = QueriesListqueries'
    { _qlQuotaUser   :: !(Maybe Text)
    , _qlPrettyPrint :: !Bool
    , _qlUserIp      :: !(Maybe Text)
    , _qlKey         :: !(Maybe Text)
    , _qlOauthToken  :: !(Maybe Text)
    , _qlFields      :: !(Maybe Text)
    , _qlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesListqueries'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlQuotaUser'
--
-- * 'qlPrettyPrint'
--
-- * 'qlUserIp'
--
-- * 'qlKey'
--
-- * 'qlOauthToken'
--
-- * 'qlFields'
--
-- * 'qlAlt'
queriesListqueries'
    :: QueriesListqueries'
queriesListqueries' =
    QueriesListqueries'
    { _qlQuotaUser = Nothing
    , _qlPrettyPrint = True
    , _qlUserIp = Nothing
    , _qlKey = Nothing
    , _qlOauthToken = Nothing
    , _qlFields = Nothing
    , _qlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qlQuotaUser :: Lens' QueriesListqueries' (Maybe Text)
qlQuotaUser
  = lens _qlQuotaUser (\ s a -> s{_qlQuotaUser = a})

-- | Returns response with indentations and line breaks.
qlPrettyPrint :: Lens' QueriesListqueries' Bool
qlPrettyPrint
  = lens _qlPrettyPrint
      (\ s a -> s{_qlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qlUserIp :: Lens' QueriesListqueries' (Maybe Text)
qlUserIp = lens _qlUserIp (\ s a -> s{_qlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qlKey :: Lens' QueriesListqueries' (Maybe Text)
qlKey = lens _qlKey (\ s a -> s{_qlKey = a})

-- | OAuth 2.0 token for the current user.
qlOauthToken :: Lens' QueriesListqueries' (Maybe Text)
qlOauthToken
  = lens _qlOauthToken (\ s a -> s{_qlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qlFields :: Lens' QueriesListqueries' (Maybe Text)
qlFields = lens _qlFields (\ s a -> s{_qlFields = a})

-- | Data format for the response.
qlAlt :: Lens' QueriesListqueries' Alt
qlAlt = lens _qlAlt (\ s a -> s{_qlAlt = a})

instance GoogleRequest QueriesListqueries' where
        type Rs QueriesListqueries' = ListQueriesResponse
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesListqueries'{..}
          = go _qlQuotaUser (Just _qlPrettyPrint) _qlUserIp
              _qlKey
              _qlOauthToken
              _qlFields
              (Just _qlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesListqueriesResource)
                      r
                      u
