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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerCreativesGet@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.Get
    (
    -- * REST Resource
      CreativesGetResource

    -- * Creating a Request
    , creativesGet'
    , CreativesGet'

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggBuyerCreativeId
    , cggUserIp
    , cggAccountId
    , cggKey
    , cggOauthToken
    , cggFields
    , cggAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerCreativesGet@ which the
-- 'CreativesGet'' request conforms to.
type CreativesGetResource =
     "creatives" :>
       Capture "accountId" Int32 :>
         Capture "buyerCreativeId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Creative

-- | Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
--
-- /See:/ 'creativesGet'' smart constructor.
data CreativesGet' = CreativesGet'
    { _cggQuotaUser       :: !(Maybe Text)
    , _cggPrettyPrint     :: !Bool
    , _cggBuyerCreativeId :: !Text
    , _cggUserIp          :: !(Maybe Text)
    , _cggAccountId       :: !Int32
    , _cggKey             :: !(Maybe Text)
    , _cggOauthToken      :: !(Maybe Text)
    , _cggFields          :: !(Maybe Text)
    , _cggAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggBuyerCreativeId'
--
-- * 'cggUserIp'
--
-- * 'cggAccountId'
--
-- * 'cggKey'
--
-- * 'cggOauthToken'
--
-- * 'cggFields'
--
-- * 'cggAlt'
creativesGet'
    :: Text -- ^ 'buyerCreativeId'
    -> Int32 -- ^ 'accountId'
    -> CreativesGet'
creativesGet' pCggBuyerCreativeId_ pCggAccountId_ =
    CreativesGet'
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggBuyerCreativeId = pCggBuyerCreativeId_
    , _cggUserIp = Nothing
    , _cggAccountId = pCggAccountId_
    , _cggKey = Nothing
    , _cggOauthToken = Nothing
    , _cggFields = Nothing
    , _cggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CreativesGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CreativesGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | The buyer-specific id for this creative.
cggBuyerCreativeId :: Lens' CreativesGet' Text
cggBuyerCreativeId
  = lens _cggBuyerCreativeId
      (\ s a -> s{_cggBuyerCreativeId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' CreativesGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

-- | The id for the account that will serve this creative.
cggAccountId :: Lens' CreativesGet' Int32
cggAccountId
  = lens _cggAccountId (\ s a -> s{_cggAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CreativesGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' CreativesGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CreativesGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' CreativesGet' Alt
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest CreativesGet' where
        type Rs CreativesGet' = Creative
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u CreativesGet'{..}
          = go _cggQuotaUser (Just _cggPrettyPrint)
              _cggBuyerCreativeId
              _cggUserIp
              _cggAccountId
              _cggKey
              _cggOauthToken
              _cggFields
              (Just _cggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativesGetResource)
                      r
                      u
