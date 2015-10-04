{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Classroom.Invitations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to view
-- the requested invitation or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no invitation exists with the
-- requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomInvitationsGet@.
module Network.Google.Resource.Classroom.Invitations.Get
    (
    -- * REST Resource
      InvitationsGetResource

    -- * Creating a Request
    , invitationsGet'
    , InvitationsGet'

    -- * Request Lenses
    , igXgafv
    , igQuotaUser
    , igPrettyPrint
    , igUploadProtocol
    , igPp
    , igAccessToken
    , igUploadType
    , igBearerToken
    , igKey
    , igId
    , igOAuthToken
    , igFields
    , igCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomInvitationsGet@ which the
-- 'InvitationsGet'' request conforms to.
type InvitationsGetResource =
     "v1" :>
       "invitations" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Invitation

-- | Returns an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to view
-- the requested invitation or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no invitation exists with the
-- requested ID.
--
-- /See:/ 'invitationsGet'' smart constructor.
data InvitationsGet' = InvitationsGet'
    { _igXgafv          :: !(Maybe Text)
    , _igQuotaUser      :: !(Maybe Text)
    , _igPrettyPrint    :: !Bool
    , _igUploadProtocol :: !(Maybe Text)
    , _igPp             :: !Bool
    , _igAccessToken    :: !(Maybe Text)
    , _igUploadType     :: !(Maybe Text)
    , _igBearerToken    :: !(Maybe Text)
    , _igKey            :: !(Maybe Key)
    , _igId             :: !Text
    , _igOAuthToken     :: !(Maybe OAuthToken)
    , _igFields         :: !(Maybe Text)
    , _igCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igXgafv'
--
-- * 'igQuotaUser'
--
-- * 'igPrettyPrint'
--
-- * 'igUploadProtocol'
--
-- * 'igPp'
--
-- * 'igAccessToken'
--
-- * 'igUploadType'
--
-- * 'igBearerToken'
--
-- * 'igKey'
--
-- * 'igId'
--
-- * 'igOAuthToken'
--
-- * 'igFields'
--
-- * 'igCallback'
invitationsGet'
    :: Text -- ^ 'id'
    -> InvitationsGet'
invitationsGet' pIgId_ =
    InvitationsGet'
    { _igXgafv = Nothing
    , _igQuotaUser = Nothing
    , _igPrettyPrint = True
    , _igUploadProtocol = Nothing
    , _igPp = True
    , _igAccessToken = Nothing
    , _igUploadType = Nothing
    , _igBearerToken = Nothing
    , _igKey = Nothing
    , _igId = pIgId_
    , _igOAuthToken = Nothing
    , _igFields = Nothing
    , _igCallback = Nothing
    }

-- | V1 error format.
igXgafv :: Lens' InvitationsGet' (Maybe Text)
igXgafv = lens _igXgafv (\ s a -> s{_igXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
igQuotaUser :: Lens' InvitationsGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' InvitationsGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
igUploadProtocol :: Lens' InvitationsGet' (Maybe Text)
igUploadProtocol
  = lens _igUploadProtocol
      (\ s a -> s{_igUploadProtocol = a})

-- | Pretty-print response.
igPp :: Lens' InvitationsGet' Bool
igPp = lens _igPp (\ s a -> s{_igPp = a})

-- | OAuth access token.
igAccessToken :: Lens' InvitationsGet' (Maybe Text)
igAccessToken
  = lens _igAccessToken
      (\ s a -> s{_igAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
igUploadType :: Lens' InvitationsGet' (Maybe Text)
igUploadType
  = lens _igUploadType (\ s a -> s{_igUploadType = a})

-- | OAuth bearer token.
igBearerToken :: Lens' InvitationsGet' (Maybe Text)
igBearerToken
  = lens _igBearerToken
      (\ s a -> s{_igBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' InvitationsGet' (Maybe Key)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | Identifier of the invitation to return.
igId :: Lens' InvitationsGet' Text
igId = lens _igId (\ s a -> s{_igId = a})

-- | OAuth 2.0 token for the current user.
igOAuthToken :: Lens' InvitationsGet' (Maybe OAuthToken)
igOAuthToken
  = lens _igOAuthToken (\ s a -> s{_igOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' InvitationsGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

-- | JSONP
igCallback :: Lens' InvitationsGet' (Maybe Text)
igCallback
  = lens _igCallback (\ s a -> s{_igCallback = a})

instance GoogleAuth InvitationsGet' where
        authKey = igKey . _Just
        authToken = igOAuthToken . _Just

instance GoogleRequest InvitationsGet' where
        type Rs InvitationsGet' = Invitation
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u InvitationsGet'{..}
          = go _igId _igXgafv _igUploadProtocol (Just _igPp)
              _igAccessToken
              _igUploadType
              _igBearerToken
              _igCallback
              _igQuotaUser
              (Just _igPrettyPrint)
              _igFields
              _igKey
              _igOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InvitationsGetResource)
                      r
                      u
