{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      classroomURL

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

-- | URL referring to version 'v1' of the Google Classroom API.
classroomURL :: BaseUrl
classroomURL
  = BaseUrl Https "https://classroom.googleapis.com/"
      443
