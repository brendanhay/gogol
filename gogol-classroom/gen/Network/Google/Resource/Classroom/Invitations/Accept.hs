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
-- Module      : Network.Google.Resource.Classroom.Invitations.Accept
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomInvitationsAccept@.
module Network.Google.Resource.Classroom.Invitations.Accept
    (
    -- * REST Resource
      InvitationsAcceptResource

    -- * Creating a Request
    , invitationsAccept'
    , InvitationsAccept'

    -- * Request Lenses
    , iaXgafv
    , iaQuotaUser
    , iaPrettyPrint
    , iaUploadProtocol
    , iaPp
    , iaAccessToken
    , iaUploadType
    , iaBearerToken
    , iaKey
    , iaId
    , iaOauthToken
    , iaFields
    , iaCallback
    , iaAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomInvitationsAccept@ which the
-- 'InvitationsAccept'' request conforms to.
type InvitationsAcceptResource =
     "v1" :>
       "invitations" :>
         "{id}:accept" :>
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
                                   QueryParam "alt" Text :> Post '[JSON] Empty

-- | Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
--
-- /See:/ 'invitationsAccept'' smart constructor.
data InvitationsAccept' = InvitationsAccept'
    { _iaXgafv          :: !(Maybe Text)
    , _iaQuotaUser      :: !(Maybe Text)
    , _iaPrettyPrint    :: !Bool
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaPp             :: !Bool
    , _iaAccessToken    :: !(Maybe Text)
    , _iaUploadType     :: !(Maybe Text)
    , _iaBearerToken    :: !(Maybe Text)
    , _iaKey            :: !(Maybe Text)
    , _iaId             :: !Text
    , _iaOauthToken     :: !(Maybe Text)
    , _iaFields         :: !(Maybe Text)
    , _iaCallback       :: !(Maybe Text)
    , _iaAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaQuotaUser'
--
-- * 'iaPrettyPrint'
--
-- * 'iaUploadProtocol'
--
-- * 'iaPp'
--
-- * 'iaAccessToken'
--
-- * 'iaUploadType'
--
-- * 'iaBearerToken'
--
-- * 'iaKey'
--
-- * 'iaId'
--
-- * 'iaOauthToken'
--
-- * 'iaFields'
--
-- * 'iaCallback'
--
-- * 'iaAlt'
invitationsAccept'
    :: Text -- ^ 'id'
    -> InvitationsAccept'
invitationsAccept' pIaId_ =
    InvitationsAccept'
    { _iaXgafv = Nothing
    , _iaQuotaUser = Nothing
    , _iaPrettyPrint = True
    , _iaUploadProtocol = Nothing
    , _iaPp = True
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaBearerToken = Nothing
    , _iaKey = Nothing
    , _iaId = pIaId_
    , _iaOauthToken = Nothing
    , _iaFields = Nothing
    , _iaCallback = Nothing
    , _iaAlt = "json"
    }

-- | V1 error format.
iaXgafv :: Lens' InvitationsAccept' (Maybe Text)
iaXgafv = lens _iaXgafv (\ s a -> s{_iaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
iaQuotaUser :: Lens' InvitationsAccept' (Maybe Text)
iaQuotaUser
  = lens _iaQuotaUser (\ s a -> s{_iaQuotaUser = a})

-- | Returns response with indentations and line breaks.
iaPrettyPrint :: Lens' InvitationsAccept' Bool
iaPrettyPrint
  = lens _iaPrettyPrint
      (\ s a -> s{_iaPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iaUploadProtocol :: Lens' InvitationsAccept' (Maybe Text)
iaUploadProtocol
  = lens _iaUploadProtocol
      (\ s a -> s{_iaUploadProtocol = a})

-- | Pretty-print response.
iaPp :: Lens' InvitationsAccept' Bool
iaPp = lens _iaPp (\ s a -> s{_iaPp = a})

-- | OAuth access token.
iaAccessToken :: Lens' InvitationsAccept' (Maybe Text)
iaAccessToken
  = lens _iaAccessToken
      (\ s a -> s{_iaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iaUploadType :: Lens' InvitationsAccept' (Maybe Text)
iaUploadType
  = lens _iaUploadType (\ s a -> s{_iaUploadType = a})

-- | OAuth bearer token.
iaBearerToken :: Lens' InvitationsAccept' (Maybe Text)
iaBearerToken
  = lens _iaBearerToken
      (\ s a -> s{_iaBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iaKey :: Lens' InvitationsAccept' (Maybe Text)
iaKey = lens _iaKey (\ s a -> s{_iaKey = a})

-- | Identifier of the invitation to accept.
iaId :: Lens' InvitationsAccept' Text
iaId = lens _iaId (\ s a -> s{_iaId = a})

-- | OAuth 2.0 token for the current user.
iaOauthToken :: Lens' InvitationsAccept' (Maybe Text)
iaOauthToken
  = lens _iaOauthToken (\ s a -> s{_iaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iaFields :: Lens' InvitationsAccept' (Maybe Text)
iaFields = lens _iaFields (\ s a -> s{_iaFields = a})

-- | JSONP
iaCallback :: Lens' InvitationsAccept' (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

-- | Data format for response.
iaAlt :: Lens' InvitationsAccept' Text
iaAlt = lens _iaAlt (\ s a -> s{_iaAlt = a})

instance GoogleRequest InvitationsAccept' where
        type Rs InvitationsAccept' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u InvitationsAccept'{..}
          = go _iaXgafv _iaQuotaUser (Just _iaPrettyPrint)
              _iaUploadProtocol
              (Just _iaPp)
              _iaAccessToken
              _iaUploadType
              _iaBearerToken
              _iaKey
              _iaId
              _iaOauthToken
              _iaFields
              _iaCallback
              (Just _iaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InvitationsAcceptResource)
                      r
                      u
