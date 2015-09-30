{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new pretargeting configuration.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigInsert@.
module AdExchangeBuyer.PretargetingConfig.Insert
    (
    -- * REST Resource
      PretargetingConfigInsertAPI

    -- * Creating a Request
    , pretargetingConfigInsert
    , PretargetingConfigInsert

    -- * Request Lenses
    , pciQuotaUser
    , pciPrettyPrint
    , pciUserIp
    , pciAccountId
    , pciKey
    , pciOauthToken
    , pciFields
    , pciAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigInsert@ which the
-- 'PretargetingConfigInsert' request conforms to.
type PretargetingConfigInsertAPI =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Post '[JSON] PretargetingConfig

-- | Inserts a new pretargeting configuration.
--
-- /See:/ 'pretargetingConfigInsert' smart constructor.
data PretargetingConfigInsert = PretargetingConfigInsert
    { _pciQuotaUser   :: !(Maybe Text)
    , _pciPrettyPrint :: !Bool
    , _pciUserIp      :: !(Maybe Text)
    , _pciAccountId   :: !Int64
    , _pciKey         :: !(Maybe Text)
    , _pciOauthToken  :: !(Maybe Text)
    , _pciFields      :: !(Maybe Text)
    , _pciAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pciQuotaUser'
--
-- * 'pciPrettyPrint'
--
-- * 'pciUserIp'
--
-- * 'pciAccountId'
--
-- * 'pciKey'
--
-- * 'pciOauthToken'
--
-- * 'pciFields'
--
-- * 'pciAlt'
pretargetingConfigInsert
    :: Int64 -- ^ 'accountId'
    -> PretargetingConfigInsert
pretargetingConfigInsert pPciAccountId_ =
    PretargetingConfigInsert
    { _pciQuotaUser = Nothing
    , _pciPrettyPrint = True
    , _pciUserIp = Nothing
    , _pciAccountId = pPciAccountId_
    , _pciKey = Nothing
    , _pciOauthToken = Nothing
    , _pciFields = Nothing
    , _pciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pciQuotaUser :: Lens' PretargetingConfigInsert' (Maybe Text)
pciQuotaUser
  = lens _pciQuotaUser (\ s a -> s{_pciQuotaUser = a})

-- | Returns response with indentations and line breaks.
pciPrettyPrint :: Lens' PretargetingConfigInsert' Bool
pciPrettyPrint
  = lens _pciPrettyPrint
      (\ s a -> s{_pciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pciUserIp :: Lens' PretargetingConfigInsert' (Maybe Text)
pciUserIp
  = lens _pciUserIp (\ s a -> s{_pciUserIp = a})

-- | The account id to insert the pretargeting config for.
pciAccountId :: Lens' PretargetingConfigInsert' Int64
pciAccountId
  = lens _pciAccountId (\ s a -> s{_pciAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pciKey :: Lens' PretargetingConfigInsert' (Maybe Text)
pciKey = lens _pciKey (\ s a -> s{_pciKey = a})

-- | OAuth 2.0 token for the current user.
pciOauthToken :: Lens' PretargetingConfigInsert' (Maybe Text)
pciOauthToken
  = lens _pciOauthToken
      (\ s a -> s{_pciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pciFields :: Lens' PretargetingConfigInsert' (Maybe Text)
pciFields
  = lens _pciFields (\ s a -> s{_pciFields = a})

-- | Data format for the response.
pciAlt :: Lens' PretargetingConfigInsert' Text
pciAlt = lens _pciAlt (\ s a -> s{_pciAlt = a})

instance GoogleRequest PretargetingConfigInsert'
         where
        type Rs PretargetingConfigInsert' =
             PretargetingConfig
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigInsert{..}
          = go _pciQuotaUser _pciPrettyPrint _pciUserIp
              _pciAccountId
              _pciKey
              _pciOauthToken
              _pciFields
              _pciAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigInsertAPI)
                      r
                      u
