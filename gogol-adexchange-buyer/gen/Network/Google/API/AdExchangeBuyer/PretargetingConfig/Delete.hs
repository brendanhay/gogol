{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.PretargetingConfig.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.delete@.
module Network.Google.API.AdExchangeBuyer.PretargetingConfig.Delete
    (
    -- * REST Resource
      PretargetingConfigDeleteAPI

    -- * Creating a Request
    , pretargetingConfigDelete'
    , PretargetingConfigDelete'

    -- * Request Lenses
    , pcdQuotaUser
    , pcdPrettyPrint
    , pcdUserIp
    , pcdAccountId
    , pcdKey
    , pcdConfigId
    , pcdOauthToken
    , pcdFields
    , pcdAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.pretargetingConfig.delete which the
-- 'PretargetingConfigDelete'' request conforms to.
type PretargetingConfigDeleteAPI =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Capture "configId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigDelete'' smart constructor.
data PretargetingConfigDelete' = PretargetingConfigDelete'
    { _pcdQuotaUser   :: !(Maybe Text)
    , _pcdPrettyPrint :: !Bool
    , _pcdUserIp      :: !(Maybe Text)
    , _pcdAccountId   :: !Int64
    , _pcdKey         :: !(Maybe Text)
    , _pcdConfigId    :: !Int64
    , _pcdOauthToken  :: !(Maybe Text)
    , _pcdFields      :: !(Maybe Text)
    , _pcdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdQuotaUser'
--
-- * 'pcdPrettyPrint'
--
-- * 'pcdUserIp'
--
-- * 'pcdAccountId'
--
-- * 'pcdKey'
--
-- * 'pcdConfigId'
--
-- * 'pcdOauthToken'
--
-- * 'pcdFields'
--
-- * 'pcdAlt'
pretargetingConfigDelete'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigDelete'
pretargetingConfigDelete' pPcdAccountId_ pPcdConfigId_ =
    PretargetingConfigDelete'
    { _pcdQuotaUser = Nothing
    , _pcdPrettyPrint = True
    , _pcdUserIp = Nothing
    , _pcdAccountId = pPcdAccountId_
    , _pcdKey = Nothing
    , _pcdConfigId = pPcdConfigId_
    , _pcdOauthToken = Nothing
    , _pcdFields = Nothing
    , _pcdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcdQuotaUser :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdQuotaUser
  = lens _pcdQuotaUser (\ s a -> s{_pcdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcdPrettyPrint :: Lens' PretargetingConfigDelete' Bool
pcdPrettyPrint
  = lens _pcdPrettyPrint
      (\ s a -> s{_pcdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcdUserIp :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdUserIp
  = lens _pcdUserIp (\ s a -> s{_pcdUserIp = a})

-- | The account id to delete the pretargeting config for.
pcdAccountId :: Lens' PretargetingConfigDelete' Int64
pcdAccountId
  = lens _pcdAccountId (\ s a -> s{_pcdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcdKey :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdKey = lens _pcdKey (\ s a -> s{_pcdKey = a})

-- | The specific id of the configuration to delete.
pcdConfigId :: Lens' PretargetingConfigDelete' Int64
pcdConfigId
  = lens _pcdConfigId (\ s a -> s{_pcdConfigId = a})

-- | OAuth 2.0 token for the current user.
pcdOauthToken :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdOauthToken
  = lens _pcdOauthToken
      (\ s a -> s{_pcdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcdFields :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdFields
  = lens _pcdFields (\ s a -> s{_pcdFields = a})

-- | Data format for the response.
pcdAlt :: Lens' PretargetingConfigDelete' Alt
pcdAlt = lens _pcdAlt (\ s a -> s{_pcdAlt = a})

instance GoogleRequest PretargetingConfigDelete'
         where
        type Rs PretargetingConfigDelete' = ()
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigDelete'{..}
          = go _pcdQuotaUser (Just _pcdPrettyPrint) _pcdUserIp
              _pcdAccountId
              _pcdKey
              _pcdConfigId
              _pcdOauthToken
              _pcdFields
              (Just _pcdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigDeleteAPI)
                      r
                      u
