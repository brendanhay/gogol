{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Classroom
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Google Classroom API
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference>
module Network.Google.Classroom
    (
    -- * Resources
      Classroom
    , InvitationsAPI
    , InvitationsList
    , InvitationsAccept
    , InvitationsGet
    , InvitationsCreate
    , InvitationsDelete
    , CoursesAPI
    , TeachersAPI
    , TeachersList
    , TeachersGet
    , TeachersCreate
    , TeachersDelete
    , AliasesAPI
    , AliasesList
    , AliasesCreate
    , AliasesDelete
    , StudentsAPI
    , StudentsList
    , StudentsGet
    , StudentsCreate
    , StudentsDelete
    , UserProfilesAPI
    , UserProfilesGet

    -- * Types

    -- ** Course
    , Course
    , course
    , cCreationTime
    , cRoom
    , cCourseState
    , cEnrollmentCode
    , cUpdateTime
    , cOwnerId
    , cName
    , cId
    , cAlternateLink
    , cDescription
    , cDescriptionHeading
    , cSection

    -- ** CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- ** Empty
    , Empty
    , empty

    -- ** GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- ** Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId

    -- ** ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- ** ListCoursesResponse
    , ListCoursesResponse
    , listCoursesResponse
    , lcrNextPageToken
    , lcrCourses

    -- ** ListInvitationsResponse
    , ListInvitationsResponse
    , listInvitationsResponse
    , lirNextPageToken
    , lirInvitations

    -- ** ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- ** ListTeachersResponse
    , ListTeachersResponse
    , listTeachersResponse
    , ltrNextPageToken
    , ltrTeachers

    -- ** Name
    , Name
    , name
    , nGivenName
    , nFullName
    , nFamilyName

    -- ** Student
    , Student
    , student
    , sCourseId
    , sProfile
    , sUserId

    -- ** Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProfile
    , tUserId

    -- ** UserProfile
    , UserProfile
    , userProfile
    , upPhotoUrl
    , upName
    , upEmailAddress
    , upId
    , upPermissions
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Classroom =
     InvitationsAPI :<|> CoursesAPI :<|> UserProfilesAPI

type InvitationsAPI =
     InvitationsList :<|> InvitationsAccept :<|>
       InvitationsGet
       :<|> InvitationsCreate
       :<|> InvitationsDelete

-- | Returns a list of invitations that the requesting user is permitted to
-- view, restricted to those that match the list request. *Note:* At least
-- one of \`user_id\` or \`course_id\` must be supplied. Both fields can be
-- supplied. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` for [general user permission errors][User
-- Permission Errors].
type InvitationsList =
     "v1" :>
       "invitations" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "courseId" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "userId" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListInvitationsResponse

-- | Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
type InvitationsAccept =
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

-- | Returns an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to view
-- the requested invitation or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no invitation exists with the
-- requested ID.
type InvitationsGet =
     "v1" :>
       "invitations" :>
         Capture "id" Text :>
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
                                     Get '[JSON] Invitation

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
type InvitationsCreate =
     "v1" :>
       "invitations" :>
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
                                   Post '[JSON] Invitation

-- | Deletes an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested invitation or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no invitation exists with the
-- requested ID.
type InvitationsDelete =
     "v1" :>
       "invitations" :>
         Capture "id" Text :>
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
                                   QueryParam "alt" Text :> Delete '[JSON] Empty

type CoursesAPI =
     TeachersAPI :<|> AliasesAPI :<|> StudentsAPI

type TeachersAPI =
     TeachersList :<|> TeachersGet :<|> TeachersCreate
       :<|> TeachersDelete

-- | Returns a list of teachers of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- [general user permission errors][User Permission Errors].
type TeachersList =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListTeachersResponse

-- | Returns a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view teachers of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no teacher of this
-- course has the requested ID or if the course does not exist.
type TeachersGet =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
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
                                         Get '[JSON] Teacher

-- | Creates a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create teachers in this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if the requested course
-- ID does not exist. * \`FAILED_PRECONDITION\` if the requested user\'s
-- account is disabled. * \`ALREADY_EXISTS\` if the user is already a
-- teacher or student in the course.
type TeachersCreate =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
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
                                       Post '[JSON] Teacher

-- | Deletes a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete teachers of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no teacher of this
-- course has the requested ID or if the course does not exist. *
-- \`FAILED_PRECONDITION\` if the requested ID belongs to the primary
-- teacher of this course.
type TeachersDelete =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
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
                                         Delete '[JSON] Empty

type AliasesAPI =
     AliasesList :<|> AliasesCreate :<|> AliasesDelete

-- | Returns a list of aliases for a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to access the course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if the course does not
-- exist.
type AliasesList =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListCourseAliasesResponse

-- | Creates an alias for a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create the alias or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the course does not exist. *
-- \`ALREADY_EXISTS\` if the alias already exists.
type AliasesCreate =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
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
                                       Post '[JSON] CourseAlias

-- | Deletes an alias of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to remove the alias or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the alias does not exist.
type AliasesDelete =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             Capture "alias" Text :>
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
                                         Delete '[JSON] Empty

type StudentsAPI =
     StudentsList :<|> StudentsGet :<|> StudentsCreate
       :<|> StudentsDelete

-- | Returns a list of students of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- [general user permission errors][User Permission Errors].
type StudentsList =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "pageSize" Int32 :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] ListStudentsResponse

-- | Returns a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view students of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no student of this
-- course has the requested ID or if the course does not exist.
type StudentsGet =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
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
                                         Get '[JSON] Student

-- | Adds a user as a student of a course. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create students in this course or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if the
-- requested course ID does not exist. * \`FAILED_PRECONDITION\` if the
-- requested user\'s account is disabled. * \`ALREADY_EXISTS\` if the user
-- is already a student or teacher in the course.
type StudentsCreate =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "enrollmentCode" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" Text :>
                                         Post '[JSON] Student

-- | Deletes a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete students of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no student of this
-- course has the requested ID or if the course does not exist.
type StudentsDelete =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
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
                                         Delete '[JSON] Empty

type UserProfilesAPI = UserProfilesGet

-- | Returns a user profile. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- this user profile or if no profile exists with the requested ID or for
-- [general user permission errors][User Permission Errors].
type UserProfilesGet =
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
