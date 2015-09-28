{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.PretargetingConfig.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.update@.
module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Update
    (
    -- * REST Resource
      PretargetingConfigUpdateAPI

    -- * Creating a Request
    , pretargetingConfigUpdate'
    , PretargetingConfigUpdate'

    -- * Request Lenses
    , pcuQuotaUser
    , pcuPrettyPrint
    , pcuUserIp
    , pcuAccountId
    , pcuKey
    , pcuConfigId
    , pcuOauthToken
    , pcuFields
    , pcuAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.pretargetingConfig.update which the
-- 'PretargetingConfigUpdate'' request conforms to.
type PretargetingConfigUpdateAPI =
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
                         Put '[JSON] PretargetingConfig

-- | Updates an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigUpdate'' smart constructor.
data PretargetingConfigUpdate' = PretargetingConfigUpdate'
    { _pcuQuotaUser   :: !(Maybe Text)
    , _pcuPrettyPrint :: !Bool
    , _pcuUserIp      :: !(Maybe Text)
    , _pcuAccountId   :: !Int64
    , _pcuKey         :: !(Maybe Text)
    , _pcuConfigId    :: !Int64
    , _pcuOauthToken  :: !(Maybe Text)
    , _pcuFields      :: !(Maybe Text)
    , _pcuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcuQuotaUser'
--
-- * 'pcuPrettyPrint'
--
-- * 'pcuUserIp'
--
-- * 'pcuAccountId'
--
-- * 'pcuKey'
--
-- * 'pcuConfigId'
--
-- * 'pcuOauthToken'
--
-- * 'pcuFields'
--
-- * 'pcuAlt'
pretargetingConfigUpdate'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigUpdate'
pretargetingConfigUpdate' pPcuAccountId_ pPcuConfigId_ =
    PretargetingConfigUpdate'
    { _pcuQuotaUser = Nothing
    , _pcuPrettyPrint = True
    , _pcuUserIp = Nothing
    , _pcuAccountId = pPcuAccountId_
    , _pcuKey = Nothing
    , _pcuConfigId = pPcuConfigId_
    , _pcuOauthToken = Nothing
    , _pcuFields = Nothing
    , _pcuAlt = JSON
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
pcuUserIp :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuUserIp
  = lens _pcuUserIp (\ s a -> s{_pcuUserIp = a})

-- | The account id to update the pretargeting config for.
pcuAccountId :: Lens' PretargetingConfigUpdate' Int64
pcuAccountId
  = lens _pcuAccountId (\ s a -> s{_pcuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcuKey :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuKey = lens _pcuKey (\ s a -> s{_pcuKey = a})

-- | The specific id of the configuration to update.
pcuConfigId :: Lens' PretargetingConfigUpdate' Int64
pcuConfigId
  = lens _pcuConfigId (\ s a -> s{_pcuConfigId = a})

-- | OAuth 2.0 token for the current user.
pcuOauthToken :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuOauthToken
  = lens _pcuOauthToken
      (\ s a -> s{_pcuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcuFields :: Lens' PretargetingConfigUpdate' (Maybe Text)
pcuFields
  = lens _pcuFields (\ s a -> s{_pcuFields = a})

-- | Data format for the response.
pcuAlt :: Lens' PretargetingConfigUpdate' Alt
pcuAlt = lens _pcuAlt (\ s a -> s{_pcuAlt = a})

instance GoogleRequest PretargetingConfigUpdate'
         where
        type Rs PretargetingConfigUpdate' =
             PretargetingConfig
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigUpdate'{..}
          = go _pcuQuotaUser (Just _pcuPrettyPrint) _pcuUserIp
              _pcuAccountId
              _pcuKey
              _pcuConfigId
              _pcuOauthToken
              _pcuFields
              (Just _pcuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigUpdateAPI)
                      r
                      u
