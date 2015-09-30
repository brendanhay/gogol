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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undeletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsUndelete@.
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
    , acvuUserIp
    , acvuContainerVersionId
    , acvuAccountId
    , acvuKey
    , acvuOauthToken
    , acvuFields
    , acvuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsUndelete@ which the
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
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Post '[JSON] ContainerVersion

-- | Undeletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsUndelete'' smart constructor.
data AccountsContainersVersionsUndelete' = AccountsContainersVersionsUndelete'
    { _acvuQuotaUser          :: !(Maybe Text)
    , _acvuPrettyPrint        :: !Bool
    , _acvuContainerId        :: !Text
    , _acvuUserIp             :: !(Maybe Text)
    , _acvuContainerVersionId :: !Text
    , _acvuAccountId          :: !Text
    , _acvuKey                :: !(Maybe Text)
    , _acvuOauthToken         :: !(Maybe Text)
    , _acvuFields             :: !(Maybe Text)
    , _acvuAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'acvuUserIp'
--
-- * 'acvuContainerVersionId'
--
-- * 'acvuAccountId'
--
-- * 'acvuKey'
--
-- * 'acvuOauthToken'
--
-- * 'acvuFields'
--
-- * 'acvuAlt'
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
    , _acvuUserIp = Nothing
    , _acvuContainerVersionId = pAcvuContainerVersionId_
    , _acvuAccountId = pAcvuAccountId_
    , _acvuKey = Nothing
    , _acvuOauthToken = Nothing
    , _acvuFields = Nothing
    , _acvuAlt = JSON
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
acvuUserIp :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuUserIp
  = lens _acvuUserIp (\ s a -> s{_acvuUserIp = a})

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
acvuKey :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuKey = lens _acvuKey (\ s a -> s{_acvuKey = a})

-- | OAuth 2.0 token for the current user.
acvuOauthToken :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuOauthToken
  = lens _acvuOauthToken
      (\ s a -> s{_acvuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvuFields :: Lens' AccountsContainersVersionsUndelete' (Maybe Text)
acvuFields
  = lens _acvuFields (\ s a -> s{_acvuFields = a})

-- | Data format for the response.
acvuAlt :: Lens' AccountsContainersVersionsUndelete' Alt
acvuAlt = lens _acvuAlt (\ s a -> s{_acvuAlt = a})

instance GoogleRequest
         AccountsContainersVersionsUndelete' where
        type Rs AccountsContainersVersionsUndelete' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsUndelete'{..}
          = go _acvuQuotaUser (Just _acvuPrettyPrint)
              _acvuContainerId
              _acvuUserIp
              _acvuContainerVersionId
              _acvuAccountId
              _acvuKey
              _acvuOauthToken
              _acvuFields
              (Just _acvuAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsUndeleteResource)
                      r
                      u
