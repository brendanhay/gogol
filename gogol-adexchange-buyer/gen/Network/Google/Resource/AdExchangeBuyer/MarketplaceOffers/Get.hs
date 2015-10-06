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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOffersGet@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Get
    (
    -- * REST Resource
      MarketplaceOffersGetResource

    -- * Creating a Request
    , marketplaceOffersGet'
    , MarketplaceOffersGet'

    -- * Request Lenses
    , mogQuotaUser
    , mogPrettyPrint
    , mogUserIP
    , mogKey
    , mogOfferId
    , mogOAuthToken
    , mogFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOffersGet@ which the
-- 'MarketplaceOffersGet'' request conforms to.
type MarketplaceOffersGetResource =
     "marketplaceOffers" :>
       Capture "offerId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] MarketplaceOffer

-- | Gets the requested negotiation.
--
-- /See:/ 'marketplaceOffersGet'' smart constructor.
data MarketplaceOffersGet' = MarketplaceOffersGet'
    { _mogQuotaUser   :: !(Maybe Text)
    , _mogPrettyPrint :: !Bool
    , _mogUserIP      :: !(Maybe Text)
    , _mogKey         :: !(Maybe AuthKey)
    , _mogOfferId     :: !Text
    , _mogOAuthToken  :: !(Maybe OAuthToken)
    , _mogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOffersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mogQuotaUser'
--
-- * 'mogPrettyPrint'
--
-- * 'mogUserIP'
--
-- * 'mogKey'
--
-- * 'mogOfferId'
--
-- * 'mogOAuthToken'
--
-- * 'mogFields'
marketplaceOffersGet'
    :: Text -- ^ 'offerId'
    -> MarketplaceOffersGet'
marketplaceOffersGet' pMogOfferId_ =
    MarketplaceOffersGet'
    { _mogQuotaUser = Nothing
    , _mogPrettyPrint = True
    , _mogUserIP = Nothing
    , _mogKey = Nothing
    , _mogOfferId = pMogOfferId_
    , _mogOAuthToken = Nothing
    , _mogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mogQuotaUser :: Lens' MarketplaceOffersGet' (Maybe Text)
mogQuotaUser
  = lens _mogQuotaUser (\ s a -> s{_mogQuotaUser = a})

-- | Returns response with indentations and line breaks.
mogPrettyPrint :: Lens' MarketplaceOffersGet' Bool
mogPrettyPrint
  = lens _mogPrettyPrint
      (\ s a -> s{_mogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mogUserIP :: Lens' MarketplaceOffersGet' (Maybe Text)
mogUserIP
  = lens _mogUserIP (\ s a -> s{_mogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mogKey :: Lens' MarketplaceOffersGet' (Maybe AuthKey)
mogKey = lens _mogKey (\ s a -> s{_mogKey = a})

-- | The offerId for the offer to get the head revision for.
mogOfferId :: Lens' MarketplaceOffersGet' Text
mogOfferId
  = lens _mogOfferId (\ s a -> s{_mogOfferId = a})

-- | OAuth 2.0 token for the current user.
mogOAuthToken :: Lens' MarketplaceOffersGet' (Maybe OAuthToken)
mogOAuthToken
  = lens _mogOAuthToken
      (\ s a -> s{_mogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mogFields :: Lens' MarketplaceOffersGet' (Maybe Text)
mogFields
  = lens _mogFields (\ s a -> s{_mogFields = a})

instance GoogleAuth MarketplaceOffersGet' where
        authKey = mogKey . _Just
        authToken = mogOAuthToken . _Just

instance GoogleRequest MarketplaceOffersGet' where
        type Rs MarketplaceOffersGet' = MarketplaceOffer
        request = requestWith adExchangeBuyerRequest
        requestWith rq MarketplaceOffersGet'{..}
          = go _mogOfferId _mogQuotaUser (Just _mogPrettyPrint)
              _mogUserIP
              _mogFields
              _mogKey
              _mogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MarketplaceOffersGetResource)
                      rq
