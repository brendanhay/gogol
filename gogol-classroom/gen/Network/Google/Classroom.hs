-- |
-- Module      : Network.Google.Classroom
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Classroom API
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference>
module Network.Google.Classroom
    (
    -- * API Definition
      Classroom



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

{- $resources
TODO
-}

type Classroom = ()

classroom :: Proxy Classroom
classroom = Proxy




