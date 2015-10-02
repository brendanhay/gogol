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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Update
    (
    -- * REST Resource
      AccountsContainersFoldersUpdateResource

    -- * Creating a Request
    , accountsContainersFoldersUpdate'
    , AccountsContainersFoldersUpdate'

    -- * Request Lenses
    , acfuQuotaUser
    , acfuPrettyPrint
    , acfuContainerId
    , acfuUserIP
    , acfuFingerprint
    , acfuFolderId
    , acfuFolder
    , acfuAccountId
    , acfuKey
    , acfuOAuthToken
    , acfuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersUpdate@ which the
-- 'AccountsContainersFoldersUpdate'' request conforms to.
type AccountsContainersFoldersUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fingerprint" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Folder :> Put '[JSON] Folder

-- | Updates a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersUpdate'' smart constructor.
data AccountsContainersFoldersUpdate' = AccountsContainersFoldersUpdate'
    { _acfuQuotaUser   :: !(Maybe Text)
    , _acfuPrettyPrint :: !Bool
    , _acfuContainerId :: !Text
    , _acfuUserIP      :: !(Maybe Text)
    , _acfuFingerprint :: !(Maybe Text)
    , _acfuFolderId    :: !Text
    , _acfuFolder      :: !Folder
    , _acfuAccountId   :: !Text
    , _acfuKey         :: !(Maybe Key)
    , _acfuOAuthToken  :: !(Maybe OAuthToken)
    , _acfuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfuQuotaUser'
--
-- * 'acfuPrettyPrint'
--
-- * 'acfuContainerId'
--
-- * 'acfuUserIP'
--
-- * 'acfuFingerprint'
--
-- * 'acfuFolderId'
--
-- * 'acfuFolder'
--
-- * 'acfuAccountId'
--
-- * 'acfuKey'
--
-- * 'acfuOAuthToken'
--
-- * 'acfuFields'
accountsContainersFoldersUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Folder -- ^ 'Folder'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersUpdate'
accountsContainersFoldersUpdate' pAcfuContainerId_ pAcfuFolderId_ pAcfuFolder_ pAcfuAccountId_ =
    AccountsContainersFoldersUpdate'
    { _acfuQuotaUser = Nothing
    , _acfuPrettyPrint = True
    , _acfuContainerId = pAcfuContainerId_
    , _acfuUserIP = Nothing
    , _acfuFingerprint = Nothing
    , _acfuFolderId = pAcfuFolderId_
    , _acfuFolder = pAcfuFolder_
    , _acfuAccountId = pAcfuAccountId_
    , _acfuKey = Nothing
    , _acfuOAuthToken = Nothing
    , _acfuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfuQuotaUser :: Lens' AccountsContainersFoldersUpdate' (Maybe Text)
acfuQuotaUser
  = lens _acfuQuotaUser
      (\ s a -> s{_acfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfuPrettyPrint :: Lens' AccountsContainersFoldersUpdate' Bool
acfuPrettyPrint
  = lens _acfuPrettyPrint
      (\ s a -> s{_acfuPrettyPrint = a})

-- | The GTM Container ID.
acfuContainerId :: Lens' AccountsContainersFoldersUpdate' Text
acfuContainerId
  = lens _acfuContainerId
      (\ s a -> s{_acfuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfuUserIP :: Lens' AccountsContainersFoldersUpdate' (Maybe Text)
acfuUserIP
  = lens _acfuUserIP (\ s a -> s{_acfuUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the folder
-- in storage.
acfuFingerprint :: Lens' AccountsContainersFoldersUpdate' (Maybe Text)
acfuFingerprint
  = lens _acfuFingerprint
      (\ s a -> s{_acfuFingerprint = a})

-- | The GTM Folder ID.
acfuFolderId :: Lens' AccountsContainersFoldersUpdate' Text
acfuFolderId
  = lens _acfuFolderId (\ s a -> s{_acfuFolderId = a})

-- | Multipart request metadata.
acfuFolder :: Lens' AccountsContainersFoldersUpdate' Folder
acfuFolder
  = lens _acfuFolder (\ s a -> s{_acfuFolder = a})

-- | The GTM Account ID.
acfuAccountId :: Lens' AccountsContainersFoldersUpdate' Text
acfuAccountId
  = lens _acfuAccountId
      (\ s a -> s{_acfuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfuKey :: Lens' AccountsContainersFoldersUpdate' (Maybe Key)
acfuKey = lens _acfuKey (\ s a -> s{_acfuKey = a})

-- | OAuth 2.0 token for the current user.
acfuOAuthToken :: Lens' AccountsContainersFoldersUpdate' (Maybe OAuthToken)
acfuOAuthToken
  = lens _acfuOAuthToken
      (\ s a -> s{_acfuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfuFields :: Lens' AccountsContainersFoldersUpdate' (Maybe Text)
acfuFields
  = lens _acfuFields (\ s a -> s{_acfuFields = a})

instance GoogleAuth AccountsContainersFoldersUpdate'
         where
        authKey = acfuKey . _Just
        authToken = acfuOAuthToken . _Just

instance GoogleRequest
         AccountsContainersFoldersUpdate' where
        type Rs AccountsContainersFoldersUpdate' = Folder
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersUpdate'{..}
          = go _acfuQuotaUser (Just _acfuPrettyPrint)
              _acfuContainerId
              _acfuUserIP
              _acfuFingerprint
              _acfuFolderId
              _acfuAccountId
              _acfuKey
              _acfuOAuthToken
              _acfuFields
              (Just AltJSON)
              _acfuFolder
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersFoldersUpdateResource)
                      r
                      u
