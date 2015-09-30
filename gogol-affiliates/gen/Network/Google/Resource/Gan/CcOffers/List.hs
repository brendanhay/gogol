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
-- Module      : Network.Google.Resource.Gan.CcOffers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves credit card offers for the given publisher.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanCcOffersList@.
module Network.Google.Resource.Gan.CcOffers.List
    (
    -- * REST Resource
      CcOffersListResource

    -- * Creating a Request
    , ccOffersList'
    , CcOffersList'

    -- * Request Lenses
    , colQuotaUser
    , colPrettyPrint
    , colUserIp
    , colKey
    , colAdvertiser
    , colProjection
    , colOauthToken
    , colPublisher
    , colFields
    , colAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanCcOffersList@ which the
-- 'CcOffersList'' request conforms to.
type CcOffersListResource =
     "publishers" :>
       Capture "publisher" Text :>
         "ccOffers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParams "advertiser" Text :>
                     QueryParam "projection" GanCcOffersListProjection :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] CcOffers

-- | Retrieves credit card offers for the given publisher.
--
-- /See:/ 'ccOffersList'' smart constructor.
data CcOffersList' = CcOffersList'
    { _colQuotaUser   :: !(Maybe Text)
    , _colPrettyPrint :: !Bool
    , _colUserIp      :: !(Maybe Text)
    , _colKey         :: !(Maybe Text)
    , _colAdvertiser  :: !(Maybe Text)
    , _colProjection  :: !(Maybe GanCcOffersListProjection)
    , _colOauthToken  :: !(Maybe Text)
    , _colPublisher   :: !Text
    , _colFields      :: !(Maybe Text)
    , _colAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colQuotaUser'
--
-- * 'colPrettyPrint'
--
-- * 'colUserIp'
--
-- * 'colKey'
--
-- * 'colAdvertiser'
--
-- * 'colProjection'
--
-- * 'colOauthToken'
--
-- * 'colPublisher'
--
-- * 'colFields'
--
-- * 'colAlt'
ccOffersList'
    :: Text -- ^ 'publisher'
    -> CcOffersList'
ccOffersList' pColPublisher_ =
    CcOffersList'
    { _colQuotaUser = Nothing
    , _colPrettyPrint = True
    , _colUserIp = Nothing
    , _colKey = Nothing
    , _colAdvertiser = Nothing
    , _colProjection = Nothing
    , _colOauthToken = Nothing
    , _colPublisher = pColPublisher_
    , _colFields = Nothing
    , _colAlt = JSON
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
colUserIp :: Lens' CcOffersList' (Maybe Text)
colUserIp
  = lens _colUserIp (\ s a -> s{_colUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
colKey :: Lens' CcOffersList' (Maybe Text)
colKey = lens _colKey (\ s a -> s{_colKey = a})

-- | The advertiser ID of a card issuer whose offers to include. Optional,
-- may be repeated.
colAdvertiser :: Lens' CcOffersList' (Maybe Text)
colAdvertiser
  = lens _colAdvertiser
      (\ s a -> s{_colAdvertiser = a})

-- | The set of fields to return.
colProjection :: Lens' CcOffersList' (Maybe GanCcOffersListProjection)
colProjection
  = lens _colProjection
      (\ s a -> s{_colProjection = a})

-- | OAuth 2.0 token for the current user.
colOauthToken :: Lens' CcOffersList' (Maybe Text)
colOauthToken
  = lens _colOauthToken
      (\ s a -> s{_colOauthToken = a})

-- | The ID of the publisher in question.
colPublisher :: Lens' CcOffersList' Text
colPublisher
  = lens _colPublisher (\ s a -> s{_colPublisher = a})

-- | Selector specifying which fields to include in a partial response.
colFields :: Lens' CcOffersList' (Maybe Text)
colFields
  = lens _colFields (\ s a -> s{_colFields = a})

-- | Data format for the response.
colAlt :: Lens' CcOffersList' Alt
colAlt = lens _colAlt (\ s a -> s{_colAlt = a})

instance GoogleRequest CcOffersList' where
        type Rs CcOffersList' = CcOffers
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u CcOffersList'{..}
          = go _colQuotaUser (Just _colPrettyPrint) _colUserIp
              _colKey
              _colAdvertiser
              _colProjection
              _colOauthToken
              _colPublisher
              _colFields
              (Just _colAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CcOffersListResource)
                      r
                      u
