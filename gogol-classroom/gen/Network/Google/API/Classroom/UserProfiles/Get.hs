{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Classroom.UserProfiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a user profile. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- this user profile or if no profile exists with the requested ID or for
-- [general user permission errors][User Permission Errors].
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.get@.
module Network.Google.API.Classroom.UserProfiles.Get
    (
    -- * REST Resource
      UserProfilesGetAPI

    -- * Creating a Request
    , userProfilesGet'
    , UserProfilesGet'

    -- * Request Lenses
    , upgXgafv
    , upgQuotaUser
    , upgPrettyPrint
    , upgUploadProtocol
    , upgPp
    , upgAccessToken
    , upgUploadType
    , upgUserId
    , upgBearerToken
    , upgKey
    , upgOauthToken
    , upgFields
    , upgCallback
    , upgAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for classroom.userProfiles.get which the
-- 'UserProfilesGet'' request conforms to.
type UserProfilesGetAPI =
     "v1" :>
       "userProfiles" :>
         Capture "userId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] UserProfile

-- | Returns a user profile. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- this user profile or if no profile exists with the requested ID or for
-- [general user permission errors][User Permission Errors].
--
-- /See:/ 'userProfilesGet'' smart constructor.
data UserProfilesGet' = UserProfilesGet'
    { _upgXgafv          :: !(Maybe Text)
    , _upgQuotaUser      :: !(Maybe Text)
    , _upgPrettyPrint    :: !Bool
    , _upgUploadProtocol :: !(Maybe Text)
    , _upgPp             :: !Bool
    , _upgAccessToken    :: !(Maybe Text)
    , _upgUploadType     :: !(Maybe Text)
    , _upgUserId         :: !Text
    , _upgBearerToken    :: !(Maybe Text)
    , _upgKey            :: !(Maybe Text)
    , _upgOauthToken     :: !(Maybe Text)
    , _upgFields         :: !(Maybe Text)
    , _upgCallback       :: !(Maybe Text)
    , _upgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgXgafv'
--
-- * 'upgQuotaUser'
--
-- * 'upgPrettyPrint'
--
-- * 'upgUploadProtocol'
--
-- * 'upgPp'
--
-- * 'upgAccessToken'
--
-- * 'upgUploadType'
--
-- * 'upgUserId'
--
-- * 'upgBearerToken'
--
-- * 'upgKey'
--
-- * 'upgOauthToken'
--
-- * 'upgFields'
--
-- * 'upgCallback'
--
-- * 'upgAlt'
userProfilesGet'
    :: Text -- ^ 'userId'
    -> UserProfilesGet'
userProfilesGet' pUpgUserId_ =
    UserProfilesGet'
    { _upgXgafv = Nothing
    , _upgQuotaUser = Nothing
    , _upgPrettyPrint = True
    , _upgUploadProtocol = Nothing
    , _upgPp = True
    , _upgAccessToken = Nothing
    , _upgUploadType = Nothing
    , _upgUserId = pUpgUserId_
    , _upgBearerToken = Nothing
    , _upgKey = Nothing
    , _upgOauthToken = Nothing
    , _upgFields = Nothing
    , _upgCallback = Nothing
    , _upgAlt = "json"
    }

-- | V1 error format.
upgXgafv :: Lens' UserProfilesGet' (Maybe Text)
upgXgafv = lens _upgXgafv (\ s a -> s{_upgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
upgQuotaUser :: Lens' UserProfilesGet' (Maybe Text)
upgQuotaUser
  = lens _upgQuotaUser (\ s a -> s{_upgQuotaUser = a})

-- | Returns response with indentations and line breaks.
upgPrettyPrint :: Lens' UserProfilesGet' Bool
upgPrettyPrint
  = lens _upgPrettyPrint
      (\ s a -> s{_upgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upgUploadProtocol :: Lens' UserProfilesGet' (Maybe Text)
upgUploadProtocol
  = lens _upgUploadProtocol
      (\ s a -> s{_upgUploadProtocol = a})

-- | Pretty-print response.
upgPp :: Lens' UserProfilesGet' Bool
upgPp = lens _upgPp (\ s a -> s{_upgPp = a})

-- | OAuth access token.
upgAccessToken :: Lens' UserProfilesGet' (Maybe Text)
upgAccessToken
  = lens _upgAccessToken
      (\ s a -> s{_upgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upgUploadType :: Lens' UserProfilesGet' (Maybe Text)
upgUploadType
  = lens _upgUploadType
      (\ s a -> s{_upgUploadType = a})

-- | Identifier of the profile to return. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
upgUserId :: Lens' UserProfilesGet' Text
upgUserId
  = lens _upgUserId (\ s a -> s{_upgUserId = a})

-- | OAuth bearer token.
upgBearerToken :: Lens' UserProfilesGet' (Maybe Text)
upgBearerToken
  = lens _upgBearerToken
      (\ s a -> s{_upgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upgKey :: Lens' UserProfilesGet' (Maybe Text)
upgKey = lens _upgKey (\ s a -> s{_upgKey = a})

-- | OAuth 2.0 token for the current user.
upgOauthToken :: Lens' UserProfilesGet' (Maybe Text)
upgOauthToken
  = lens _upgOauthToken
      (\ s a -> s{_upgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
upgFields :: Lens' UserProfilesGet' (Maybe Text)
upgFields
  = lens _upgFields (\ s a -> s{_upgFields = a})

-- | JSONP
upgCallback :: Lens' UserProfilesGet' (Maybe Text)
upgCallback
  = lens _upgCallback (\ s a -> s{_upgCallback = a})

-- | Data format for response.
upgAlt :: Lens' UserProfilesGet' Text
upgAlt = lens _upgAlt (\ s a -> s{_upgAlt = a})

instance GoogleRequest UserProfilesGet' where
        type Rs UserProfilesGet' = UserProfile
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u UserProfilesGet'{..}
          = go _upgXgafv _upgQuotaUser (Just _upgPrettyPrint)
              _upgUploadProtocol
              (Just _upgPp)
              _upgAccessToken
              _upgUploadType
              _upgUserId
              _upgBearerToken
              _upgKey
              _upgOauthToken
              _upgFields
              _upgCallback
              (Just _upgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UserProfilesGetAPI)
                      r
                      u
