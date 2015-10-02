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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.Delete
    (
    -- * REST Resource
      AccountsContainersVersionsDeleteResource

    -- * Creating a Request
    , accountsContainersVersionsDelete'
    , AccountsContainersVersionsDelete'

    -- * Request Lenses
    , acvdcQuotaUser
    , acvdcPrettyPrint
    , acvdcContainerId
    , acvdcUserIP
    , acvdcContainerVersionId
    , acvdcAccountId
    , acvdcKey
    , acvdcOAuthToken
    , acvdcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsDelete@ which the
-- 'AccountsContainersVersionsDelete'' request conforms to.
type AccountsContainersVersionsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               Capture "containerVersionId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container Version.
--
-- /See:/ 'accountsContainersVersionsDelete'' smart constructor.
data AccountsContainersVersionsDelete' = AccountsContainersVersionsDelete'
    { _acvdcQuotaUser          :: !(Maybe Text)
    , _acvdcPrettyPrint        :: !Bool
    , _acvdcContainerId        :: !Text
    , _acvdcUserIP             :: !(Maybe Text)
    , _acvdcContainerVersionId :: !Text
    , _acvdcAccountId          :: !Text
    , _acvdcKey                :: !(Maybe Key)
    , _acvdcOAuthToken         :: !(Maybe OAuthToken)
    , _acvdcFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvdcQuotaUser'
--
-- * 'acvdcPrettyPrint'
--
-- * 'acvdcContainerId'
--
-- * 'acvdcUserIP'
--
-- * 'acvdcContainerVersionId'
--
-- * 'acvdcAccountId'
--
-- * 'acvdcKey'
--
-- * 'acvdcOAuthToken'
--
-- * 'acvdcFields'
accountsContainersVersionsDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'containerVersionId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsDelete'
accountsContainersVersionsDelete' pAcvdcContainerId_ pAcvdcContainerVersionId_ pAcvdcAccountId_ =
    AccountsContainersVersionsDelete'
    { _acvdcQuotaUser = Nothing
    , _acvdcPrettyPrint = True
    , _acvdcContainerId = pAcvdcContainerId_
    , _acvdcUserIP = Nothing
    , _acvdcContainerVersionId = pAcvdcContainerVersionId_
    , _acvdcAccountId = pAcvdcAccountId_
    , _acvdcKey = Nothing
    , _acvdcOAuthToken = Nothing
    , _acvdcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvdcQuotaUser :: Lens' AccountsContainersVersionsDelete' (Maybe Text)
acvdcQuotaUser
  = lens _acvdcQuotaUser
      (\ s a -> s{_acvdcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvdcPrettyPrint :: Lens' AccountsContainersVersionsDelete' Bool
acvdcPrettyPrint
  = lens _acvdcPrettyPrint
      (\ s a -> s{_acvdcPrettyPrint = a})

-- | The GTM Container ID.
acvdcContainerId :: Lens' AccountsContainersVersionsDelete' Text
acvdcContainerId
  = lens _acvdcContainerId
      (\ s a -> s{_acvdcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvdcUserIP :: Lens' AccountsContainersVersionsDelete' (Maybe Text)
acvdcUserIP
  = lens _acvdcUserIP (\ s a -> s{_acvdcUserIP = a})

-- | The GTM Container Version ID.
acvdcContainerVersionId :: Lens' AccountsContainersVersionsDelete' Text
acvdcContainerVersionId
  = lens _acvdcContainerVersionId
      (\ s a -> s{_acvdcContainerVersionId = a})

-- | The GTM Account ID.
acvdcAccountId :: Lens' AccountsContainersVersionsDelete' Text
acvdcAccountId
  = lens _acvdcAccountId
      (\ s a -> s{_acvdcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvdcKey :: Lens' AccountsContainersVersionsDelete' (Maybe Key)
acvdcKey = lens _acvdcKey (\ s a -> s{_acvdcKey = a})

-- | OAuth 2.0 token for the current user.
acvdcOAuthToken :: Lens' AccountsContainersVersionsDelete' (Maybe OAuthToken)
acvdcOAuthToken
  = lens _acvdcOAuthToken
      (\ s a -> s{_acvdcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvdcFields :: Lens' AccountsContainersVersionsDelete' (Maybe Text)
acvdcFields
  = lens _acvdcFields (\ s a -> s{_acvdcFields = a})

instance GoogleAuth AccountsContainersVersionsDelete'
         where
        authKey = acvdcKey . _Just
        authToken = acvdcOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVersionsDelete' where
        type Rs AccountsContainersVersionsDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersVersionsDelete'{..}
          = go _acvdcQuotaUser (Just _acvdcPrettyPrint)
              _acvdcContainerId
              _acvdcUserIP
              _acvdcContainerVersionId
              _acvdcAccountId
              _acvdcKey
              _acvdcOAuthToken
              _acvdcFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersVersionsDeleteResource)
                      r
                      u
