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
-- Module      : Network.Google.Resource.Content.Accounts.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves, inserts, updates, and deletes multiple Merchant Center
-- (sub-)accounts in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountsCustombatch@.
module Network.Google.Resource.Content.Accounts.Custombatch
    (
    -- * REST Resource
      AccountsCustombatchResource

    -- * Creating a Request
    , accountsCustombatch'
    , AccountsCustombatch'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIP
    , accPayload
    , accKey
    , accOAuthToken
    , accDryRun
    , accFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountsCustombatch@ method which the
-- 'AccountsCustombatch'' request conforms to.
type AccountsCustombatchResource =
     "accounts" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountsCustomBatchRequest :>
                           Post '[JSON] AccountsCustomBatchResponse

-- | Retrieves, inserts, updates, and deletes multiple Merchant Center
-- (sub-)accounts in a single request.
--
-- /See:/ 'accountsCustombatch'' smart constructor.
data AccountsCustombatch' = AccountsCustombatch'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIP      :: !(Maybe Text)
    , _accPayload     :: !AccountsCustomBatchRequest
    , _accKey         :: !(Maybe AuthKey)
    , _accOAuthToken  :: !(Maybe OAuthToken)
    , _accDryRun      :: !(Maybe Bool)
    , _accFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIP'
--
-- * 'accPayload'
--
-- * 'accKey'
--
-- * 'accOAuthToken'
--
-- * 'accDryRun'
--
-- * 'accFields'
accountsCustombatch'
    :: AccountsCustomBatchRequest -- ^ 'payload'
    -> AccountsCustombatch'
accountsCustombatch' pAccPayload_ =
    AccountsCustombatch'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIP = Nothing
    , _accPayload = pAccPayload_
    , _accKey = Nothing
    , _accOAuthToken = Nothing
    , _accDryRun = Nothing
    , _accFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsCustombatch' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsCustombatch' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIP :: Lens' AccountsCustombatch' (Maybe Text)
accUserIP
  = lens _accUserIP (\ s a -> s{_accUserIP = a})

-- | Multipart request metadata.
accPayload :: Lens' AccountsCustombatch' AccountsCustomBatchRequest
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsCustombatch' (Maybe AuthKey)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | OAuth 2.0 token for the current user.
accOAuthToken :: Lens' AccountsCustombatch' (Maybe OAuthToken)
accOAuthToken
  = lens _accOAuthToken
      (\ s a -> s{_accOAuthToken = a})

-- | Flag to run the request in dry-run mode.
accDryRun :: Lens' AccountsCustombatch' (Maybe Bool)
accDryRun
  = lens _accDryRun (\ s a -> s{_accDryRun = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsCustombatch' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

instance GoogleAuth AccountsCustombatch' where
        _AuthKey = accKey . _Just
        _AuthToken = accOAuthToken . _Just

instance GoogleRequest AccountsCustombatch' where
        type Rs AccountsCustombatch' =
             AccountsCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccountsCustombatch'{..}
          = go _accDryRun _accQuotaUser (Just _accPrettyPrint)
              _accUserIP
              _accFields
              _accKey
              _accOAuthToken
              (Just AltJSON)
              _accPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsCustombatchResource)
                      rq
