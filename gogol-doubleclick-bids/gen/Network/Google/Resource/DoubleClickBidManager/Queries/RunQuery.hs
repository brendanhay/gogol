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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Runs a stored query to generate a report.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesRunQuery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery
    (
    -- * REST Resource
      QueriesRunQueryResource

    -- * Creating a Request
    , queriesRunQuery'
    , QueriesRunQuery'

    -- * Request Lenses
    , qrqQuotaUser
    , qrqQueryId
    , qrqPrettyPrint
    , qrqUserIP
    , qrqPayload
    , qrqKey
    , qrqOAuthToken
    , qrqFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesRunQuery@ method which the
-- 'QueriesRunQuery'' request conforms to.
type QueriesRunQueryResource =
     "query" :>
       Capture "queryId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RunQueryRequest :> Post '[JSON] ()

-- | Runs a stored query to generate a report.
--
-- /See:/ 'queriesRunQuery'' smart constructor.
data QueriesRunQuery' = QueriesRunQuery'
    { _qrqQuotaUser   :: !(Maybe Text)
    , _qrqQueryId     :: !Int64
    , _qrqPrettyPrint :: !Bool
    , _qrqUserIP      :: !(Maybe Text)
    , _qrqPayload     :: !RunQueryRequest
    , _qrqKey         :: !(Maybe AuthKey)
    , _qrqOAuthToken  :: !(Maybe OAuthToken)
    , _qrqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesRunQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrqQuotaUser'
--
-- * 'qrqQueryId'
--
-- * 'qrqPrettyPrint'
--
-- * 'qrqUserIP'
--
-- * 'qrqPayload'
--
-- * 'qrqKey'
--
-- * 'qrqOAuthToken'
--
-- * 'qrqFields'
queriesRunQuery'
    :: Int64 -- ^ 'queryId'
    -> RunQueryRequest -- ^ 'payload'
    -> QueriesRunQuery'
queriesRunQuery' pQrqQueryId_ pQrqPayload_ =
    QueriesRunQuery'
    { _qrqQuotaUser = Nothing
    , _qrqQueryId = pQrqQueryId_
    , _qrqPrettyPrint = True
    , _qrqUserIP = Nothing
    , _qrqPayload = pQrqPayload_
    , _qrqKey = Nothing
    , _qrqOAuthToken = Nothing
    , _qrqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qrqQuotaUser :: Lens' QueriesRunQuery' (Maybe Text)
qrqQuotaUser
  = lens _qrqQuotaUser (\ s a -> s{_qrqQuotaUser = a})

-- | Query ID to run.
qrqQueryId :: Lens' QueriesRunQuery' Int64
qrqQueryId
  = lens _qrqQueryId (\ s a -> s{_qrqQueryId = a})

-- | Returns response with indentations and line breaks.
qrqPrettyPrint :: Lens' QueriesRunQuery' Bool
qrqPrettyPrint
  = lens _qrqPrettyPrint
      (\ s a -> s{_qrqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qrqUserIP :: Lens' QueriesRunQuery' (Maybe Text)
qrqUserIP
  = lens _qrqUserIP (\ s a -> s{_qrqUserIP = a})

-- | Multipart request metadata.
qrqPayload :: Lens' QueriesRunQuery' RunQueryRequest
qrqPayload
  = lens _qrqPayload (\ s a -> s{_qrqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qrqKey :: Lens' QueriesRunQuery' (Maybe AuthKey)
qrqKey = lens _qrqKey (\ s a -> s{_qrqKey = a})

-- | OAuth 2.0 token for the current user.
qrqOAuthToken :: Lens' QueriesRunQuery' (Maybe OAuthToken)
qrqOAuthToken
  = lens _qrqOAuthToken
      (\ s a -> s{_qrqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qrqFields :: Lens' QueriesRunQuery' (Maybe Text)
qrqFields
  = lens _qrqFields (\ s a -> s{_qrqFields = a})

instance GoogleAuth QueriesRunQuery' where
        _AuthKey = qrqKey . _Just
        _AuthToken = qrqOAuthToken . _Just

instance GoogleRequest QueriesRunQuery' where
        type Rs QueriesRunQuery' = ()
        request = requestWith doubleClickBidsRequest
        requestWith rq QueriesRunQuery'{..}
          = go _qrqQueryId _qrqQuotaUser (Just _qrqPrettyPrint)
              _qrqUserIP
              _qrqFields
              _qrqKey
              _qrqOAuthToken
              (Just AltJSON)
              _qrqPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy QueriesRunQueryResource)
                      rq
