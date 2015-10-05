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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.Getquery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a stored query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesGetquery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.Getquery
    (
    -- * REST Resource
      QueriesGetqueryResource

    -- * Creating a Request
    , queriesGetquery'
    , QueriesGetquery'

    -- * Request Lenses
    , qgQuotaUser
    , qgQueryId
    , qgPrettyPrint
    , qgUserIP
    , qgKey
    , qgOAuthToken
    , qgFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesGetquery@ which the
-- 'QueriesGetquery'' request conforms to.
type QueriesGetqueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Query

-- | Retrieves a stored query.
--
-- /See:/ 'queriesGetquery'' smart constructor.
data QueriesGetquery' = QueriesGetquery'
    { _qgQuotaUser   :: !(Maybe Text)
    , _qgQueryId     :: !Int64
    , _qgPrettyPrint :: !Bool
    , _qgUserIP      :: !(Maybe Text)
    , _qgKey         :: !(Maybe Key)
    , _qgOAuthToken  :: !(Maybe OAuthToken)
    , _qgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesGetquery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qgQuotaUser'
--
-- * 'qgQueryId'
--
-- * 'qgPrettyPrint'
--
-- * 'qgUserIP'
--
-- * 'qgKey'
--
-- * 'qgOAuthToken'
--
-- * 'qgFields'
queriesGetquery'
    :: Int64 -- ^ 'queryId'
    -> QueriesGetquery'
queriesGetquery' pQgQueryId_ =
    QueriesGetquery'
    { _qgQuotaUser = Nothing
    , _qgQueryId = pQgQueryId_
    , _qgPrettyPrint = True
    , _qgUserIP = Nothing
    , _qgKey = Nothing
    , _qgOAuthToken = Nothing
    , _qgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qgQuotaUser :: Lens' QueriesGetquery' (Maybe Text)
qgQuotaUser
  = lens _qgQuotaUser (\ s a -> s{_qgQuotaUser = a})

-- | Query ID to retrieve.
qgQueryId :: Lens' QueriesGetquery' Int64
qgQueryId
  = lens _qgQueryId (\ s a -> s{_qgQueryId = a})

-- | Returns response with indentations and line breaks.
qgPrettyPrint :: Lens' QueriesGetquery' Bool
qgPrettyPrint
  = lens _qgPrettyPrint
      (\ s a -> s{_qgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qgUserIP :: Lens' QueriesGetquery' (Maybe Text)
qgUserIP = lens _qgUserIP (\ s a -> s{_qgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qgKey :: Lens' QueriesGetquery' (Maybe Key)
qgKey = lens _qgKey (\ s a -> s{_qgKey = a})

-- | OAuth 2.0 token for the current user.
qgOAuthToken :: Lens' QueriesGetquery' (Maybe OAuthToken)
qgOAuthToken
  = lens _qgOAuthToken (\ s a -> s{_qgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qgFields :: Lens' QueriesGetquery' (Maybe Text)
qgFields = lens _qgFields (\ s a -> s{_qgFields = a})

instance GoogleAuth QueriesGetquery' where
        authKey = qgKey . _Just
        authToken = qgOAuthToken . _Just

instance GoogleRequest QueriesGetquery' where
        type Rs QueriesGetquery' = Query
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesGetquery'{..}
          = go _qgQueryId _qgQuotaUser (Just _qgPrettyPrint)
              _qgUserIP
              _qgFields
              _qgKey
              _qgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesGetqueryResource)
                      r
                      u
