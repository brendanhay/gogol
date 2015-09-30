{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GroupsSettings.Groups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one resource by id.
--
-- /See:/ <https://developers.google.com/google-apps/groups-settings/get_started Groups Settings API Reference> for @GroupsSettingsGroupsGet@.
module GroupsSettings.Groups.Get
    (
    -- * REST Resource
      GroupsGetAPI

    -- * Creating a Request
    , groupsGet
    , GroupsGet

    -- * Request Lenses
    , ggQuotaUser
    , ggPrettyPrint
    , ggUserIp
    , ggKey
    , ggOauthToken
    , ggGroupUniqueId
    , ggFields
    , ggAlt
    ) where

import           Network.Google.GroupsSettings.Types
import           Network.Google.Prelude

-- | A resource alias for @GroupsSettingsGroupsGet@ which the
-- 'GroupsGet' request conforms to.
type GroupsGetAPI =
     Capture "groupUniqueId" Text :> Get '[JSON] Groups

-- | Gets one resource by id.
--
-- /See:/ 'groupsGet' smart constructor.
data GroupsGet = GroupsGet
    { _ggQuotaUser     :: !(Maybe Text)
    , _ggPrettyPrint   :: !Bool
    , _ggUserIp        :: !(Maybe Text)
    , _ggKey           :: !(Maybe Text)
    , _ggOauthToken    :: !(Maybe Text)
    , _ggGroupUniqueId :: !Text
    , _ggFields        :: !(Maybe Text)
    , _ggAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggQuotaUser'
--
-- * 'ggPrettyPrint'
--
-- * 'ggUserIp'
--
-- * 'ggKey'
--
-- * 'ggOauthToken'
--
-- * 'ggGroupUniqueId'
--
-- * 'ggFields'
--
-- * 'ggAlt'
groupsGet
    :: Text -- ^ 'groupUniqueId'
    -> GroupsGet
groupsGet pGgGroupUniqueId_ =
    GroupsGet
    { _ggQuotaUser = Nothing
    , _ggPrettyPrint = True
    , _ggUserIp = Nothing
    , _ggKey = Nothing
    , _ggOauthToken = Nothing
    , _ggGroupUniqueId = pGgGroupUniqueId_
    , _ggFields = Nothing
    , _ggAlt = "atom"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ggQuotaUser :: Lens' GroupsGet' (Maybe Text)
ggQuotaUser
  = lens _ggQuotaUser (\ s a -> s{_ggQuotaUser = a})

-- | Returns response with indentations and line breaks.
ggPrettyPrint :: Lens' GroupsGet' Bool
ggPrettyPrint
  = lens _ggPrettyPrint
      (\ s a -> s{_ggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ggUserIp :: Lens' GroupsGet' (Maybe Text)
ggUserIp = lens _ggUserIp (\ s a -> s{_ggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ggKey :: Lens' GroupsGet' (Maybe Text)
ggKey = lens _ggKey (\ s a -> s{_ggKey = a})

-- | OAuth 2.0 token for the current user.
ggOauthToken :: Lens' GroupsGet' (Maybe Text)
ggOauthToken
  = lens _ggOauthToken (\ s a -> s{_ggOauthToken = a})

-- | The resource ID
ggGroupUniqueId :: Lens' GroupsGet' Text
ggGroupUniqueId
  = lens _ggGroupUniqueId
      (\ s a -> s{_ggGroupUniqueId = a})

-- | Selector specifying which fields to include in a partial response.
ggFields :: Lens' GroupsGet' (Maybe Text)
ggFields = lens _ggFields (\ s a -> s{_ggFields = a})

-- | Data format for the response.
ggAlt :: Lens' GroupsGet' Text
ggAlt = lens _ggAlt (\ s a -> s{_ggAlt = a})

instance GoogleRequest GroupsGet' where
        type Rs GroupsGet' = Groups
        request = requestWithRoute defReq groupsSettingsURL
        requestWithRoute r u GroupsGet{..}
          = go _ggQuotaUser _ggPrettyPrint _ggUserIp _ggKey
              _ggOauthToken
              _ggGroupUniqueId
              _ggFields
              _ggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsGetAPI) r u
