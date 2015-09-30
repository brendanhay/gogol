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
    -- * API
      ClassroomAPI
    , classroomAPI
    , classroomURL

    -- * Service Methods

    -- * REST Resources

    -- ** ClassroomCoursesAliasesCreate
    , module Classroom.Courses.Aliases.Create

    -- ** ClassroomCoursesAliasesDelete
    , module Classroom.Courses.Aliases.Delete

    -- ** ClassroomCoursesAliasesList
    , module Classroom.Courses.Aliases.List

    -- ** ClassroomCoursesCreate
    , module Classroom.Courses.Create

    -- ** ClassroomCoursesDelete
    , module Classroom.Courses.Delete

    -- ** ClassroomCoursesGet
    , module Classroom.Courses.Get

    -- ** ClassroomCoursesList
    , module Classroom.Courses.List

    -- ** ClassroomCoursesPatch
    , module Classroom.Courses.Patch

    -- ** ClassroomCoursesStudentsCreate
    , module Classroom.Courses.Students.Create

    -- ** ClassroomCoursesStudentsDelete
    , module Classroom.Courses.Students.Delete

    -- ** ClassroomCoursesStudentsGet
    , module Classroom.Courses.Students.Get

    -- ** ClassroomCoursesStudentsList
    , module Classroom.Courses.Students.List

    -- ** ClassroomCoursesTeachersCreate
    , module Classroom.Courses.Teachers.Create

    -- ** ClassroomCoursesTeachersDelete
    , module Classroom.Courses.Teachers.Delete

    -- ** ClassroomCoursesTeachersGet
    , module Classroom.Courses.Teachers.Get

    -- ** ClassroomCoursesTeachersList
    , module Classroom.Courses.Teachers.List

    -- ** ClassroomCoursesUpdate
    , module Classroom.Courses.Update

    -- ** ClassroomInvitationsAccept
    , module Classroom.Invitations.Accept

    -- ** ClassroomInvitationsCreate
    , module Classroom.Invitations.Create

    -- ** ClassroomInvitationsDelete
    , module Classroom.Invitations.Delete

    -- ** ClassroomInvitationsGet
    , module Classroom.Invitations.Get

    -- ** ClassroomInvitationsList
    , module Classroom.Invitations.List

    -- ** ClassroomUserProfilesGet
    , module Classroom.UserProfiles.Get

    -- * Types

    -- ** ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

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

    -- ** Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId

    -- ** Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProfile
    , tUserId

    -- ** ListCoursesResponse
    , ListCoursesResponse
    , listCoursesResponse
    , lcrNextPageToken
    , lcrCourses

    -- ** Name
    , Name
    , name
    , nGivenName
    , nFullName
    , nFamilyName

    -- ** UserProfile
    , UserProfile
    , userProfile
    , upPhotoUrl
    , upName
    , upEmailAddress
    , upId
    , upPermissions

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

    -- ** ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- ** CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- ** ListTeachersResponse
    , ListTeachersResponse
    , listTeachersResponse
    , ltrNextPageToken
    , ltrTeachers

    -- ** Student
    , Student
    , student
    , sCourseId
    , sProfile
    , sUserId
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Classroom.Courses.Aliases.Create
import           Network.Google.Resource.Classroom.Courses.Aliases.Delete
import           Network.Google.Resource.Classroom.Courses.Aliases.List
import           Network.Google.Resource.Classroom.Courses.Create
import           Network.Google.Resource.Classroom.Courses.Delete
import           Network.Google.Resource.Classroom.Courses.Get
import           Network.Google.Resource.Classroom.Courses.List
import           Network.Google.Resource.Classroom.Courses.Patch
import           Network.Google.Resource.Classroom.Courses.Students.Create
import           Network.Google.Resource.Classroom.Courses.Students.Delete
import           Network.Google.Resource.Classroom.Courses.Students.Get
import           Network.Google.Resource.Classroom.Courses.Students.List
import           Network.Google.Resource.Classroom.Courses.Teachers.Create
import           Network.Google.Resource.Classroom.Courses.Teachers.Delete
import           Network.Google.Resource.Classroom.Courses.Teachers.Get
import           Network.Google.Resource.Classroom.Courses.Teachers.List
import           Network.Google.Resource.Classroom.Courses.Update
import           Network.Google.Resource.Classroom.Invitations.Accept
import           Network.Google.Resource.Classroom.Invitations.Create
import           Network.Google.Resource.Classroom.Invitations.Delete
import           Network.Google.Resource.Classroom.Invitations.Get
import           Network.Google.Resource.Classroom.Invitations.List
import           Network.Google.Resource.Classroom.UserProfiles.Get

{- $resources
TODO
-}

type ClassroomAPI =
     Invitations :<|> Courses :<|> UserProfiles

classroomAPI :: Proxy ClassroomAPI
classroomAPI = Proxy
