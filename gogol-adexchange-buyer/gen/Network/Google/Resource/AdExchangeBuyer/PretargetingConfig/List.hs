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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigList@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.List
    (
    -- * REST Resource
      PretargetingConfigListResource

    -- * Creating a Request
    , pretargetingConfigList'
    , PretargetingConfigList'

    -- * Request Lenses
    , pclQuotaUser
    , pclPrettyPrint
    , pclUserIp
    , pclAccountId
    , pclKey
    , pclOauthToken
    , pclFields
    , pclAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigList@ which the
-- 'PretargetingConfigList'' request conforms to.
type PretargetingConfigListResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] PretargetingConfigList

-- | Retrieves a list of the authenticated user\'s pretargeting
-- configurations.
--
-- /See:/ 'pretargetingConfigList'' smart constructor.
data PretargetingConfigList' = PretargetingConfigList'
    { _pclQuotaUser   :: !(Maybe Text)
    , _pclPrettyPrint :: !Bool
    , _pclUserIp      :: !(Maybe Text)
    , _pclAccountId   :: !Int64
    , _pclKey         :: !(Maybe Text)
    , _pclOauthToken  :: !(Maybe Text)
    , _pclFields      :: !(Maybe Text)
    , _pclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclQuotaUser'
--
-- * 'pclPrettyPrint'
--
-- * 'pclUserIp'
--
-- * 'pclAccountId'
--
-- * 'pclKey'
--
-- * 'pclOauthToken'
--
-- * 'pclFields'
--
-- * 'pclAlt'
pretargetingConfigList'
    :: Int64 -- ^ 'accountId'
    -> PretargetingConfigList'
pretargetingConfigList' pPclAccountId_ =
    PretargetingConfigList'
    { _pclQuotaUser = Nothing
    , _pclPrettyPrint = True
    , _pclUserIp = Nothing
    , _pclAccountId = pPclAccountId_
    , _pclKey = Nothing
    , _pclOauthToken = Nothing
    , _pclFields = Nothing
    , _pclAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pclQuotaUser :: Lens' PretargetingConfigList' (Maybe Text)
pclQuotaUser
  = lens _pclQuotaUser (\ s a -> s{_pclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pclPrettyPrint :: Lens' PretargetingConfigList' Bool
pclPrettyPrint
  = lens _pclPrettyPrint
      (\ s a -> s{_pclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pclUserIp :: Lens' PretargetingConfigList' (Maybe Text)
pclUserIp
  = lens _pclUserIp (\ s a -> s{_pclUserIp = a})

-- | The account id to get the pretargeting configs for.
pclAccountId :: Lens' PretargetingConfigList' Int64
pclAccountId
  = lens _pclAccountId (\ s a -> s{_pclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pclKey :: Lens' PretargetingConfigList' (Maybe Text)
pclKey = lens _pclKey (\ s a -> s{_pclKey = a})

-- | OAuth 2.0 token for the current user.
pclOauthToken :: Lens' PretargetingConfigList' (Maybe Text)
pclOauthToken
  = lens _pclOauthToken
      (\ s a -> s{_pclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pclFields :: Lens' PretargetingConfigList' (Maybe Text)
pclFields
  = lens _pclFields (\ s a -> s{_pclFields = a})

-- | Data format for the response.
pclAlt :: Lens' PretargetingConfigList' Alt
pclAlt = lens _pclAlt (\ s a -> s{_pclAlt = a})

instance GoogleRequest PretargetingConfigList' where
        type Rs PretargetingConfigList' =
             PretargetingConfigList
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigList'{..}
          = go _pclQuotaUser (Just _pclPrettyPrint) _pclUserIp
              _pclAccountId
              _pclKey
              _pclOauthToken
              _pclFields
              (Just _pclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigListResource)
                      r
                      u
