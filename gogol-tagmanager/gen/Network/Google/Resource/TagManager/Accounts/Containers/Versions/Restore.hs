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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores a Container Version. This will overwrite the container\'s
-- current configuration (including its macros, rules and tags). The
-- operation will not have any effect on the version that is being served
-- (i.e. the published version).
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsRestore@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Restore
    (
    -- * REST Resource
      AccountsContainersVersionsRestoreResource

    -- * Creating a Request
    , accountsContainersVersionsRestore'
    , AccountsContainersVersionsRestore'

    -- * Request Lenses
    , acvrQuotaUser
    , acvrPrettyPrint
    , acvrContainerId
    , acvrUserIP
    , acvrContainerVersionId
    , acvrAccountId
    , acvrKey
    , acvrOAuthToken
    , acvrFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsRestore@ which the
-- 'AccountsContainersVersionsRestore'' request conforms to.
type AccountsContainersVersionsRestoreResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 "restore" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] ContainerVersion

-- | Restores a Container Version. This will overwrite the container\'s
-- current configuration (including its macros, rules and tags). The
-- operation will not have any effect on the version that is being served
-- (i.e. the published version).
--
-- /See:/ 'accountsContainersVersionsRestore'' smart constructor.
data AccountsContainersVersionsRestore' = AccountsContainersVersionsRestore'
    { _acvrQuotaUser          :: !(Maybe Text)
    , _acvrPrettyPrint        :: !Bool
    , _acvrContainerId        :: !Text
    , _acvrUserIP             :: !(Maybe Text)
    , _acvrContainerVersionId :: !Text
    , _acvrAccountId          :: !Text
    , _acvrKey                :: !(Maybe Key)
    , _acvrOAuthToken         :: !(Maybe OAuthToken)
    , _acvrFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsRestore'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvrQuotaUser'
--
-- * 'acvrPrettyPrint'
--
-- * 'acvrContainerId'
--
-- * 'acvrUserIP'
--
-- * 'acvrContainerVersionId'
--
-- * 'acvrAccountId'
--
-- * 'acvrKey'
--
-- * 'acvrOAuthToken'
--
-- * 'acvrFields'
accountsContainersVersionsRestore'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsRestore'
accountsContainersVersionsRestore' pAcvrContainerId_ pAcvrContainerVersionId_ pAcvrAccountId_ =
    AccountsContainersVersionsRestore'
    { _acvrQuotaUser = Nothing
    , _acvrPrettyPrint = True
    , _acvrContainerId = pAcvrContainerId_
    , _acvrUserIP = Nothing
    , _acvrContainerVersionId = pAcvrContainerVersionId_
    , _acvrAccountId = pAcvrAccountId_
    , _acvrKey = Nothing
    , _acvrOAuthToken = Nothing
    , _acvrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvrQuotaUser :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrQuotaUser
  = lens _acvrQuotaUser
      (\ s a -> s{_acvrQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvrPrettyPrint :: Lens' AccountsContainersVersionsRestore' Bool
acvrPrettyPrint
  = lens _acvrPrettyPrint
      (\ s a -> s{_acvrPrettyPrint = a})

-- | The GTM Container ID.
acvrContainerId :: Lens' AccountsContainersVersionsRestore' Text
acvrContainerId
  = lens _acvrContainerId
      (\ s a -> s{_acvrContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvrUserIP :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrUserIP
  = lens _acvrUserIP (\ s a -> s{_acvrUserIP = a})

-- | The GTM Container Version ID.
acvrContainerVersionId :: Lens' AccountsContainersVersionsRestore' Text
acvrContainerVersionId
  = lens _acvrContainerVersionId
      (\ s a -> s{_acvrContainerVersionId = a})

-- | The GTM Account ID.
acvrAccountId :: Lens' AccountsContainersVersionsRestore' Text
acvrAccountId
  = lens _acvrAccountId
      (\ s a -> s{_acvrAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvrKey :: Lens' AccountsContainersVersionsRestore' (Maybe Key)
acvrKey = lens _acvrKey (\ s a -> s{_acvrKey = a})

-- | OAuth 2.0 token for the current user.
acvrOAuthToken :: Lens' AccountsContainersVersionsRestore' (Maybe OAuthToken)
acvrOAuthToken
  = lens _acvrOAuthToken
      (\ s a -> s{_acvrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvrFields :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrFields
  = lens _acvrFields (\ s a -> s{_acvrFields = a})

instance GoogleAuth
         AccountsContainersVersionsRestore' where
        authKey = acvrKey . _Just
        authToken = acvrOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVersionsRestore' where
        type Rs AccountsContainersVersionsRestore' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsRestore'{..}
          = go _acvrQuotaUser (Just _acvrPrettyPrint)
              _acvrContainerId
              _acvrUserIP
              _acvrContainerVersionId
              _acvrAccountId
              _acvrKey
              _acvrOAuthToken
              _acvrFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsRestoreResource)
                      r
                      u
