{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Doubleclickbidmanager.Queries.Createquery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a query.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @doubleclickbidmanager.queries.createquery@.
module Network.Google.API.Doubleclickbidmanager.Queries.Createquery
    (
    -- * REST Resource
      QueriesCreatequeryAPI

    -- * Creating a Request
    , queriesCreatequery'
    , QueriesCreatequery'

    -- * Request Lenses
    , qcQuotaUser
    , qcPrettyPrint
    , qcUserIp
    , qcKey
    , qcOauthToken
    , qcFields
    , qcAlt
    ) where

import           Network.Google.DoubleClick.Bids.Types
import           Network.Google.Prelude

-- | A resource alias for doubleclickbidmanager.queries.createquery which the
-- 'QueriesCreatequery'' request conforms to.
type QueriesCreatequeryAPI =
     "query" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Query

-- | Creates a query.
--
-- /See:/ 'queriesCreatequery'' smart constructor.
data QueriesCreatequery' = QueriesCreatequery'
    { _qcQuotaUser   :: !(Maybe Text)
    , _qcPrettyPrint :: !Bool
    , _qcUserIp      :: !(Maybe Text)
    , _qcKey         :: !(Maybe Text)
    , _qcOauthToken  :: !(Maybe Text)
    , _qcFields      :: !(Maybe Text)
    , _qcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueriesCreatequery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcQuotaUser'
--
-- * 'qcPrettyPrint'
--
-- * 'qcUserIp'
--
-- * 'qcKey'
--
-- * 'qcOauthToken'
--
-- * 'qcFields'
--
-- * 'qcAlt'
queriesCreatequery'
    :: QueriesCreatequery'
queriesCreatequery' =
    QueriesCreatequery'
    { _qcQuotaUser = Nothing
    , _qcPrettyPrint = True
    , _qcUserIp = Nothing
    , _qcKey = Nothing
    , _qcOauthToken = Nothing
    , _qcFields = Nothing
    , _qcAlt = JSON
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
qcUserIp :: Lens' QueriesCreatequery' (Maybe Text)
qcUserIp = lens _qcUserIp (\ s a -> s{_qcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qcKey :: Lens' QueriesCreatequery' (Maybe Text)
qcKey = lens _qcKey (\ s a -> s{_qcKey = a})

-- | OAuth 2.0 token for the current user.
qcOauthToken :: Lens' QueriesCreatequery' (Maybe Text)
qcOauthToken
  = lens _qcOauthToken (\ s a -> s{_qcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
qcFields :: Lens' QueriesCreatequery' (Maybe Text)
qcFields = lens _qcFields (\ s a -> s{_qcFields = a})

-- | Data format for the response.
qcAlt :: Lens' QueriesCreatequery' Alt
qcAlt = lens _qcAlt (\ s a -> s{_qcAlt = a})

instance GoogleRequest QueriesCreatequery' where
        type Rs QueriesCreatequery' = Query
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u QueriesCreatequery'{..}
          = go _qcQuotaUser (Just _qcPrettyPrint) _qcUserIp
              _qcKey
              _qcOauthToken
              _qcFields
              (Just _qcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy QueriesCreatequeryAPI)
                      r
                      u
