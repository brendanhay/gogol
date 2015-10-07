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
    , cauPayload
    , cauKey
    , cauClientAccountId
    , cauOAuthToken
    , cauFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessUpdate@ method which the
-- 'ClientAccessUpdate'' request conforms to.
type ClientAccessUpdateResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ClientAccessCapabilities :>
                           Put '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessUpdate'' smart constructor.
data ClientAccessUpdate' = ClientAccessUpdate'
    { _cauQuotaUser        :: !(Maybe Text)
    , _cauPrettyPrint      :: !Bool
    , _cauUserIP           :: !(Maybe Text)
    , _cauSponsorAccountId :: !Int32
    , _cauPayload          :: !ClientAccessCapabilities
    , _cauKey              :: !(Maybe AuthKey)
    , _cauClientAccountId  :: !Int64
    , _cauOAuthToken       :: !(Maybe OAuthToken)
    , _cauFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cauPayload'
--
-- * 'cauKey'
--
-- * 'cauClientAccountId'
--
-- * 'cauOAuthToken'
--
-- * 'cauFields'
clientAccessUpdate'
    :: Int32 -- ^ 'sponsorAccountId'
    -> ClientAccessCapabilities -- ^ 'payload'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessUpdate'
clientAccessUpdate' pCauSponsorAccountId_ pCauPayload_ pCauClientAccountId_ =
    ClientAccessUpdate'
    { _cauQuotaUser = Nothing
    , _cauPrettyPrint = True
    , _cauUserIP = Nothing
    , _cauSponsorAccountId = pCauSponsorAccountId_
    , _cauPayload = pCauPayload_
    , _cauKey = Nothing
    , _cauClientAccountId = pCauClientAccountId_
    , _cauOAuthToken = Nothing
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

-- | Multipart request metadata.
cauPayload :: Lens' ClientAccessUpdate' ClientAccessCapabilities
cauPayload
  = lens _cauPayload (\ s a -> s{_cauPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cauKey :: Lens' ClientAccessUpdate' (Maybe AuthKey)
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

-- | Selector specifying which fields to include in a partial response.
cauFields :: Lens' ClientAccessUpdate' (Maybe Text)
cauFields
  = lens _cauFields (\ s a -> s{_cauFields = a})

instance GoogleAuth ClientAccessUpdate' where
        _AuthKey = cauKey . _Just
        _AuthToken = cauOAuthToken . _Just

instance GoogleRequest ClientAccessUpdate' where
        type Rs ClientAccessUpdate' =
             ClientAccessCapabilities
        request = requestWith adExchangeBuyerRequest
        requestWith rq ClientAccessUpdate'{..}
          = go _cauClientAccountId (Just _cauSponsorAccountId)
              _cauQuotaUser
              (Just _cauPrettyPrint)
              _cauUserIP
              _cauFields
              _cauKey
              _cauOAuthToken
              (Just AltJSON)
              _cauPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ClientAccessUpdateResource)
                      rq
