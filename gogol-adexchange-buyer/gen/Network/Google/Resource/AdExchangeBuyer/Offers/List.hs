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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Offers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all offers the authenticated user has access to.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerOffersList@.
module Network.Google.Resource.AdExchangeBuyer.Offers.List
    (
    -- * REST Resource
      OffersListResource

    -- * Creating a Request
    , offersList'
    , OffersList'

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olUserIp
    , olKey
    , olOauthToken
    , olFields
    , olAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerOffersList@ which the
-- 'OffersList'' request conforms to.
type OffersListResource =
     "offers" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] ListOffersResponse

-- | Lists all offers the authenticated user has access to.
--
-- /See:/ 'offersList'' smart constructor.
data OffersList' = OffersList'
    { _olQuotaUser   :: !(Maybe Text)
    , _olPrettyPrint :: !Bool
    , _olUserIp      :: !(Maybe Text)
    , _olKey         :: !(Maybe Text)
    , _olOauthToken  :: !(Maybe Text)
    , _olFields      :: !(Maybe Text)
    , _olAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OffersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olUserIp'
--
-- * 'olKey'
--
-- * 'olOauthToken'
--
-- * 'olFields'
--
-- * 'olAlt'
offersList'
    :: OffersList'
offersList' =
    OffersList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olUserIp = Nothing
    , _olKey = Nothing
    , _olOauthToken = Nothing
    , _olFields = Nothing
    , _olAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OffersList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OffersList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIp :: Lens' OffersList' (Maybe Text)
olUserIp = lens _olUserIp (\ s a -> s{_olUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OffersList' (Maybe Text)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | OAuth 2.0 token for the current user.
olOauthToken :: Lens' OffersList' (Maybe Text)
olOauthToken
  = lens _olOauthToken (\ s a -> s{_olOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OffersList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

-- | Data format for the response.
olAlt :: Lens' OffersList' Alt
olAlt = lens _olAlt (\ s a -> s{_olAlt = a})

instance GoogleRequest OffersList' where
        type Rs OffersList' = ListOffersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u OffersList'{..}
          = go _olQuotaUser (Just _olPrettyPrint) _olUserIp
              _olKey
              _olOauthToken
              _olFields
              (Just _olAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy OffersListResource)
                      r
                      u
