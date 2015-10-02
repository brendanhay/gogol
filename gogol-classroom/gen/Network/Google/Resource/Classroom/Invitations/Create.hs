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
-- Module      : Network.Google.Resource.Classroom.Invitations.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an invitation. Only one invitation for a user and course may
-- exist at a time. Delete and re-create an invitation to make changes.
-- This method returns the following error codes: * \`PERMISSION_DENIED\`
-- if the requesting user is not permitted to create invitations for this
-- course or for [general user permission errors][User Permission Errors].
-- * \`NOT_FOUND\` if the course or the user does not exist. *
-- \`FAILED_PRECONDITION\` if the requested user\'s account is disabled or
-- if the user already has this role or a role with greater permissions. *
-- \`ALREADY_EXISTS\` if an invitation for the specified user and course
-- already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomInvitationsCreate@.
module Network.Google.Resource.Classroom.Invitations.Create
    (
    -- * REST Resource
      InvitationsCreateResource

    -- * Creating a Request
    , invitationsCreate'
    , InvitationsCreate'

    -- * Request Lenses
    , icXgafv
    , icQuotaUser
    , icPrettyPrint
    , icUploadProtocol
    , icPp
    , icAccessToken
    , icUploadType
    , icInvitation
    , icBearerToken
    , icKey
    , icOAuthToken
    , icFields
    , icCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomInvitationsCreate@ which the
-- 'InvitationsCreate'' request conforms to.
type InvitationsCreateResource =
     "v1" :>
       "invitations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "access_token" Text :>
             QueryParam "bearer_token" Text :>
               QueryParam "callback" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "uploadType" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Invitation :>
                                     Post '[JSON] Invitation

-- | Creates an invitation. Only one invitation for a user and course may
-- exist at a time. Delete and re-create an invitation to make changes.
-- This method returns the following error codes: * \`PERMISSION_DENIED\`
-- if the requesting user is not permitted to create invitations for this
-- course or for [general user permission errors][User Permission Errors].
-- * \`NOT_FOUND\` if the course or the user does not exist. *
-- \`FAILED_PRECONDITION\` if the requested user\'s account is disabled or
-- if the user already has this role or a role with greater permissions. *
-- \`ALREADY_EXISTS\` if an invitation for the specified user and course
-- already exists.
--
-- /See:/ 'invitationsCreate'' smart constructor.
data InvitationsCreate' = InvitationsCreate'
    { _icXgafv          :: !(Maybe Text)
    , _icQuotaUser      :: !(Maybe Text)
    , _icPrettyPrint    :: !Bool
    , _icUploadProtocol :: !(Maybe Text)
    , _icPp             :: !Bool
    , _icAccessToken    :: !(Maybe Text)
    , _icUploadType     :: !(Maybe Text)
    , _icInvitation     :: !Invitation
    , _icBearerToken    :: !(Maybe Text)
    , _icKey            :: !(Maybe Key)
    , _icOAuthToken     :: !(Maybe OAuthToken)
    , _icFields         :: !(Maybe Text)
    , _icCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icXgafv'
--
-- * 'icQuotaUser'
--
-- * 'icPrettyPrint'
--
-- * 'icUploadProtocol'
--
-- * 'icPp'
--
-- * 'icAccessToken'
--
-- * 'icUploadType'
--
-- * 'icInvitation'
--
-- * 'icBearerToken'
--
-- * 'icKey'
--
-- * 'icOAuthToken'
--
-- * 'icFields'
--
-- * 'icCallback'
invitationsCreate'
    :: Invitation -- ^ 'Invitation'
    -> InvitationsCreate'
invitationsCreate' pIcInvitation_ =
    InvitationsCreate'
    { _icXgafv = Nothing
    , _icQuotaUser = Nothing
    , _icPrettyPrint = True
    , _icUploadProtocol = Nothing
    , _icPp = True
    , _icAccessToken = Nothing
    , _icUploadType = Nothing
    , _icInvitation = pIcInvitation_
    , _icBearerToken = Nothing
    , _icKey = Nothing
    , _icOAuthToken = Nothing
    , _icFields = Nothing
    , _icCallback = Nothing
    }

-- | V1 error format.
icXgafv :: Lens' InvitationsCreate' (Maybe Text)
icXgafv = lens _icXgafv (\ s a -> s{_icXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
icQuotaUser :: Lens' InvitationsCreate' (Maybe Text)
icQuotaUser
  = lens _icQuotaUser (\ s a -> s{_icQuotaUser = a})

-- | Returns response with indentations and line breaks.
icPrettyPrint :: Lens' InvitationsCreate' Bool
icPrettyPrint
  = lens _icPrettyPrint
      (\ s a -> s{_icPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
icUploadProtocol :: Lens' InvitationsCreate' (Maybe Text)
icUploadProtocol
  = lens _icUploadProtocol
      (\ s a -> s{_icUploadProtocol = a})

-- | Pretty-print response.
icPp :: Lens' InvitationsCreate' Bool
icPp = lens _icPp (\ s a -> s{_icPp = a})

-- | OAuth access token.
icAccessToken :: Lens' InvitationsCreate' (Maybe Text)
icAccessToken
  = lens _icAccessToken
      (\ s a -> s{_icAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
icUploadType :: Lens' InvitationsCreate' (Maybe Text)
icUploadType
  = lens _icUploadType (\ s a -> s{_icUploadType = a})

-- | Multipart request metadata.
icInvitation :: Lens' InvitationsCreate' Invitation
icInvitation
  = lens _icInvitation (\ s a -> s{_icInvitation = a})

-- | OAuth bearer token.
icBearerToken :: Lens' InvitationsCreate' (Maybe Text)
icBearerToken
  = lens _icBearerToken
      (\ s a -> s{_icBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
icKey :: Lens' InvitationsCreate' (Maybe Key)
icKey = lens _icKey (\ s a -> s{_icKey = a})

-- | OAuth 2.0 token for the current user.
icOAuthToken :: Lens' InvitationsCreate' (Maybe OAuthToken)
icOAuthToken
  = lens _icOAuthToken (\ s a -> s{_icOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
icFields :: Lens' InvitationsCreate' (Maybe Text)
icFields = lens _icFields (\ s a -> s{_icFields = a})

-- | JSONP
icCallback :: Lens' InvitationsCreate' (Maybe Text)
icCallback
  = lens _icCallback (\ s a -> s{_icCallback = a})

instance GoogleAuth InvitationsCreate' where
        authKey = icKey . _Just
        authToken = icOAuthToken . _Just

instance GoogleRequest InvitationsCreate' where
        type Rs InvitationsCreate' = Invitation
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u InvitationsCreate'{..}
          = go _icXgafv _icAccessToken _icBearerToken
              _icCallback
              (Just _icPp)
              _icUploadType
              _icUploadProtocol
              _icQuotaUser
              (Just _icPrettyPrint)
              _icFields
              _icKey
              _icOAuthToken
              (Just AltJSON)
              _icInvitation
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InvitationsCreateResource)
                      r
                      u
