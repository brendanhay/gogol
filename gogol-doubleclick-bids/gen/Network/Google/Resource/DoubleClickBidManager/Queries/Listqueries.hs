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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves stored queries.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesListqueries@.
module Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
    (
    -- * REST Resource
      QueriesListqueriesResource

    -- * Creating a Request
    , queriesListqueries'
    , QueriesListqueries'

    -- * Request Lenses
    , qlQuotaUser
    , qlPrettyPrint
    , qlUserIP
    , qlKey
    , qlOAuthToken
    , qlFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesListqueries@ which the
-- 'QueriesListqueries'' request conforms to.
type QueriesListqueriesResource =
     "queries" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListQueriesResponse

-- | Retrieves stored queries.
--
-- /See:/ 'queriesListqueries'' smart constructor.
data QueriesListqueries' = QueriesListqueries'
    { _qlQuotaUser   :: !(Maybe Text)
    , _qlPrettyPrint :: !Bool
    , _qlUserIP      :: !(Maybe Text)
    , _qlKey         :: !(Maybe AuthKey)
    , _qlOAuthToken  :: !(Maybe OAuthToken)
    , _qlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesListqueries'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlQuotaUser'
--
-- * 'qlPrettyPrint'
--
-- * 'qlUserIP'
--
-- * 'qlKey'
--
-- * 'qlOAuthToken'
--
-- * 'qlFields'
queriesListqueries'
    :: QueriesListqueries'
queriesListqueries' =
    QueriesListqueries'
    { _qlQuotaUser = Nothing
    , _qlPrettyPrint = True
    , _qlUserIP = Nothing
    , _qlKey = Nothing
    , _qlOAuthToken = Nothing
    , _qlFields = Nothing
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
qlUserIP :: Lens' QueriesListqueries' (Maybe Text)
qlUserIP = lens _qlUserIP (\ s a -> s{_qlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qlKey :: Lens' QueriesListqueries' (Maybe AuthKey)
qlKey = lens _qlKey (\ s a -> s{_qlKey = a})

-- | OAuth 2.0 token for the current user.
qlOAuthToken :: Lens' QueriesListqueries' (Maybe OAuthToken)
qlOAuthToken
  = lens _qlOAuthToken (\ s a -> s{_qlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qlFields :: Lens' QueriesListqueries' (Maybe Text)
qlFields = lens _qlFields (\ s a -> s{_qlFields = a})

instance GoogleAuth QueriesListqueries' where
        authKey = qlKey . _Just
        authToken = qlOAuthToken . _Just

instance GoogleRequest QueriesListqueries' where
        type Rs QueriesListqueries' = ListQueriesResponse
        request = requestWith doubleClickBidsRequest
        requestWith rq QueriesListqueries'{..}
          = go _qlQuotaUser (Just _qlPrettyPrint) _qlUserIP
              _qlFields
              _qlKey
              _qlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy QueriesListqueriesResource)
                      rq
