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
-- Module      : Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerPretargetingConfigDelete@.
module Network.Google.Resource.AdExchangeBuyer.PretargetingConfig.Delete
    (
    -- * REST Resource
      PretargetingConfigDeleteResource

    -- * Creating a Request
    , pretargetingConfigDelete'
    , PretargetingConfigDelete'

    -- * Request Lenses
    , pcdQuotaUser
    , pcdPrettyPrint
    , pcdUserIP
    , pcdAccountId
    , pcdKey
    , pcdConfigId
    , pcdOAuthToken
    , pcdFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerPretargetingConfigDelete@ which the
-- 'PretargetingConfigDelete'' request conforms to.
type PretargetingConfigDeleteResource =
     "pretargetingconfigs" :>
       Capture "accountId" Int64 :>
         Capture "configId" Int64 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing pretargeting config.
--
-- /See:/ 'pretargetingConfigDelete'' smart constructor.
data PretargetingConfigDelete' = PretargetingConfigDelete'
    { _pcdQuotaUser   :: !(Maybe Text)
    , _pcdPrettyPrint :: !Bool
    , _pcdUserIP      :: !(Maybe Text)
    , _pcdAccountId   :: !Int64
    , _pcdKey         :: !(Maybe Key)
    , _pcdConfigId    :: !Int64
    , _pcdOAuthToken  :: !(Maybe OAuthToken)
    , _pcdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PretargetingConfigDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdQuotaUser'
--
-- * 'pcdPrettyPrint'
--
-- * 'pcdUserIP'
--
-- * 'pcdAccountId'
--
-- * 'pcdKey'
--
-- * 'pcdConfigId'
--
-- * 'pcdOAuthToken'
--
-- * 'pcdFields'
pretargetingConfigDelete'
    :: Int64 -- ^ 'accountId'
    -> Int64 -- ^ 'configId'
    -> PretargetingConfigDelete'
pretargetingConfigDelete' pPcdAccountId_ pPcdConfigId_ =
    PretargetingConfigDelete'
    { _pcdQuotaUser = Nothing
    , _pcdPrettyPrint = True
    , _pcdUserIP = Nothing
    , _pcdAccountId = pPcdAccountId_
    , _pcdKey = Nothing
    , _pcdConfigId = pPcdConfigId_
    , _pcdOAuthToken = Nothing
    , _pcdFields = Nothing
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
pcdUserIP :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdUserIP
  = lens _pcdUserIP (\ s a -> s{_pcdUserIP = a})

-- | The account id to delete the pretargeting config for.
pcdAccountId :: Lens' PretargetingConfigDelete' Int64
pcdAccountId
  = lens _pcdAccountId (\ s a -> s{_pcdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcdKey :: Lens' PretargetingConfigDelete' (Maybe Key)
pcdKey = lens _pcdKey (\ s a -> s{_pcdKey = a})

-- | The specific id of the configuration to delete.
pcdConfigId :: Lens' PretargetingConfigDelete' Int64
pcdConfigId
  = lens _pcdConfigId (\ s a -> s{_pcdConfigId = a})

-- | OAuth 2.0 token for the current user.
pcdOAuthToken :: Lens' PretargetingConfigDelete' (Maybe OAuthToken)
pcdOAuthToken
  = lens _pcdOAuthToken
      (\ s a -> s{_pcdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcdFields :: Lens' PretargetingConfigDelete' (Maybe Text)
pcdFields
  = lens _pcdFields (\ s a -> s{_pcdFields = a})

instance GoogleAuth PretargetingConfigDelete' where
        authKey = pcdKey . _Just
        authToken = pcdOAuthToken . _Just

instance GoogleRequest PretargetingConfigDelete'
         where
        type Rs PretargetingConfigDelete' = ()
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u PretargetingConfigDelete'{..}
          = go _pcdQuotaUser (Just _pcdPrettyPrint) _pcdUserIP
              _pcdAccountId
              _pcdKey
              _pcdConfigId
              _pcdOAuthToken
              _pcdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PretargetingConfigDeleteResource)
                      r
                      u
