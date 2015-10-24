{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Classroom.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Classroom.Types
    (
    -- * Service Configuration
      classroomService

    -- * OAuth Scopes
    , classroomRostersReadonlyScope
    , classroomCoursesScope
    , classroomProfileEmailsScope
    , classroomProfilePhotosScope
    , classroomRostersScope
    , classroomCoursesReadonlyScope

    -- * ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- * Empty
    , Empty
    , empty

    -- * GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- * ListInvitationsResponse
    , ListInvitationsResponse
    , listInvitationsResponse
    , lirNextPageToken
    , lirInvitations

    -- * Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId

    -- * Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProFile
    , tUserId

    -- * Name
    , Name
    , name
    , nGivenName
    , nFullName
    , nFamilyName

    -- * ListCoursesResponse
    , ListCoursesResponse
    , listCoursesResponse
    , lcrNextPageToken
    , lcrCourses

    -- * UserProFile
    , UserProFile
    , userProFile
    , upfPhotoURL
    , upfName
    , upfEmailAddress
    , upfId
    , upfPermissions

    -- * Course
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

    -- * ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- * CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- * ListTeachersResponse
    , ListTeachersResponse
    , listTeachersResponse
    , ltrNextPageToken
    , ltrTeachers

    -- * Student
    , Student
    , student
    , sCourseId
    , sProFile
    , sUserId
    ) where

import           Network.Google.Classroom.Types.Product
import           Network.Google.Classroom.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Classroom API. This contains the host and root path used as a starting point for constructing service requests.
classroomService :: Service
classroomService
  = defaultService (ServiceId "classroom:v1")
      "classroom.googleapis.com"

-- | View your Google Classroom class rosters
classroomRostersReadonlyScope :: OAuthScope
classroomRostersReadonlyScope = "https://www.googleapis.com/auth/classroom.rosters.readonly";

-- | Manage your Google Classroom classes
classroomCoursesScope :: OAuthScope
classroomCoursesScope = "https://www.googleapis.com/auth/classroom.courses";

-- | View the email addresses of people in your classes
classroomProfileEmailsScope :: OAuthScope
classroomProfileEmailsScope = "https://www.googleapis.com/auth/classroom.profile.emails";

-- | View the profile photos of people in your classes
classroomProfilePhotosScope :: OAuthScope
classroomProfilePhotosScope = "https://www.googleapis.com/auth/classroom.profile.photos";

-- | Manage your Google Classroom class rosters
classroomRostersScope :: OAuthScope
classroomRostersScope = "https://www.googleapis.com/auth/classroom.rosters";

-- | View your Google Classroom classes
classroomCoursesReadonlyScope :: OAuthScope
classroomCoursesReadonlyScope = "https://www.googleapis.com/auth/classroom.courses.readonly";
