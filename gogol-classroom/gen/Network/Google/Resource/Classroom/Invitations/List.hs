{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Classroom.Invitations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of invitations that the requesting user is permitted to
-- view, restricted to those that match the list request. *Note:* At least
-- one of \`user_id\` or \`course_id\` must be supplied. Both fields can be
-- supplied. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` for access errors.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.list@.
module Network.Google.Resource.Classroom.Invitations.List
    (
    -- * REST Resource
      InvitationsListResource

    -- * Creating a Request
    , invitationsList
    , InvitationsList

    -- * Request Lenses
    , ilXgafv
    , ilUploadProtocol
    , ilPp
    , ilCourseId
    , ilAccessToken
    , ilUploadType
    , ilUserId
    , ilBearerToken
    , ilPageToken
    , ilPageSize
    , ilCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.invitations.list@ method which the
-- 'InvitationsList' request conforms to.
type InvitationsListResource =
     "v1" :>
       "invitations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "courseId" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "userId" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListInvitationsResponse

-- | Returns a list of invitations that the requesting user is permitted to
-- view, restricted to those that match the list request. *Note:* At least
-- one of \`user_id\` or \`course_id\` must be supplied. Both fields can be
-- supplied. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` for access errors.
--
-- /See:/ 'invitationsList' smart constructor.
data InvitationsList = InvitationsList'
    { _ilXgafv          :: !(Maybe Text)
    , _ilUploadProtocol :: !(Maybe Text)
    , _ilPp             :: !Bool
    , _ilCourseId       :: !(Maybe Text)
    , _ilAccessToken    :: !(Maybe Text)
    , _ilUploadType     :: !(Maybe Text)
    , _ilUserId         :: !(Maybe Text)
    , _ilBearerToken    :: !(Maybe Text)
    , _ilPageToken      :: !(Maybe Text)
    , _ilPageSize       :: !(Maybe (Textual Int32))
    , _ilCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilXgafv'
--
-- * 'ilUploadProtocol'
--
-- * 'ilPp'
--
-- * 'ilCourseId'
--
-- * 'ilAccessToken'
--
-- * 'ilUploadType'
--
-- * 'ilUserId'
--
-- * 'ilBearerToken'
--
-- * 'ilPageToken'
--
-- * 'ilPageSize'
--
-- * 'ilCallback'
invitationsList
    :: InvitationsList
invitationsList =
    InvitationsList'
    { _ilXgafv = Nothing
    , _ilUploadProtocol = Nothing
    , _ilPp = True
    , _ilCourseId = Nothing
    , _ilAccessToken = Nothing
    , _ilUploadType = Nothing
    , _ilUserId = Nothing
    , _ilBearerToken = Nothing
    , _ilPageToken = Nothing
    , _ilPageSize = Nothing
    , _ilCallback = Nothing
    }

-- | V1 error format.
ilXgafv :: Lens' InvitationsList (Maybe Text)
ilXgafv = lens _ilXgafv (\ s a -> s{_ilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ilUploadProtocol :: Lens' InvitationsList (Maybe Text)
ilUploadProtocol
  = lens _ilUploadProtocol
      (\ s a -> s{_ilUploadProtocol = a})

-- | Pretty-print response.
ilPp :: Lens' InvitationsList Bool
ilPp = lens _ilPp (\ s a -> s{_ilPp = a})

-- | Restricts returned invitations to those for a course with the specified
-- identifier.
ilCourseId :: Lens' InvitationsList (Maybe Text)
ilCourseId
  = lens _ilCourseId (\ s a -> s{_ilCourseId = a})

-- | OAuth access token.
ilAccessToken :: Lens' InvitationsList (Maybe Text)
ilAccessToken
  = lens _ilAccessToken
      (\ s a -> s{_ilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ilUploadType :: Lens' InvitationsList (Maybe Text)
ilUploadType
  = lens _ilUploadType (\ s a -> s{_ilUploadType = a})

-- | Restricts returned invitations to those for a specific user. The
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user
ilUserId :: Lens' InvitationsList (Maybe Text)
ilUserId = lens _ilUserId (\ s a -> s{_ilUserId = a})

-- | OAuth bearer token.
ilBearerToken :: Lens' InvitationsList (Maybe Text)
ilBearerToken
  = lens _ilBearerToken
      (\ s a -> s{_ilBearerToken = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ilPageToken :: Lens' InvitationsList (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | Maximum number of items to return. Zero means no maximum. The server may
-- return fewer than the specified number of results.
ilPageSize :: Lens' InvitationsList (Maybe Int32)
ilPageSize
  = lens _ilPageSize (\ s a -> s{_ilPageSize = a}) .
      mapping _Coerce

-- | JSONP
ilCallback :: Lens' InvitationsList (Maybe Text)
ilCallback
  = lens _ilCallback (\ s a -> s{_ilCallback = a})

instance GoogleRequest InvitationsList where
        type Rs InvitationsList = ListInvitationsResponse
        type Scopes InvitationsList =
             '["https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient InvitationsList'{..}
          = go _ilXgafv _ilUploadProtocol (Just _ilPp)
              _ilCourseId
              _ilAccessToken
              _ilUploadType
              _ilUserId
              _ilBearerToken
              _ilPageToken
              _ilPageSize
              _ilCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy InvitationsListResource)
                      mempty
