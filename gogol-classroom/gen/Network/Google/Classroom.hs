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
    -- * REST Resources

    -- ** Google Classroom API
      Classroom
    , classroom
    , classroomURL

    -- ** classroom.courses.aliases.create
    , module Network.Google.API.Classroom.Courses.Aliases.Create

    -- ** classroom.courses.aliases.delete
    , module Network.Google.API.Classroom.Courses.Aliases.Delete

    -- ** classroom.courses.aliases.list
    , module Network.Google.API.Classroom.Courses.Aliases.List

    -- ** classroom.courses.students.create
    , module Network.Google.API.Classroom.Courses.Students.Create

    -- ** classroom.courses.students.delete
    , module Network.Google.API.Classroom.Courses.Students.Delete

    -- ** classroom.courses.students.get
    , module Network.Google.API.Classroom.Courses.Students.Get

    -- ** classroom.courses.students.list
    , module Network.Google.API.Classroom.Courses.Students.List

    -- ** classroom.courses.teachers.create
    , module Network.Google.API.Classroom.Courses.Teachers.Create

    -- ** classroom.courses.teachers.delete
    , module Network.Google.API.Classroom.Courses.Teachers.Delete

    -- ** classroom.courses.teachers.get
    , module Network.Google.API.Classroom.Courses.Teachers.Get

    -- ** classroom.courses.teachers.list
    , module Network.Google.API.Classroom.Courses.Teachers.List

    -- ** classroom.invitations.accept
    , module Network.Google.API.Classroom.Invitations.Accept

    -- ** classroom.invitations.create
    , module Network.Google.API.Classroom.Invitations.Create

    -- ** classroom.invitations.delete
    , module Network.Google.API.Classroom.Invitations.Delete

    -- ** classroom.invitations.get
    , module Network.Google.API.Classroom.Invitations.Get

    -- ** classroom.invitations.list
    , module Network.Google.API.Classroom.Invitations.List

    -- ** classroom.userProfiles.get
    , module Network.Google.API.Classroom.UserProfiles.Get

    -- * Types

    -- ** Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProfile
    , tUserId

    -- ** Name
    , Name
    , name
    , nGivenName
    , nFullName
    , nFamilyName

    -- ** ListCoursesResponse
    , ListCoursesResponse
    , listCoursesResponse
    , lcrNextPageToken
    , lcrCourses

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

    -- ** ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- ** Student
    , Student
    , student
    , sCourseId
    , sProfile
    , sUserId

    -- ** ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- ** UserProfile
    , UserProfile
    , userProfile
    , upPhotoUrl
    , upName
    , upEmailAddress
    , upId
    , upPermissions

    -- ** Empty
    , Empty
    , empty

    -- ** GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- ** ListInvitationsResponse
    , ListInvitationsResponse
    , listInvitationsResponse
    , lirNextPageToken
    , lirInvitations

    -- ** ListTeachersResponse
    , ListTeachersResponse
    , listTeachersResponse
    , ltrNextPageToken
    , ltrTeachers

    -- ** Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId
    ) where

import           Network.Google.API.Classroom.Courses.Aliases.Create
import           Network.Google.API.Classroom.Courses.Aliases.Delete
import           Network.Google.API.Classroom.Courses.Aliases.List
import           Network.Google.API.Classroom.Courses.Students.Create
import           Network.Google.API.Classroom.Courses.Students.Delete
import           Network.Google.API.Classroom.Courses.Students.Get
import           Network.Google.API.Classroom.Courses.Students.List
import           Network.Google.API.Classroom.Courses.Teachers.Create
import           Network.Google.API.Classroom.Courses.Teachers.Delete
import           Network.Google.API.Classroom.Courses.Teachers.Get
import           Network.Google.API.Classroom.Courses.Teachers.List
import           Network.Google.API.Classroom.Invitations.Accept
import           Network.Google.API.Classroom.Invitations.Create
import           Network.Google.API.Classroom.Invitations.Delete
import           Network.Google.API.Classroom.Invitations.Get
import           Network.Google.API.Classroom.Invitations.List
import           Network.Google.API.Classroom.UserProfiles.Get
import           Network.Google.Classroom.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Classroom =
     CoursesTeachersGetAPI :<|> InvitationsDeleteAPI :<|>
       InvitationsCreateAPI
       :<|> InvitationsGetAPI
       :<|> CoursesStudentsDeleteAPI
       :<|> CoursesTeachersListAPI
       :<|> CoursesAliasesDeleteAPI
       :<|> CoursesTeachersDeleteAPI
       :<|> InvitationsListAPI
       :<|> InvitationsAcceptAPI
       :<|> CoursesTeachersCreateAPI
       :<|> UserProfilesGetAPI
       :<|> CoursesStudentsGetAPI
       :<|> CoursesStudentsCreateAPI
       :<|> CoursesAliasesListAPI
       :<|> CoursesStudentsListAPI
       :<|> CoursesAliasesCreateAPI

classroom :: Proxy Classroom
classroom = Proxy
