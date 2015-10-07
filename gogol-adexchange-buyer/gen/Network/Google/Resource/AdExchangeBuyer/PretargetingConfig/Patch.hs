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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing pretargeting config. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigPatch@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Patch
    (
    -- * REST Resource
      PretargetingConfigPatchResource

    -- * Creating a Request
    , pretargetingConfigPatch'
    , PretargetingConfigPatch'

    -- * Request Lenses
    , pcpQuotaUser
    , pcpPrettyPrint
    , pcpUserIP
    , pcpPayload
    , pcpAccountId
    , pcpKey
    , pcpConfigId
    , pcpOAuthToken
    , pcpFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigPatch@ method which the
-- 'PretargetingConfigPatch'' request conforms to.
type PretargetingConfigPatchResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Capture "configId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PretargetingConfig :>
                           Patch '[JSON] PretargetingConfig

-- | Updates an existing pretargeting config. This method supports patch
-- semantics.
--
-- /See:/ 'pretargetingConfigPatch'' smart constructor.
data PretargetingConfigPatch' = PretargetingConfigPatch'
    { _pcpQuotaUser   :: !(Maybe Text)
    , _pcpPrettyPrint :: !Bool
    , _pcpUserIP      :: !(Maybe Text)
    , _pcpPayload     :: !PretargetingConfig
    , _pcpAccountId   :: !Int64
    , _pcpKey         :: !(Maybe AuthKey)
    , _pcpConfigId    :: !Int64
    , _pcpOAuthToken  :: !(Maybe OAuthToken)
    , _pcpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpQuotaUser'
--
-- * 'pcpPrettyPrint'
--
-- * 'pcpUserIP'
--
-- * 'pcpPayload'
--
-- * 'pcpAccountId'
--
-- * 'pcpKey'
--
-- * 'pcpConfigId'
--
-- * 'pcpOAuthToken'
--
-- * 'pcpFields'
pretargetingConfigPatch'
    :: PretargetingConfig -- ^ 'payload'
    -> Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigPatch'
pretargetingConfigPatch' pPcpPayload_ pPcpAccountId_ pPcpConfigId_ =
    PretargetingConfigPatch'
    { _pcpQuotaUser = Nothing
    , _pcpPrettyPrint = True
    , _pcpUserIP = Nothing
    , _pcpPayload = pPcpPayload_
    , _pcpAccountId = pPcpAccountId_
    , _pcpKey = Nothing
    , _pcpConfigId = pPcpConfigId_
    , _pcpOAuthToken = Nothing
    , _pcpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcpQuotaUser :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpQuotaUser
  = lens _pcpQuotaUser (\ s a -> s{_pcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcpPrettyPrint :: Lens' PretargetingConfigPatch' Bool
pcpPrettyPrint
  = lens _pcpPrettyPrint
      (\ s a -> s{_pcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcpUserIP :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpUserIP
  = lens _pcpUserIP (\ s a -> s{_pcpUserIP = a})

-- | Multipart request metadata.
pcpPayload :: Lens' PretargetingConfigPatch' PretargetingConfig
pcpPayload
  = lens _pcpPayload (\ s a -> s{_pcpPayload = a})

-- | The account id to update the pretargeting config for.
pcpAccountId :: Lens' PretargetingConfigPatch' Int64
pcpAccountId
  = lens _pcpAccountId (\ s a -> s{_pcpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcpKey :: Lens' PretargetingConfigPatch' (Maybe AuthKey)
pcpKey = lens _pcpKey (\ s a -> s{_pcpKey = a})

-- | The specific id of the configuration to update.
pcpConfigId :: Lens' PretargetingConfigPatch' Int64
pcpConfigId
  = lens _pcpConfigId (\ s a -> s{_pcpConfigId = a})

-- | OAuth 2.0 token for the current user.
pcpOAuthToken :: Lens' PretargetingConfigPatch' (Maybe OAuthToken)
pcpOAuthToken
  = lens _pcpOAuthToken
      (\ s a -> s{_pcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcpFields :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpFields
  = lens _pcpFields (\ s a -> s{_pcpFields = a})

instance GoogleAuth PretargetingConfigPatch' where
        _AuthKey = pcpKey . _Just
        _AuthToken = pcpOAuthToken . _Just

instance GoogleRequest PretargetingConfigPatch' where
        type Rs PretargetingConfigPatch' = PretargetingConfig
        request = requestWith adExchangeBuyerRequest
        requestWith rq PretargetingConfigPatch'{..}
          = go _pcpAccountId _pcpConfigId _pcpQuotaUser
              (Just _pcpPrettyPrint)
              _pcpUserIP
              _pcpFields
              _pcpKey
              _pcpOAuthToken
              (Just AltJSON)
              _pcpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PretargetingConfigPatchResource)
                      rq
