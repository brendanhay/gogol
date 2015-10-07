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
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Insert
    (
    -- * REST Resource
      PretargetingConfigInsertResource

    -- * Creating a Request
    , pretargetingConfigInsert'
    , PretargetingConfigInsert'

    -- * Request Lenses
    , pciQuotaUser
    , pciPrettyPrint
    , pciUserIP
    , pciPayload
    , pciAccountId
    , pciKey
    , pciOAuthToken
    , pciFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigInsert@ method which the
-- 'PretargetingConfigInsert'' request conforms to.
type PretargetingConfigInsertResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PretargetingConfig :>
                         Post '[JSON] PretargetingConfig

-- | Inserts a new pretargeting configuration.
--
-- /See:/ 'pretargetingConfigInsert'' smart constructor.
data PretargetingConfigInsert' = PretargetingConfigInsert'
    { _pciQuotaUser   :: !(Maybe Text)
    , _pciPrettyPrint :: !Bool
    , _pciUserIP      :: !(Maybe Text)
    , _pciPayload     :: !PretargetingConfig
    , _pciAccountId   :: !Int64
    , _pciKey         :: !(Maybe AuthKey)
    , _pciOAuthToken  :: !(Maybe OAuthToken)
    , _pciFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pciQuotaUser'
--
-- * 'pciPrettyPrint'
--
-- * 'pciUserIP'
--
-- * 'pciPayload'
--
-- * 'pciAccountId'
--
-- * 'pciKey'
--
-- * 'pciOAuthToken'
--
-- * 'pciFields'
pretargetingConfigInsert'
    :: PretargetingConfig -- ^ 'payload'
    -> Int64 -- ^ 'accountId'
    -> PretargetingConfigInsert'
pretargetingConfigInsert' pPciPayload_ pPciAccountId_ =
    PretargetingConfigInsert'
    { _pciQuotaUser = Nothing
    , _pciPrettyPrint = True
    , _pciUserIP = Nothing
    , _pciPayload = pPciPayload_
    , _pciAccountId = pPciAccountId_
    , _pciKey = Nothing
    , _pciOAuthToken = Nothing
    , _pciFields = Nothing
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
pciUserIP :: Lens' PretargetingConfigInsert' (Maybe Text)
pciUserIP
  = lens _pciUserIP (\ s a -> s{_pciUserIP = a})

-- | Multipart request metadata.
pciPayload :: Lens' PretargetingConfigInsert' PretargetingConfig
pciPayload
  = lens _pciPayload (\ s a -> s{_pciPayload = a})

-- | The account id to insert the pretargeting config for.
pciAccountId :: Lens' PretargetingConfigInsert' Int64
pciAccountId
  = lens _pciAccountId (\ s a -> s{_pciAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pciKey :: Lens' PretargetingConfigInsert' (Maybe AuthKey)
pciKey = lens _pciKey (\ s a -> s{_pciKey = a})

-- | OAuth 2.0 token for the current user.
pciOAuthToken :: Lens' PretargetingConfigInsert' (Maybe OAuthToken)
pciOAuthToken
  = lens _pciOAuthToken
      (\ s a -> s{_pciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pciFields :: Lens' PretargetingConfigInsert' (Maybe Text)
pciFields
  = lens _pciFields (\ s a -> s{_pciFields = a})

instance GoogleAuth PretargetingConfigInsert' where
        _AuthKey = pciKey . _Just
        _AuthToken = pciOAuthToken . _Just

instance GoogleRequest PretargetingConfigInsert'
         where
        type Rs PretargetingConfigInsert' =
             PretargetingConfig
        request = requestWith adExchangeBuyerRequest
        requestWith rq PretargetingConfigInsert'{..}
          = go _pciAccountId _pciQuotaUser
              (Just _pciPrettyPrint)
              _pciUserIP
              _pciFields
              _pciKey
              _pciOAuthToken
              (Just AltJSON)
              _pciPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PretargetingConfigInsertResource)
                      rq
