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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.Deletequery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesDeletequery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.Deletequery
    (
    -- * REST Resource
      QueriesDeletequeryResource

    -- * Creating a Request
    , queriesDeletequery'
    , QueriesDeletequery'

    -- * Request Lenses
    , qdQuotaUser
    , qdQueryId
    , qdPrettyPrint
    , qdUserIP
    , qdKey
    , qdOAuthToken
    , qdFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesDeletequery@ which the
-- 'QueriesDeletequery'' request conforms to.
type QueriesDeletequeryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ 'queriesDeletequery'' smart constructor.
data QueriesDeletequery' = QueriesDeletequery'
    { _qdQuotaUser   :: !(Maybe Text)
    , _qdQueryId     :: !Int64
    , _qdPrettyPrint :: !Bool
    , _qdUserIP      :: !(Maybe Text)
    , _qdKey         :: !(Maybe Key)
    , _qdOAuthToken  :: !(Maybe OAuthToken)
    , _qdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesDeletequery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qdQuotaUser'
--
-- * 'qdQueryId'
--
-- * 'qdPrettyPrint'
--
-- * 'qdUserIP'
--
-- * 'qdKey'
--
-- * 'qdOAuthToken'
--
-- * 'qdFields'
queriesDeletequery'
    :: Int64 -- ^ 'queryId'
    -> QueriesDeletequery'
queriesDeletequery' pQdQueryId_ =
    QueriesDeletequery'
    { _qdQuotaUser = Nothing
    , _qdQueryId = pQdQueryId_
    , _qdPrettyPrint = True
    , _qdUserIP = Nothing
    , _qdKey = Nothing
    , _qdOAuthToken = Nothing
    , _qdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qdQuotaUser :: Lens' QueriesDeletequery' (Maybe Text)
qdQuotaUser
  = lens _qdQuotaUser (\ s a -> s{_qdQuotaUser = a})

-- | Query ID to delete.
qdQueryId :: Lens' QueriesDeletequery' Int64
qdQueryId
  = lens _qdQueryId (\ s a -> s{_qdQueryId = a})

-- | Returns response with indentations and line breaks.
qdPrettyPrint :: Lens' QueriesDeletequery' Bool
qdPrettyPrint
  = lens _qdPrettyPrint
      (\ s a -> s{_qdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qdUserIP :: Lens' QueriesDeletequery' (Maybe Text)
qdUserIP = lens _qdUserIP (\ s a -> s{_qdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qdKey :: Lens' QueriesDeletequery' (Maybe Key)
qdKey = lens _qdKey (\ s a -> s{_qdKey = a})

-- | OAuth 2.0 token for the current user.
qdOAuthToken :: Lens' QueriesDeletequery' (Maybe OAuthToken)
qdOAuthToken
  = lens _qdOAuthToken (\ s a -> s{_qdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qdFields :: Lens' QueriesDeletequery' (Maybe Text)
qdFields = lens _qdFields (\ s a -> s{_qdFields = a})

instance GoogleAuth QueriesDeletequery' where
        authKey = qdKey . _Just
        authToken = qdOAuthToken . _Just

instance GoogleRequest QueriesDeletequery' where
        type Rs QueriesDeletequery' = ()
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesDeletequery'{..}
          = go _qdQueryId _qdQuotaUser (Just _qdPrettyPrint)
              _qdUserIP
              _qdFields
              _qdKey
              _qdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesDeletequeryResource)
                      r
                      u
