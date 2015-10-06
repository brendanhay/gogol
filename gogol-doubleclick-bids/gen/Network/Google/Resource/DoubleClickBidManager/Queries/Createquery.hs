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
-- Module      : Network.Google.Resource.DoubleClickBidManager.Queries.Createquery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleClickBidManagerQueriesCreatequery@.
module Network.Google.Resource.DoubleClickBidManager.Queries.Createquery
    (
    -- * REST Resource
      QueriesCreatequeryResource

    -- * Creating a Request
    , queriesCreatequery'
    , QueriesCreatequery'

    -- * Request Lenses
    , qcQuotaUser
    , qcPrettyPrint
    , qcUserIP
    , qcPayload
    , qcKey
    , qcOAuthToken
    , qcFields
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClickBidManagerQueriesCreatequery@ which the
-- 'QueriesCreatequery'' request conforms to.
type QueriesCreatequeryResource =
     "query" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Query :> Post '[JSON] Query

-- | Creates a query.
--
-- /See:/ 'queriesCreatequery'' smart constructor.
data QueriesCreatequery' = QueriesCreatequery'
    { _qcQuotaUser   :: !(Maybe Text)
    , _qcPrettyPrint :: !Bool
    , _qcUserIP      :: !(Maybe Text)
    , _qcPayload     :: !Query
    , _qcKey         :: !(Maybe AuthKey)
    , _qcOAuthToken  :: !(Maybe OAuthToken)
    , _qcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesCreatequery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcQuotaUser'
--
-- * 'qcPrettyPrint'
--
-- * 'qcUserIP'
--
-- * 'qcPayload'
--
-- * 'qcKey'
--
-- * 'qcOAuthToken'
--
-- * 'qcFields'
queriesCreatequery'
    :: Query -- ^ 'payload'
    -> QueriesCreatequery'
queriesCreatequery' pQcPayload_ =
    QueriesCreatequery'
    { _qcQuotaUser = Nothing
    , _qcPrettyPrint = True
    , _qcUserIP = Nothing
    , _qcPayload = pQcPayload_
    , _qcKey = Nothing
    , _qcOAuthToken = Nothing
    , _qcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qcQuotaUser :: Lens' QueriesCreatequery' (Maybe Text)
qcQuotaUser
  = lens _qcQuotaUser (\ s a -> s{_qcQuotaUser = a})

-- | Returns response with indentations and line breaks.
qcPrettyPrint :: Lens' QueriesCreatequery' Bool
qcPrettyPrint
  = lens _qcPrettyPrint
      (\ s a -> s{_qcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qcUserIP :: Lens' QueriesCreatequery' (Maybe Text)
qcUserIP = lens _qcUserIP (\ s a -> s{_qcUserIP = a})

-- | Multipart request metadata.
qcPayload :: Lens' QueriesCreatequery' Query
qcPayload
  = lens _qcPayload (\ s a -> s{_qcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qcKey :: Lens' QueriesCreatequery' (Maybe AuthKey)
qcKey = lens _qcKey (\ s a -> s{_qcKey = a})

-- | OAuth 2.0 token for the current user.
qcOAuthToken :: Lens' QueriesCreatequery' (Maybe OAuthToken)
qcOAuthToken
  = lens _qcOAuthToken (\ s a -> s{_qcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
qcFields :: Lens' QueriesCreatequery' (Maybe Text)
qcFields = lens _qcFields (\ s a -> s{_qcFields = a})

instance GoogleAuth QueriesCreatequery' where
        _AuthKey = qcKey . _Just
        _AuthToken = qcOAuthToken . _Just

instance GoogleRequest QueriesCreatequery' where
        type Rs QueriesCreatequery' = Query
        request = requestWith doubleClickBidsRequest
        requestWith rq QueriesCreatequery'{..}
          = go _qcQuotaUser (Just _qcPrettyPrint) _qcUserIP
              _qcFields
              _qcKey
              _qcOAuthToken
              (Just AltJSON)
              _qcPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy QueriesCreatequeryResource)
                      rq
