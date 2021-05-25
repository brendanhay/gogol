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
    , classroomPushNotificationsScope
    , classroomCourseworkStudentsReadOnlyScope
    , classroomTopicsReadOnlyScope
    , classroomProFileEmailsScope
    , classroomProFilePhotosScope
    , classroomCourseworkMeScope
    , classroomAnnouncementsReadOnlyScope
    , classroomGuardianlinksStudentsScope
    , classroomCourseworkmaterialsScope
    , classroomStudentSubmissionsStudentsReadOnlyScope
    , classroomGuardianlinksMeReadOnlyScope
    , classroomRostersScope
    , classroomCoursesReadOnlyScope
    , classroomCourseworkStudentsScope
    , classroomTopicsScope
    , classroomAnnouncementsScope
    , classroomCourseworkMeReadOnlyScope
    , classroomStudentSubmissionsMeReadOnlyScope
    , classroomCourseworkmaterialsReadOnlyScope
    , classroomGuardianlinksStudentsReadOnlyScope

    -- * API Declaration
    , ClassroomAPI

    -- * Resources

    -- ** classroom.courses.aliases.create
    , module Network.Google.Resource.Classroom.Courses.Aliases.Create

    -- ** classroom.courses.aliases.delete
    , module Network.Google.Resource.Classroom.Courses.Aliases.Delete

    -- ** classroom.courses.aliases.list
    , module Network.Google.Resource.Classroom.Courses.Aliases.List

    -- ** classroom.courses.announcements.create
    , module Network.Google.Resource.Classroom.Courses.Announcements.Create

    -- ** classroom.courses.announcements.delete
    , module Network.Google.Resource.Classroom.Courses.Announcements.Delete

    -- ** classroom.courses.announcements.get
    , module Network.Google.Resource.Classroom.Courses.Announcements.Get

    -- ** classroom.courses.announcements.list
    , module Network.Google.Resource.Classroom.Courses.Announcements.List

    -- ** classroom.courses.announcements.modifyAssignees
    , module Network.Google.Resource.Classroom.Courses.Announcements.ModifyAssignees

    -- ** classroom.courses.announcements.patch
    , module Network.Google.Resource.Classroom.Courses.Announcements.Patch

    -- ** classroom.courses.courseWork.create
    , module Network.Google.Resource.Classroom.Courses.CourseWork.Create

    -- ** classroom.courses.courseWork.delete
    , module Network.Google.Resource.Classroom.Courses.CourseWork.Delete

    -- ** classroom.courses.courseWork.get
    , module Network.Google.Resource.Classroom.Courses.CourseWork.Get

    -- ** classroom.courses.courseWork.list
    , module Network.Google.Resource.Classroom.Courses.CourseWork.List

    -- ** classroom.courses.courseWork.modifyAssignees
    , module Network.Google.Resource.Classroom.Courses.CourseWork.ModifyAssignees

    -- ** classroom.courses.courseWork.patch
    , module Network.Google.Resource.Classroom.Courses.CourseWork.Patch

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

    -- ** classroom.courses.courseWorkMaterials.create
    , module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Create

    -- ** classroom.courses.courseWorkMaterials.delete
    , module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Delete

    -- ** classroom.courses.courseWorkMaterials.get
    , module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Get

    -- ** classroom.courses.courseWorkMaterials.list
    , module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.List

    -- ** classroom.courses.courseWorkMaterials.patch
    , module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Patch

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

    -- ** classroom.courses.topics.create
    , module Network.Google.Resource.Classroom.Courses.Topics.Create

    -- ** classroom.courses.topics.delete
    , module Network.Google.Resource.Classroom.Courses.Topics.Delete

    -- ** classroom.courses.topics.get
    , module Network.Google.Resource.Classroom.Courses.Topics.Get

    -- ** classroom.courses.topics.list
    , module Network.Google.Resource.Classroom.Courses.Topics.List

    -- ** classroom.courses.topics.patch
    , module Network.Google.Resource.Classroom.Courses.Topics.Patch

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

    -- ** classroom.registrations.create
    , module Network.Google.Resource.Classroom.Registrations.Create

    -- ** classroom.registrations.delete
    , module Network.Google.Resource.Classroom.Registrations.Delete

    -- ** classroom.userProfiles.get
    , module Network.Google.Resource.Classroom.UserProFiles.Get

    -- ** classroom.userProfiles.guardianInvitations.create
    , module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Create

    -- ** classroom.userProfiles.guardianInvitations.get
    , module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Get

    -- ** classroom.userProfiles.guardianInvitations.list
    , module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.List

    -- ** classroom.userProfiles.guardianInvitations.patch
    , module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Patch

    -- ** classroom.userProfiles.guardians.delete
    , module Network.Google.Resource.Classroom.UserProFiles.Guardians.Delete

    -- ** classroom.userProfiles.guardians.get
    , module Network.Google.Resource.Classroom.UserProFiles.Guardians.Get

    -- ** classroom.userProfiles.guardians.list
    , module Network.Google.Resource.Classroom.UserProFiles.Guardians.List

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
    , cwScheduledTime
    , cwState
    , cwAssigneeMode
    , cwMaterials
    , cwCourseId
    , cwIndividualStudentsOptions
    , cwMaxPoints
    , cwWorkType
    , cwDueTime
    , cwAssociatedWithDeveloper
    , cwUpdateTime
    , cwTopicId
    , cwMultipleChoiceQuestion
    , cwId
    , cwSubmissionModificationMode
    , cwDueDate
    , cwCreatorUserId
    , cwTitle
    , cwAlternateLink
    , cwAssignment
    , cwDescription

    -- ** GradeHistoryGradeChangeType
    , GradeHistoryGradeChangeType (..)

    -- ** GradeHistory
    , GradeHistory
    , gradeHistory
    , ghGradeTimestamp
    , ghMaxPoints
    , ghPointsEarned
    , ghActorUserId
    , ghGradeChangeType

    -- ** CourseWorkChangesInfo
    , CourseWorkChangesInfo
    , courseWorkChangesInfo
    , cwciCourseId

    -- ** CourseWorkMaterial
    , CourseWorkMaterial
    , courseWorkMaterial
    , cwmCreationTime
    , cwmScheduledTime
    , cwmState
    , cwmAssigneeMode
    , cwmMaterials
    , cwmCourseId
    , cwmIndividualStudentsOptions
    , cwmUpdateTime
    , cwmTopicId
    , cwmId
    , cwmCreatorUserId
    , cwmTitle
    , cwmAlternateLink
    , cwmDescription

    -- ** ModifyCourseWorkAssigneesRequest
    , ModifyCourseWorkAssigneesRequest
    , modifyCourseWorkAssigneesRequest
    , mcwarAssigneeMode
    , mcwarModifyIndividualStudentsOptions

    -- ** CourseCourseState
    , CourseCourseState (..)

    -- ** DriveFile
    , DriveFile
    , driveFile
    , dfThumbnailURL
    , dfId
    , dfTitle
    , dfAlternateLink

    -- ** GuardianInvitation
    , GuardianInvitation
    , guardianInvitation
    , giCreationTime
    , giStudentId
    , giState
    , giInvitationId
    , giInvitedEmailAddress

    -- ** Feed
    , Feed
    , feed
    , fCourseWorkChangesInfo
    , fFeedType
    , fCourseRosterChangesInfo

    -- ** ModifyAnnouncementAssigneesRequest
    , ModifyAnnouncementAssigneesRequest
    , modifyAnnouncementAssigneesRequest
    , maarAssigneeMode
    , maarModifyIndividualStudentsOptions

    -- ** ReturnStudentSubmissionRequest
    , ReturnStudentSubmissionRequest
    , returnStudentSubmissionRequest

    -- ** StateHistoryState
    , StateHistoryState (..)

    -- ** ReclaimStudentSubmissionRequest
    , ReclaimStudentSubmissionRequest
    , reclaimStudentSubmissionRequest

    -- ** CourseWorkWorkType
    , CourseWorkWorkType (..)

    -- ** ListCourseWorkResponse
    , ListCourseWorkResponse
    , listCourseWorkResponse
    , lcwrCourseWork
    , lcwrNextPageToken

    -- ** Empty
    , Empty
    , empty

    -- ** CourseWorkMaterialAssigneeMode
    , CourseWorkMaterialAssigneeMode (..)

    -- ** CoursesListCourseStates
    , CoursesListCourseStates (..)

    -- ** ModifyCourseWorkAssigneesRequestAssigneeMode
    , ModifyCourseWorkAssigneesRequestAssigneeMode (..)

    -- ** GuardianInvitationState
    , GuardianInvitationState (..)

    -- ** SharedDriveFileShareMode
    , SharedDriveFileShareMode (..)

    -- ** GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- ** ListTopicResponse
    , ListTopicResponse
    , listTopicResponse
    , ltrNextPageToken
    , ltrTopic

    -- ** Link
    , Link
    , link
    , lThumbnailURL
    , lURL
    , lTitle

    -- ** ModifyAnnouncementAssigneesRequestAssigneeMode
    , ModifyAnnouncementAssigneesRequestAssigneeMode (..)

    -- ** IndividualStudentsOptions
    , IndividualStudentsOptions
    , individualStudentsOptions
    , isoStudentIds

    -- ** AssignmentSubmission
    , AssignmentSubmission
    , assignmentSubmission
    , asAttachments

    -- ** ModifyAttachmentsRequest
    , ModifyAttachmentsRequest
    , modifyAttachmentsRequest
    , marAddAttachments

    -- ** ListAnnouncementsResponse
    , ListAnnouncementsResponse
    , listAnnouncementsResponse
    , larNextPageToken
    , larAnnouncements

    -- ** AnnouncementAssigneeMode
    , AnnouncementAssigneeMode (..)

    -- ** CourseWorkState
    , CourseWorkState (..)

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

    -- ** Guardian
    , Guardian
    , guardian
    , gStudentId
    , gGuardianId
    , gInvitedEmailAddress
    , gGuardianProFile

    -- ** CourseMaterial
    , CourseMaterial
    , courseMaterial
    , cmDriveFile
    , cmLink
    , cmYouTubeVideo
    , cmForm

    -- ** StudentSubmissionState
    , StudentSubmissionState (..)

    -- ** ShortAnswerSubmission
    , ShortAnswerSubmission
    , shortAnswerSubmission
    , sasAnswer

    -- ** CoursesCourseWorkStudentSubmissionsListLate
    , CoursesCourseWorkStudentSubmissionsListLate (..)

    -- ** CoursesCourseWorkStudentSubmissionsListStates
    , CoursesCourseWorkStudentSubmissionsListStates (..)

    -- ** AnnouncementState
    , AnnouncementState (..)

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

    -- ** Topic
    , Topic
    , topic
    , tCourseId
    , tUpdateTime
    , tTopicId
    , tName

    -- ** Announcement
    , Announcement
    , announcement
    , aCreationTime
    , aScheduledTime
    , aState
    , aAssigneeMode
    , aText
    , aMaterials
    , aCourseId
    , aIndividualStudentsOptions
    , aUpdateTime
    , aId
    , aCreatorUserId
    , aAlternateLink

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
    , ssSubmissionHistory
    , ssAssignedGrade
    , ssId
    , ssDraftGrade
    , ssAlternateLink
    , ssCourseWorkId

    -- ** ListGuardiansResponse
    , ListGuardiansResponse
    , listGuardiansResponse
    , lgrNextPageToken
    , lgrGuardians

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
    , teaCourseId
    , teaProFile
    , teaUserId

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

    -- ** Xgafv
    , Xgafv (..)

    -- ** UserProFile
    , UserProFile
    , userProFile
    , upfPhotoURL
    , upfVerifiedTeacher
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

    -- ** SubmissionHistory
    , SubmissionHistory
    , submissionHistory
    , shGradeHistory
    , shStateHistory

    -- ** StateHistory
    , StateHistory
    , stateHistory
    , shState
    , shActorUserId
    , shStateTimestamp

    -- ** MultipleChoiceQuestion
    , MultipleChoiceQuestion
    , multipleChoiceQuestion
    , mcqChoices

    -- ** Course
    , Course
    , course
    , couCreationTime
    , couRoom
    , couCourseMaterialSets
    , couCalendarId
    , couTeacherGroupEmail
    , couTeacherFolder
    , couCourseState
    , couGuardiansEnabled
    , couEnrollmentCode
    , couUpdateTime
    , couOwnerId
    , couName
    , couId
    , couAlternateLink
    , couCourseGroupEmail
    , couDescription
    , couDescriptionHeading
    , couSection

    -- ** InvitationRole
    , InvitationRole (..)

    -- ** StudentSubmissionCourseWorkType
    , StudentSubmissionCourseWorkType (..)

    -- ** CourseWorkMaterialState
    , CourseWorkMaterialState (..)

    -- ** TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** FeedFeedType
    , FeedFeedType (..)

    -- ** CoursesCourseWorkListCourseWorkStates
    , CoursesCourseWorkListCourseWorkStates (..)

    -- ** ListGuardianInvitationsResponse
    , ListGuardianInvitationsResponse
    , listGuardianInvitationsResponse
    , lgirNextPageToken
    , lgirGuardianInvitations

    -- ** CoursesAnnouncementsListAnnouncementStates
    , CoursesAnnouncementsListAnnouncementStates (..)

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

    -- ** CoursesCourseWorkMaterialsListCourseWorkMaterialStates
    , CoursesCourseWorkMaterialsListCourseWorkMaterialStates (..)

    -- ** CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- ** CourseRosterChangesInfo
    , CourseRosterChangesInfo
    , courseRosterChangesInfo
    , crciCourseId

    -- ** ModifyIndividualStudentsOptions
    , ModifyIndividualStudentsOptions
    , modifyIndividualStudentsOptions
    , misoAddStudentIds
    , misoRemoveStudentIds

    -- ** CloudPubsubTopic
    , CloudPubsubTopic
    , cloudPubsubTopic
    , cptTopicName

    -- ** GlobalPermissionPermission
    , GlobalPermissionPermission (..)

    -- ** CourseWorkAssigneeMode
    , CourseWorkAssigneeMode (..)

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
    , lNextPageToken
    , lTeachers

    -- ** ListCourseWorkMaterialResponse
    , ListCourseWorkMaterialResponse
    , listCourseWorkMaterialResponse
    , lcwmrCourseWorkMaterial
    , lcwmrNextPageToken

    -- ** UserProFilesGuardianInvitationsListStates
    , UserProFilesGuardianInvitationsListStates (..)

    -- ** Student
    , Student
    , student
    , sCourseId
    , sProFile
    , sStudentWorkFolder
    , sUserId

    -- ** CourseWorkSubmissionModificationMode
    , CourseWorkSubmissionModificationMode (..)

    -- ** Registration
    , Registration
    , registration
    , rRegistrationId
    , rExpiryTime
    , rFeed
    , rCloudPubsubTopic
    ) where

import Network.Google.Prelude
import Network.Google.Classroom.Types
import Network.Google.Resource.Classroom.Courses.Aliases.Create
import Network.Google.Resource.Classroom.Courses.Aliases.Delete
import Network.Google.Resource.Classroom.Courses.Aliases.List
import Network.Google.Resource.Classroom.Courses.Announcements.Create
import Network.Google.Resource.Classroom.Courses.Announcements.Delete
import Network.Google.Resource.Classroom.Courses.Announcements.Get
import Network.Google.Resource.Classroom.Courses.Announcements.List
import Network.Google.Resource.Classroom.Courses.Announcements.ModifyAssignees
import Network.Google.Resource.Classroom.Courses.Announcements.Patch
import Network.Google.Resource.Classroom.Courses.CourseWork.Create
import Network.Google.Resource.Classroom.Courses.CourseWork.Delete
import Network.Google.Resource.Classroom.Courses.CourseWork.Get
import Network.Google.Resource.Classroom.Courses.CourseWork.List
import Network.Google.Resource.Classroom.Courses.CourseWork.ModifyAssignees
import Network.Google.Resource.Classroom.Courses.CourseWork.Patch
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Get
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.List
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Patch
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Return
import Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn
import Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Create
import Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Delete
import Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Get
import Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.List
import Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Patch
import Network.Google.Resource.Classroom.Courses.Create
import Network.Google.Resource.Classroom.Courses.Delete
import Network.Google.Resource.Classroom.Courses.Get
import Network.Google.Resource.Classroom.Courses.List
import Network.Google.Resource.Classroom.Courses.Patch
import Network.Google.Resource.Classroom.Courses.Students.Create
import Network.Google.Resource.Classroom.Courses.Students.Delete
import Network.Google.Resource.Classroom.Courses.Students.Get
import Network.Google.Resource.Classroom.Courses.Students.List
import Network.Google.Resource.Classroom.Courses.Teachers.Create
import Network.Google.Resource.Classroom.Courses.Teachers.Delete
import Network.Google.Resource.Classroom.Courses.Teachers.Get
import Network.Google.Resource.Classroom.Courses.Teachers.List
import Network.Google.Resource.Classroom.Courses.Topics.Create
import Network.Google.Resource.Classroom.Courses.Topics.Delete
import Network.Google.Resource.Classroom.Courses.Topics.Get
import Network.Google.Resource.Classroom.Courses.Topics.List
import Network.Google.Resource.Classroom.Courses.Topics.Patch
import Network.Google.Resource.Classroom.Courses.Update
import Network.Google.Resource.Classroom.Invitations.Accept
import Network.Google.Resource.Classroom.Invitations.Create
import Network.Google.Resource.Classroom.Invitations.Delete
import Network.Google.Resource.Classroom.Invitations.Get
import Network.Google.Resource.Classroom.Invitations.List
import Network.Google.Resource.Classroom.Registrations.Create
import Network.Google.Resource.Classroom.Registrations.Delete
import Network.Google.Resource.Classroom.UserProFiles.Get
import Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Create
import Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Get
import Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.List
import Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Patch
import Network.Google.Resource.Classroom.UserProFiles.Guardians.Delete
import Network.Google.Resource.Classroom.UserProFiles.Guardians.Get
import Network.Google.Resource.Classroom.UserProFiles.Guardians.List

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
       :<|> CoursesCourseWorkPatchResource
       :<|> CoursesCourseWorkGetResource
       :<|> CoursesCourseWorkCreateResource
       :<|> CoursesCourseWorkModifyAssigneesResource
       :<|> CoursesCourseWorkDeleteResource
       :<|> CoursesCourseWorkMaterialsListResource
       :<|> CoursesCourseWorkMaterialsPatchResource
       :<|> CoursesCourseWorkMaterialsGetResource
       :<|> CoursesCourseWorkMaterialsCreateResource
       :<|> CoursesCourseWorkMaterialsDeleteResource
       :<|> CoursesTeachersListResource
       :<|> CoursesTeachersGetResource
       :<|> CoursesTeachersCreateResource
       :<|> CoursesTeachersDeleteResource
       :<|> CoursesAnnouncementsListResource
       :<|> CoursesAnnouncementsPatchResource
       :<|> CoursesAnnouncementsGetResource
       :<|> CoursesAnnouncementsCreateResource
       :<|> CoursesAnnouncementsModifyAssigneesResource
       :<|> CoursesAnnouncementsDeleteResource
       :<|> CoursesTopicsListResource
       :<|> CoursesTopicsPatchResource
       :<|> CoursesTopicsGetResource
       :<|> CoursesTopicsCreateResource
       :<|> CoursesTopicsDeleteResource
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
       :<|> UserProFilesGuardiansListResource
       :<|> UserProFilesGuardiansGetResource
       :<|> UserProFilesGuardiansDeleteResource
       :<|> UserProFilesGuardianInvitationsListResource
       :<|> UserProFilesGuardianInvitationsPatchResource
       :<|> UserProFilesGuardianInvitationsGetResource
       :<|> UserProFilesGuardianInvitationsCreateResource
       :<|> UserProFilesGetResource
       :<|> RegistrationsCreateResource
       :<|> RegistrationsDeleteResource
