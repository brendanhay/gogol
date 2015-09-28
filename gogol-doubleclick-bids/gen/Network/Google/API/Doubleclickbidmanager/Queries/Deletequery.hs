{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Doubleclickbidmanager.Queries.Deletequery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.deletequery@.
module Network.Google.API.Doubleclickbidmanager.Queries.Deletequery
    (
    -- * REST Resource
      QueriesDeletequeryAPI

    -- * Creating a Request
    , queriesDeletequery'
    , QueriesDeletequery'

    -- * Request Lenses
    , qdQuotaUser
    , qdQueryId
    , qdPrettyPrint
    , qdUserIp
    , qdKey
    , qdOauthToken
    , qdFields
    , qdAlt
    ) where

import           Network.Google.DoubleClick.Bids.Types
import           Network.Google.Prelude

-- | A resource alias for doubleclickbidmanager.queries.deletequery which the
-- 'QueriesDeletequery'' request conforms to.
type QueriesDeletequeryAPI =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a stored query as well as the associated stored reports.
--
-- /See:/ 'queriesDeletequery'' smart constructor.
data QueriesDeletequery' = QueriesDeletequery'
    { _qdQuotaUser   :: !(Maybe Text)
    , _qdQueryId     :: !Int64
    , _qdPrettyPrint :: !Bool
    , _qdUserIp      :: !(Maybe Text)
    , _qdKey         :: !(Maybe Text)
    , _qdOauthToken  :: !(Maybe Text)
    , _qdFields      :: !(Maybe Text)
    , _qdAlt         :: !Alt
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
-- * 'qdUserIp'
--
-- * 'qdKey'
--
-- * 'qdOauthToken'
--
-- * 'qdFields'
--
-- * 'qdAlt'
queriesDeletequery'
    :: Int64 -- ^ 'queryId'
    -> QueriesDeletequery'
queriesDeletequery' pQdQueryId_ =
    QueriesDeletequery'
    { _qdQuotaUser = Nothing
    , _qdQueryId = pQdQueryId_
    , _qdPrettyPrint = True
    , _qdUserIp = Nothing
    , _qdKey = Nothing
    , _qdOauthToken = Nothing
    , _qdFields = Nothing
    , _qdAlt = JSON
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
qdUserIp :: Lens' QueriesDeletequery' (Maybe Text)
qdUserIp = lens _qdUserIp (\ s a -> s{_qdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qdKey :: Lens' QueriesDeletequery' (Maybe Text)
qdKey = lens _qdKey (\ s a -> s{_qdKey = a})

-- | OAuth 2.0 token for the current user.
qdOauthToken :: Lens' QueriesDeletequery' (Maybe Text)
qdOauthToken
  = lens _qdOauthToken (\ s a -> s{_qdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qdFields :: Lens' QueriesDeletequery' (Maybe Text)
qdFields = lens _qdFields (\ s a -> s{_qdFields = a})

-- | Data format for the response.
qdAlt :: Lens' QueriesDeletequery' Alt
qdAlt = lens _qdAlt (\ s a -> s{_qdAlt = a})

instance GoogleRequest QueriesDeletequery' where
        type Rs QueriesDeletequery' = ()
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesDeletequery'{..}
          = go _qdQuotaUser _qdQueryId (Just _qdPrettyPrint)
              _qdUserIp
              _qdKey
              _qdOauthToken
              _qdFields
              (Just _qdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesDeletequeryAPI)
                      r
                      u
