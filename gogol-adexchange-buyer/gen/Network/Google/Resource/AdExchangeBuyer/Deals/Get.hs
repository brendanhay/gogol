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
    , dgUserIP
    , dgPayload
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
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GetFinalizedNegotiationByExternalDealIdRequest
                         :> Get '[JSON] NegotiationDTO

-- | Gets the requested deal.
--
-- /See:/ 'dealsGet'' smart constructor.
data DealsGet' = DealsGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgUserIP      :: !(Maybe Text)
    , _dgPayload     :: !GetFinalizedNegotiationByExternalDealIdRequest
    , _dgDealId      :: !Int64
    , _dgKey         :: !(Maybe AuthKey)
    , _dgOAuthToken  :: !(Maybe OAuthToken)
    , _dgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUserIP'
--
-- * 'dgPayload'
--
-- * 'dgDealId'
--
-- * 'dgKey'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
dealsGet'
    :: GetFinalizedNegotiationByExternalDealIdRequest -- ^ 'payload'
    -> Int64 -- ^ 'dealId'
    -> DealsGet'
dealsGet' pDgPayload_ pDgDealId_ =
    DealsGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgUserIP = Nothing
    , _dgPayload = pDgPayload_
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIP :: Lens' DealsGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | Multipart request metadata.
dgPayload :: Lens' DealsGet' GetFinalizedNegotiationByExternalDealIdRequest
dgPayload
  = lens _dgPayload (\ s a -> s{_dgPayload = a})

dgDealId :: Lens' DealsGet' Int64
dgDealId = lens _dgDealId (\ s a -> s{_dgDealId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DealsGet' (Maybe AuthKey)
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
        type Rs DealsGet' = NegotiationDTO
        request = requestWith adExchangeBuyerRequest
        requestWith rq DealsGet'{..}
          = go _dgDealId _dgQuotaUser (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
              _dgPayload
          where go
                  = clientBuild (Proxy :: Proxy DealsGetResource) rq
