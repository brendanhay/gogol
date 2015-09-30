{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdExchangeBuyer.Creatives.Get
    (
    -- * REST Resource
      CreativesGetAPI

    -- * Creating a Request
    , creativesGet
    , CreativesGet

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgBuyerCreativeId
    , cgUserIp
    , cgAccountId
    , cgKey
    , cgOauthToken
    , cgFields
    , cgAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerCreativesGet@ which the
-- 'CreativesGet' request conforms to.
type CreativesGetAPI =
     "creatives" :>
       Capture "accountId" Int32 :>
         Capture "buyerCreativeId" Text :>
           Get '[JSON] Creative

-- | Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
--
-- /See:/ 'creativesGet' smart constructor.
data CreativesGet = CreativesGet
    { _cgQuotaUser       :: !(Maybe Text)
    , _cgPrettyPrint     :: !Bool
    , _cgBuyerCreativeId :: !Text
    , _cgUserIp          :: !(Maybe Text)
    , _cgAccountId       :: !Int32
    , _cgKey             :: !(Maybe Text)
    , _cgOauthToken      :: !(Maybe Text)
    , _cgFields          :: !(Maybe Text)
    , _cgAlt             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgBuyerCreativeId'
--
-- * 'cgUserIp'
--
-- * 'cgAccountId'
--
-- * 'cgKey'
--
-- * 'cgOauthToken'
--
-- * 'cgFields'
--
-- * 'cgAlt'
creativesGet
    :: Text -- ^ 'buyerCreativeId'
    -> Int32 -- ^ 'accountId'
    -> CreativesGet
creativesGet pCgBuyerCreativeId_ pCgAccountId_ =
    CreativesGet
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgBuyerCreativeId = pCgBuyerCreativeId_
    , _cgUserIp = Nothing
    , _cgAccountId = pCgAccountId_
    , _cgKey = Nothing
    , _cgOauthToken = Nothing
    , _cgFields = Nothing
    , _cgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CreativesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CreativesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | The buyer-specific id for this creative.
cgBuyerCreativeId :: Lens' CreativesGet' Text
cgBuyerCreativeId
  = lens _cgBuyerCreativeId
      (\ s a -> s{_cgBuyerCreativeId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CreativesGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | The id for the account that will serve this creative.
cgAccountId :: Lens' CreativesGet' Int32
cgAccountId
  = lens _cgAccountId (\ s a -> s{_cgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CreativesGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CreativesGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CreativesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CreativesGet' Text
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CreativesGet' where
        type Rs CreativesGet' = Creative
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u CreativesGet{..}
          = go _cgQuotaUser _cgPrettyPrint _cgBuyerCreativeId
              _cgUserIp
              _cgAccountId
              _cgKey
              _cgOauthToken
              _cgFields
              _cgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CreativesGetAPI) r
                      u
