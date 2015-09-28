{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Clientaccess.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.insert@.
module Network.Google.API.AdExchangeBuyer.Clientaccess.Insert
    (
    -- * REST Resource
      ClientaccessInsertAPI

    -- * Creating a Request
    , clientaccessInsert'
    , ClientaccessInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIp
    , ciSponsorAccountId
    , ciKey
    , ciClientAccountId
    , ciOauthToken
    , ciFields
    , ciAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.clientaccess.insert which the
-- 'ClientaccessInsert'' request conforms to.
type ClientaccessInsertAPI =
     "clientAccess" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "sponsorAccountId" Int32 :>
               QueryParam "key" Text :>
                 QueryParam "clientAccountId" Int64 :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientaccessInsert'' smart constructor.
data ClientaccessInsert' = ClientaccessInsert'
    { _ciQuotaUser        :: !(Maybe Text)
    , _ciPrettyPrint      :: !Bool
    , _ciUserIp           :: !(Maybe Text)
    , _ciSponsorAccountId :: !(Maybe Int32)
    , _ciKey              :: !(Maybe Text)
    , _ciClientAccountId  :: !(Maybe Int64)
    , _ciOauthToken       :: !(Maybe Text)
    , _ciFields           :: !(Maybe Text)
    , _ciAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientaccessInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciSponsorAccountId'
--
-- * 'ciKey'
--
-- * 'ciClientAccountId'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
clientaccessInsert'
    :: ClientaccessInsert'
clientaccessInsert' =
    ClientaccessInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciSponsorAccountId = Nothing
    , _ciKey = Nothing
    , _ciClientAccountId = Nothing
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' ClientaccessInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' ClientaccessInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' ClientaccessInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

ciSponsorAccountId :: Lens' ClientaccessInsert' (Maybe Int32)
ciSponsorAccountId
  = lens _ciSponsorAccountId
      (\ s a -> s{_ciSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' ClientaccessInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

ciClientAccountId :: Lens' ClientaccessInsert' (Maybe Int64)
ciClientAccountId
  = lens _ciClientAccountId
      (\ s a -> s{_ciClientAccountId = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' ClientaccessInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' ClientaccessInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' ClientaccessInsert' Alt
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest ClientaccessInsert' where
        type Rs ClientaccessInsert' =
             ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientaccessInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIp
              _ciSponsorAccountId
              _ciKey
              _ciClientAccountId
              _ciOauthToken
              _ciFields
              (Just _ciAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientaccessInsertAPI)
                      r
                      u
