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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
    (
    -- * REST Resource
      AccountsContainersVersionsUpdateResource

    -- * Creating a Request
    , accountsContainersVersionsUpdate'
    , AccountsContainersVersionsUpdate'

    -- * Request Lenses
    , acvucQuotaUser
    , acvucPrettyPrint
    , acvucContainerId
    , acvucUserIp
    , acvucFingerprint
    , acvucContainerVersionId
    , acvucAccountId
    , acvucKey
    , acvucOauthToken
    , acvucFields
    , acvucAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsUpdate@ which the
-- 'AccountsContainersVersionsUpdate'' request conforms to.
type AccountsContainersVersionsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate'' smart constructor.
data AccountsContainersVersionsUpdate' = AccountsContainersVersionsUpdate'
    { _acvucQuotaUser          :: !(Maybe Text)
    , _acvucPrettyPrint        :: !Bool
    , _acvucContainerId        :: !Text
    , _acvucUserIp             :: !(Maybe Text)
    , _acvucFingerprint        :: !(Maybe Text)
    , _acvucContainerVersionId :: !Text
    , _acvucAccountId          :: !Text
    , _acvucKey                :: !(Maybe Text)
    , _acvucOauthToken         :: !(Maybe Text)
    , _acvucFields             :: !(Maybe Text)
    , _acvucAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvucQuotaUser'
--
-- * 'acvucPrettyPrint'
--
-- * 'acvucContainerId'
--
-- * 'acvucUserIp'
--
-- * 'acvucFingerprint'
--
-- * 'acvucContainerVersionId'
--
-- * 'acvucAccountId'
--
-- * 'acvucKey'
--
-- * 'acvucOauthToken'
--
-- * 'acvucFields'
--
-- * 'acvucAlt'
accountsContainersVersionsUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUpdate'
accountsContainersVersionsUpdate' pAcvucContainerId_ pAcvucContainerVersionId_ pAcvucAccountId_ =
    AccountsContainersVersionsUpdate'
    { _acvucQuotaUser = Nothing
    , _acvucPrettyPrint = True
    , _acvucContainerId = pAcvucContainerId_
    , _acvucUserIp = Nothing
    , _acvucFingerprint = Nothing
    , _acvucContainerVersionId = pAcvucContainerVersionId_
    , _acvucAccountId = pAcvucAccountId_
    , _acvucKey = Nothing
    , _acvucOauthToken = Nothing
    , _acvucFields = Nothing
    , _acvucAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvucQuotaUser :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucQuotaUser
  = lens _acvucQuotaUser
      (\ s a -> s{_acvucQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvucPrettyPrint :: Lens' AccountsContainersVersionsUpdate' Bool
acvucPrettyPrint
  = lens _acvucPrettyPrint
      (\ s a -> s{_acvucPrettyPrint = a})

-- | The GTM Container ID.
acvucContainerId :: Lens' AccountsContainersVersionsUpdate' Text
acvucContainerId
  = lens _acvucContainerId
      (\ s a -> s{_acvucContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvucUserIp :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucUserIp
  = lens _acvucUserIp (\ s a -> s{_acvucUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acvucFingerprint :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucFingerprint
  = lens _acvucFingerprint
      (\ s a -> s{_acvucFingerprint = a})

-- | The GTM Container Version ID.
acvucContainerVersionId :: Lens' AccountsContainersVersionsUpdate' Text
acvucContainerVersionId
  = lens _acvucContainerVersionId
      (\ s a -> s{_acvucContainerVersionId = a})

-- | The GTM Account ID.
acvucAccountId :: Lens' AccountsContainersVersionsUpdate' Text
acvucAccountId
  = lens _acvucAccountId
      (\ s a -> s{_acvucAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvucKey :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucKey = lens _acvucKey (\ s a -> s{_acvucKey = a})

-- | OAuth 2.0 token for the current user.
acvucOauthToken :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucOauthToken
  = lens _acvucOauthToken
      (\ s a -> s{_acvucOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvucFields :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucFields
  = lens _acvucFields (\ s a -> s{_acvucFields = a})

-- | Data format for the response.
acvucAlt :: Lens' AccountsContainersVersionsUpdate' Alt
acvucAlt = lens _acvucAlt (\ s a -> s{_acvucAlt = a})

instance GoogleRequest
         AccountsContainersVersionsUpdate' where
        type Rs AccountsContainersVersionsUpdate' =
             ContainerVersion
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsUpdate'{..}
          = go _acvucQuotaUser (Just _acvucPrettyPrint)
              _acvucContainerId
              _acvucUserIp
              _acvucFingerprint
              _acvucContainerVersionId
              _acvucAccountId
              _acvucKey
              _acvucOauthToken
              _acvucFields
              (Just _acvucAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsUpdateResource)
                      r
                      u
