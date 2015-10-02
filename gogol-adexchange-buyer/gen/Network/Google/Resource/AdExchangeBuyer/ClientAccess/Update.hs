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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessUpdate@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update
    (
    -- * REST Resource
      ClientAccessUpdateResource

    -- * Creating a Request
    , clientAccessUpdate'
    , ClientAccessUpdate'

    -- * Request Lenses
    , cauQuotaUser
    , cauPrettyPrint
    , cauUserIP
    , cauSponsorAccountId
    , cauKey
    , cauClientAccountId
    , cauOAuthToken
    , cauClientAccessCapabilities
    , cauFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessUpdate@ which the
-- 'ClientAccessUpdate'' request conforms to.
type ClientAccessUpdateResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ClientAccessCapabilities :>
                           Put '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessUpdate'' smart constructor.
data ClientAccessUpdate' = ClientAccessUpdate'
    { _cauQuotaUser                :: !(Maybe Text)
    , _cauPrettyPrint              :: !Bool
    , _cauUserIP                   :: !(Maybe Text)
    , _cauSponsorAccountId         :: !Int32
    , _cauKey                      :: !(Maybe Key)
    , _cauClientAccountId          :: !Int64
    , _cauOAuthToken               :: !(Maybe OAuthToken)
    , _cauClientAccessCapabilities :: !ClientAccessCapabilities
    , _cauFields                   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cauQuotaUser'
--
-- * 'cauPrettyPrint'
--
-- * 'cauUserIP'
--
-- * 'cauSponsorAccountId'
--
-- * 'cauKey'
--
-- * 'cauClientAccountId'
--
-- * 'cauOAuthToken'
--
-- * 'cauClientAccessCapabilities'
--
-- * 'cauFields'
clientAccessUpdate'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessCapabilities -- ^ 'ClientAccessCapabilities'
    -> ClientAccessUpdate'
clientAccessUpdate' pCauSponsorAccountId_ pCauClientAccountId_ pCauClientAccessCapabilities_ =
    ClientAccessUpdate'
    { _cauQuotaUser = Nothing
    , _cauPrettyPrint = True
    , _cauUserIP = Nothing
    , _cauSponsorAccountId = pCauSponsorAccountId_
    , _cauKey = Nothing
    , _cauClientAccountId = pCauClientAccountId_
    , _cauOAuthToken = Nothing
    , _cauClientAccessCapabilities = pCauClientAccessCapabilities_
    , _cauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cauQuotaUser :: Lens' ClientAccessUpdate' (Maybe Text)
cauQuotaUser
  = lens _cauQuotaUser (\ s a -> s{_cauQuotaUser = a})

-- | Returns response with indentations and line breaks.
cauPrettyPrint :: Lens' ClientAccessUpdate' Bool
cauPrettyPrint
  = lens _cauPrettyPrint
      (\ s a -> s{_cauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cauUserIP :: Lens' ClientAccessUpdate' (Maybe Text)
cauUserIP
  = lens _cauUserIP (\ s a -> s{_cauUserIP = a})

cauSponsorAccountId :: Lens' ClientAccessUpdate' Int32
cauSponsorAccountId
  = lens _cauSponsorAccountId
      (\ s a -> s{_cauSponsorAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cauKey :: Lens' ClientAccessUpdate' (Maybe Key)
cauKey = lens _cauKey (\ s a -> s{_cauKey = a})

cauClientAccountId :: Lens' ClientAccessUpdate' Int64
cauClientAccountId
  = lens _cauClientAccountId
      (\ s a -> s{_cauClientAccountId = a})

-- | OAuth 2.0 token for the current user.
cauOAuthToken :: Lens' ClientAccessUpdate' (Maybe OAuthToken)
cauOAuthToken
  = lens _cauOAuthToken
      (\ s a -> s{_cauOAuthToken = a})

-- | Multipart request metadata.
cauClientAccessCapabilities :: Lens' ClientAccessUpdate' ClientAccessCapabilities
cauClientAccessCapabilities
  = lens _cauClientAccessCapabilities
      (\ s a -> s{_cauClientAccessCapabilities = a})

-- | Selector specifying which fields to include in a partial response.
cauFields :: Lens' ClientAccessUpdate' (Maybe Text)
cauFields
  = lens _cauFields (\ s a -> s{_cauFields = a})

instance GoogleAuth ClientAccessUpdate' where
        authKey = cauKey . _Just
        authToken = cauOAuthToken . _Just

instance GoogleRequest ClientAccessUpdate' where
        type Rs ClientAccessUpdate' =
             ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientAccessUpdate'{..}
          = go _cauClientAccountId (Just _cauSponsorAccountId)
              _cauQuotaUser
              (Just _cauPrettyPrint)
              _cauUserIP
              _cauFields
              _cauKey
              _cauOAuthToken
              (Just AltJSON)
              _cauClientAccessCapabilities
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientAccessUpdateResource)
                      r
                      u
