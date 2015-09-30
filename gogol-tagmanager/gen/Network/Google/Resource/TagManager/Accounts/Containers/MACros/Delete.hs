{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.MACros.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersMACrosDelete@.
module TagManager.Accounts.Containers.MACros.Delete
    (
    -- * REST Resource
      AccountsContainersMacrosDeleteAPI

    -- * Creating a Request
    , accountsContainersMACrosDelete
    , AccountsContainersMACrosDelete

    -- * Request Lenses
    , acmacdQuotaUser
    , acmacdPrettyPrint
    , acmacdContainerId
    , acmacdUserIp
    , acmacdAccountId
    , acmacdKey
    , acmacdMacroId
    , acmacdOauthToken
    , acmacdFields
    , acmacdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersMACrosDelete@ which the
-- 'AccountsContainersMACrosDelete' request conforms to.
type AccountsContainersMacrosDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :> Delete '[JSON] ()

-- | Deletes a GTM Macro.
--
-- /See:/ 'accountsContainersMACrosDelete' smart constructor.
data AccountsContainersMACrosDelete = AccountsContainersMACrosDelete
    { _acmacdQuotaUser   :: !(Maybe Text)
    , _acmacdPrettyPrint :: !Bool
    , _acmacdContainerId :: !Text
    , _acmacdUserIp      :: !(Maybe Text)
    , _acmacdAccountId   :: !Text
    , _acmacdKey         :: !(Maybe Text)
    , _acmacdMacroId     :: !Text
    , _acmacdOauthToken  :: !(Maybe Text)
    , _acmacdFields      :: !(Maybe Text)
    , _acmacdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMACrosDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmacdQuotaUser'
--
-- * 'acmacdPrettyPrint'
--
-- * 'acmacdContainerId'
--
-- * 'acmacdUserIp'
--
-- * 'acmacdAccountId'
--
-- * 'acmacdKey'
--
-- * 'acmacdMacroId'
--
-- * 'acmacdOauthToken'
--
-- * 'acmacdFields'
--
-- * 'acmacdAlt'
accountsContainersMACrosDelete
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMACrosDelete
accountsContainersMACrosDelete pAcmacdContainerId_ pAcmacdAccountId_ pAcmacdMacroId_ =
    AccountsContainersMACrosDelete
    { _acmacdQuotaUser = Nothing
    , _acmacdPrettyPrint = True
    , _acmacdContainerId = pAcmacdContainerId_
    , _acmacdUserIp = Nothing
    , _acmacdAccountId = pAcmacdAccountId_
    , _acmacdKey = Nothing
    , _acmacdMacroId = pAcmacdMacroId_
    , _acmacdOauthToken = Nothing
    , _acmacdFields = Nothing
    , _acmacdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmacdQuotaUser :: Lens' AccountsContainersMACrosDelete' (Maybe Text)
acmacdQuotaUser
  = lens _acmacdQuotaUser
      (\ s a -> s{_acmacdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmacdPrettyPrint :: Lens' AccountsContainersMACrosDelete' Bool
acmacdPrettyPrint
  = lens _acmacdPrettyPrint
      (\ s a -> s{_acmacdPrettyPrint = a})

-- | The GTM Container ID.
acmacdContainerId :: Lens' AccountsContainersMACrosDelete' Text
acmacdContainerId
  = lens _acmacdContainerId
      (\ s a -> s{_acmacdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmacdUserIp :: Lens' AccountsContainersMACrosDelete' (Maybe Text)
acmacdUserIp
  = lens _acmacdUserIp (\ s a -> s{_acmacdUserIp = a})

-- | The GTM Account ID.
acmacdAccountId :: Lens' AccountsContainersMACrosDelete' Text
acmacdAccountId
  = lens _acmacdAccountId
      (\ s a -> s{_acmacdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmacdKey :: Lens' AccountsContainersMACrosDelete' (Maybe Text)
acmacdKey
  = lens _acmacdKey (\ s a -> s{_acmacdKey = a})

-- | The GTM Macro ID.
acmacdMacroId :: Lens' AccountsContainersMACrosDelete' Text
acmacdMacroId
  = lens _acmacdMacroId
      (\ s a -> s{_acmacdMacroId = a})

-- | OAuth 2.0 token for the current user.
acmacdOauthToken :: Lens' AccountsContainersMACrosDelete' (Maybe Text)
acmacdOauthToken
  = lens _acmacdOauthToken
      (\ s a -> s{_acmacdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmacdFields :: Lens' AccountsContainersMACrosDelete' (Maybe Text)
acmacdFields
  = lens _acmacdFields (\ s a -> s{_acmacdFields = a})

-- | Data format for the response.
acmacdAlt :: Lens' AccountsContainersMACrosDelete' Text
acmacdAlt
  = lens _acmacdAlt (\ s a -> s{_acmacdAlt = a})

instance GoogleRequest
         AccountsContainersMACrosDelete' where
        type Rs AccountsContainersMACrosDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMACrosDelete{..}
          = go _acmacdQuotaUser _acmacdPrettyPrint
              _acmacdContainerId
              _acmacdUserIp
              _acmacdAccountId
              _acmacdKey
              _acmacdMacroId
              _acmacdOauthToken
              _acmacdFields
              _acmacdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersMacrosDeleteAPI)
                      r
                      u
