{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Classroom.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , classroomRostersReadOnlyScope
    , classroomCoursesScope
    , classroomCourseworkStudentsReadOnlyScope
    , classroomProFileEmailsScope
    , classroomProFilePhotosScope
    , classroomCourseworkMeScope
    , classroomCourseWorkReadOnlyScope
    , classroomStudentSubmissionsStudentsReadOnlyScope
    , classroomRostersScope
    , classroomCoursesReadOnlyScope
    , classroomCourseworkStudentsScope
    , classroomCourseworkMeReadOnlyScope
    , classroomStudentSubmissionsMeReadOnlyScope

    -- * ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- * CourseWork
    , CourseWork
    , courseWork
    , cwCreationTime
    , cwState
    , cwMaterials
    , cwCourseId
    , cwMaxPoints
    , cwWorkType
    , cwDueTime
    , cwAssociatedWithDeveloper
    , cwUpdateTime
    , cwMultipleChoiceQuestion
    , cwId
    , cwSubmissionModificationMode
    , cwDueDate
    , cwTitle
    , cwAlternateLink
    , cwAssignment
    , cwDescription

    -- * DriveFile
    , DriveFile
    , driveFile
    , dfThumbnailURL
    , dfId
    , dfTitle
    , dfAlternateLink

    -- * GuardianInvitation
    , GuardianInvitation
    , guardianInvitation
    , giCreationTime
    , giStudentId
    , giState
    , giInvitationId
    , giInvitedEmailAddress

    -- * ReturnStudentSubmissionRequest
    , ReturnStudentSubmissionRequest
    , returnStudentSubmissionRequest

    -- * ReclaimStudentSubmissionRequest
    , ReclaimStudentSubmissionRequest
    , reclaimStudentSubmissionRequest

    -- * ListCourseWorkResponse
    , ListCourseWorkResponse
    , listCourseWorkResponse
    , lcwrCourseWork
    , lcwrNextPageToken

    -- * Empty
    , Empty
    , empty

    -- * GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- * Link
    , Link
    , link
    , lThumbnailURL
    , lURL
    , lTitle

    -- * AssignmentSubmission
    , AssignmentSubmission
    , assignmentSubmission
    , asAttachments

    -- * ModifyAttachmentsRequest
    , ModifyAttachmentsRequest
    , modifyAttachmentsRequest
    , marAddAttachments

    -- * ListStudentSubmissionsResponse
    , ListStudentSubmissionsResponse
    , listStudentSubmissionsResponse
    , lssrNextPageToken
    , lssrStudentSubmissions

    -- * Material
    , Material
    , material
    , mDriveFile
    , mLink
    , mYouTubeVideo
    , mForm

    -- * MultipleChoiceSubmission
    , MultipleChoiceSubmission
    , multipleChoiceSubmission
    , mcsAnswer

    -- * ListInvitationsResponse
    , ListInvitationsResponse
    , listInvitationsResponse
    , lirNextPageToken
    , lirInvitations

    -- * Guardian
    , Guardian
    , guardian
    , gStudentId
    , gGuardianId
    , gInvitedEmailAddress
    , gGuardianProFile

    -- * CourseMaterial
    , CourseMaterial
    , courseMaterial
    , cmDriveFile
    , cmLink
    , cmYouTubeVideo
    , cmForm

    -- * ShortAnswerSubmission
    , ShortAnswerSubmission
    , shortAnswerSubmission
    , sasAnswer

    -- * Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId

    -- * Attachment
    , Attachment
    , attachment
    , aDriveFile
    , aLink
    , aYouTubeVideo
    , aForm

    -- * StudentSubmission
    , StudentSubmission
    , studentSubmission
    , ssCreationTime
    , ssLate
    , ssState
    , ssCourseId
    , ssMultipleChoiceSubmission
    , ssAssignmentSubmission
    , ssShortAnswerSubmission
    , ssAssociatedWithDeveloper
    , ssUserId
    , ssUpdateTime
    , ssCourseWorkType
    , ssAssignedGrade
    , ssId
    , ssDraftGrade
    , ssAlternateLink
    , ssCourseWorkId

    -- * ListGuardiansResponse
    , ListGuardiansResponse
    , listGuardiansResponse
    , lgrNextPageToken
    , lgrGuardians

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * YouTubeVideo
    , YouTubeVideo
    , youTubeVideo
    , ytvThumbnailURL
    , ytvId
    , ytvTitle
    , ytvAlternateLink

    -- * Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProFile
    , tUserId

    -- * CourseMaterialSet
    , CourseMaterialSet
    , courseMaterialSet
    , cmsMaterials
    , cmsTitle

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

    -- * TurnInStudentSubmissionRequest
    , TurnInStudentSubmissionRequest
    , turnInStudentSubmissionRequest

    -- * UserProFile
    , UserProFile
    , userProFile
    , upfPhotoURL
    , upfName
    , upfEmailAddress
    , upfId
    , upfPermissions

    -- * DriveFolder
    , DriveFolder
    , driveFolder
    , dId
    , dTitle
    , dAlternateLink

    -- * MultipleChoiceQuestion
    , MultipleChoiceQuestion
    , multipleChoiceQuestion
    , mcqChoices

    -- * Course
    , Course
    , course
    , cCreationTime
    , cRoom
    , cCourseMaterialSets
    , cTeacherGroupEmail
    , cTeacherFolder
    , cCourseState
    , cGuardiansEnabled
    , cEnrollmentCode
    , cUpdateTime
    , cOwnerId
    , cName
    , cId
    , cAlternateLink
    , cCourseGroupEmail
    , cDescription
    , cDescriptionHeading
    , cSection

    -- * TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- * ListGuardianInvitationsResponse
    , ListGuardianInvitationsResponse
    , listGuardianInvitationsResponse
    , lgirNextPageToken
    , lgirGuardianInvitations

    -- * Assignment
    , Assignment
    , assignment
    , aStudentWorkFolder

    -- * ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- * SharedDriveFile
    , SharedDriveFile
    , sharedDriveFile
    , sdfDriveFile
    , sdfShareMode

    -- * CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- * Form
    , Form
    , form
    , fThumbnailURL
    , fFormURL
    , fTitle
    , fResponseURL

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
    , sStudentWorkFolder
    , sUserId
    ) where

import           Network.Google.Classroom.Types.Product
import           Network.Google.Classroom.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Classroom API. This contains the host and root path used as a starting point for constructing service requests.
classroomService :: ServiceConfig
classroomService
  = defaultService (ServiceId "classroom:v1")
      "classroom.googleapis.com"

-- | View your Google Classroom class rosters
classroomRostersReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.rosters.readonly"]
classroomRostersReadOnlyScope = Proxy;

-- | Manage your Google Classroom classes
classroomCoursesScope :: Proxy '["https://www.googleapis.com/auth/classroom.courses"]
classroomCoursesScope = Proxy;

-- | View course work and grades for students in the Google Classroom classes
-- you teach or administer
classroomCourseworkStudentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.students.readonly"]
classroomCourseworkStudentsReadOnlyScope = Proxy;

-- | View the email addresses of people in your classes
classroomProFileEmailsScope :: Proxy '["https://www.googleapis.com/auth/classroom.profile.emails"]
classroomProFileEmailsScope = Proxy;

-- | View the profile photos of people in your classes
classroomProFilePhotosScope :: Proxy '["https://www.googleapis.com/auth/classroom.profile.photos"]
classroomProFilePhotosScope = Proxy;

-- | Manage your course work and view your grades in Google Classroom
classroomCourseworkMeScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.me"]
classroomCourseworkMeScope = Proxy;

-- | View instructions for teacher-assigned work in your Google Classroom
-- classes
classroomCourseWorkReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.course-work.readonly"]
classroomCourseWorkReadOnlyScope = Proxy;

-- | View course work and grades for students in the Google Classroom classes
-- you teach or administer
classroomStudentSubmissionsStudentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"]
classroomStudentSubmissionsStudentsReadOnlyScope = Proxy;

-- | Manage your Google Classroom class rosters
classroomRostersScope :: Proxy '["https://www.googleapis.com/auth/classroom.rosters"]
classroomRostersScope = Proxy;

-- | View your Google Classroom classes
classroomCoursesReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.courses.readonly"]
classroomCoursesReadOnlyScope = Proxy;

-- | Manage course work and grades for students in the Google Classroom
-- classes you teach and view the course work and grades for classes you
-- administer
classroomCourseworkStudentsScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.students"]
classroomCourseworkStudentsScope = Proxy;

-- | View your course work and grades in Google Classroom
classroomCourseworkMeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.me.readonly"]
classroomCourseworkMeReadOnlyScope = Proxy;

-- | View your course work and grades in Google Classroom
classroomStudentSubmissionsMeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.student-submissions.me.readonly"]
classroomStudentSubmissionsMeReadOnlyScope = Proxy;
