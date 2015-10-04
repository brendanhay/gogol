{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessPatch@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
    (
    -- * REST Resource
      ClientAccessPatchResource

    -- * Creating a Request
    , clientAccessPatch'
    , ClientAccessPatch'

    -- * Request Lenses
    , capQuotaUser
    , capPrettyPrint
    , capUserIP
    , capSponsorAccountId
    , capPayload
    , capKey
    , capClientAccountId
    , capOAuthToken
    , capFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessPatch@ which the
-- 'ClientAccessPatch'' request conforms to.
type ClientAccessPatchResource =
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
                           Patch '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessPatch'' smart constructor.
data ClientAccessPatch' = ClientAccessPatch'
    { _capQuotaUser        :: !(Maybe Text)
    , _capPrettyPrint      :: !Bool
    , _capUserIP           :: !(Maybe Text)
    , _capSponsorAccountId :: !Int32
    , _capPayload          :: !ClientAccessCapabilities
    , _capKey              :: !(Maybe Key)
    , _capClientAccountId  :: !Int64
    , _capOAuthToken       :: !(Maybe OAuthToken)
    , _capFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capQuotaUser'
--
-- * 'capPrettyPrint'
--
-- * 'capUserIP'
--
-- * 'capSponsorAccountId'
--
-- * 'capPayload'
--
-- * 'capKey'
--
-- * 'capClientAccountId'
--
-- * 'capOAuthToken'
--
-- * 'capFields'
clientAccessPatch'
    :: Int32 -- ^ 'sponsorAccountId'
    -> ClientAccessCapabilities -- ^ 'payload'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessPatch'
clientAccessPatch' pCapSponsorAccountId_ pCapPayload_ pCapClientAccountId_ =
    ClientAccessPatch'
    { _capQuotaUser = Nothing
    , _capPrettyPrint = True
    , _capUserIP = Nothing
    , _capSponsorAccountId = pCapSponsorAccountId_
    , _capPayload = pCapPayload_
    , _capKey = Nothing
    , _capClientAccountId = pCapClientAccountId_
    , _capOAuthToken = Nothing
    , _capFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
capQuotaUser :: Lens' ClientAccessPatch' (Maybe Text)
capQuotaUser
  = lens _capQuotaUser (\ s a -> s{_capQuotaUser = a})

-- | Returns response with indentations and line breaks.
capPrettyPrint :: Lens' ClientAccessPatch' Bool
capPrettyPrint
  = lens _capPrettyPrint
      (\ s a -> s{_capPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
capUserIP :: Lens' ClientAccessPatch' (Maybe Text)
capUserIP
  = lens _capUserIP (\ s a -> s{_capUserIP = a})

capSponsorAccountId :: Lens' ClientAccessPatch' Int32
capSponsorAccountId
  = lens _capSponsorAccountId
      (\ s a -> s{_capSponsorAccountId = a})

-- | Multipart request metadata.
capPayload :: Lens' ClientAccessPatch' ClientAccessCapabilities
capPayload
  = lens _capPayload (\ s a -> s{_capPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
capKey :: Lens' ClientAccessPatch' (Maybe Key)
capKey = lens _capKey (\ s a -> s{_capKey = a})

capClientAccountId :: Lens' ClientAccessPatch' Int64
capClientAccountId
  = lens _capClientAccountId
      (\ s a -> s{_capClientAccountId = a})

-- | OAuth 2.0 token for the current user.
capOAuthToken :: Lens' ClientAccessPatch' (Maybe OAuthToken)
capOAuthToken
  = lens _capOAuthToken
      (\ s a -> s{_capOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
capFields :: Lens' ClientAccessPatch' (Maybe Text)
capFields
  = lens _capFields (\ s a -> s{_capFields = a})

instance GoogleAuth ClientAccessPatch' where
        authKey = capKey . _Just
        authToken = capOAuthToken . _Just

instance GoogleRequest ClientAccessPatch' where
        type Rs ClientAccessPatch' = ClientAccessCapabilities
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientAccessPatch'{..}
          = go _capClientAccountId (Just _capSponsorAccountId)
              _capQuotaUser
              (Just _capPrettyPrint)
              _capUserIP
              _capFields
              _capKey
              _capOAuthToken
              (Just AltJSON)
              _capPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientAccessPatchResource)
                      r
                      u
