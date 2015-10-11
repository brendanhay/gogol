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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesDeleteQuery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery
    (
    -- * REST Resource
      QueriesDeleteQueryResource

    -- * Creating a Request
    , queriesDeleteQuery'
    , QueriesDeleteQuery'

    -- * Request Lenses
    , qdqQuotaUser
    , qdqQueryId
    , qdqPrettyPrint
    , qdqUserIP
    , qdqKey
    , qdqOAuthToken
    , qdqFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesDeleteQuery@ method which the
-- 'QueriesDeleteQuery'' request conforms to.
type QueriesDeleteQueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ 'queriesDeleteQuery'' smart constructor.
data QueriesDeleteQuery' = QueriesDeleteQuery'
    { _qdqQuotaUser   :: !(Maybe Text)
    , _qdqQueryId     :: !Int64
    , _qdqPrettyPrint :: !Bool
    , _qdqUserIP      :: !(Maybe Text)
    , _qdqKey         :: !(Maybe AuthKey)
    , _qdqOAuthToken  :: !(Maybe OAuthToken)
    , _qdqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesDeleteQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdqQuotaUser'
--
-- * 'qdqQueryId'
--
-- * 'qdqPrettyPrint'
--
-- * 'qdqUserIP'
--
-- * 'qdqKey'
--
-- * 'qdqOAuthToken'
--
-- * 'qdqFields'
queriesDeleteQuery'
    :: Int64 -- ^ 'queryId'
    -> QueriesDeleteQuery'
queriesDeleteQuery' pQdqQueryId_ =
    QueriesDeleteQuery'
    { _qdqQuotaUser = Nothing
    , _qdqQueryId = pQdqQueryId_
    , _qdqPrettyPrint = True
    , _qdqUserIP = Nothing
    , _qdqKey = Nothing
    , _qdqOAuthToken = Nothing
    , _qdqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qdqQuotaUser :: Lens' QueriesDeleteQuery' (Maybe Text)
qdqQuotaUser
  = lens _qdqQuotaUser (\ s a -> s{_qdqQuotaUser = a})

-- | Query ID to delete.
qdqQueryId :: Lens' QueriesDeleteQuery' Int64
qdqQueryId
  = lens _qdqQueryId (\ s a -> s{_qdqQueryId = a})

-- | Returns response with indentations and line breaks.
qdqPrettyPrint :: Lens' QueriesDeleteQuery' Bool
qdqPrettyPrint
  = lens _qdqPrettyPrint
      (\ s a -> s{_qdqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qdqUserIP :: Lens' QueriesDeleteQuery' (Maybe Text)
qdqUserIP
  = lens _qdqUserIP (\ s a -> s{_qdqUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qdqKey :: Lens' QueriesDeleteQuery' (Maybe AuthKey)
qdqKey = lens _qdqKey (\ s a -> s{_qdqKey = a})

-- | OAuth 2.0 token for the current user.
qdqOAuthToken :: Lens' QueriesDeleteQuery' (Maybe OAuthToken)
qdqOAuthToken
  = lens _qdqOAuthToken
      (\ s a -> s{_qdqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qdqFields :: Lens' QueriesDeleteQuery' (Maybe Text)
qdqFields
  = lens _qdqFields (\ s a -> s{_qdqFields = a})

instance GoogleAuth QueriesDeleteQuery' where
        _AuthKey = qdqKey . _Just
        _AuthToken = qdqOAuthToken . _Just

instance GoogleRequest QueriesDeleteQuery' where
        type Rs QueriesDeleteQuery' = ()
        request = requestWith doubleClickBidsRequest
        requestWith rq QueriesDeleteQuery'{..}
          = go _qdqQueryId _qdqQuotaUser (Just _qdqPrettyPrint)
              _qdqUserIP
              _qdqFields
              _qdqKey
              _qdqOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy QueriesDeleteQueryResource)
                      rq
