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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesCreateQuery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
    (
    -- * REST Resource
      QueriesCreateQueryResource

    -- * Creating a Request
    , queriesCreateQuery'
    , QueriesCreateQuery'

    -- * Request Lenses
    , qcqQuotaUser
    , qcqPrettyPrint
    , qcqUserIP
    , qcqPayload
    , qcqKey
    , qcqOAuthToken
    , qcqFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesCreateQuery@ method which the
-- 'QueriesCreateQuery'' request conforms to.
type QueriesCreateQueryResource =
     "query" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 Header "Authorization" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Query :> Post '[JSON] Query

-- | Creates a query.
--
-- /See:/ 'queriesCreateQuery'' smart constructor.
data QueriesCreateQuery' = QueriesCreateQuery'
    { _qcqQuotaUser   :: !(Maybe Text)
    , _qcqPrettyPrint :: !Bool
    , _qcqUserIP      :: !(Maybe Text)
    , _qcqPayload     :: !Query
    , _qcqKey         :: !(Maybe AuthKey)
    , _qcqOAuthToken  :: !(Maybe OAuthToken)
    , _qcqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesCreateQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcqQuotaUser'
--
-- * 'qcqPrettyPrint'
--
-- * 'qcqUserIP'
--
-- * 'qcqPayload'
--
-- * 'qcqKey'
--
-- * 'qcqOAuthToken'
--
-- * 'qcqFields'
queriesCreateQuery'
    :: Query -- ^ 'payload'
    -> QueriesCreateQuery'
queriesCreateQuery' pQcqPayload_ =
    QueriesCreateQuery'
    { _qcqQuotaUser = Nothing
    , _qcqPrettyPrint = True
    , _qcqUserIP = Nothing
    , _qcqPayload = pQcqPayload_
    , _qcqKey = Nothing
    , _qcqOAuthToken = Nothing
    , _qcqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qcqQuotaUser :: Lens' QueriesCreateQuery' (Maybe Text)
qcqQuotaUser
  = lens _qcqQuotaUser (\ s a -> s{_qcqQuotaUser = a})

-- | Returns response with indentations and line breaks.
qcqPrettyPrint :: Lens' QueriesCreateQuery' Bool
qcqPrettyPrint
  = lens _qcqPrettyPrint
      (\ s a -> s{_qcqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qcqUserIP :: Lens' QueriesCreateQuery' (Maybe Text)
qcqUserIP
  = lens _qcqUserIP (\ s a -> s{_qcqUserIP = a})

-- | Multipart request metadata.
qcqPayload :: Lens' QueriesCreateQuery' Query
qcqPayload
  = lens _qcqPayload (\ s a -> s{_qcqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qcqKey :: Lens' QueriesCreateQuery' (Maybe AuthKey)
qcqKey = lens _qcqKey (\ s a -> s{_qcqKey = a})

-- | OAuth 2.0 token for the current user.
qcqOAuthToken :: Lens' QueriesCreateQuery' (Maybe OAuthToken)
qcqOAuthToken
  = lens _qcqOAuthToken
      (\ s a -> s{_qcqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qcqFields :: Lens' QueriesCreateQuery' (Maybe Text)
qcqFields
  = lens _qcqFields (\ s a -> s{_qcqFields = a})

instance GoogleAuth QueriesCreateQuery' where
        _AuthKey = qcqKey . _Just
        _AuthToken = qcqOAuthToken . _Just

instance GoogleRequest QueriesCreateQuery' where
        type Rs QueriesCreateQuery' = Query
        request = requestWith doubleClickBidsRequest
        requestWith rq QueriesCreateQuery'{..}
          = go _qcqQuotaUser (Just _qcqPrettyPrint) _qcqUserIP
              _qcqFields
              _qcqKey
              _qcqOAuthToken
              (Just AltJSON)
              _qcqPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy QueriesCreateQueryResource)
                      rq
