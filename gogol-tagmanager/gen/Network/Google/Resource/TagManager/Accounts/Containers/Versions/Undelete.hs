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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undeletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsUndelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
    (
    -- * REST Resource
      AccountsContainersVersionsUndeleteResource

    -- * Creating a Request
    , accountsContainersVersionsUndelete'
    , AccountsContainersVersionsUndelete'

    -- * Request Lenses
    , acvuQuotaUser
    , acvuPrettyPrint
    , acvuContainerId
    , acvuUserIP
    , acvuContainerVersionId
    , acvuAccountId
    , acvuKey
    , acvuOAuthToken
    , acvuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsUndelete@ which the
-- 'AccountsContainersVersionsUndelete'' request conforms to.
type AccountsContainersVersionsUndeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 "undelete" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] ContainerVersion

-- | Undeletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsUndelete'' smart constructor.
data AccountsContainersVersionsUndelete' = AccountsContainersVersionsUndelete'
    { _acvuQuotaUser          :: !(Maybe Text)
    , _acvuPrettyPrint        :: !Bool
    , _acvuContainerId        :: !Text
    , _acvuUserIP             :: !(Maybe Text)
    , _acvuContainerVersionId :: !Text
    , _acvuAccountId          :: !Text
    , _acvuKey                :: !(Maybe Key)
    , _acvuOAuthToken         :: !(Maybe OAuthToken)
    , _acvuFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvuQuotaUser'
--
-- * 'acvuPrettyPrint'
--
-- * 'acvuContainerId'
--
-- * 'acvuUserIP'
--
-- * 'acvuContainerVersionId'
--
-- * 'acvuAccountId'
--
-- * 'acvuKey'
--
-- * 'acvuOAuthToken'
--
-- * 'acvuFields'
accountsContainersVersionsUndelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUndelete'
accountsContainersVersionsUndelete' pAcvuContainerId_ pAcvuContainerVersionId_ pAcvuAccountId_ =
    AccountsContainersVersionsUndelete'
    { _acvuQuotaUser = Nothing
    , _acvuPrettyPrint = True
    , _acvuContainerId = pAcvuContainerId_
    , _acvuUserIP = Nothing
    , _acvuContainerVersionId = pAcvuContainerVersionId_
    , _acvuAccountId = pAcvuAccountId_
    , _acvuKey = Nothing
    , _acvuOAuthToken = Nothing
    , _acvuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvuQuotaUser :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuQuotaUser
  = lens _acvuQuotaUser
      (\ s a -> s{_acvuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvuPrettyPrint :: Lens' AccountsContainersVersionsUndelete' Bool
acvuPrettyPrint
  = lens _acvuPrettyPrint
      (\ s a -> s{_acvuPrettyPrint = a})

-- | The GTM Container ID.
acvuContainerId :: Lens' AccountsContainersVersionsUndelete' Text
acvuContainerId
  = lens _acvuContainerId
      (\ s a -> s{_acvuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvuUserIP :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuUserIP
  = lens _acvuUserIP (\ s a -> s{_acvuUserIP = a})

-- | The GTM Container Version ID.
acvuContainerVersionId :: Lens' AccountsContainersVersionsUndelete' Text
acvuContainerVersionId
  = lens _acvuContainerVersionId
      (\ s a -> s{_acvuContainerVersionId = a})

-- | The GTM Account ID.
acvuAccountId :: Lens' AccountsContainersVersionsUndelete' Text
acvuAccountId
  = lens _acvuAccountId
      (\ s a -> s{_acvuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvuKey :: Lens' AccountsContainersVersionsUndelete' (Maybe Key)
acvuKey = lens _acvuKey (\ s a -> s{_acvuKey = a})

-- | OAuth 2.0 token for the current user.
acvuOAuthToken :: Lens' AccountsContainersVersionsUndelete' (Maybe OAuthToken)
acvuOAuthToken
  = lens _acvuOAuthToken
      (\ s a -> s{_acvuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvuFields :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuFields
  = lens _acvuFields (\ s a -> s{_acvuFields = a})

instance GoogleAuth
         AccountsContainersVersionsUndelete' where
        authKey = acvuKey . _Just
        authToken = acvuOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVersionsUndelete' where
        type Rs AccountsContainersVersionsUndelete' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsUndelete'{..}
          = go _acvuAccountId _acvuContainerId
              _acvuContainerVersionId
              _acvuQuotaUser
              (Just _acvuPrettyPrint)
              _acvuUserIP
              _acvuFields
              _acvuKey
              _acvuOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsUndeleteResource)
                      r
                      u
