{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Classroom
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages classes, rosters, and invitations in Google Classroom.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference>
module Network.Google.Classroom
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

    -- * API Declaration
    , ClassroomAPI

    -- * Resources

    -- ** classroom.courses.aliases.create
    , module Network.Google.Resource.Classroom.Courses.Aliases.Create

    -- ** classroom.courses.aliases.delete
    , module Network.Google.Resource.Classroom.Courses.Aliases.Delete

    -- ** classroom.courses.aliases.list
    , module Network.Google.Resource.Classroom.Courses.Aliases.List

    -- ** classroom.courses.courseWork.create
    , module Network.Google.Resource.Classroom.Courses.CourseWork.Create

    -- ** classroom.courses.courseWork.get
    , module Network.Google.Resource.Classroom.Courses.CourseWork.Get

    -- ** classroom.courses.courseWork.list
    , module Network.Google.Resource.Classroom.Courses.CourseWork.List

    -- ** classroom.courses.courseWork.studentSubmissions.get
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Get

    -- ** classroom.courses.courseWork.studentSubmissions.list
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.List

    -- ** classroom.courses.courseWork.studentSubmissions.modifyAttachments
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments

    -- ** classroom.courses.courseWork.studentSubmissions.patch
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Patch

    -- ** classroom.courses.courseWork.studentSubmissions.reclaim
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim

    -- ** classroom.courses.courseWork.studentSubmissions.return
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Return

    -- ** classroom.courses.courseWork.studentSubmissions.turnIn
    , module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn

    -- ** classroom.courses.create
    , module Network.Google.Resource.Classroom.Courses.Create

    -- ** classroom.courses.delete
    , module Network.Google.Resource.Classroom.Courses.Delete

    -- ** classroom.courses.get
    , module Network.Google.Resource.Classroom.Courses.Get

    -- ** classroom.courses.list
    , module Network.Google.Resource.Classroom.Courses.List

    -- ** classroom.courses.patch
    , module Network.Google.Resource.Classroom.Courses.Patch

    -- ** classroom.courses.students.create
    , module Network.Google.Resource.Classroom.Courses.Students.Create

    -- ** classroom.courses.students.delete
    , module Network.Google.Resource.Classroom.Courses.Students.Delete

    -- ** classroom.courses.students.get
    , module Network.Google.Resource.Classroom.Courses.Students.Get

    -- ** classroom.courses.students.list
    , module Network.Google.Resource.Classroom.Courses.Students.List

    -- ** classroom.courses.teachers.create
    , module Network.Google.Resource.Classroom.Courses.Teachers.Create

    -- ** classroom.courses.teachers.delete
    , module Network.Google.Resource.Classroom.Courses.Teachers.Delete

    -- ** classroom.courses.teachers.get
    , module Network.Google.Resource.Classroom.Courses.Teachers.Get

    -- ** classroom.courses.teachers.list
    , module Network.Google.Resource.Classroom.Courses.Teachers.List

    -- ** classroom.courses.update
    , module Network.Google.Resource.Classroom.Courses.Update

    -- ** classroom.invitations.accept
    , module Network.Google.Resource.Classroom.Invitations.Accept

    -- ** classroom.invitations.create
    , module Network.Google.Resource.Classroom.Invitations.Create

    -- ** classroom.invitations.delete
    , module Network.Google.Resource.Classroom.Invitations.Delete

    -- ** classroom.invitations.get
    , module Network.Google.Resource.Classroom.Invitations.Get

    -- ** classroom.invitations.list
    , module Network.Google.Resource.Classroom.Invitations.List

    -- ** classroom.userProfiles.get
    , module Network.Google.Resource.Classroom.UserProFiles.Get

    -- * Types

    -- ** ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- ** CourseWork
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

    -- ** DriveFile
    , DriveFile
    , driveFile
    , dfThumbnailURL
    , dfId
    , dfTitle
    , dfAlternateLink

    -- ** ReturnStudentSubmissionRequest
    , ReturnStudentSubmissionRequest
    , returnStudentSubmissionRequest

    -- ** ReclaimStudentSubmissionRequest
    , ReclaimStudentSubmissionRequest
    , reclaimStudentSubmissionRequest

    -- ** ListCourseWorkResponse
    , ListCourseWorkResponse
    , listCourseWorkResponse
    , lcwrCourseWork
    , lcwrNextPageToken

    -- ** Empty
    , Empty
    , empty

    -- ** GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- ** Link
    , Link
    , link
    , lThumbnailURL
    , lURL
    , lTitle

    -- ** AssignmentSubmission
    , AssignmentSubmission
    , assignmentSubmission
    , asAttachments

    -- ** ModifyAttachmentsRequest
    , ModifyAttachmentsRequest
    , modifyAttachmentsRequest
    , marAddAttachments

    -- ** ListStudentSubmissionsResponse
    , ListStudentSubmissionsResponse
    , listStudentSubmissionsResponse
    , lssrNextPageToken
    , lssrStudentSubmissions

    -- ** Material
    , Material
    , material
    , mDriveFile
    , mLink
    , mYouTubeVideo
    , mForm

    -- ** MultipleChoiceSubmission
    , MultipleChoiceSubmission
    , multipleChoiceSubmission
    , mcsAnswer

    -- ** ListInvitationsResponse
    , ListInvitationsResponse
    , listInvitationsResponse
    , lirNextPageToken
    , lirInvitations

    -- ** CourseMaterial
    , CourseMaterial
    , courseMaterial
    , cmDriveFile
    , cmLink
    , cmYouTubeVideo
    , cmForm

    -- ** ShortAnswerSubmission
    , ShortAnswerSubmission
    , shortAnswerSubmission
    , sasAnswer

    -- ** Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId

    -- ** Attachment
    , Attachment
    , attachment
    , aDriveFile
    , aLink
    , aYouTubeVideo
    , aForm

    -- ** StudentSubmission
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

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** YouTubeVideo
    , YouTubeVideo
    , youTubeVideo
    , ytvThumbnailURL
    , ytvId
    , ytvTitle
    , ytvAlternateLink

    -- ** Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProFile
    , tUserId

    -- ** CourseMaterialSet
    , CourseMaterialSet
    , courseMaterialSet
    , cmsMaterials
    , cmsTitle

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

    -- ** TurnInStudentSubmissionRequest
    , TurnInStudentSubmissionRequest
    , turnInStudentSubmissionRequest

    -- ** UserProFile
    , UserProFile
    , userProFile
    , upfPhotoURL
    , upfName
    , upfEmailAddress
    , upfId
    , upfPermissions

    -- ** DriveFolder
    , DriveFolder
    , driveFolder
    , dId
    , dTitle
    , dAlternateLink

    -- ** MultipleChoiceQuestion
    , MultipleChoiceQuestion
    , multipleChoiceQuestion
    , mcqChoices

    -- ** Course
    , Course
    , course
    , cCreationTime
    , cRoom
    , cCourseMaterialSets
    , cTeacherGroupEmail
    , cTeacherFolder
    , cCourseState
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

    -- ** TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** Assignment
    , Assignment
    , assignment
    , aStudentWorkFolder

    -- ** ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- ** SharedDriveFile
    , SharedDriveFile
    , sharedDriveFile
    , sdfDriveFile
    , sdfShareMode

    -- ** CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- ** Form
    , Form
    , form
    , fThumbnailURL
    , fFormURL
    , fTitle
    , fResponseURL

    -- ** ListTeachersResponse
    , ListTeachersResponse
    , listTeachersResponse
    , ltrNextPageToken
    , ltrTeachers

    -- ** Student
    , Student
    , student
    , sCourseId
    , sProFile
    , sStudentWorkFolder
    , sUserId
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Classroom.Courses.Aliases.Create
import           Network.Google.Resource.Classroom.Courses.Aliases.Delete
import           Network.Google.Resource.Classroom.Courses.Aliases.List
import           Network.Google.Resource.Classroom.Courses.CourseWork.Create
import           Network.Google.Resource.Classroom.Courses.CourseWork.Get
import           Network.Google.Resource.Classroom.Courses.CourseWork.List
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Get
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.List
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Patch
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Return
import           Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn
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
import           Network.Google.Resource.Classroom.UserProFiles.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Classroom API service.
type ClassroomAPI =
     InvitationsListResource :<|>
       InvitationsAcceptResource
       :<|> InvitationsGetResource
       :<|> InvitationsCreateResource
       :<|> InvitationsDeleteResource
       :<|>
       CoursesCourseWorkStudentSubmissionsReturnResource
       :<|> CoursesCourseWorkStudentSubmissionsListResource
       :<|>
       CoursesCourseWorkStudentSubmissionsReclaimResource
       :<|> CoursesCourseWorkStudentSubmissionsPatchResource
       :<|> CoursesCourseWorkStudentSubmissionsGetResource
       :<|>
       CoursesCourseWorkStudentSubmissionsTurnInResource
       :<|>
       CoursesCourseWorkStudentSubmissionsModifyAttachmentsResource
       :<|> CoursesCourseWorkListResource
       :<|> CoursesCourseWorkGetResource
       :<|> CoursesCourseWorkCreateResource
       :<|> CoursesTeachersListResource
       :<|> CoursesTeachersGetResource
       :<|> CoursesTeachersCreateResource
       :<|> CoursesTeachersDeleteResource
       :<|> CoursesAliasesListResource
       :<|> CoursesAliasesCreateResource
       :<|> CoursesAliasesDeleteResource
       :<|> CoursesStudentsListResource
       :<|> CoursesStudentsGetResource
       :<|> CoursesStudentsCreateResource
       :<|> CoursesStudentsDeleteResource
       :<|> CoursesListResource
       :<|> CoursesPatchResource
       :<|> CoursesGetResource
       :<|> CoursesCreateResource
       :<|> CoursesDeleteResource
       :<|> CoursesUpdateResource
       :<|> UserProFilesGetResource
