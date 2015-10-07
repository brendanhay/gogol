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
    , cgQuotaUser
    , cgPrettyPrint
    , cgBuyerCreativeId
    , cgUserIP
    , cgAccountId
    , cgKey
    , cgOAuthToken
    , cgFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerCreativesGet@ method which the
-- 'CreativesGet'' request conforms to.
type CreativesGetResource =
     "creatives" :>
       Capture "accountId" Int32 :>
         Capture "buyerCreativeId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Creative

-- | Gets the status for a single creative. A creative will be available
-- 30-40 minutes after submission.
--
-- /See:/ 'creativesGet'' smart constructor.
data CreativesGet' = CreativesGet'
    { _cgQuotaUser       :: !(Maybe Text)
    , _cgPrettyPrint     :: !Bool
    , _cgBuyerCreativeId :: !Text
    , _cgUserIP          :: !(Maybe Text)
    , _cgAccountId       :: !Int32
    , _cgKey             :: !(Maybe AuthKey)
    , _cgOAuthToken      :: !(Maybe OAuthToken)
    , _cgFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'cgUserIP'
--
-- * 'cgAccountId'
--
-- * 'cgKey'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
creativesGet'
    :: Text -- ^ 'buyerCreativeId'
    -> Int32 -- ^ 'accountId'
    -> CreativesGet'
creativesGet' pCgBuyerCreativeId_ pCgAccountId_ =
    CreativesGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgBuyerCreativeId = pCgBuyerCreativeId_
    , _cgUserIP = Nothing
    , _cgAccountId = pCgAccountId_
    , _cgKey = Nothing
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
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
cgUserIP :: Lens' CreativesGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | The id for the account that will serve this creative.
cgAccountId :: Lens' CreativesGet' Int32
cgAccountId
  = lens _cgAccountId (\ s a -> s{_cgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CreativesGet' (Maybe AuthKey)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CreativesGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CreativesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth CreativesGet' where
        _AuthKey = cgKey . _Just
        _AuthToken = cgOAuthToken . _Just

instance GoogleRequest CreativesGet' where
        type Rs CreativesGet' = Creative
        request = requestWith adExchangeBuyerRequest
        requestWith rq CreativesGet'{..}
          = go _cgAccountId _cgBuyerCreativeId _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgUserIP
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CreativesGetResource)
                      rq
