{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Doubleclickbidmanager.Queries.Runquery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Runs a stored query to generate a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleclickbidmanagerQueriesRunquery@.
module Doubleclickbidmanager.Queries.Runquery
    (
    -- * REST Resource
      QueriesRunqueryAPI

    -- * Creating a Request
    , queriesRunquery
    , QueriesRunquery

    -- * Request Lenses
    , qrQuotaUser
    , qrQueryId
    , qrPrettyPrint
    , qrUserIp
    , qrKey
    , qrOauthToken
    , qrFields
    , qrAlt
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclickbidmanagerQueriesRunquery@ which the
-- 'QueriesRunquery' request conforms to.
type QueriesRunqueryAPI =
     "query" :> Capture "queryId" Int64 :> Post '[JSON] ()

-- | Runs a stored query to generate a report.
--
-- /See:/ 'queriesRunquery' smart constructor.
data QueriesRunquery = QueriesRunquery
    { _qrQuotaUser   :: !(Maybe Text)
    , _qrQueryId     :: !Int64
    , _qrPrettyPrint :: !Bool
    , _qrUserIp      :: !(Maybe Text)
    , _qrKey         :: !(Maybe Text)
    , _qrOauthToken  :: !(Maybe Text)
    , _qrFields      :: !(Maybe Text)
    , _qrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesRunquery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrQuotaUser'
--
-- * 'qrQueryId'
--
-- * 'qrPrettyPrint'
--
-- * 'qrUserIp'
--
-- * 'qrKey'
--
-- * 'qrOauthToken'
--
-- * 'qrFields'
--
-- * 'qrAlt'
queriesRunquery
    :: Int64 -- ^ 'queryId'
    -> QueriesRunquery
queriesRunquery pQrQueryId_ =
    QueriesRunquery
    { _qrQuotaUser = Nothing
    , _qrQueryId = pQrQueryId_
    , _qrPrettyPrint = True
    , _qrUserIp = Nothing
    , _qrKey = Nothing
    , _qrOauthToken = Nothing
    , _qrFields = Nothing
    , _qrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qrQuotaUser :: Lens' QueriesRunquery' (Maybe Text)
qrQuotaUser
  = lens _qrQuotaUser (\ s a -> s{_qrQuotaUser = a})

-- | Query ID to run.
qrQueryId :: Lens' QueriesRunquery' Int64
qrQueryId
  = lens _qrQueryId (\ s a -> s{_qrQueryId = a})

-- | Returns response with indentations and line breaks.
qrPrettyPrint :: Lens' QueriesRunquery' Bool
qrPrettyPrint
  = lens _qrPrettyPrint
      (\ s a -> s{_qrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrUserIp :: Lens' QueriesRunquery' (Maybe Text)
qrUserIp = lens _qrUserIp (\ s a -> s{_qrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrKey :: Lens' QueriesRunquery' (Maybe Text)
qrKey = lens _qrKey (\ s a -> s{_qrKey = a})

-- | OAuth 2.0 token for the current user.
qrOauthToken :: Lens' QueriesRunquery' (Maybe Text)
qrOauthToken
  = lens _qrOauthToken (\ s a -> s{_qrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrFields :: Lens' QueriesRunquery' (Maybe Text)
qrFields = lens _qrFields (\ s a -> s{_qrFields = a})

-- | Data format for the response.
qrAlt :: Lens' QueriesRunquery' Text
qrAlt = lens _qrAlt (\ s a -> s{_qrAlt = a})

instance GoogleRequest QueriesRunquery' where
        type Rs QueriesRunquery' = ()
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesRunquery{..}
          = go _qrQuotaUser _qrQueryId _qrPrettyPrint _qrUserIp
              _qrKey
              _qrOauthToken
              _qrFields
              _qrAlt
          where go
                  = clientWithRoute (Proxy :: Proxy QueriesRunqueryAPI)
                      r
                      u
