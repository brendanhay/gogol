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
-- Module      : Network.Google.Resource.Doubleclickbidmanager.Queries.Getquery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a stored query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleclickbidmanagerQueriesGetquery@.
module Network.Google.Resource.Doubleclickbidmanager.Queries.Getquery
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
    , qgUserIp
    , qgKey
    , qgOauthToken
    , qgFields
    , qgAlt
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclickbidmanagerQueriesGetquery@ which the
-- 'QueriesGetquery'' request conforms to.
type QueriesGetqueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Query

-- | Retrieves a stored query.
--
-- /See:/ 'queriesGetquery'' smart constructor.
data QueriesGetquery' = QueriesGetquery'
    { _qgQuotaUser   :: !(Maybe Text)
    , _qgQueryId     :: !Int64
    , _qgPrettyPrint :: !Bool
    , _qgUserIp      :: !(Maybe Text)
    , _qgKey         :: !(Maybe Text)
    , _qgOauthToken  :: !(Maybe Text)
    , _qgFields      :: !(Maybe Text)
    , _qgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'qgUserIp'
--
-- * 'qgKey'
--
-- * 'qgOauthToken'
--
-- * 'qgFields'
--
-- * 'qgAlt'
queriesGetquery'
    :: Int64 -- ^ 'queryId'
    -> QueriesGetquery'
queriesGetquery' pQgQueryId_ =
    QueriesGetquery'
    { _qgQuotaUser = Nothing
    , _qgQueryId = pQgQueryId_
    , _qgPrettyPrint = True
    , _qgUserIp = Nothing
    , _qgKey = Nothing
    , _qgOauthToken = Nothing
    , _qgFields = Nothing
    , _qgAlt = JSON
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
qgUserIp :: Lens' QueriesGetquery' (Maybe Text)
qgUserIp = lens _qgUserIp (\ s a -> s{_qgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qgKey :: Lens' QueriesGetquery' (Maybe Text)
qgKey = lens _qgKey (\ s a -> s{_qgKey = a})

-- | OAuth 2.0 token for the current user.
qgOauthToken :: Lens' QueriesGetquery' (Maybe Text)
qgOauthToken
  = lens _qgOauthToken (\ s a -> s{_qgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qgFields :: Lens' QueriesGetquery' (Maybe Text)
qgFields = lens _qgFields (\ s a -> s{_qgFields = a})

-- | Data format for the response.
qgAlt :: Lens' QueriesGetquery' Alt
qgAlt = lens _qgAlt (\ s a -> s{_qgAlt = a})

instance GoogleRequest QueriesGetquery' where
        type Rs QueriesGetquery' = Query
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesGetquery'{..}
          = go _qgQuotaUser _qgQueryId (Just _qgPrettyPrint)
              _qgUserIp
              _qgKey
              _qgOauthToken
              _qgFields
              (Just _qgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesGetqueryResource)
                      r
                      u
