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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a specific pretargeting configuration
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigGet@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Get
    (
    -- * REST Resource
      PretargetingConfigGetResource

    -- * Creating a Request
    , pretargetingConfigGet'
    , PretargetingConfigGet'

    -- * Request Lenses
    , pcgQuotaUser
    , pcgPrettyPrint
    , pcgUserIP
    , pcgAccountId
    , pcgKey
    , pcgConfigId
    , pcgOAuthToken
    , pcgFields
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigGet@ which the
-- 'PretargetingConfigGet'' request conforms to.
type PretargetingConfigGetResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Capture "configId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PretargetingConfig

-- | Gets a specific pretargeting configuration
--
-- /See:/ 'pretargetingConfigGet'' smart constructor.
data PretargetingConfigGet' = PretargetingConfigGet'
    { _pcgQuotaUser :: !(Maybe Text)
    , _pcgPrettyPrint :: !Bool
    , _pcgUserIP :: !(Maybe Text)
    , _pcgAccountId :: !Int64
    , _pcgKey :: !(Maybe Key)
    , _pcgConfigId :: !Int64
    , _pcgOAuthToken :: !(Maybe OAuthToken)
    , _pcgFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgQuotaUser'
--
-- * 'pcgPrettyPrint'
--
-- * 'pcgUserIP'
--
-- * 'pcgAccountId'
--
-- * 'pcgKey'
--
-- * 'pcgConfigId'
--
-- * 'pcgOAuthToken'
--
-- * 'pcgFields'
pretargetingConfigGet'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigGet'
pretargetingConfigGet' pPcgAccountId_ pPcgConfigId_ = 
    PretargetingConfigGet'
    { _pcgQuotaUser = Nothing
    , _pcgPrettyPrint = True
    , _pcgUserIP = Nothing
    , _pcgAccountId = pPcgAccountId_
    , _pcgKey = Nothing
    , _pcgConfigId = pPcgConfigId_
    , _pcgOAuthToken = Nothing
    , _pcgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcgQuotaUser :: Lens' PretargetingConfigGet' (Maybe Text)
pcgQuotaUser
  = lens _pcgQuotaUser (\ s a -> s{_pcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcgPrettyPrint :: Lens' PretargetingConfigGet' Bool
pcgPrettyPrint
  = lens _pcgPrettyPrint
      (\ s a -> s{_pcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcgUserIP :: Lens' PretargetingConfigGet' (Maybe Text)
pcgUserIP
  = lens _pcgUserIP (\ s a -> s{_pcgUserIP = a})

-- | The account id to get the pretargeting config for.
pcgAccountId :: Lens' PretargetingConfigGet' Int64
pcgAccountId
  = lens _pcgAccountId (\ s a -> s{_pcgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcgKey :: Lens' PretargetingConfigGet' (Maybe Key)
pcgKey = lens _pcgKey (\ s a -> s{_pcgKey = a})

-- | The specific id of the configuration to retrieve.
pcgConfigId :: Lens' PretargetingConfigGet' Int64
pcgConfigId
  = lens _pcgConfigId (\ s a -> s{_pcgConfigId = a})

-- | OAuth 2.0 token for the current user.
pcgOAuthToken :: Lens' PretargetingConfigGet' (Maybe OAuthToken)
pcgOAuthToken
  = lens _pcgOAuthToken
      (\ s a -> s{_pcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcgFields :: Lens' PretargetingConfigGet' (Maybe Text)
pcgFields
  = lens _pcgFields (\ s a -> s{_pcgFields = a})

instance GoogleAuth PretargetingConfigGet' where
        authKey = pcgKey . _Just
        authToken = pcgOAuthToken . _Just

instance GoogleRequest PretargetingConfigGet' where
        type Rs PretargetingConfigGet' = PretargetingConfig
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigGet'{..}
          = go _pcgAccountId _pcgConfigId _pcgQuotaUser
              (Just _pcgPrettyPrint)
              _pcgUserIP
              _pcgFields
              _pcgKey
              _pcgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigGetResource)
                      r
                      u
