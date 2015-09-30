{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.MACros.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersMACrosGet@.
module TagManager.Accounts.Containers.MACros.Get
    (
    -- * REST Resource
      AccountsContainersMacrosGetAPI

    -- * Creating a Request
    , accountsContainersMACrosGet
    , AccountsContainersMACrosGet

    -- * Request Lenses
    , acmacgQuotaUser
    , acmacgPrettyPrint
    , acmacgContainerId
    , acmacgUserIp
    , acmacgAccountId
    , acmacgKey
    , acmacgMacroId
    , acmacgOauthToken
    , acmacgFields
    , acmacgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersMACrosGet@ which the
-- 'AccountsContainersMACrosGet' request conforms to.
type AccountsContainersMacrosGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :> Get '[JSON] MACro

-- | Gets a GTM Macro.
--
-- /See:/ 'accountsContainersMACrosGet' smart constructor.
data AccountsContainersMACrosGet = AccountsContainersMACrosGet
    { _acmacgQuotaUser   :: !(Maybe Text)
    , _acmacgPrettyPrint :: !Bool
    , _acmacgContainerId :: !Text
    , _acmacgUserIp      :: !(Maybe Text)
    , _acmacgAccountId   :: !Text
    , _acmacgKey         :: !(Maybe Text)
    , _acmacgMacroId     :: !Text
    , _acmacgOauthToken  :: !(Maybe Text)
    , _acmacgFields      :: !(Maybe Text)
    , _acmacgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMACrosGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmacgQuotaUser'
--
-- * 'acmacgPrettyPrint'
--
-- * 'acmacgContainerId'
--
-- * 'acmacgUserIp'
--
-- * 'acmacgAccountId'
--
-- * 'acmacgKey'
--
-- * 'acmacgMacroId'
--
-- * 'acmacgOauthToken'
--
-- * 'acmacgFields'
--
-- * 'acmacgAlt'
accountsContainersMACrosGet
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMACrosGet
accountsContainersMACrosGet pAcmacgContainerId_ pAcmacgAccountId_ pAcmacgMacroId_ =
    AccountsContainersMACrosGet
    { _acmacgQuotaUser = Nothing
    , _acmacgPrettyPrint = True
    , _acmacgContainerId = pAcmacgContainerId_
    , _acmacgUserIp = Nothing
    , _acmacgAccountId = pAcmacgAccountId_
    , _acmacgKey = Nothing
    , _acmacgMacroId = pAcmacgMacroId_
    , _acmacgOauthToken = Nothing
    , _acmacgFields = Nothing
    , _acmacgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmacgQuotaUser :: Lens' AccountsContainersMACrosGet' (Maybe Text)
acmacgQuotaUser
  = lens _acmacgQuotaUser
      (\ s a -> s{_acmacgQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmacgPrettyPrint :: Lens' AccountsContainersMACrosGet' Bool
acmacgPrettyPrint
  = lens _acmacgPrettyPrint
      (\ s a -> s{_acmacgPrettyPrint = a})

-- | The GTM Container ID.
acmacgContainerId :: Lens' AccountsContainersMACrosGet' Text
acmacgContainerId
  = lens _acmacgContainerId
      (\ s a -> s{_acmacgContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmacgUserIp :: Lens' AccountsContainersMACrosGet' (Maybe Text)
acmacgUserIp
  = lens _acmacgUserIp (\ s a -> s{_acmacgUserIp = a})

-- | The GTM Account ID.
acmacgAccountId :: Lens' AccountsContainersMACrosGet' Text
acmacgAccountId
  = lens _acmacgAccountId
      (\ s a -> s{_acmacgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmacgKey :: Lens' AccountsContainersMACrosGet' (Maybe Text)
acmacgKey
  = lens _acmacgKey (\ s a -> s{_acmacgKey = a})

-- | The GTM Macro ID.
acmacgMacroId :: Lens' AccountsContainersMACrosGet' Text
acmacgMacroId
  = lens _acmacgMacroId
      (\ s a -> s{_acmacgMacroId = a})

-- | OAuth 2.0 token for the current user.
acmacgOauthToken :: Lens' AccountsContainersMACrosGet' (Maybe Text)
acmacgOauthToken
  = lens _acmacgOauthToken
      (\ s a -> s{_acmacgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmacgFields :: Lens' AccountsContainersMACrosGet' (Maybe Text)
acmacgFields
  = lens _acmacgFields (\ s a -> s{_acmacgFields = a})

-- | Data format for the response.
acmacgAlt :: Lens' AccountsContainersMACrosGet' Text
acmacgAlt
  = lens _acmacgAlt (\ s a -> s{_acmacgAlt = a})

instance GoogleRequest AccountsContainersMACrosGet'
         where
        type Rs AccountsContainersMACrosGet' = MACro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersMACrosGet{..}
          = go _acmacgQuotaUser _acmacgPrettyPrint
              _acmacgContainerId
              _acmacgUserIp
              _acmacgAccountId
              _acmacgKey
              _acmacgMacroId
              _acmacgOauthToken
              _acmacgFields
              _acmacgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersMacrosGetAPI)
                      r
                      u
