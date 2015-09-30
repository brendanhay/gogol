{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Directory.Groups.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Group. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsPatch@.
module Directory.Groups.Patch
    (
    -- * REST Resource
      GroupsPatchAPI

    -- * Creating a Request
    , groupsPatch
    , GroupsPatch

    -- * Request Lenses
    , gpQuotaUser
    , gpPrettyPrint
    , gpUserIp
    , gpGroupKey
    , gpKey
    , gpOauthToken
    , gpFields
    , gpAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsPatch@ which the
-- 'GroupsPatch' request conforms to.
type GroupsPatchAPI =
     "groups" :>
       Capture "groupKey" Text :> Patch '[JSON] Group

-- | Update Group. This method supports patch semantics.
--
-- /See:/ 'groupsPatch' smart constructor.
data GroupsPatch = GroupsPatch
    { _gpQuotaUser   :: !(Maybe Text)
    , _gpPrettyPrint :: !Bool
    , _gpUserIp      :: !(Maybe Text)
    , _gpGroupKey    :: !Text
    , _gpKey         :: !(Maybe Text)
    , _gpOauthToken  :: !(Maybe Text)
    , _gpFields      :: !(Maybe Text)
    , _gpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpQuotaUser'
--
-- * 'gpPrettyPrint'
--
-- * 'gpUserIp'
--
-- * 'gpGroupKey'
--
-- * 'gpKey'
--
-- * 'gpOauthToken'
--
-- * 'gpFields'
--
-- * 'gpAlt'
groupsPatch
    :: Text -- ^ 'groupKey'
    -> GroupsPatch
groupsPatch pGpGroupKey_ =
    GroupsPatch
    { _gpQuotaUser = Nothing
    , _gpPrettyPrint = True
    , _gpUserIp = Nothing
    , _gpGroupKey = pGpGroupKey_
    , _gpKey = Nothing
    , _gpOauthToken = Nothing
    , _gpFields = Nothing
    , _gpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gpQuotaUser :: Lens' GroupsPatch' (Maybe Text)
gpQuotaUser
  = lens _gpQuotaUser (\ s a -> s{_gpQuotaUser = a})

-- | Returns response with indentations and line breaks.
gpPrettyPrint :: Lens' GroupsPatch' Bool
gpPrettyPrint
  = lens _gpPrettyPrint
      (\ s a -> s{_gpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gpUserIp :: Lens' GroupsPatch' (Maybe Text)
gpUserIp = lens _gpUserIp (\ s a -> s{_gpUserIp = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
gpGroupKey :: Lens' GroupsPatch' Text
gpGroupKey
  = lens _gpGroupKey (\ s a -> s{_gpGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gpKey :: Lens' GroupsPatch' (Maybe Text)
gpKey = lens _gpKey (\ s a -> s{_gpKey = a})

-- | OAuth 2.0 token for the current user.
gpOauthToken :: Lens' GroupsPatch' (Maybe Text)
gpOauthToken
  = lens _gpOauthToken (\ s a -> s{_gpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gpFields :: Lens' GroupsPatch' (Maybe Text)
gpFields = lens _gpFields (\ s a -> s{_gpFields = a})

-- | Data format for the response.
gpAlt :: Lens' GroupsPatch' Text
gpAlt = lens _gpAlt (\ s a -> s{_gpAlt = a})

instance GoogleRequest GroupsPatch' where
        type Rs GroupsPatch' = Group
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsPatch{..}
          = go _gpQuotaUser _gpPrettyPrint _gpUserIp
              _gpGroupKey
              _gpKey
              _gpOauthToken
              _gpFields
              _gpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy GroupsPatchAPI) r u
