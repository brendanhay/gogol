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
-- Module      : Network.Google.Resource.Content.Accountshipping.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves and updates the shipping settings of multiple accounts in a
-- single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountshippingCustombatch@.
module Network.Google.Resource.Content.Accountshipping.Custombatch
    (
    -- * REST Resource
      AccountshippingCustombatchResource

    -- * Creating a Request
    , accountshippingCustombatch'
    , AccountshippingCustombatch'

    -- * Request Lenses
    , ac1QuotaUser
    , ac1PrettyPrint
    , ac1UserIP
    , ac1Payload
    , ac1Key
    , ac1OAuthToken
    , ac1DryRun
    , ac1Fields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountshippingCustombatch@ method which the
-- 'AccountshippingCustombatch'' request conforms to.
type AccountshippingCustombatchResource =
     "accountshipping" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountshippingCustomBatchRequest :>
                           Post '[JSON] AccountshippingCustomBatchResponse

-- | Retrieves and updates the shipping settings of multiple accounts in a
-- single request.
--
-- /See:/ 'accountshippingCustombatch'' smart constructor.
data AccountshippingCustombatch' = AccountshippingCustombatch'
    { _ac1QuotaUser   :: !(Maybe Text)
    , _ac1PrettyPrint :: !Bool
    , _ac1UserIP      :: !(Maybe Text)
    , _ac1Payload     :: !AccountshippingCustomBatchRequest
    , _ac1Key         :: !(Maybe AuthKey)
    , _ac1OAuthToken  :: !(Maybe OAuthToken)
    , _ac1DryRun      :: !(Maybe Bool)
    , _ac1Fields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ac1QuotaUser'
--
-- * 'ac1PrettyPrint'
--
-- * 'ac1UserIP'
--
-- * 'ac1Payload'
--
-- * 'ac1Key'
--
-- * 'ac1OAuthToken'
--
-- * 'ac1DryRun'
--
-- * 'ac1Fields'
accountshippingCustombatch'
    :: AccountshippingCustomBatchRequest -- ^ 'payload'
    -> AccountshippingCustombatch'
accountshippingCustombatch' pAc1Payload_ =
    AccountshippingCustombatch'
    { _ac1QuotaUser = Nothing
    , _ac1PrettyPrint = True
    , _ac1UserIP = Nothing
    , _ac1Payload = pAc1Payload_
    , _ac1Key = Nothing
    , _ac1OAuthToken = Nothing
    , _ac1DryRun = Nothing
    , _ac1Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ac1QuotaUser :: Lens' AccountshippingCustombatch' (Maybe Text)
ac1QuotaUser
  = lens _ac1QuotaUser (\ s a -> s{_ac1QuotaUser = a})

-- | Returns response with indentations and line breaks.
ac1PrettyPrint :: Lens' AccountshippingCustombatch' Bool
ac1PrettyPrint
  = lens _ac1PrettyPrint
      (\ s a -> s{_ac1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ac1UserIP :: Lens' AccountshippingCustombatch' (Maybe Text)
ac1UserIP
  = lens _ac1UserIP (\ s a -> s{_ac1UserIP = a})

-- | Multipart request metadata.
ac1Payload :: Lens' AccountshippingCustombatch' AccountshippingCustomBatchRequest
ac1Payload
  = lens _ac1Payload (\ s a -> s{_ac1Payload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ac1Key :: Lens' AccountshippingCustombatch' (Maybe AuthKey)
ac1Key = lens _ac1Key (\ s a -> s{_ac1Key = a})

-- | OAuth 2.0 token for the current user.
ac1OAuthToken :: Lens' AccountshippingCustombatch' (Maybe OAuthToken)
ac1OAuthToken
  = lens _ac1OAuthToken
      (\ s a -> s{_ac1OAuthToken = a})

-- | Flag to run the request in dry-run mode.
ac1DryRun :: Lens' AccountshippingCustombatch' (Maybe Bool)
ac1DryRun
  = lens _ac1DryRun (\ s a -> s{_ac1DryRun = a})

-- | Selector specifying which fields to include in a partial response.
ac1Fields :: Lens' AccountshippingCustombatch' (Maybe Text)
ac1Fields
  = lens _ac1Fields (\ s a -> s{_ac1Fields = a})

instance GoogleAuth AccountshippingCustombatch' where
        _AuthKey = ac1Key . _Just
        _AuthToken = ac1OAuthToken . _Just

instance GoogleRequest AccountshippingCustombatch'
         where
        type Rs AccountshippingCustombatch' =
             AccountshippingCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccountshippingCustombatch'{..}
          = go _ac1DryRun _ac1QuotaUser (Just _ac1PrettyPrint)
              _ac1UserIP
              _ac1Fields
              _ac1Key
              _ac1OAuthToken
              (Just AltJSON)
              _ac1Payload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountshippingCustombatchResource)
                      rq
