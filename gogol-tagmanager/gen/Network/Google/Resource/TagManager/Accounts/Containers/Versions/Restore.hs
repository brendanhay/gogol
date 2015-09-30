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
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsRestore@.
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
    , acvrUserIp
    , acvrContainerVersionId
    , acvrAccountId
    , acvrKey
    , acvrOauthToken
    , acvrFields
    , acvrAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsRestore@ which the
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
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
    , _acvrUserIp             :: !(Maybe Text)
    , _acvrContainerVersionId :: !Text
    , _acvrAccountId          :: !Text
    , _acvrKey                :: !(Maybe Text)
    , _acvrOauthToken         :: !(Maybe Text)
    , _acvrFields             :: !(Maybe Text)
    , _acvrAlt                :: !Alt
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
-- * 'acvrUserIp'
--
-- * 'acvrContainerVersionId'
--
-- * 'acvrAccountId'
--
-- * 'acvrKey'
--
-- * 'acvrOauthToken'
--
-- * 'acvrFields'
--
-- * 'acvrAlt'
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
    , _acvrUserIp = Nothing
    , _acvrContainerVersionId = pAcvrContainerVersionId_
    , _acvrAccountId = pAcvrAccountId_
    , _acvrKey = Nothing
    , _acvrOauthToken = Nothing
    , _acvrFields = Nothing
    , _acvrAlt = JSON
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
acvrUserIp :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrUserIp
  = lens _acvrUserIp (\ s a -> s{_acvrUserIp = a})

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
acvrKey :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrKey = lens _acvrKey (\ s a -> s{_acvrKey = a})

-- | OAuth 2.0 token for the current user.
acvrOauthToken :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrOauthToken
  = lens _acvrOauthToken
      (\ s a -> s{_acvrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvrFields :: Lens' AccountsContainersVersionsRestore' (Maybe Text)
acvrFields
  = lens _acvrFields (\ s a -> s{_acvrFields = a})

-- | Data format for the response.
acvrAlt :: Lens' AccountsContainersVersionsRestore' Alt
acvrAlt = lens _acvrAlt (\ s a -> s{_acvrAlt = a})

instance GoogleRequest
         AccountsContainersVersionsRestore' where
        type Rs AccountsContainersVersionsRestore' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsRestore'{..}
          = go _acvrQuotaUser (Just _acvrPrettyPrint)
              _acvrContainerId
              _acvrUserIp
              _acvrContainerVersionId
              _acvrAccountId
              _acvrKey
              _acvrOauthToken
              _acvrFields
              (Just _acvrAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsRestoreResource)
                      r
                      u
