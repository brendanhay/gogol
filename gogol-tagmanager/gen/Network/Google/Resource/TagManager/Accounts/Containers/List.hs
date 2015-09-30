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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersList@.
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
    , aclUserIp
    , aclAccountId
    , aclKey
    , aclOauthToken
    , aclFields
    , aclAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersList@ which the
-- 'AccountsContainersList'' request conforms to.
type AccountsContainersListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] ListContainersResponse

-- | Lists all Containers that belongs to a GTM Account.
--
-- /See:/ 'accountsContainersList'' smart constructor.
data AccountsContainersList' = AccountsContainersList'
    { _aclQuotaUser   :: !(Maybe Text)
    , _aclPrettyPrint :: !Bool
    , _aclUserIp      :: !(Maybe Text)
    , _aclAccountId   :: !Text
    , _aclKey         :: !(Maybe Text)
    , _aclOauthToken  :: !(Maybe Text)
    , _aclFields      :: !(Maybe Text)
    , _aclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclQuotaUser'
--
-- * 'aclPrettyPrint'
--
-- * 'aclUserIp'
--
-- * 'aclAccountId'
--
-- * 'aclKey'
--
-- * 'aclOauthToken'
--
-- * 'aclFields'
--
-- * 'aclAlt'
accountsContainersList'
    :: Text -- ^ 'accountId'
    -> AccountsContainersList'
accountsContainersList' pAclAccountId_ =
    AccountsContainersList'
    { _aclQuotaUser = Nothing
    , _aclPrettyPrint = True
    , _aclUserIp = Nothing
    , _aclAccountId = pAclAccountId_
    , _aclKey = Nothing
    , _aclOauthToken = Nothing
    , _aclFields = Nothing
    , _aclAlt = JSON
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
aclUserIp :: Lens' AccountsContainersList' (Maybe Text)
aclUserIp
  = lens _aclUserIp (\ s a -> s{_aclUserIp = a})

-- | The GTM Account ID.
aclAccountId :: Lens' AccountsContainersList' Text
aclAccountId
  = lens _aclAccountId (\ s a -> s{_aclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aclKey :: Lens' AccountsContainersList' (Maybe Text)
aclKey = lens _aclKey (\ s a -> s{_aclKey = a})

-- | OAuth 2.0 token for the current user.
aclOauthToken :: Lens' AccountsContainersList' (Maybe Text)
aclOauthToken
  = lens _aclOauthToken
      (\ s a -> s{_aclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aclFields :: Lens' AccountsContainersList' (Maybe Text)
aclFields
  = lens _aclFields (\ s a -> s{_aclFields = a})

-- | Data format for the response.
aclAlt :: Lens' AccountsContainersList' Alt
aclAlt = lens _aclAlt (\ s a -> s{_aclAlt = a})

instance GoogleRequest AccountsContainersList' where
        type Rs AccountsContainersList' =
             ListContainersResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersList'{..}
          = go _aclQuotaUser (Just _aclPrettyPrint) _aclUserIp
              _aclAccountId
              _aclKey
              _aclOauthToken
              _aclFields
              (Just _aclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersListResource)
                      r
                      u
