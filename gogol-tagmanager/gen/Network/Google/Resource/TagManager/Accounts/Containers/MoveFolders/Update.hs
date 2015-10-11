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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves entities to a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMove_foldersUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.MoveFolders.Update
    (
    -- * REST Resource
      AccountsContainersMoveFoldersUpdateResource

    -- * Creating a Request
    , accountsContainersMoveFoldersUpdate'
    , AccountsContainersMoveFoldersUpdate'

    -- * Request Lenses
    , acmfuQuotaUser
    , acmfuPrettyPrint
    , acmfuContainerId
    , acmfuTriggerId
    , acmfuUserIP
    , acmfuVariableId
    , acmfuFolderId
    , acmfuAccountId
    , acmfuTagId
    , acmfuKey
    , acmfuOAuthToken
    , acmfuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMove_foldersUpdate@ method which the
-- 'AccountsContainersMoveFoldersUpdate'' request conforms to.
type AccountsContainersMoveFoldersUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "move_folders" :>
               Capture "folderId" Text :>
                 QueryParams "triggerId" Text :>
                   QueryParams "variableId" Text :>
                     QueryParams "tagId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Moves entities to a GTM Folder.
--
-- /See:/ 'accountsContainersMoveFoldersUpdate'' smart constructor.
data AccountsContainersMoveFoldersUpdate' = AccountsContainersMoveFoldersUpdate'
    { _acmfuQuotaUser   :: !(Maybe Text)
    , _acmfuPrettyPrint :: !Bool
    , _acmfuContainerId :: !Text
    , _acmfuTriggerId   :: !(Maybe [Text])
    , _acmfuUserIP      :: !(Maybe Text)
    , _acmfuVariableId  :: !(Maybe [Text])
    , _acmfuFolderId    :: !Text
    , _acmfuAccountId   :: !Text
    , _acmfuTagId       :: !(Maybe [Text])
    , _acmfuKey         :: !(Maybe AuthKey)
    , _acmfuOAuthToken  :: !(Maybe OAuthToken)
    , _acmfuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMoveFoldersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmfuQuotaUser'
--
-- * 'acmfuPrettyPrint'
--
-- * 'acmfuContainerId'
--
-- * 'acmfuTriggerId'
--
-- * 'acmfuUserIP'
--
-- * 'acmfuVariableId'
--
-- * 'acmfuFolderId'
--
-- * 'acmfuAccountId'
--
-- * 'acmfuTagId'
--
-- * 'acmfuKey'
--
-- * 'acmfuOAuthToken'
--
-- * 'acmfuFields'
accountsContainersMoveFoldersUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMoveFoldersUpdate'
accountsContainersMoveFoldersUpdate' pAcmfuContainerId_ pAcmfuFolderId_ pAcmfuAccountId_ =
    AccountsContainersMoveFoldersUpdate'
    { _acmfuQuotaUser = Nothing
    , _acmfuPrettyPrint = True
    , _acmfuContainerId = pAcmfuContainerId_
    , _acmfuTriggerId = Nothing
    , _acmfuUserIP = Nothing
    , _acmfuVariableId = Nothing
    , _acmfuFolderId = pAcmfuFolderId_
    , _acmfuAccountId = pAcmfuAccountId_
    , _acmfuTagId = Nothing
    , _acmfuKey = Nothing
    , _acmfuOAuthToken = Nothing
    , _acmfuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmfuQuotaUser :: Lens' AccountsContainersMoveFoldersUpdate' (Maybe Text)
acmfuQuotaUser
  = lens _acmfuQuotaUser
      (\ s a -> s{_acmfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmfuPrettyPrint :: Lens' AccountsContainersMoveFoldersUpdate' Bool
acmfuPrettyPrint
  = lens _acmfuPrettyPrint
      (\ s a -> s{_acmfuPrettyPrint = a})

-- | The GTM Container ID.
acmfuContainerId :: Lens' AccountsContainersMoveFoldersUpdate' Text
acmfuContainerId
  = lens _acmfuContainerId
      (\ s a -> s{_acmfuContainerId = a})

-- | The triggers to be moved to the folder.
acmfuTriggerId :: Lens' AccountsContainersMoveFoldersUpdate' [Text]
acmfuTriggerId
  = lens _acmfuTriggerId
      (\ s a -> s{_acmfuTriggerId = a})
      . _Default
      . _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmfuUserIP :: Lens' AccountsContainersMoveFoldersUpdate' (Maybe Text)
acmfuUserIP
  = lens _acmfuUserIP (\ s a -> s{_acmfuUserIP = a})

-- | The variables to be moved to the folder.
acmfuVariableId :: Lens' AccountsContainersMoveFoldersUpdate' [Text]
acmfuVariableId
  = lens _acmfuVariableId
      (\ s a -> s{_acmfuVariableId = a})
      . _Default
      . _Coerce

-- | The GTM Folder ID.
acmfuFolderId :: Lens' AccountsContainersMoveFoldersUpdate' Text
acmfuFolderId
  = lens _acmfuFolderId
      (\ s a -> s{_acmfuFolderId = a})

-- | The GTM Account ID.
acmfuAccountId :: Lens' AccountsContainersMoveFoldersUpdate' Text
acmfuAccountId
  = lens _acmfuAccountId
      (\ s a -> s{_acmfuAccountId = a})

-- | The tags to be moved to the folder.
acmfuTagId :: Lens' AccountsContainersMoveFoldersUpdate' [Text]
acmfuTagId
  = lens _acmfuTagId (\ s a -> s{_acmfuTagId = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmfuKey :: Lens' AccountsContainersMoveFoldersUpdate' (Maybe AuthKey)
acmfuKey = lens _acmfuKey (\ s a -> s{_acmfuKey = a})

-- | OAuth 2.0 token for the current user.
acmfuOAuthToken :: Lens' AccountsContainersMoveFoldersUpdate' (Maybe OAuthToken)
acmfuOAuthToken
  = lens _acmfuOAuthToken
      (\ s a -> s{_acmfuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmfuFields :: Lens' AccountsContainersMoveFoldersUpdate' (Maybe Text)
acmfuFields
  = lens _acmfuFields (\ s a -> s{_acmfuFields = a})

instance GoogleAuth
         AccountsContainersMoveFoldersUpdate' where
        _AuthKey = acmfuKey . _Just
        _AuthToken = acmfuOAuthToken . _Just

instance GoogleRequest
         AccountsContainersMoveFoldersUpdate' where
        type Rs AccountsContainersMoveFoldersUpdate' = ()
        request = requestWith tagManagerRequest
        requestWith rq
          AccountsContainersMoveFoldersUpdate'{..}
          = go _acmfuAccountId _acmfuContainerId _acmfuFolderId
              (_acmfuTriggerId ^. _Default)
              (_acmfuVariableId ^. _Default)
              (_acmfuTagId ^. _Default)
              _acmfuQuotaUser
              (Just _acmfuPrettyPrint)
              _acmfuUserIP
              _acmfuFields
              _acmfuKey
              _acmfuOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersMoveFoldersUpdateResource)
                      rq
