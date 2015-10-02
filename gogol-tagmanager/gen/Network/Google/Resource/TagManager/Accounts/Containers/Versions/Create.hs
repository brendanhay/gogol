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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Create
    (
    -- * REST Resource
      AccountsContainersVersionsCreateResource

    -- * Creating a Request
    , accountsContainersVersionsCreate'
    , AccountsContainersVersionsCreate'

    -- * Request Lenses
    , acvcQuotaUser
    , acvcPrettyPrint
    , acvcCreateContainerVersionRequestVersionOptions
    , acvcContainerId
    , acvcUserIP
    , acvcAccountId
    , acvcKey
    , acvcOAuthToken
    , acvcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsCreate@ which the
-- 'AccountsContainersVersionsCreate'' request conforms to.
type AccountsContainersVersionsCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               CreateContainerVersionRequestVersionOptions
                               :> Post '[JSON] CreateContainerVersionResponse

-- | Creates a Container Version.
--
-- /See:/ 'accountsContainersVersionsCreate'' smart constructor.
data AccountsContainersVersionsCreate' = AccountsContainersVersionsCreate'
    { _acvcQuotaUser                                   :: !(Maybe Text)
    , _acvcPrettyPrint                                 :: !Bool
    , _acvcCreateContainerVersionRequestVersionOptions :: !CreateContainerVersionRequestVersionOptions
    , _acvcContainerId                                 :: !Text
    , _acvcUserIP                                      :: !(Maybe Text)
    , _acvcAccountId                                   :: !Text
    , _acvcKey                                         :: !(Maybe Key)
    , _acvcOAuthToken                                  :: !(Maybe OAuthToken)
    , _acvcFields                                      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvcQuotaUser'
--
-- * 'acvcPrettyPrint'
--
-- * 'acvcCreateContainerVersionRequestVersionOptions'
--
-- * 'acvcContainerId'
--
-- * 'acvcUserIP'
--
-- * 'acvcAccountId'
--
-- * 'acvcKey'
--
-- * 'acvcOAuthToken'
--
-- * 'acvcFields'
accountsContainersVersionsCreate'
    :: CreateContainerVersionRequestVersionOptions -- ^ 'CreateContainerVersionRequestVersionOptions'
    -> Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsCreate'
accountsContainersVersionsCreate' pAcvcCreateContainerVersionRequestVersionOptions_ pAcvcContainerId_ pAcvcAccountId_ =
    AccountsContainersVersionsCreate'
    { _acvcQuotaUser = Nothing
    , _acvcPrettyPrint = True
    , _acvcCreateContainerVersionRequestVersionOptions = pAcvcCreateContainerVersionRequestVersionOptions_
    , _acvcContainerId = pAcvcContainerId_
    , _acvcUserIP = Nothing
    , _acvcAccountId = pAcvcAccountId_
    , _acvcKey = Nothing
    , _acvcOAuthToken = Nothing
    , _acvcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvcQuotaUser :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcQuotaUser
  = lens _acvcQuotaUser
      (\ s a -> s{_acvcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvcPrettyPrint :: Lens' AccountsContainersVersionsCreate' Bool
acvcPrettyPrint
  = lens _acvcPrettyPrint
      (\ s a -> s{_acvcPrettyPrint = a})

-- | Multipart request metadata.
acvcCreateContainerVersionRequestVersionOptions :: Lens' AccountsContainersVersionsCreate' CreateContainerVersionRequestVersionOptions
acvcCreateContainerVersionRequestVersionOptions
  = lens
      _acvcCreateContainerVersionRequestVersionOptions
      (\ s a ->
         s{_acvcCreateContainerVersionRequestVersionOptions =
             a})

-- | The GTM Container ID.
acvcContainerId :: Lens' AccountsContainersVersionsCreate' Text
acvcContainerId
  = lens _acvcContainerId
      (\ s a -> s{_acvcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvcUserIP :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcUserIP
  = lens _acvcUserIP (\ s a -> s{_acvcUserIP = a})

-- | The GTM Account ID.
acvcAccountId :: Lens' AccountsContainersVersionsCreate' Text
acvcAccountId
  = lens _acvcAccountId
      (\ s a -> s{_acvcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvcKey :: Lens' AccountsContainersVersionsCreate' (Maybe Key)
acvcKey = lens _acvcKey (\ s a -> s{_acvcKey = a})

-- | OAuth 2.0 token for the current user.
acvcOAuthToken :: Lens' AccountsContainersVersionsCreate' (Maybe OAuthToken)
acvcOAuthToken
  = lens _acvcOAuthToken
      (\ s a -> s{_acvcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvcFields :: Lens' AccountsContainersVersionsCreate' (Maybe Text)
acvcFields
  = lens _acvcFields (\ s a -> s{_acvcFields = a})

instance GoogleAuth AccountsContainersVersionsCreate'
         where
        authKey = acvcKey . _Just
        authToken = acvcOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVersionsCreate' where
        type Rs AccountsContainersVersionsCreate' =
             CreateContainerVersionResponse
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsCreate'{..}
          = go _acvcQuotaUser (Just _acvcPrettyPrint)
              _acvcContainerId
              _acvcUserIP
              _acvcAccountId
              _acvcKey
              _acvcOAuthToken
              _acvcFields
              (Just AltJSON)
              _acvcCreateContainerVersionRequestVersionOptions
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsCreateResource)
                      r
                      u
