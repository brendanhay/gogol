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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsUpdate@.
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
    , acvucUserIP
    , acvucFingerprint
    , acvucContainerVersionId
    , acvucPayload
    , acvucAccountId
    , acvucKey
    , acvucOAuthToken
    , acvucFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsUpdate@ which the
-- 'AccountsContainersVersionsUpdate'' request conforms to.
type AccountsContainersVersionsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ContainerVersion :>
                                   Put '[JSON] ContainerVersion

-- | Updates a Container Version.
--
-- /See:/ 'accountsContainersVersionsUpdate'' smart constructor.
data AccountsContainersVersionsUpdate' = AccountsContainersVersionsUpdate'
    { _acvucQuotaUser          :: !(Maybe Text)
    , _acvucPrettyPrint        :: !Bool
    , _acvucContainerId        :: !Text
    , _acvucUserIP             :: !(Maybe Text)
    , _acvucFingerprint        :: !(Maybe Text)
    , _acvucContainerVersionId :: !Text
    , _acvucPayload            :: !ContainerVersion
    , _acvucAccountId          :: !Text
    , _acvucKey                :: !(Maybe AuthKey)
    , _acvucOAuthToken         :: !(Maybe OAuthToken)
    , _acvucFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'acvucUserIP'
--
-- * 'acvucFingerprint'
--
-- * 'acvucContainerVersionId'
--
-- * 'acvucPayload'
--
-- * 'acvucAccountId'
--
-- * 'acvucKey'
--
-- * 'acvucOAuthToken'
--
-- * 'acvucFields'
accountsContainersVersionsUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> ContainerVersion -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsUpdate'
accountsContainersVersionsUpdate' pAcvucContainerId_ pAcvucContainerVersionId_ pAcvucPayload_ pAcvucAccountId_ =
    AccountsContainersVersionsUpdate'
    { _acvucQuotaUser = Nothing
    , _acvucPrettyPrint = True
    , _acvucContainerId = pAcvucContainerId_
    , _acvucUserIP = Nothing
    , _acvucFingerprint = Nothing
    , _acvucContainerVersionId = pAcvucContainerVersionId_
    , _acvucPayload = pAcvucPayload_
    , _acvucAccountId = pAcvucAccountId_
    , _acvucKey = Nothing
    , _acvucOAuthToken = Nothing
    , _acvucFields = Nothing
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
acvucUserIP :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucUserIP
  = lens _acvucUserIP (\ s a -> s{_acvucUserIP = a})

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

-- | Multipart request metadata.
acvucPayload :: Lens' AccountsContainersVersionsUpdate' ContainerVersion
acvucPayload
  = lens _acvucPayload (\ s a -> s{_acvucPayload = a})

-- | The GTM Account ID.
acvucAccountId :: Lens' AccountsContainersVersionsUpdate' Text
acvucAccountId
  = lens _acvucAccountId
      (\ s a -> s{_acvucAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvucKey :: Lens' AccountsContainersVersionsUpdate' (Maybe AuthKey)
acvucKey = lens _acvucKey (\ s a -> s{_acvucKey = a})

-- | OAuth 2.0 token for the current user.
acvucOAuthToken :: Lens' AccountsContainersVersionsUpdate' (Maybe OAuthToken)
acvucOAuthToken
  = lens _acvucOAuthToken
      (\ s a -> s{_acvucOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvucFields :: Lens' AccountsContainersVersionsUpdate' (Maybe Text)
acvucFields
  = lens _acvucFields (\ s a -> s{_acvucFields = a})

instance GoogleAuth AccountsContainersVersionsUpdate'
         where
        authKey = acvucKey . _Just
        authToken = acvucOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVersionsUpdate' where
        type Rs AccountsContainersVersionsUpdate' =
             ContainerVersion
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersVersionsUpdate'{..}
          = go _acvucAccountId _acvucContainerId
              _acvucContainerVersionId
              _acvucFingerprint
              _acvucQuotaUser
              (Just _acvucPrettyPrint)
              _acvucUserIP
              _acvucFields
              _acvucKey
              _acvucOAuthToken
              (Just AltJSON)
              _acvucPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersVersionsUpdateResource)
                      rq
