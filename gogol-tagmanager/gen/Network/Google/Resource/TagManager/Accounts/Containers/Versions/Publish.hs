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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publishes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersVersionsPublish@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Publish
    (
    -- * REST Resource
      AccountsContainersVersionsPublishResource

    -- * Creating a Request
    , accountsContainersVersionsPublish'
    , AccountsContainersVersionsPublish'

    -- * Request Lenses
    , acvpQuotaUser
    , acvpPrettyPrint
    , acvpContainerId
    , acvpUserIp
    , acvpFingerprint
    , acvpContainerVersionId
    , acvpAccountId
    , acvpKey
    , acvpOauthToken
    , acvpFields
    , acvpAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersVersionsPublish@ which the
-- 'AccountsContainersVersionsPublish'' request conforms to.
type AccountsContainersVersionsPublishResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 "publish" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fingerprint" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Post '[JSON] PublishContainerVersionResponse

-- | Publishes a Container Version.
--
-- /See:/ 'accountsContainersVersionsPublish'' smart constructor.
data AccountsContainersVersionsPublish' = AccountsContainersVersionsPublish'
    { _acvpQuotaUser          :: !(Maybe Text)
    , _acvpPrettyPrint        :: !Bool
    , _acvpContainerId        :: !Text
    , _acvpUserIp             :: !(Maybe Text)
    , _acvpFingerprint        :: !(Maybe Text)
    , _acvpContainerVersionId :: !Text
    , _acvpAccountId          :: !Text
    , _acvpKey                :: !(Maybe Text)
    , _acvpOauthToken         :: !(Maybe Text)
    , _acvpFields             :: !(Maybe Text)
    , _acvpAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvpQuotaUser'
--
-- * 'acvpPrettyPrint'
--
-- * 'acvpContainerId'
--
-- * 'acvpUserIp'
--
-- * 'acvpFingerprint'
--
-- * 'acvpContainerVersionId'
--
-- * 'acvpAccountId'
--
-- * 'acvpKey'
--
-- * 'acvpOauthToken'
--
-- * 'acvpFields'
--
-- * 'acvpAlt'
accountsContainersVersionsPublish'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsPublish'
accountsContainersVersionsPublish' pAcvpContainerId_ pAcvpContainerVersionId_ pAcvpAccountId_ =
    AccountsContainersVersionsPublish'
    { _acvpQuotaUser = Nothing
    , _acvpPrettyPrint = True
    , _acvpContainerId = pAcvpContainerId_
    , _acvpUserIp = Nothing
    , _acvpFingerprint = Nothing
    , _acvpContainerVersionId = pAcvpContainerVersionId_
    , _acvpAccountId = pAcvpAccountId_
    , _acvpKey = Nothing
    , _acvpOauthToken = Nothing
    , _acvpFields = Nothing
    , _acvpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvpQuotaUser :: Lens' AccountsContainersVersionsPublish' (Maybe Text)
acvpQuotaUser
  = lens _acvpQuotaUser
      (\ s a -> s{_acvpQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvpPrettyPrint :: Lens' AccountsContainersVersionsPublish' Bool
acvpPrettyPrint
  = lens _acvpPrettyPrint
      (\ s a -> s{_acvpPrettyPrint = a})

-- | The GTM Container ID.
acvpContainerId :: Lens' AccountsContainersVersionsPublish' Text
acvpContainerId
  = lens _acvpContainerId
      (\ s a -> s{_acvpContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvpUserIp :: Lens' AccountsContainersVersionsPublish' (Maybe Text)
acvpUserIp
  = lens _acvpUserIp (\ s a -> s{_acvpUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container version in storage.
acvpFingerprint :: Lens' AccountsContainersVersionsPublish' (Maybe Text)
acvpFingerprint
  = lens _acvpFingerprint
      (\ s a -> s{_acvpFingerprint = a})

-- | The GTM Container Version ID.
acvpContainerVersionId :: Lens' AccountsContainersVersionsPublish' Text
acvpContainerVersionId
  = lens _acvpContainerVersionId
      (\ s a -> s{_acvpContainerVersionId = a})

-- | The GTM Account ID.
acvpAccountId :: Lens' AccountsContainersVersionsPublish' Text
acvpAccountId
  = lens _acvpAccountId
      (\ s a -> s{_acvpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvpKey :: Lens' AccountsContainersVersionsPublish' (Maybe Text)
acvpKey = lens _acvpKey (\ s a -> s{_acvpKey = a})

-- | OAuth 2.0 token for the current user.
acvpOauthToken :: Lens' AccountsContainersVersionsPublish' (Maybe Text)
acvpOauthToken
  = lens _acvpOauthToken
      (\ s a -> s{_acvpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvpFields :: Lens' AccountsContainersVersionsPublish' (Maybe Text)
acvpFields
  = lens _acvpFields (\ s a -> s{_acvpFields = a})

-- | Data format for the response.
acvpAlt :: Lens' AccountsContainersVersionsPublish' Alt
acvpAlt = lens _acvpAlt (\ s a -> s{_acvpAlt = a})

instance GoogleRequest
         AccountsContainersVersionsPublish' where
        type Rs AccountsContainersVersionsPublish' =
             PublishContainerVersionResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsPublish'{..}
          = go _acvpQuotaUser (Just _acvpPrettyPrint)
              _acvpContainerId
              _acvpUserIp
              _acvpFingerprint
              _acvpContainerVersionId
              _acvpAccountId
              _acvpKey
              _acvpOauthToken
              _acvpFields
              (Just _acvpAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsPublishResource)
                      r
                      u
