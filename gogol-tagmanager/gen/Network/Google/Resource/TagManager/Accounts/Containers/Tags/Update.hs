{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTagsUpdate@.
module TagManager.Accounts.Containers.Tags.Update
    (
    -- * REST Resource
      AccountsContainersTagsUpdateAPI

    -- * Creating a Request
    , accountsContainersTagsUpdate
    , AccountsContainersTagsUpdate

    -- * Request Lenses
    , actucQuotaUser
    , actucPrettyPrint
    , actucContainerId
    , actucUserIp
    , actucFingerprint
    , actucAccountId
    , actucTagId
    , actucKey
    , actucOauthToken
    , actucFields
    , actucAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTagsUpdate@ which the
-- 'AccountsContainersTagsUpdate' request conforms to.
type AccountsContainersTagsUpdateAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "fingerprint" Text :> Put '[JSON] Tag

-- | Updates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsUpdate' smart constructor.
data AccountsContainersTagsUpdate = AccountsContainersTagsUpdate
    { _actucQuotaUser   :: !(Maybe Text)
    , _actucPrettyPrint :: !Bool
    , _actucContainerId :: !Text
    , _actucUserIp      :: !(Maybe Text)
    , _actucFingerprint :: !(Maybe Text)
    , _actucAccountId   :: !Text
    , _actucTagId       :: !Text
    , _actucKey         :: !(Maybe Text)
    , _actucOauthToken  :: !(Maybe Text)
    , _actucFields      :: !(Maybe Text)
    , _actucAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actucQuotaUser'
--
-- * 'actucPrettyPrint'
--
-- * 'actucContainerId'
--
-- * 'actucUserIp'
--
-- * 'actucFingerprint'
--
-- * 'actucAccountId'
--
-- * 'actucTagId'
--
-- * 'actucKey'
--
-- * 'actucOauthToken'
--
-- * 'actucFields'
--
-- * 'actucAlt'
accountsContainersTagsUpdate
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsUpdate
accountsContainersTagsUpdate pActucContainerId_ pActucAccountId_ pActucTagId_ =
    AccountsContainersTagsUpdate
    { _actucQuotaUser = Nothing
    , _actucPrettyPrint = True
    , _actucContainerId = pActucContainerId_
    , _actucUserIp = Nothing
    , _actucFingerprint = Nothing
    , _actucAccountId = pActucAccountId_
    , _actucTagId = pActucTagId_
    , _actucKey = Nothing
    , _actucOauthToken = Nothing
    , _actucFields = Nothing
    , _actucAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actucQuotaUser :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucQuotaUser
  = lens _actucQuotaUser
      (\ s a -> s{_actucQuotaUser = a})

-- | Returns response with indentations and line breaks.
actucPrettyPrint :: Lens' AccountsContainersTagsUpdate' Bool
actucPrettyPrint
  = lens _actucPrettyPrint
      (\ s a -> s{_actucPrettyPrint = a})

-- | The GTM Container ID.
actucContainerId :: Lens' AccountsContainersTagsUpdate' Text
actucContainerId
  = lens _actucContainerId
      (\ s a -> s{_actucContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actucUserIp :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucUserIp
  = lens _actucUserIp (\ s a -> s{_actucUserIp = a})

-- | When provided, this fingerprint must match the fingerprint of the tag in
-- storage.
actucFingerprint :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucFingerprint
  = lens _actucFingerprint
      (\ s a -> s{_actucFingerprint = a})

-- | The GTM Account ID.
actucAccountId :: Lens' AccountsContainersTagsUpdate' Text
actucAccountId
  = lens _actucAccountId
      (\ s a -> s{_actucAccountId = a})

-- | The GTM Tag ID.
actucTagId :: Lens' AccountsContainersTagsUpdate' Text
actucTagId
  = lens _actucTagId (\ s a -> s{_actucTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actucKey :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucKey = lens _actucKey (\ s a -> s{_actucKey = a})

-- | OAuth 2.0 token for the current user.
actucOauthToken :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucOauthToken
  = lens _actucOauthToken
      (\ s a -> s{_actucOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actucFields :: Lens' AccountsContainersTagsUpdate' (Maybe Text)
actucFields
  = lens _actucFields (\ s a -> s{_actucFields = a})

-- | Data format for the response.
actucAlt :: Lens' AccountsContainersTagsUpdate' Text
actucAlt = lens _actucAlt (\ s a -> s{_actucAlt = a})

instance GoogleRequest AccountsContainersTagsUpdate'
         where
        type Rs AccountsContainersTagsUpdate' = Tag
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersTagsUpdate{..}
          = go _actucQuotaUser _actucPrettyPrint
              _actucContainerId
              _actucUserIp
              _actucFingerprint
              _actucAccountId
              _actucTagId
              _actucKey
              _actucOauthToken
              _actucFields
              _actucAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsUpdateAPI)
                      r
                      u
