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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all entities in a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersFoldersEntitiesList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Entities.List
    (
    -- * REST Resource
      AccountsContainersFoldersEntitiesListResource

    -- * Creating a Request
    , accountsContainersFoldersEntitiesList'
    , AccountsContainersFoldersEntitiesList'

    -- * Request Lenses
    , acfelQuotaUser
    , acfelPrettyPrint
    , acfelContainerId
    , acfelUserIp
    , acfelFolderId
    , acfelAccountId
    , acfelKey
    , acfelOauthToken
    , acfelFields
    , acfelAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersFoldersEntitiesList@ which the
-- 'AccountsContainersFoldersEntitiesList'' request conforms to.
type AccountsContainersFoldersEntitiesListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               Capture "folderId" Text :>
                 "entities" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] FolderEntities

-- | List all entities in a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersEntitiesList'' smart constructor.
data AccountsContainersFoldersEntitiesList' = AccountsContainersFoldersEntitiesList'
    { _acfelQuotaUser   :: !(Maybe Text)
    , _acfelPrettyPrint :: !Bool
    , _acfelContainerId :: !Text
    , _acfelUserIp      :: !(Maybe Text)
    , _acfelFolderId    :: !Text
    , _acfelAccountId   :: !Text
    , _acfelKey         :: !(Maybe Text)
    , _acfelOauthToken  :: !(Maybe Text)
    , _acfelFields      :: !(Maybe Text)
    , _acfelAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersEntitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfelQuotaUser'
--
-- * 'acfelPrettyPrint'
--
-- * 'acfelContainerId'
--
-- * 'acfelUserIp'
--
-- * 'acfelFolderId'
--
-- * 'acfelAccountId'
--
-- * 'acfelKey'
--
-- * 'acfelOauthToken'
--
-- * 'acfelFields'
--
-- * 'acfelAlt'
accountsContainersFoldersEntitiesList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'folderId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersEntitiesList'
accountsContainersFoldersEntitiesList' pAcfelContainerId_ pAcfelFolderId_ pAcfelAccountId_ =
    AccountsContainersFoldersEntitiesList'
    { _acfelQuotaUser = Nothing
    , _acfelPrettyPrint = True
    , _acfelContainerId = pAcfelContainerId_
    , _acfelUserIp = Nothing
    , _acfelFolderId = pAcfelFolderId_
    , _acfelAccountId = pAcfelAccountId_
    , _acfelKey = Nothing
    , _acfelOauthToken = Nothing
    , _acfelFields = Nothing
    , _acfelAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfelQuotaUser :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelQuotaUser
  = lens _acfelQuotaUser
      (\ s a -> s{_acfelQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfelPrettyPrint :: Lens' AccountsContainersFoldersEntitiesList' Bool
acfelPrettyPrint
  = lens _acfelPrettyPrint
      (\ s a -> s{_acfelPrettyPrint = a})

-- | The GTM Container ID.
acfelContainerId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelContainerId
  = lens _acfelContainerId
      (\ s a -> s{_acfelContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfelUserIp :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelUserIp
  = lens _acfelUserIp (\ s a -> s{_acfelUserIp = a})

-- | The GTM Folder ID.
acfelFolderId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelFolderId
  = lens _acfelFolderId
      (\ s a -> s{_acfelFolderId = a})

-- | The GTM Account ID.
acfelAccountId :: Lens' AccountsContainersFoldersEntitiesList' Text
acfelAccountId
  = lens _acfelAccountId
      (\ s a -> s{_acfelAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfelKey :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelKey = lens _acfelKey (\ s a -> s{_acfelKey = a})

-- | OAuth 2.0 token for the current user.
acfelOauthToken :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelOauthToken
  = lens _acfelOauthToken
      (\ s a -> s{_acfelOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfelFields :: Lens' AccountsContainersFoldersEntitiesList' (Maybe Text)
acfelFields
  = lens _acfelFields (\ s a -> s{_acfelFields = a})

-- | Data format for the response.
acfelAlt :: Lens' AccountsContainersFoldersEntitiesList' Alt
acfelAlt = lens _acfelAlt (\ s a -> s{_acfelAlt = a})

instance GoogleRequest
         AccountsContainersFoldersEntitiesList' where
        type Rs AccountsContainersFoldersEntitiesList' =
             FolderEntities
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersEntitiesList'{..}
          = go _acfelQuotaUser (Just _acfelPrettyPrint)
              _acfelContainerId
              _acfelUserIp
              _acfelFolderId
              _acfelAccountId
              _acfelKey
              _acfelOauthToken
              _acfelFields
              (Just _acfelAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersFoldersEntitiesListResource)
                      r
                      u
