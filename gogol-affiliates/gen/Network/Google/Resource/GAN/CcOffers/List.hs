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
-- Module      : Network.Google.Resource.GAN.CcOffers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves credit card offers for the given publisher.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANCcOffersList@.
module Network.Google.Resource.GAN.CcOffers.List
    (
    -- * REST Resource
      CcOffersListResource

    -- * Creating a Request
    , ccOffersList'
    , CcOffersList'

    -- * Request Lenses
    , colQuotaUser
    , colPrettyPrint
    , colUserIP
    , colKey
    , colAdvertiser
    , colProjection
    , colOAuthToken
    , colPublisher
    , colFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANCcOffersList@ which the
-- 'CcOffersList'' request conforms to.
type CcOffersListResource =
     "publishers" :>
       Capture "publisher" Text :>
         "ccOffers" :>
           QueryParams "advertiser" Text :>
             QueryParam "projection" CcOffersListProjection :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] CcOffers

-- | Retrieves credit card offers for the given publisher.
--
-- /See:/ 'ccOffersList'' smart constructor.
data CcOffersList' = CcOffersList'
    { _colQuotaUser   :: !(Maybe Text)
    , _colPrettyPrint :: !Bool
    , _colUserIP      :: !(Maybe Text)
    , _colKey         :: !(Maybe Key)
    , _colAdvertiser  :: !(Maybe [Text])
    , _colProjection  :: !(Maybe CcOffersListProjection)
    , _colOAuthToken  :: !(Maybe OAuthToken)
    , _colPublisher   :: !Text
    , _colFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colQuotaUser'
--
-- * 'colPrettyPrint'
--
-- * 'colUserIP'
--
-- * 'colKey'
--
-- * 'colAdvertiser'
--
-- * 'colProjection'
--
-- * 'colOAuthToken'
--
-- * 'colPublisher'
--
-- * 'colFields'
ccOffersList'
    :: Text -- ^ 'publisher'
    -> CcOffersList'
ccOffersList' pColPublisher_ =
    CcOffersList'
    { _colQuotaUser = Nothing
    , _colPrettyPrint = True
    , _colUserIP = Nothing
    , _colKey = Nothing
    , _colAdvertiser = Nothing
    , _colProjection = Nothing
    , _colOAuthToken = Nothing
    , _colPublisher = pColPublisher_
    , _colFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
colQuotaUser :: Lens' CcOffersList' (Maybe Text)
colQuotaUser
  = lens _colQuotaUser (\ s a -> s{_colQuotaUser = a})

-- | Returns response with indentations and line breaks.
colPrettyPrint :: Lens' CcOffersList' Bool
colPrettyPrint
  = lens _colPrettyPrint
      (\ s a -> s{_colPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
colUserIP :: Lens' CcOffersList' (Maybe Text)
colUserIP
  = lens _colUserIP (\ s a -> s{_colUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
colKey :: Lens' CcOffersList' (Maybe Key)
colKey = lens _colKey (\ s a -> s{_colKey = a})

-- | The advertiser ID of a card issuer whose offers to include. Optional,
-- may be repeated.
colAdvertiser :: Lens' CcOffersList' [Text]
colAdvertiser
  = lens _colAdvertiser
      (\ s a -> s{_colAdvertiser = a})
      . _Default
      . _Coerce

-- | The set of fields to return.
colProjection :: Lens' CcOffersList' (Maybe CcOffersListProjection)
colProjection
  = lens _colProjection
      (\ s a -> s{_colProjection = a})

-- | OAuth 2.0 token for the current user.
colOAuthToken :: Lens' CcOffersList' (Maybe OAuthToken)
colOAuthToken
  = lens _colOAuthToken
      (\ s a -> s{_colOAuthToken = a})

-- | The ID of the publisher in question.
colPublisher :: Lens' CcOffersList' Text
colPublisher
  = lens _colPublisher (\ s a -> s{_colPublisher = a})

-- | Selector specifying which fields to include in a partial response.
colFields :: Lens' CcOffersList' (Maybe Text)
colFields
  = lens _colFields (\ s a -> s{_colFields = a})

instance GoogleAuth CcOffersList' where
        authKey = colKey . _Just
        authToken = colOAuthToken . _Just

instance GoogleRequest CcOffersList' where
        type Rs CcOffersList' = CcOffers
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u CcOffersList'{..}
          = go _colPublisher (_colAdvertiser ^. _Default)
              _colProjection
              _colQuotaUser
              (Just _colPrettyPrint)
              _colUserIP
              _colFields
              _colKey
              _colOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CcOffersListResource)
                      r
                      u
