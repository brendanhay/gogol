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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.Runquery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Runs a stored query to generate a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesRunquery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.Runquery
    (
    -- * REST Resource
      QueriesRunqueryResource

    -- * Creating a Request
    , queriesRunquery'
    , QueriesRunquery'

    -- * Request Lenses
    , qrQuotaUser
    , qrQueryId
    , qrPrettyPrint
    , qrRunQueryRequest
    , qrUserIP
    , qrKey
    , qrOAuthToken
    , qrFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesRunquery@ which the
-- 'QueriesRunquery'' request conforms to.
type QueriesRunqueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RunQueryRequest :> Post '[JSON] ()

-- | Runs a stored query to generate a report.
--
-- /See:/ 'queriesRunquery'' smart constructor.
data QueriesRunquery' = QueriesRunquery'
    { _qrQuotaUser       :: !(Maybe Text)
    , _qrQueryId         :: !Int64
    , _qrPrettyPrint     :: !Bool
    , _qrRunQueryRequest :: !RunQueryRequest
    , _qrUserIP          :: !(Maybe Text)
    , _qrKey             :: !(Maybe Key)
    , _qrOAuthToken      :: !(Maybe OAuthToken)
    , _qrFields          :: !(Maybe Text)
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
-- * 'qrRunQueryRequest'
--
-- * 'qrUserIP'
--
-- * 'qrKey'
--
-- * 'qrOAuthToken'
--
-- * 'qrFields'
queriesRunquery'
    :: Int64 -- ^ 'queryId'
    -> RunQueryRequest -- ^ 'RunQueryRequest'
    -> QueriesRunquery'
queriesRunquery' pQrQueryId_ pQrRunQueryRequest_ =
    QueriesRunquery'
    { _qrQuotaUser = Nothing
    , _qrQueryId = pQrQueryId_
    , _qrPrettyPrint = True
    , _qrRunQueryRequest = pQrRunQueryRequest_
    , _qrUserIP = Nothing
    , _qrKey = Nothing
    , _qrOAuthToken = Nothing
    , _qrFields = Nothing
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

-- | Multipart request metadata.
qrRunQueryRequest :: Lens' QueriesRunquery' RunQueryRequest
qrRunQueryRequest
  = lens _qrRunQueryRequest
      (\ s a -> s{_qrRunQueryRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrUserIP :: Lens' QueriesRunquery' (Maybe Text)
qrUserIP = lens _qrUserIP (\ s a -> s{_qrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrKey :: Lens' QueriesRunquery' (Maybe Key)
qrKey = lens _qrKey (\ s a -> s{_qrKey = a})

-- | OAuth 2.0 token for the current user.
qrOAuthToken :: Lens' QueriesRunquery' (Maybe OAuthToken)
qrOAuthToken
  = lens _qrOAuthToken (\ s a -> s{_qrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrFields :: Lens' QueriesRunquery' (Maybe Text)
qrFields = lens _qrFields (\ s a -> s{_qrFields = a})

instance GoogleAuth QueriesRunquery' where
        authKey = qrKey . _Just
        authToken = qrOAuthToken . _Just

instance GoogleRequest QueriesRunquery' where
        type Rs QueriesRunquery' = ()
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesRunquery'{..}
          = go _qrQueryId _qrQuotaUser (Just _qrPrettyPrint)
              _qrUserIP
              _qrFields
              _qrKey
              _qrOAuthToken
              (Just AltJSON)
              _qrRunQueryRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesRunqueryResource)
                      r
                      u
