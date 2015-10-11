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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersVersionsList@.
module Network.Google.Resource.TagManager.Accounts.Containers.Versions.List
    (
    -- * REST Resource
      AccountsContainersVersionsListResource

    -- * Creating a Request
    , accountsContainersVersionsList'
    , AccountsContainersVersionsList'

    -- * Request Lenses
    , acvlQuotaUser
    , acvlPrettyPrint
    , acvlContainerId
    , acvlUserIP
    , acvlHeaders
    , acvlAccountId
    , acvlKey
    , acvlOAuthToken
    , acvlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersVersionsList@ method which the
-- 'AccountsContainersVersionsList'' request conforms to.
type AccountsContainersVersionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "versions" :>
               QueryParam "headers" Bool :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'accountsContainersVersionsList'' smart constructor.
data AccountsContainersVersionsList' = AccountsContainersVersionsList'
    { _acvlQuotaUser   :: !(Maybe Text)
    , _acvlPrettyPrint :: !Bool
    , _acvlContainerId :: !Text
    , _acvlUserIP      :: !(Maybe Text)
    , _acvlHeaders     :: !Bool
    , _acvlAccountId   :: !Text
    , _acvlKey         :: !(Maybe AuthKey)
    , _acvlOAuthToken  :: !(Maybe OAuthToken)
    , _acvlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acvlQuotaUser'
--
-- * 'acvlPrettyPrint'
--
-- * 'acvlContainerId'
--
-- * 'acvlUserIP'
--
-- * 'acvlHeaders'
--
-- * 'acvlAccountId'
--
-- * 'acvlKey'
--
-- * 'acvlOAuthToken'
--
-- * 'acvlFields'
accountsContainersVersionsList'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersVersionsList'
accountsContainersVersionsList' pAcvlContainerId_ pAcvlAccountId_ =
    AccountsContainersVersionsList'
    { _acvlQuotaUser = Nothing
    , _acvlPrettyPrint = True
    , _acvlContainerId = pAcvlContainerId_
    , _acvlUserIP = Nothing
    , _acvlHeaders = False
    , _acvlAccountId = pAcvlAccountId_
    , _acvlKey = Nothing
    , _acvlOAuthToken = Nothing
    , _acvlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acvlQuotaUser :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlQuotaUser
  = lens _acvlQuotaUser
      (\ s a -> s{_acvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
acvlPrettyPrint :: Lens' AccountsContainersVersionsList' Bool
acvlPrettyPrint
  = lens _acvlPrettyPrint
      (\ s a -> s{_acvlPrettyPrint = a})

-- | The GTM Container ID.
acvlContainerId :: Lens' AccountsContainersVersionsList' Text
acvlContainerId
  = lens _acvlContainerId
      (\ s a -> s{_acvlContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acvlUserIP :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlUserIP
  = lens _acvlUserIP (\ s a -> s{_acvlUserIP = a})

-- | Retrieve headers only when true.
acvlHeaders :: Lens' AccountsContainersVersionsList' Bool
acvlHeaders
  = lens _acvlHeaders (\ s a -> s{_acvlHeaders = a})

-- | The GTM Account ID.
acvlAccountId :: Lens' AccountsContainersVersionsList' Text
acvlAccountId
  = lens _acvlAccountId
      (\ s a -> s{_acvlAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acvlKey :: Lens' AccountsContainersVersionsList' (Maybe AuthKey)
acvlKey = lens _acvlKey (\ s a -> s{_acvlKey = a})

-- | OAuth 2.0 token for the current user.
acvlOAuthToken :: Lens' AccountsContainersVersionsList' (Maybe OAuthToken)
acvlOAuthToken
  = lens _acvlOAuthToken
      (\ s a -> s{_acvlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acvlFields :: Lens' AccountsContainersVersionsList' (Maybe Text)
acvlFields
  = lens _acvlFields (\ s a -> s{_acvlFields = a})

instance GoogleAuth AccountsContainersVersionsList'
         where
        _AuthKey = acvlKey . _Just
        _AuthToken = acvlOAuthToken . _Just

instance GoogleRequest
         AccountsContainersVersionsList' where
        type Rs AccountsContainersVersionsList' =
             ListContainerVersionsResponse
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersVersionsList'{..}
          = go _acvlAccountId _acvlContainerId
              (Just _acvlHeaders)
              _acvlQuotaUser
              (Just _acvlPrettyPrint)
              _acvlUserIP
              _acvlFields
              _acvlKey
              _acvlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersVersionsListResource)
                      rq
