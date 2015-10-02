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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Deals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerDealsGet@.
module Network.Google.Resource.AdExchangeBuyer.Deals.Get
    (
    -- * REST Resource
      DealsGetResource

    -- * Creating a Request
    , dealsGet'
    , DealsGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgGetFinalizedNegotiationByExternalDealIdRequest
    , dgUserIP
    , dgDealId
    , dgKey
    , dgOAuthToken
    , dgFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerDealsGet@ which the
-- 'DealsGet'' request conforms to.
type DealsGetResource =
     "deals" :>
       Capture "dealId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GetFinalizedNegotiationByExternalDealIdRequest
                         :> Get '[JSON] NegotiationDto

-- | Gets the requested deal.
--
-- /See:/ 'dealsGet'' smart constructor.
data DealsGet' = DealsGet'
    { _dgQuotaUser                                      :: !(Maybe Text)
    , _dgPrettyPrint                                    :: !Bool
    , _dgGetFinalizedNegotiationByExternalDealIdRequest :: !GetFinalizedNegotiationByExternalDealIdRequest
    , _dgUserIP                                         :: !(Maybe Text)
    , _dgDealId                                         :: !Int64
    , _dgKey                                            :: !(Maybe Key)
    , _dgOAuthToken                                     :: !(Maybe OAuthToken)
    , _dgFields                                         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgGetFinalizedNegotiationByExternalDealIdRequest'
--
-- * 'dgUserIP'
--
-- * 'dgDealId'
--
-- * 'dgKey'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
dealsGet'
    :: GetFinalizedNegotiationByExternalDealIdRequest -- ^ 'GetFinalizedNegotiationByExternalDealIdRequest'
    -> Int64 -- ^ 'dealId'
    -> DealsGet'
dealsGet' pDgGetFinalizedNegotiationByExternalDealIdRequest_ pDgDealId_ =
    DealsGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgGetFinalizedNegotiationByExternalDealIdRequest = pDgGetFinalizedNegotiationByExternalDealIdRequest_
    , _dgUserIP = Nothing
    , _dgDealId = pDgDealId_
    , _dgKey = Nothing
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DealsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DealsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | Multipart request metadata.
dgGetFinalizedNegotiationByExternalDealIdRequest :: Lens' DealsGet' GetFinalizedNegotiationByExternalDealIdRequest
dgGetFinalizedNegotiationByExternalDealIdRequest
  = lens
      _dgGetFinalizedNegotiationByExternalDealIdRequest
      (\ s a ->
         s{_dgGetFinalizedNegotiationByExternalDealIdRequest =
             a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIP :: Lens' DealsGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

dgDealId :: Lens' DealsGet' Int64
dgDealId = lens _dgDealId (\ s a -> s{_dgDealId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DealsGet' (Maybe Key)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DealsGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DealsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

instance GoogleAuth DealsGet' where
        authKey = dgKey . _Just
        authToken = dgOAuthToken . _Just

instance GoogleRequest DealsGet' where
        type Rs DealsGet' = NegotiationDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u DealsGet'{..}
          = go _dgQuotaUser (Just _dgPrettyPrint) _dgUserIP
              _dgDealId
              _dgKey
              _dgOAuthToken
              _dgFields
              (Just AltJSON)
              _dgGetFinalizedNegotiationByExternalDealIdRequest
          where go
                  = clientWithRoute (Proxy :: Proxy DealsGetResource) r
                      u
