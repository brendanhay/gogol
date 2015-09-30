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
    , pcgUserIp
    , pcgAccountId
    , pcgKey
    , pcgConfigId
    , pcgOauthToken
    , pcgFields
    , pcgAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigGet@ which the
-- 'PretargetingConfigGet'' request conforms to.
type PretargetingConfigGetResource =
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
                         Get '[JSON] PretargetingConfig

-- | Gets a specific pretargeting configuration
--
-- /See:/ 'pretargetingConfigGet'' smart constructor.
data PretargetingConfigGet' = PretargetingConfigGet'
    { _pcgQuotaUser   :: !(Maybe Text)
    , _pcgPrettyPrint :: !Bool
    , _pcgUserIp      :: !(Maybe Text)
    , _pcgAccountId   :: !Int64
    , _pcgKey         :: !(Maybe Text)
    , _pcgConfigId    :: !Int64
    , _pcgOauthToken  :: !(Maybe Text)
    , _pcgFields      :: !(Maybe Text)
    , _pcgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgQuotaUser'
--
-- * 'pcgPrettyPrint'
--
-- * 'pcgUserIp'
--
-- * 'pcgAccountId'
--
-- * 'pcgKey'
--
-- * 'pcgConfigId'
--
-- * 'pcgOauthToken'
--
-- * 'pcgFields'
--
-- * 'pcgAlt'
pretargetingConfigGet'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigGet'
pretargetingConfigGet' pPcgAccountId_ pPcgConfigId_ =
    PretargetingConfigGet'
    { _pcgQuotaUser = Nothing
    , _pcgPrettyPrint = True
    , _pcgUserIp = Nothing
    , _pcgAccountId = pPcgAccountId_
    , _pcgKey = Nothing
    , _pcgConfigId = pPcgConfigId_
    , _pcgOauthToken = Nothing
    , _pcgFields = Nothing
    , _pcgAlt = JSON
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
pcgUserIp :: Lens' PretargetingConfigGet' (Maybe Text)
pcgUserIp
  = lens _pcgUserIp (\ s a -> s{_pcgUserIp = a})

-- | The account id to get the pretargeting config for.
pcgAccountId :: Lens' PretargetingConfigGet' Int64
pcgAccountId
  = lens _pcgAccountId (\ s a -> s{_pcgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcgKey :: Lens' PretargetingConfigGet' (Maybe Text)
pcgKey = lens _pcgKey (\ s a -> s{_pcgKey = a})

-- | The specific id of the configuration to retrieve.
pcgConfigId :: Lens' PretargetingConfigGet' Int64
pcgConfigId
  = lens _pcgConfigId (\ s a -> s{_pcgConfigId = a})

-- | OAuth 2.0 token for the current user.
pcgOauthToken :: Lens' PretargetingConfigGet' (Maybe Text)
pcgOauthToken
  = lens _pcgOauthToken
      (\ s a -> s{_pcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcgFields :: Lens' PretargetingConfigGet' (Maybe Text)
pcgFields
  = lens _pcgFields (\ s a -> s{_pcgFields = a})

-- | Data format for the response.
pcgAlt :: Lens' PretargetingConfigGet' Alt
pcgAlt = lens _pcgAlt (\ s a -> s{_pcgAlt = a})

instance GoogleRequest PretargetingConfigGet' where
        type Rs PretargetingConfigGet' = PretargetingConfig
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigGet'{..}
          = go _pcgQuotaUser (Just _pcgPrettyPrint) _pcgUserIp
              _pcgAccountId
              _pcgKey
              _pcgConfigId
              _pcgOauthToken
              _pcgFields
              (Just _pcgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigGetResource)
                      r
                      u
