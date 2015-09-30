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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplaceoffers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceoffersGet@.
module Network.Google.Resource.AdExchangeBuyer.Marketplaceoffers.Get
    (
    -- * REST Resource
      MarketplaceoffersGetResource

    -- * Creating a Request
    , marketplaceoffersGet'
    , MarketplaceoffersGet'

    -- * Request Lenses
    , mgQuotaUser
    , mgPrettyPrint
    , mgUserIp
    , mgKey
    , mgOfferId
    , mgOauthToken
    , mgFields
    , mgAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceoffersGet@ which the
-- 'MarketplaceoffersGet'' request conforms to.
type MarketplaceoffersGetResource =
     "marketplaceOffers" :>
       Capture "offerId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] MarketplaceOffer

-- | Gets the requested negotiation.
--
-- /See:/ 'marketplaceoffersGet'' smart constructor.
data MarketplaceoffersGet' = MarketplaceoffersGet'
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgPrettyPrint :: !Bool
    , _mgUserIp      :: !(Maybe Text)
    , _mgKey         :: !(Maybe Text)
    , _mgOfferId     :: !Text
    , _mgOauthToken  :: !(Maybe Text)
    , _mgFields      :: !(Maybe Text)
    , _mgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceoffersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgPrettyPrint'
--
-- * 'mgUserIp'
--
-- * 'mgKey'
--
-- * 'mgOfferId'
--
-- * 'mgOauthToken'
--
-- * 'mgFields'
--
-- * 'mgAlt'
marketplaceoffersGet'
    :: Text -- ^ 'offerId'
    -> MarketplaceoffersGet'
marketplaceoffersGet' pMgOfferId_ =
    MarketplaceoffersGet'
    { _mgQuotaUser = Nothing
    , _mgPrettyPrint = True
    , _mgUserIp = Nothing
    , _mgKey = Nothing
    , _mgOfferId = pMgOfferId_
    , _mgOauthToken = Nothing
    , _mgFields = Nothing
    , _mgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' MarketplaceoffersGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' MarketplaceoffersGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIp :: Lens' MarketplaceoffersGet' (Maybe Text)
mgUserIp = lens _mgUserIp (\ s a -> s{_mgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' MarketplaceoffersGet' (Maybe Text)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | The offerId for the offer to get the head revision for.
mgOfferId :: Lens' MarketplaceoffersGet' Text
mgOfferId
  = lens _mgOfferId (\ s a -> s{_mgOfferId = a})

-- | OAuth 2.0 token for the current user.
mgOauthToken :: Lens' MarketplaceoffersGet' (Maybe Text)
mgOauthToken
  = lens _mgOauthToken (\ s a -> s{_mgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' MarketplaceoffersGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

-- | Data format for the response.
mgAlt :: Lens' MarketplaceoffersGet' Alt
mgAlt = lens _mgAlt (\ s a -> s{_mgAlt = a})

instance GoogleRequest MarketplaceoffersGet' where
        type Rs MarketplaceoffersGet' = MarketplaceOffer
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceoffersGet'{..}
          = go _mgQuotaUser (Just _mgPrettyPrint) _mgUserIp
              _mgKey
              _mgOfferId
              _mgOauthToken
              _mgFields
              (Just _mgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceoffersGetResource)
                      r
                      u
