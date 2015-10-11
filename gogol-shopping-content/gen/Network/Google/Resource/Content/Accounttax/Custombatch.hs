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
-- Module      : Network.Google.Resource.Content.Accounttax.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccounttaxCustombatch@.
module Network.Google.Resource.Content.Accounttax.Custombatch
    (
    -- * REST Resource
      AccounttaxCustombatchResource

    -- * Creating a Request
    , accounttaxCustombatch'
    , AccounttaxCustombatch'

    -- * Request Lenses
    , acQuotaUser
    , acPrettyPrint
    , acUserIP
    , acPayload
    , acKey
    , acOAuthToken
    , acDryRun
    , acFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccounttaxCustombatch@ method which the
-- 'AccounttaxCustombatch'' request conforms to.
type AccounttaxCustombatchResource =
     "accounttax" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccounttaxCustomBatchRequest :>
                           Post '[JSON] AccounttaxCustomBatchResponse

-- | Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ 'accounttaxCustombatch'' smart constructor.
data AccounttaxCustombatch' = AccounttaxCustombatch'
    { _acQuotaUser   :: !(Maybe Text)
    , _acPrettyPrint :: !Bool
    , _acUserIP      :: !(Maybe Text)
    , _acPayload     :: !AccounttaxCustomBatchRequest
    , _acKey         :: !(Maybe AuthKey)
    , _acOAuthToken  :: !(Maybe OAuthToken)
    , _acDryRun      :: !(Maybe Bool)
    , _acFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acQuotaUser'
--
-- * 'acPrettyPrint'
--
-- * 'acUserIP'
--
-- * 'acPayload'
--
-- * 'acKey'
--
-- * 'acOAuthToken'
--
-- * 'acDryRun'
--
-- * 'acFields'
accounttaxCustombatch'
    :: AccounttaxCustomBatchRequest -- ^ 'payload'
    -> AccounttaxCustombatch'
accounttaxCustombatch' pAcPayload_ =
    AccounttaxCustombatch'
    { _acQuotaUser = Nothing
    , _acPrettyPrint = True
    , _acUserIP = Nothing
    , _acPayload = pAcPayload_
    , _acKey = Nothing
    , _acOAuthToken = Nothing
    , _acDryRun = Nothing
    , _acFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acQuotaUser :: Lens' AccounttaxCustombatch' (Maybe Text)
acQuotaUser
  = lens _acQuotaUser (\ s a -> s{_acQuotaUser = a})

-- | Returns response with indentations and line breaks.
acPrettyPrint :: Lens' AccounttaxCustombatch' Bool
acPrettyPrint
  = lens _acPrettyPrint
      (\ s a -> s{_acPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acUserIP :: Lens' AccounttaxCustombatch' (Maybe Text)
acUserIP = lens _acUserIP (\ s a -> s{_acUserIP = a})

-- | Multipart request metadata.
acPayload :: Lens' AccounttaxCustombatch' AccounttaxCustomBatchRequest
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acKey :: Lens' AccounttaxCustombatch' (Maybe AuthKey)
acKey = lens _acKey (\ s a -> s{_acKey = a})

-- | OAuth 2.0 token for the current user.
acOAuthToken :: Lens' AccounttaxCustombatch' (Maybe OAuthToken)
acOAuthToken
  = lens _acOAuthToken (\ s a -> s{_acOAuthToken = a})

-- | Flag to run the request in dry-run mode.
acDryRun :: Lens' AccounttaxCustombatch' (Maybe Bool)
acDryRun = lens _acDryRun (\ s a -> s{_acDryRun = a})

-- | Selector specifying which fields to include in a partial response.
acFields :: Lens' AccounttaxCustombatch' (Maybe Text)
acFields = lens _acFields (\ s a -> s{_acFields = a})

instance GoogleAuth AccounttaxCustombatch' where
        _AuthKey = acKey . _Just
        _AuthToken = acOAuthToken . _Just

instance GoogleRequest AccounttaxCustombatch' where
        type Rs AccounttaxCustombatch' =
             AccounttaxCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccounttaxCustombatch'{..}
          = go _acDryRun _acQuotaUser (Just _acPrettyPrint)
              _acUserIP
              _acFields
              _acKey
              _acOAuthToken
              (Just AltJSON)
              _acPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccounttaxCustombatchResource)
                      rq
