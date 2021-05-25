{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- * CourseWork
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

    -- * GradeHistoryGradeChangeType
    , GradeHistoryGradeChangeType (..)

    -- * GradeHistory
    , GradeHistory
    , gradeHistory
    , ghGradeTimestamp
    , ghMaxPoints
    , ghPointsEarned
    , ghActorUserId
    , ghGradeChangeType

    -- * CourseWorkChangesInfo
    , CourseWorkChangesInfo
    , courseWorkChangesInfo
    , cwciCourseId

    -- * CourseWorkMaterial
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

    -- * ModifyCourseWorkAssigneesRequest
    , ModifyCourseWorkAssigneesRequest
    , modifyCourseWorkAssigneesRequest
    , mcwarAssigneeMode
    , mcwarModifyIndividualStudentsOptions

    -- * CourseCourseState
    , CourseCourseState (..)

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

    -- * Feed
    , Feed
    , feed
    , fCourseWorkChangesInfo
    , fFeedType
    , fCourseRosterChangesInfo

    -- * ModifyAnnouncementAssigneesRequest
    , ModifyAnnouncementAssigneesRequest
    , modifyAnnouncementAssigneesRequest
    , maarAssigneeMode
    , maarModifyIndividualStudentsOptions

    -- * ReturnStudentSubmissionRequest
    , ReturnStudentSubmissionRequest
    , returnStudentSubmissionRequest

    -- * StateHistoryState
    , StateHistoryState (..)

    -- * ReclaimStudentSubmissionRequest
    , ReclaimStudentSubmissionRequest
    , reclaimStudentSubmissionRequest

    -- * CourseWorkWorkType
    , CourseWorkWorkType (..)

    -- * ListCourseWorkResponse
    , ListCourseWorkResponse
    , listCourseWorkResponse
    , lcwrCourseWork
    , lcwrNextPageToken

    -- * Empty
    , Empty
    , empty

    -- * CourseWorkMaterialAssigneeMode
    , CourseWorkMaterialAssigneeMode (..)

    -- * CoursesListCourseStates
    , CoursesListCourseStates (..)

    -- * ModifyCourseWorkAssigneesRequestAssigneeMode
    , ModifyCourseWorkAssigneesRequestAssigneeMode (..)

    -- * GuardianInvitationState
    , GuardianInvitationState (..)

    -- * SharedDriveFileShareMode
    , SharedDriveFileShareMode (..)

    -- * GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- * ListTopicResponse
    , ListTopicResponse
    , listTopicResponse
    , ltrNextPageToken
    , ltrTopic

    -- * Link
    , Link
    , link
    , lThumbnailURL
    , lURL
    , lTitle

    -- * ModifyAnnouncementAssigneesRequestAssigneeMode
    , ModifyAnnouncementAssigneesRequestAssigneeMode (..)

    -- * IndividualStudentsOptions
    , IndividualStudentsOptions
    , individualStudentsOptions
    , isoStudentIds

    -- * AssignmentSubmission
    , AssignmentSubmission
    , assignmentSubmission
    , asAttachments

    -- * ModifyAttachmentsRequest
    , ModifyAttachmentsRequest
    , modifyAttachmentsRequest
    , marAddAttachments

    -- * ListAnnouncementsResponse
    , ListAnnouncementsResponse
    , listAnnouncementsResponse
    , larNextPageToken
    , larAnnouncements

    -- * AnnouncementAssigneeMode
    , AnnouncementAssigneeMode (..)

    -- * CourseWorkState
    , CourseWorkState (..)

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

    -- * StudentSubmissionState
    , StudentSubmissionState (..)

    -- * ShortAnswerSubmission
    , ShortAnswerSubmission
    , shortAnswerSubmission
    , sasAnswer

    -- * CoursesCourseWorkStudentSubmissionsListLate
    , CoursesCourseWorkStudentSubmissionsListLate (..)

    -- * CoursesCourseWorkStudentSubmissionsListStates
    , CoursesCourseWorkStudentSubmissionsListStates (..)

    -- * AnnouncementState
    , AnnouncementState (..)

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

    -- * Topic
    , Topic
    , topic
    , tCourseId
    , tUpdateTime
    , tTopicId
    , tName

    -- * Announcement
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
    , ssSubmissionHistory
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
    , teaCourseId
    , teaProFile
    , teaUserId

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

    -- * Xgafv
    , Xgafv (..)

    -- * UserProFile
    , UserProFile
    , userProFile
    , upfPhotoURL
    , upfVerifiedTeacher
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

    -- * SubmissionHistory
    , SubmissionHistory
    , submissionHistory
    , shGradeHistory
    , shStateHistory

    -- * StateHistory
    , StateHistory
    , stateHistory
    , shState
    , shActorUserId
    , shStateTimestamp

    -- * MultipleChoiceQuestion
    , MultipleChoiceQuestion
    , multipleChoiceQuestion
    , mcqChoices

    -- * Course
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

    -- * InvitationRole
    , InvitationRole (..)

    -- * StudentSubmissionCourseWorkType
    , StudentSubmissionCourseWorkType (..)

    -- * CourseWorkMaterialState
    , CourseWorkMaterialState (..)

    -- * TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- * FeedFeedType
    , FeedFeedType (..)

    -- * CoursesCourseWorkListCourseWorkStates
    , CoursesCourseWorkListCourseWorkStates (..)

    -- * ListGuardianInvitationsResponse
    , ListGuardianInvitationsResponse
    , listGuardianInvitationsResponse
    , lgirNextPageToken
    , lgirGuardianInvitations

    -- * CoursesAnnouncementsListAnnouncementStates
    , CoursesAnnouncementsListAnnouncementStates (..)

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

    -- * CoursesCourseWorkMaterialsListCourseWorkMaterialStates
    , CoursesCourseWorkMaterialsListCourseWorkMaterialStates (..)

    -- * CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- * CourseRosterChangesInfo
    , CourseRosterChangesInfo
    , courseRosterChangesInfo
    , crciCourseId

    -- * ModifyIndividualStudentsOptions
    , ModifyIndividualStudentsOptions
    , modifyIndividualStudentsOptions
    , misoAddStudentIds
    , misoRemoveStudentIds

    -- * CloudPubsubTopic
    , CloudPubsubTopic
    , cloudPubsubTopic
    , cptTopicName

    -- * GlobalPermissionPermission
    , GlobalPermissionPermission (..)

    -- * CourseWorkAssigneeMode
    , CourseWorkAssigneeMode (..)

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
    , lNextPageToken
    , lTeachers

    -- * ListCourseWorkMaterialResponse
    , ListCourseWorkMaterialResponse
    , listCourseWorkMaterialResponse
    , lcwmrCourseWorkMaterial
    , lcwmrNextPageToken

    -- * UserProFilesGuardianInvitationsListStates
    , UserProFilesGuardianInvitationsListStates (..)

    -- * Student
    , Student
    , student
    , sCourseId
    , sProFile
    , sStudentWorkFolder
    , sUserId

    -- * CourseWorkSubmissionModificationMode
    , CourseWorkSubmissionModificationMode (..)

    -- * Registration
    , Registration
    , registration
    , rRegistrationId
    , rExpiryTime
    , rFeed
    , rCloudPubsubTopic
    ) where

import Network.Google.Classroom.Types.Product
import Network.Google.Classroom.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Classroom API. This contains the host and root path used as a starting point for constructing service requests.
classroomService :: ServiceConfig
classroomService
  = defaultService (ServiceId "classroom:v1")
      "classroom.googleapis.com"

-- | View your Google Classroom class rosters
classroomRostersReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.rosters.readonly"]
classroomRostersReadOnlyScope = Proxy

-- | See, edit, create, and permanently delete your Google Classroom classes
classroomCoursesScope :: Proxy '["https://www.googleapis.com/auth/classroom.courses"]
classroomCoursesScope = Proxy

-- | Receive notifications about your Google Classroom data
classroomPushNotificationsScope :: Proxy '["https://www.googleapis.com/auth/classroom.push-notifications"]
classroomPushNotificationsScope = Proxy

-- | View course work and grades for students in the Google Classroom classes
-- you teach or administer
classroomCourseworkStudentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.students.readonly"]
classroomCourseworkStudentsReadOnlyScope = Proxy

-- | View topics in Google Classroom
classroomTopicsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.topics.readonly"]
classroomTopicsReadOnlyScope = Proxy

-- | View the email addresses of people in your classes
classroomProFileEmailsScope :: Proxy '["https://www.googleapis.com/auth/classroom.profile.emails"]
classroomProFileEmailsScope = Proxy

-- | View the profile photos of people in your classes
classroomProFilePhotosScope :: Proxy '["https://www.googleapis.com/auth/classroom.profile.photos"]
classroomProFilePhotosScope = Proxy

-- | See, create and edit coursework items including assignments, questions,
-- and grades
classroomCourseworkMeScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.me"]
classroomCourseworkMeScope = Proxy

-- | View announcements in Google Classroom
classroomAnnouncementsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.announcements.readonly"]
classroomAnnouncementsReadOnlyScope = Proxy

-- | View and manage guardians for students in your Google Classroom classes
classroomGuardianlinksStudentsScope :: Proxy '["https://www.googleapis.com/auth/classroom.guardianlinks.students"]
classroomGuardianlinksStudentsScope = Proxy

-- | See, edit, and create classwork materials in Google Classroom
classroomCourseworkmaterialsScope :: Proxy '["https://www.googleapis.com/auth/classroom.courseworkmaterials"]
classroomCourseworkmaterialsScope = Proxy

-- | View course work and grades for students in the Google Classroom classes
-- you teach or administer
classroomStudentSubmissionsStudentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"]
classroomStudentSubmissionsStudentsReadOnlyScope = Proxy

-- | View your Google Classroom guardians
classroomGuardianlinksMeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly"]
classroomGuardianlinksMeReadOnlyScope = Proxy

-- | Manage your Google Classroom class rosters
classroomRostersScope :: Proxy '["https://www.googleapis.com/auth/classroom.rosters"]
classroomRostersScope = Proxy

-- | View your Google Classroom classes
classroomCoursesReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.courses.readonly"]
classroomCoursesReadOnlyScope = Proxy

-- | Manage course work and grades for students in the Google Classroom
-- classes you teach and view the course work and grades for classes you
-- administer
classroomCourseworkStudentsScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.students"]
classroomCourseworkStudentsScope = Proxy

-- | See, create, and edit topics in Google Classroom
classroomTopicsScope :: Proxy '["https://www.googleapis.com/auth/classroom.topics"]
classroomTopicsScope = Proxy

-- | View and manage announcements in Google Classroom
classroomAnnouncementsScope :: Proxy '["https://www.googleapis.com/auth/classroom.announcements"]
classroomAnnouncementsScope = Proxy

-- | View your course work and grades in Google Classroom
classroomCourseworkMeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.coursework.me.readonly"]
classroomCourseworkMeReadOnlyScope = Proxy

-- | View your course work and grades in Google Classroom
classroomStudentSubmissionsMeReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.student-submissions.me.readonly"]
classroomStudentSubmissionsMeReadOnlyScope = Proxy

-- | See all classwork materials for your Google Classroom classes
classroomCourseworkmaterialsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"]
classroomCourseworkmaterialsReadOnlyScope = Proxy

-- | View guardians for students in your Google Classroom classes
classroomGuardianlinksStudentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly"]
classroomGuardianlinksStudentsReadOnlyScope = Proxy
