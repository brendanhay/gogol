{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.PretargetingConfig.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing pretargeting config. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.patch@.
module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Patch
    (
    -- * REST Resource
      PretargetingConfigPatchAPI

    -- * Creating a Request
    , pretargetingConfigPatch'
    , PretargetingConfigPatch'

    -- * Request Lenses
    , pcpQuotaUser
    , pcpPrettyPrint
    , pcpUserIp
    , pcpAccountId
    , pcpKey
    , pcpConfigId
    , pcpOauthToken
    , pcpFields
    , pcpAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.pretargetingConfig.patch which the
-- 'PretargetingConfigPatch'' request conforms to.
type PretargetingConfigPatchAPI =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Capture "configId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Patch '[JSON] PretargetingConfig

-- | Updates an existing pretargeting config. This method supports patch
-- semantics.
--
-- /See:/ 'pretargetingConfigPatch'' smart constructor.
data PretargetingConfigPatch' = PretargetingConfigPatch'
    { _pcpQuotaUser   :: !(Maybe Text)
    , _pcpPrettyPrint :: !Bool
    , _pcpUserIp      :: !(Maybe Text)
    , _pcpAccountId   :: !Int64
    , _pcpKey         :: !(Maybe Text)
    , _pcpConfigId    :: !Int64
    , _pcpOauthToken  :: !(Maybe Text)
    , _pcpFields      :: !(Maybe Text)
    , _pcpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpQuotaUser'
--
-- * 'pcpPrettyPrint'
--
-- * 'pcpUserIp'
--
-- * 'pcpAccountId'
--
-- * 'pcpKey'
--
-- * 'pcpConfigId'
--
-- * 'pcpOauthToken'
--
-- * 'pcpFields'
--
-- * 'pcpAlt'
pretargetingConfigPatch'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigPatch'
pretargetingConfigPatch' pPcpAccountId_ pPcpConfigId_ =
    PretargetingConfigPatch'
    { _pcpQuotaUser = Nothing
    , _pcpPrettyPrint = True
    , _pcpUserIp = Nothing
    , _pcpAccountId = pPcpAccountId_
    , _pcpKey = Nothing
    , _pcpConfigId = pPcpConfigId_
    , _pcpOauthToken = Nothing
    , _pcpFields = Nothing
    , _pcpAlt = JSON
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
pcpUserIp :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpUserIp
  = lens _pcpUserIp (\ s a -> s{_pcpUserIp = a})

-- | The account id to update the pretargeting config for.
pcpAccountId :: Lens' PretargetingConfigPatch' Int64
pcpAccountId
  = lens _pcpAccountId (\ s a -> s{_pcpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcpKey :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpKey = lens _pcpKey (\ s a -> s{_pcpKey = a})

-- | The specific id of the configuration to update.
pcpConfigId :: Lens' PretargetingConfigPatch' Int64
pcpConfigId
  = lens _pcpConfigId (\ s a -> s{_pcpConfigId = a})

-- | OAuth 2.0 token for the current user.
pcpOauthToken :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpOauthToken
  = lens _pcpOauthToken
      (\ s a -> s{_pcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcpFields :: Lens' PretargetingConfigPatch' (Maybe Text)
pcpFields
  = lens _pcpFields (\ s a -> s{_pcpFields = a})

-- | Data format for the response.
pcpAlt :: Lens' PretargetingConfigPatch' Alt
pcpAlt = lens _pcpAlt (\ s a -> s{_pcpAlt = a})

instance GoogleRequest PretargetingConfigPatch' where
        type Rs PretargetingConfigPatch' = PretargetingConfig
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigPatch'{..}
          = go _pcpQuotaUser (Just _pcpPrettyPrint) _pcpUserIp
              _pcpAccountId
              _pcpKey
              _pcpConfigId
              _pcpOauthToken
              _pcpFields
              (Just _pcpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigPatchAPI)
                      r
                      u
