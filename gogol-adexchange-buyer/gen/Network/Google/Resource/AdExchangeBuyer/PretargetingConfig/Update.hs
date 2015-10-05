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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigUpdate@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Update
    (
    -- * REST Resource
      PretargetingConfigUpdateResource

    -- * Creating a Request
    , pretargetingConfigUpdate'
    , PretargetingConfigUpdate'

    -- * Request Lenses
    , pcuQuotaUser
    , pcuPrettyPrint
    , pcuUserIP
    , pcuPayload
    , pcuAccountId
    , pcuKey
    , pcuConfigId
    , pcuOAuthToken
    , pcuFields
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigUpdate@ which the
-- 'PretargetingConfigUpdate'' request conforms to.
type PretargetingConfigUpdateResource =
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
                         ReqBody '[JSON] PretargetingConfig :>
                           Put '[JSON] PretargetingConfig

-- | Updates an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigUpdate'' smart constructor.
data PretargetingConfigUpdate' = PretargetingConfigUpdate'
    { _pcuQuotaUser :: !(Maybe Text)
    , _pcuPrettyPrint :: !Bool
    , _pcuUserIP :: !(Maybe Text)
    , _pcuPayload :: !PretargetingConfig
    , _pcuAccountId :: !Int64
    , _pcuKey :: !(Maybe Key)
    , _pcuConfigId :: !Int64
    , _pcuOAuthToken :: !(Maybe OAuthToken)
    , _pcuFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcuQuotaUser'
--
-- * 'pcuPrettyPrint'
--
-- * 'pcuUserIP'
--
-- * 'pcuPayload'
--
-- * 'pcuAccountId'
--
-- * 'pcuKey'
--
-- * 'pcuConfigId'
--
-- * 'pcuOAuthToken'
--
-- * 'pcuFields'
pretargetingConfigUpdate'
    :: PretargetingConfig -- ^ 'payload'
    -> Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigUpdate'
pretargetingConfigUpdate' pPcuPayload_ pPcuAccountId_ pPcuConfigId_ = 
    PretargetingConfigUpdate'
    { _pcuQuotaUser = Nothing
    , _pcuPrettyPrint = True
    , _pcuUserIP = Nothing
    , _pcuPayload = pPcuPayload_
    , _pcuAccountId = pPcuAccountId_
    , _pcuKey = Nothing
    , _pcuConfigId = pPcuConfigId_
    , _pcuOAuthToken = Nothing
    , _pcuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcuQuotaUser :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuQuotaUser
  = lens _pcuQuotaUser (\ s a -> s{_pcuQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcuPrettyPrint :: Lens' PretargetingConfigUpdate' Bool
pcuPrettyPrint
  = lens _pcuPrettyPrint
      (\ s a -> s{_pcuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcuUserIP :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuUserIP
  = lens _pcuUserIP (\ s a -> s{_pcuUserIP = a})

-- | Multipart request metadata.
pcuPayload :: Lens' PretargetingConfigUpdate' PretargetingConfig
pcuPayload
  = lens _pcuPayload (\ s a -> s{_pcuPayload = a})

-- | The account id to update the pretargeting config for.
pcuAccountId :: Lens' PretargetingConfigUpdate' Int64
pcuAccountId
  = lens _pcuAccountId (\ s a -> s{_pcuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcuKey :: Lens' PretargetingConfigUpdate' (Maybe Key)
pcuKey = lens _pcuKey (\ s a -> s{_pcuKey = a})

-- | The specific id of the configuration to update.
pcuConfigId :: Lens' PretargetingConfigUpdate' Int64
pcuConfigId
  = lens _pcuConfigId (\ s a -> s{_pcuConfigId = a})

-- | OAuth 2.0 token for the current user.
pcuOAuthToken :: Lens' PretargetingConfigUpdate' (Maybe OAuthToken)
pcuOAuthToken
  = lens _pcuOAuthToken
      (\ s a -> s{_pcuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcuFields :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuFields
  = lens _pcuFields (\ s a -> s{_pcuFields = a})

instance GoogleAuth PretargetingConfigUpdate' where
        authKey = pcuKey . _Just
        authToken = pcuOAuthToken . _Just

instance GoogleRequest PretargetingConfigUpdate'
         where
        type Rs PretargetingConfigUpdate' =
             PretargetingConfig
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigUpdate'{..}
          = go _pcuAccountId _pcuConfigId _pcuQuotaUser
              (Just _pcuPrettyPrint)
              _pcuUserIP
              _pcuFields
              _pcuKey
              _pcuOAuthToken
              (Just AltJSON)
              _pcuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigUpdateResource)
                      r
                      u
