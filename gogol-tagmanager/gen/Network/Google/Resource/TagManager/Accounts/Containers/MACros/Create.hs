{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.MACros.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersMACrosCreate@.
module TagManager.Accounts.Containers.MACros.Create
    (
    -- * REST Resource
      AccountsContainersMacrosCreateAPI

    -- * Creating a Request
    , accountsContainersMACrosCreate
    , AccountsContainersMACrosCreate

    -- * Request Lenses
    , acmaccQuotaUser
    , acmaccPrettyPrint
    , acmaccContainerId
    , acmaccUserIp
    , acmaccAccountId
    , acmaccKey
    , acmaccOauthToken
    , acmaccFields
    , acmaccAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersMACrosCreate@ which the
-- 'AccountsContainersMACrosCreate' request conforms to.
type AccountsContainersMacrosCreateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :> Post '[JSON] MACro

-- | Creates a GTM Macro.
--
-- /See:/ 'accountsContainersMACrosCreate' smart constructor.
data AccountsContainersMACrosCreate = AccountsContainersMACrosCreate
    { _acmaccQuotaUser   :: !(Maybe Text)
    , _acmaccPrettyPrint :: !Bool
    , _acmaccContainerId :: !Text
    , _acmaccUserIp      :: !(Maybe Text)
    , _acmaccAccountId   :: !Text
    , _acmaccKey         :: !(Maybe Text)
    , _acmaccOauthToken  :: !(Maybe Text)
    , _acmaccFields      :: !(Maybe Text)
    , _acmaccAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMACrosCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmaccQuotaUser'
--
-- * 'acmaccPrettyPrint'
--
-- * 'acmaccContainerId'
--
-- * 'acmaccUserIp'
--
-- * 'acmaccAccountId'
--
-- * 'acmaccKey'
--
-- * 'acmaccOauthToken'
--
-- * 'acmaccFields'
--
-- * 'acmaccAlt'
accountsContainersMACrosCreate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMACrosCreate
accountsContainersMACrosCreate pAcmaccContainerId_ pAcmaccAccountId_ =
    AccountsContainersMACrosCreate
    { _acmaccQuotaUser = Nothing
    , _acmaccPrettyPrint = True
    , _acmaccContainerId = pAcmaccContainerId_
    , _acmaccUserIp = Nothing
    , _acmaccAccountId = pAcmaccAccountId_
    , _acmaccKey = Nothing
    , _acmaccOauthToken = Nothing
    , _acmaccFields = Nothing
    , _acmaccAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmaccQuotaUser :: Lens' AccountsContainersMACrosCreate' (Maybe Text)
acmaccQuotaUser
  = lens _acmaccQuotaUser
      (\ s a -> s{_acmaccQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmaccPrettyPrint :: Lens' AccountsContainersMACrosCreate' Bool
acmaccPrettyPrint
  = lens _acmaccPrettyPrint
      (\ s a -> s{_acmaccPrettyPrint = a})

-- | The GTM Container ID.
acmaccContainerId :: Lens' AccountsContainersMACrosCreate' Text
acmaccContainerId
  = lens _acmaccContainerId
      (\ s a -> s{_acmaccContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmaccUserIp :: Lens' AccountsContainersMACrosCreate' (Maybe Text)
acmaccUserIp
  = lens _acmaccUserIp (\ s a -> s{_acmaccUserIp = a})

-- | The GTM Account ID.
acmaccAccountId :: Lens' AccountsContainersMACrosCreate' Text
acmaccAccountId
  = lens _acmaccAccountId
      (\ s a -> s{_acmaccAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmaccKey :: Lens' AccountsContainersMACrosCreate' (Maybe Text)
acmaccKey
  = lens _acmaccKey (\ s a -> s{_acmaccKey = a})

-- | OAuth 2.0 token for the current user.
acmaccOauthToken :: Lens' AccountsContainersMACrosCreate' (Maybe Text)
acmaccOauthToken
  = lens _acmaccOauthToken
      (\ s a -> s{_acmaccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmaccFields :: Lens' AccountsContainersMACrosCreate' (Maybe Text)
acmaccFields
  = lens _acmaccFields (\ s a -> s{_acmaccFields = a})

-- | Data format for the response.
acmaccAlt :: Lens' AccountsContainersMACrosCreate' Text
acmaccAlt
  = lens _acmaccAlt (\ s a -> s{_acmaccAlt = a})

instance GoogleRequest
         AccountsContainersMACrosCreate' where
        type Rs AccountsContainersMACrosCreate' = MACro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMACrosCreate{..}
          = go _acmaccQuotaUser _acmaccPrettyPrint
              _acmaccContainerId
              _acmaccUserIp
              _acmaccAccountId
              _acmaccKey
              _acmaccOauthToken
              _acmaccFields
              _acmaccAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersMacrosCreateAPI)
                      r
                      u
