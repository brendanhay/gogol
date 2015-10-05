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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested offer.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerOffersGet@.
module Network.Google.Resource.AdExchangeBuyer.Offers.Get
    (
    -- * REST Resource
      OffersGetResource

    -- * Creating a Request
    , offersGet'
    , OffersGet'

    -- * Request Lenses
    , ogQuotaUser
    , ogPrettyPrint
    , ogUserIP
    , ogKey
    , ogOfferId
    , ogOAuthToken
    , ogFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersGet@ which the
-- 'OffersGet'' request conforms to.
type OffersGetResource =
     "offers" :>
       Capture "offerId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] OfferDTO

-- | Gets the requested offer.
--
-- /See:/ 'offersGet'' smart constructor.
data OffersGet' = OffersGet'
    { _ogQuotaUser   :: !(Maybe Text)
    , _ogPrettyPrint :: !Bool
    , _ogUserIP      :: !(Maybe Text)
    , _ogKey         :: !(Maybe Key)
    , _ogOfferId     :: !Int64
    , _ogOAuthToken  :: !(Maybe OAuthToken)
    , _ogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogQuotaUser'
--
-- * 'ogPrettyPrint'
--
-- * 'ogUserIP'
--
-- * 'ogKey'
--
-- * 'ogOfferId'
--
-- * 'ogOAuthToken'
--
-- * 'ogFields'
offersGet'
    :: Int64 -- ^ 'offerId'
    -> OffersGet'
offersGet' pOgOfferId_ =
    OffersGet'
    { _ogQuotaUser = Nothing
    , _ogPrettyPrint = True
    , _ogUserIP = Nothing
    , _ogKey = Nothing
    , _ogOfferId = pOgOfferId_
    , _ogOAuthToken = Nothing
    , _ogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ogQuotaUser :: Lens' OffersGet' (Maybe Text)
ogQuotaUser
  = lens _ogQuotaUser (\ s a -> s{_ogQuotaUser = a})

-- | Returns response with indentations and line breaks.
ogPrettyPrint :: Lens' OffersGet' Bool
ogPrettyPrint
  = lens _ogPrettyPrint
      (\ s a -> s{_ogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ogUserIP :: Lens' OffersGet' (Maybe Text)
ogUserIP = lens _ogUserIP (\ s a -> s{_ogUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ogKey :: Lens' OffersGet' (Maybe Key)
ogKey = lens _ogKey (\ s a -> s{_ogKey = a})

ogOfferId :: Lens' OffersGet' Int64
ogOfferId
  = lens _ogOfferId (\ s a -> s{_ogOfferId = a})

-- | OAuth 2.0 token for the current user.
ogOAuthToken :: Lens' OffersGet' (Maybe OAuthToken)
ogOAuthToken
  = lens _ogOAuthToken (\ s a -> s{_ogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ogFields :: Lens' OffersGet' (Maybe Text)
ogFields = lens _ogFields (\ s a -> s{_ogFields = a})

instance GoogleAuth OffersGet' where
        authKey = ogKey . _Just
        authToken = ogOAuthToken . _Just

instance GoogleRequest OffersGet' where
        type Rs OffersGet' = OfferDTO
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u OffersGet'{..}
          = go _ogOfferId _ogQuotaUser (Just _ogPrettyPrint)
              _ogUserIP
              _ogFields
              _ogKey
              _ogOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy OffersGetResource)
                      r
                      u
