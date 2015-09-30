{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Move_folders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves entities to a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersMove_foldersUpdate@.
module TagManager.Accounts.Containers.Move_folders.Update
    (
    -- * REST Resource
      AccountsContainersMove_foldersUpdateAPI

    -- * Creating a Request
    , accountsContainersMoveFoldersUpdate
    , AccountsContainersMoveFoldersUpdate

    -- * Request Lenses
    , acmuQuotaUser
    , acmuPrettyPrint
    , acmuContainerId
    , acmuTriggerId
    , acmuUserIp
    , acmuVariableId
    , acmuFolderId
    , acmuAccountId
    , acmuTagId
    , acmuKey
    , acmuOauthToken
    , acmuFields
    , acmuAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersMove_foldersUpdate@ which the
-- 'AccountsContainersMoveFoldersUpdate' request conforms to.
type AccountsContainersMove_foldersUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "move_folders" :>
               Capture "folderId" Text :>
                 QueryParams "triggerId" Text :>
                   QueryParams "variableId" Text :>
                     QueryParams "tagId" Text :> Put '[JSON] ()

-- | Moves entities to a GTM Folder.
--
-- /See:/ 'accountsContainersMoveFoldersUpdate' smart constructor.
data AccountsContainersMoveFoldersUpdate = AccountsContainersMoveFoldersUpdate
    { _acmuQuotaUser   :: !(Maybe Text)
    , _acmuPrettyPrint :: !Bool
    , _acmuContainerId :: !Text
    , _acmuTriggerId   :: !(Maybe Text)
    , _acmuUserIp      :: !(Maybe Text)
    , _acmuVariableId  :: !(Maybe Text)
    , _acmuFolderId    :: !Text
    , _acmuAccountId   :: !Text
    , _acmuTagId       :: !(Maybe Text)
    , _acmuKey         :: !(Maybe Text)
    , _acmuOauthToken  :: !(Maybe Text)
    , _acmuFields      :: !(Maybe Text)
    , _acmuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMove_foldersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmuQuotaUser'
--
-- * 'acmuPrettyPrint'
--
-- * 'acmuContainerId'
--
-- * 'acmuTriggerId'
--
-- * 'acmuUserIp'
--
-- * 'acmuVariableId'
--
-- * 'acmuFolderId'
--
-- * 'acmuAccountId'
--
-- * 'acmuTagId'
--
-- * 'acmuKey'
--
-- * 'acmuOauthToken'
--
-- * 'acmuFields'
--
-- * 'acmuAlt'
accountsContainersMoveFoldersUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMoveFoldersUpdate
accountsContainersMoveFoldersUpdate pAcmuContainerId_ pAcmuFolderId_ pAcmuAccountId_ =
    AccountsContainersMoveFoldersUpdate
    { _acmuQuotaUser = Nothing
    , _acmuPrettyPrint = True
    , _acmuContainerId = pAcmuContainerId_
    , _acmuTriggerId = Nothing
    , _acmuUserIp = Nothing
    , _acmuVariableId = Nothing
    , _acmuFolderId = pAcmuFolderId_
    , _acmuAccountId = pAcmuAccountId_
    , _acmuTagId = Nothing
    , _acmuKey = Nothing
    , _acmuOauthToken = Nothing
    , _acmuFields = Nothing
    , _acmuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmuQuotaUser :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuQuotaUser
  = lens _acmuQuotaUser
      (\ s a -> s{_acmuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmuPrettyPrint :: Lens' AccountsContainersMove_foldersUpdate' Bool
acmuPrettyPrint
  = lens _acmuPrettyPrint
      (\ s a -> s{_acmuPrettyPrint = a})

-- | The GTM Container ID.
acmuContainerId :: Lens' AccountsContainersMove_foldersUpdate' Text
acmuContainerId
  = lens _acmuContainerId
      (\ s a -> s{_acmuContainerId = a})

-- | The triggers to be moved to the folder.
acmuTriggerId :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuTriggerId
  = lens _acmuTriggerId
      (\ s a -> s{_acmuTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmuUserIp :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuUserIp
  = lens _acmuUserIp (\ s a -> s{_acmuUserIp = a})

-- | The variables to be moved to the folder.
acmuVariableId :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuVariableId
  = lens _acmuVariableId
      (\ s a -> s{_acmuVariableId = a})

-- | The GTM Folder ID.
acmuFolderId :: Lens' AccountsContainersMove_foldersUpdate' Text
acmuFolderId
  = lens _acmuFolderId (\ s a -> s{_acmuFolderId = a})

-- | The GTM Account ID.
acmuAccountId :: Lens' AccountsContainersMove_foldersUpdate' Text
acmuAccountId
  = lens _acmuAccountId
      (\ s a -> s{_acmuAccountId = a})

-- | The tags to be moved to the folder.
acmuTagId :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuTagId
  = lens _acmuTagId (\ s a -> s{_acmuTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmuKey :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuKey = lens _acmuKey (\ s a -> s{_acmuKey = a})

-- | OAuth 2.0 token for the current user.
acmuOauthToken :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuOauthToken
  = lens _acmuOauthToken
      (\ s a -> s{_acmuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmuFields :: Lens' AccountsContainersMove_foldersUpdate' (Maybe Text)
acmuFields
  = lens _acmuFields (\ s a -> s{_acmuFields = a})

-- | Data format for the response.
acmuAlt :: Lens' AccountsContainersMove_foldersUpdate' Text
acmuAlt = lens _acmuAlt (\ s a -> s{_acmuAlt = a})

instance GoogleRequest
         AccountsContainersMove_foldersUpdate' where
        type Rs AccountsContainersMove_foldersUpdate' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMoveFoldersUpdate{..}
          = go _acmuQuotaUser _acmuPrettyPrint _acmuContainerId
              _acmuTriggerId
              _acmuUserIp
              _acmuVariableId
              _acmuFolderId
              _acmuAccountId
              _acmuTagId
              _acmuKey
              _acmuOauthToken
              _acmuFields
              _acmuAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersMove_foldersUpdateAPI)
                      r
                      u
