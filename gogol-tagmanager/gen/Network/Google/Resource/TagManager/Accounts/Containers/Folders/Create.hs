{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Folder.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersFoldersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Folders.Create
    (
    -- * REST Resource
      AccountsContainersFoldersCreateResource

    -- * Creating a Request
    , accountsContainersFoldersCreate'
    , AccountsContainersFoldersCreate'

    -- * Request Lenses
    , acfcQuotaUser
    , acfcPrettyPrint
    , acfcContainerId
    , acfcUserIP
    , acfcPayload
    , acfcAccountId
    , acfcKey
    , acfcOAuthToken
    , acfcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersFoldersCreate@ which the
-- 'AccountsContainersFoldersCreate'' request conforms to.
type AccountsContainersFoldersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "folders" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Folder :> Post '[JSON] Folder

-- | Creates a GTM Folder.
--
-- /See:/ 'accountsContainersFoldersCreate'' smart constructor.
data AccountsContainersFoldersCreate' = AccountsContainersFoldersCreate'
    { _acfcQuotaUser   :: !(Maybe Text)
    , _acfcPrettyPrint :: !Bool
    , _acfcContainerId :: !Text
    , _acfcUserIP      :: !(Maybe Text)
    , _acfcPayload     :: !Folder
    , _acfcAccountId   :: !Text
    , _acfcKey         :: !(Maybe Key)
    , _acfcOAuthToken  :: !(Maybe OAuthToken)
    , _acfcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersFoldersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfcQuotaUser'
--
-- * 'acfcPrettyPrint'
--
-- * 'acfcContainerId'
--
-- * 'acfcUserIP'
--
-- * 'acfcPayload'
--
-- * 'acfcAccountId'
--
-- * 'acfcKey'
--
-- * 'acfcOAuthToken'
--
-- * 'acfcFields'
accountsContainersFoldersCreate'
    :: Text -- ^ 'containerId'
    -> Folder -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersFoldersCreate'
accountsContainersFoldersCreate' pAcfcContainerId_ pAcfcPayload_ pAcfcAccountId_ =
    AccountsContainersFoldersCreate'
    { _acfcQuotaUser = Nothing
    , _acfcPrettyPrint = True
    , _acfcContainerId = pAcfcContainerId_
    , _acfcUserIP = Nothing
    , _acfcPayload = pAcfcPayload_
    , _acfcAccountId = pAcfcAccountId_
    , _acfcKey = Nothing
    , _acfcOAuthToken = Nothing
    , _acfcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acfcQuotaUser :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcQuotaUser
  = lens _acfcQuotaUser
      (\ s a -> s{_acfcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acfcPrettyPrint :: Lens' AccountsContainersFoldersCreate' Bool
acfcPrettyPrint
  = lens _acfcPrettyPrint
      (\ s a -> s{_acfcPrettyPrint = a})

-- | The GTM Container ID.
acfcContainerId :: Lens' AccountsContainersFoldersCreate' Text
acfcContainerId
  = lens _acfcContainerId
      (\ s a -> s{_acfcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acfcUserIP :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcUserIP
  = lens _acfcUserIP (\ s a -> s{_acfcUserIP = a})

-- | Multipart request metadata.
acfcPayload :: Lens' AccountsContainersFoldersCreate' Folder
acfcPayload
  = lens _acfcPayload (\ s a -> s{_acfcPayload = a})

-- | The GTM Account ID.
acfcAccountId :: Lens' AccountsContainersFoldersCreate' Text
acfcAccountId
  = lens _acfcAccountId
      (\ s a -> s{_acfcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acfcKey :: Lens' AccountsContainersFoldersCreate' (Maybe Key)
acfcKey = lens _acfcKey (\ s a -> s{_acfcKey = a})

-- | OAuth 2.0 token for the current user.
acfcOAuthToken :: Lens' AccountsContainersFoldersCreate' (Maybe OAuthToken)
acfcOAuthToken
  = lens _acfcOAuthToken
      (\ s a -> s{_acfcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acfcFields :: Lens' AccountsContainersFoldersCreate' (Maybe Text)
acfcFields
  = lens _acfcFields (\ s a -> s{_acfcFields = a})

instance GoogleAuth AccountsContainersFoldersCreate'
         where
        authKey = acfcKey . _Just
        authToken = acfcOAuthToken . _Just

instance GoogleRequest
         AccountsContainersFoldersCreate' where
        type Rs AccountsContainersFoldersCreate' = Folder
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersFoldersCreate'{..}
          = go _acfcAccountId _acfcContainerId _acfcQuotaUser
              (Just _acfcPrettyPrint)
              _acfcUserIP
              _acfcFields
              _acfcKey
              _acfcOAuthToken
              (Just AltJSON)
              _acfcPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersFoldersCreateResource)
                      r
                      u
