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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersList@.
module Network.Google.Resource.TagManager.Accounts.Containers.List
    (
    -- * REST Resource
      AccountsContainersListResource

    -- * Creating a Request
    , accountsContainersList'
    , AccountsContainersList'

    -- * Request Lenses
    , aclQuotaUser
    , aclPrettyPrint
    , aclUserIP
    , aclAccountId
    , aclKey
    , aclOAuthToken
    , aclFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersList@ method which the
-- 'AccountsContainersList'' request conforms to.
type AccountsContainersListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListContainersResponse

-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ 'accountsContainersList'' smart constructor.
data AccountsContainersList' = AccountsContainersList'
    { _aclQuotaUser   :: !(Maybe Text)
    , _aclPrettyPrint :: !Bool
    , _aclUserIP      :: !(Maybe Text)
    , _aclAccountId   :: !Text
    , _aclKey         :: !(Maybe AuthKey)
    , _aclOAuthToken  :: !(Maybe OAuthToken)
    , _aclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIP'
--
-- * 'aclAccountId'
--
-- * 'aclKey'
--
-- * 'aclOAuthToken'
--
-- * 'aclFields'
accountsContainersList'
    :: Text -- ^ 'accountId'
    -> AccountsContainersList'
accountsContainersList' pAclAccountId_ =
    AccountsContainersList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIP = Nothing
    , _aclAccountId = pAclAccountId_
    , _aclKey = Nothing
    , _aclOAuthToken = Nothing
    , _aclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aclQuotaUser :: Lens' AccountsContainersList' (Maybe Text)
aclQuotaUser
  = lens _aclQuotaUser (\ s a -> s{_aclQuotaUser = a})

-- | Returns response with indentations and line breaks.
aclPrettyPrint :: Lens' AccountsContainersList' Bool
aclPrettyPrint
  = lens _aclPrettyPrint
      (\ s a -> s{_aclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aclUserIP :: Lens' AccountsContainersList' (Maybe Text)
aclUserIP
  = lens _aclUserIP (\ s a -> s{_aclUserIP = a})

-- | The GTM Account ID.
aclAccountId :: Lens' AccountsContainersList' Text
aclAccountId
  = lens _aclAccountId (\ s a -> s{_aclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AccountsContainersList' (Maybe AuthKey)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | OAuth 2.0 token for the current user.
aclOAuthToken :: Lens' AccountsContainersList' (Maybe OAuthToken)
aclOAuthToken
  = lens _aclOAuthToken
      (\ s a -> s{_aclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AccountsContainersList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

instance GoogleAuth AccountsContainersList' where
        _AuthKey = aclKey . _Just
        _AuthToken = aclOAuthToken . _Just

instance GoogleRequest AccountsContainersList' where
        type Rs AccountsContainersList' =
             ListContainersResponse
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersList'{..}
          = go _aclAccountId _aclQuotaUser
              (Just _aclPrettyPrint)
              _aclUserIP
              _aclFields
              _aclKey
              _aclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsContainersListResource)
                      rq
