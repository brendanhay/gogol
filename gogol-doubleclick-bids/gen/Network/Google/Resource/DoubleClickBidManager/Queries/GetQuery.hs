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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a stored query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesGetQuery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery
    (
    -- * REST Resource
      QueriesGetQueryResource

    -- * Creating a Request
    , queriesGetQuery'
    , QueriesGetQuery'

    -- * Request Lenses
    , qgqQuotaUser
    , qgqQueryId
    , qgqPrettyPrint
    , qgqUserIP
    , qgqKey
    , qgqOAuthToken
    , qgqFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesGetQuery@ method which the
-- 'QueriesGetQuery'' request conforms to.
type QueriesGetQueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Query

-- | Retrieves a stored query.
--
-- /See:/ 'queriesGetQuery'' smart constructor.
data QueriesGetQuery' = QueriesGetQuery'
    { _qgqQuotaUser   :: !(Maybe Text)
    , _qgqQueryId     :: !Int64
    , _qgqPrettyPrint :: !Bool
    , _qgqUserIP      :: !(Maybe Text)
    , _qgqKey         :: !(Maybe AuthKey)
    , _qgqOAuthToken  :: !(Maybe OAuthToken)
    , _qgqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesGetQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qgqQuotaUser'
--
-- * 'qgqQueryId'
--
-- * 'qgqPrettyPrint'
--
-- * 'qgqUserIP'
--
-- * 'qgqKey'
--
-- * 'qgqOAuthToken'
--
-- * 'qgqFields'
queriesGetQuery'
    :: Int64 -- ^ 'queryId'
    -> QueriesGetQuery'
queriesGetQuery' pQgqQueryId_ =
    QueriesGetQuery'
    { _qgqQuotaUser = Nothing
    , _qgqQueryId = pQgqQueryId_
    , _qgqPrettyPrint = True
    , _qgqUserIP = Nothing
    , _qgqKey = Nothing
    , _qgqOAuthToken = Nothing
    , _qgqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qgqQuotaUser :: Lens' QueriesGetQuery' (Maybe Text)
qgqQuotaUser
  = lens _qgqQuotaUser (\ s a -> s{_qgqQuotaUser = a})

-- | Query ID to retrieve.
qgqQueryId :: Lens' QueriesGetQuery' Int64
qgqQueryId
  = lens _qgqQueryId (\ s a -> s{_qgqQueryId = a})

-- | Returns response with indentations and line breaks.
qgqPrettyPrint :: Lens' QueriesGetQuery' Bool
qgqPrettyPrint
  = lens _qgqPrettyPrint
      (\ s a -> s{_qgqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qgqUserIP :: Lens' QueriesGetQuery' (Maybe Text)
qgqUserIP
  = lens _qgqUserIP (\ s a -> s{_qgqUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qgqKey :: Lens' QueriesGetQuery' (Maybe AuthKey)
qgqKey = lens _qgqKey (\ s a -> s{_qgqKey = a})

-- | OAuth 2.0 token for the current user.
qgqOAuthToken :: Lens' QueriesGetQuery' (Maybe OAuthToken)
qgqOAuthToken
  = lens _qgqOAuthToken
      (\ s a -> s{_qgqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qgqFields :: Lens' QueriesGetQuery' (Maybe Text)
qgqFields
  = lens _qgqFields (\ s a -> s{_qgqFields = a})

instance GoogleAuth QueriesGetQuery' where
        _AuthKey = qgqKey . _Just
        _AuthToken = qgqOAuthToken . _Just

instance GoogleRequest QueriesGetQuery' where
        type Rs QueriesGetQuery' = Query
        request = requestWith doubleClickBidsRequest
        requestWith rq QueriesGetQuery'{..}
          = go _qgqQueryId _qgqQuotaUser (Just _qgqPrettyPrint)
              _qgqUserIP
              _qgqFields
              _qgqKey
              _qgqOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy QueriesGetQueryResource)
                      rq
