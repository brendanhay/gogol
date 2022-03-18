{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Classroom.Types
    (
    -- * Configuration
      classroomService

    -- * OAuth Scopes
    , classroomAnnouncementsScope
    , classroomAnnouncementsReadOnlyScope
    , classroomCoursesScope
    , classroomCoursesReadOnlyScope
    , classroomCourseworkMeScope
    , classroomCourseworkMeReadOnlyScope
    , classroomCourseworkStudentsScope
    , classroomCourseworkStudentsReadOnlyScope
    , classroomCourseworkmaterialsScope
    , classroomCourseworkmaterialsReadOnlyScope
    , classroomGuardianlinksMeReadOnlyScope
    , classroomGuardianlinksStudentsScope
    , classroomGuardianlinksStudentsReadOnlyScope
    , classroomProfileEmailsScope
    , classroomProfilePhotosScope
    , classroomPushNotificationsScope
    , classroomRostersScope
    , classroomRostersReadOnlyScope
    , classroomStudentSubmissionsMeReadOnlyScope
    , classroomStudentSubmissionsStudentsReadOnlyScope
    , classroomTopicsScope
    , classroomTopicsReadOnlyScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Announcement
    , Announcement (..)
    , newAnnouncement

    -- ** Announcement_AssigneeMode
    , Announcement_AssigneeMode (..)

    -- ** Announcement_State
    , Announcement_State (..)

    -- ** Assignment
    , Assignment (..)
    , newAssignment

    -- ** AssignmentSubmission
    , AssignmentSubmission (..)
    , newAssignmentSubmission

    -- ** Attachment
    , Attachment (..)
    , newAttachment

    -- ** CloudPubsubTopic
    , CloudPubsubTopic (..)
    , newCloudPubsubTopic

    -- ** Course
    , Course (..)
    , newCourse

    -- ** Course_CourseState
    , Course_CourseState (..)

    -- ** CourseAlias
    , CourseAlias (..)
    , newCourseAlias

    -- ** CourseMaterial
    , CourseMaterial (..)
    , newCourseMaterial

    -- ** CourseMaterialSet
    , CourseMaterialSet (..)
    , newCourseMaterialSet

    -- ** CourseRosterChangesInfo
    , CourseRosterChangesInfo (..)
    , newCourseRosterChangesInfo

    -- ** CourseWork
    , CourseWork (..)
    , newCourseWork

    -- ** CourseWork_AssigneeMode
    , CourseWork_AssigneeMode (..)

    -- ** CourseWork_State
    , CourseWork_State (..)

    -- ** CourseWork_SubmissionModificationMode
    , CourseWork_SubmissionModificationMode (..)

    -- ** CourseWork_WorkType
    , CourseWork_WorkType (..)

    -- ** CourseWorkChangesInfo
    , CourseWorkChangesInfo (..)
    , newCourseWorkChangesInfo

    -- ** CourseWorkMaterial
    , CourseWorkMaterial (..)
    , newCourseWorkMaterial

    -- ** CourseWorkMaterial_AssigneeMode
    , CourseWorkMaterial_AssigneeMode (..)

    -- ** CourseWorkMaterial_State
    , CourseWorkMaterial_State (..)

    -- ** Date
    , Date (..)
    , newDate

    -- ** DriveFile
    , DriveFile (..)
    , newDriveFile

    -- ** DriveFolder
    , DriveFolder (..)
    , newDriveFolder

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Feed
    , Feed (..)
    , newFeed

    -- ** Feed_FeedType
    , Feed_FeedType (..)

    -- ** Form
    , Form (..)
    , newForm

    -- ** GlobalPermission
    , GlobalPermission (..)
    , newGlobalPermission

    -- ** GlobalPermission_Permission
    , GlobalPermission_Permission (..)

    -- ** GradeCategory
    , GradeCategory (..)
    , newGradeCategory

    -- ** GradeHistory
    , GradeHistory (..)
    , newGradeHistory

    -- ** GradeHistory_GradeChangeType
    , GradeHistory_GradeChangeType (..)

    -- ** GradebookSettings
    , GradebookSettings (..)
    , newGradebookSettings

    -- ** GradebookSettings_CalculationType
    , GradebookSettings_CalculationType (..)

    -- ** GradebookSettings_DisplaySetting
    , GradebookSettings_DisplaySetting (..)

    -- ** Guardian
    , Guardian (..)
    , newGuardian

    -- ** GuardianInvitation
    , GuardianInvitation (..)
    , newGuardianInvitation

    -- ** GuardianInvitation_State
    , GuardianInvitation_State (..)

    -- ** IndividualStudentsOptions
    , IndividualStudentsOptions (..)
    , newIndividualStudentsOptions

    -- ** Invitation
    , Invitation (..)
    , newInvitation

    -- ** Invitation_Role
    , Invitation_Role (..)

    -- ** Link
    , Link (..)
    , newLink

    -- ** ListAnnouncementsResponse
    , ListAnnouncementsResponse (..)
    , newListAnnouncementsResponse

    -- ** ListCourseAliasesResponse
    , ListCourseAliasesResponse (..)
    , newListCourseAliasesResponse

    -- ** ListCourseWorkMaterialResponse
    , ListCourseWorkMaterialResponse (..)
    , newListCourseWorkMaterialResponse

    -- ** ListCourseWorkResponse
    , ListCourseWorkResponse (..)
    , newListCourseWorkResponse

    -- ** ListCoursesResponse
    , ListCoursesResponse (..)
    , newListCoursesResponse

    -- ** ListGuardianInvitationsResponse
    , ListGuardianInvitationsResponse (..)
    , newListGuardianInvitationsResponse

    -- ** ListGuardiansResponse
    , ListGuardiansResponse (..)
    , newListGuardiansResponse

    -- ** ListInvitationsResponse
    , ListInvitationsResponse (..)
    , newListInvitationsResponse

    -- ** ListStudentSubmissionsResponse
    , ListStudentSubmissionsResponse (..)
    , newListStudentSubmissionsResponse

    -- ** ListStudentsResponse
    , ListStudentsResponse (..)
    , newListStudentsResponse

    -- ** ListTeachersResponse
    , ListTeachersResponse (..)
    , newListTeachersResponse

    -- ** ListTopicResponse
    , ListTopicResponse (..)
    , newListTopicResponse

    -- ** Material
    , Material (..)
    , newMaterial

    -- ** ModifyAnnouncementAssigneesRequest
    , ModifyAnnouncementAssigneesRequest (..)
    , newModifyAnnouncementAssigneesRequest

    -- ** ModifyAnnouncementAssigneesRequest_AssigneeMode
    , ModifyAnnouncementAssigneesRequest_AssigneeMode (..)

    -- ** ModifyAttachmentsRequest
    , ModifyAttachmentsRequest (..)
    , newModifyAttachmentsRequest

    -- ** ModifyCourseWorkAssigneesRequest
    , ModifyCourseWorkAssigneesRequest (..)
    , newModifyCourseWorkAssigneesRequest

    -- ** ModifyCourseWorkAssigneesRequest_AssigneeMode
    , ModifyCourseWorkAssigneesRequest_AssigneeMode (..)

    -- ** ModifyIndividualStudentsOptions
    , ModifyIndividualStudentsOptions (..)
    , newModifyIndividualStudentsOptions

    -- ** MultipleChoiceQuestion
    , MultipleChoiceQuestion (..)
    , newMultipleChoiceQuestion

    -- ** MultipleChoiceSubmission
    , MultipleChoiceSubmission (..)
    , newMultipleChoiceSubmission

    -- ** Name
    , Name (..)
    , newName

    -- ** ReclaimStudentSubmissionRequest
    , ReclaimStudentSubmissionRequest (..)
    , newReclaimStudentSubmissionRequest

    -- ** Registration
    , Registration (..)
    , newRegistration

    -- ** ReturnStudentSubmissionRequest
    , ReturnStudentSubmissionRequest (..)
    , newReturnStudentSubmissionRequest

    -- ** SharedDriveFile
    , SharedDriveFile (..)
    , newSharedDriveFile

    -- ** SharedDriveFile_ShareMode
    , SharedDriveFile_ShareMode (..)

    -- ** ShortAnswerSubmission
    , ShortAnswerSubmission (..)
    , newShortAnswerSubmission

    -- ** StateHistory
    , StateHistory (..)
    , newStateHistory

    -- ** StateHistory_State
    , StateHistory_State (..)

    -- ** Student
    , Student (..)
    , newStudent

    -- ** StudentSubmission
    , StudentSubmission (..)
    , newStudentSubmission

    -- ** StudentSubmission_CourseWorkType
    , StudentSubmission_CourseWorkType (..)

    -- ** StudentSubmission_State
    , StudentSubmission_State (..)

    -- ** SubmissionHistory
    , SubmissionHistory (..)
    , newSubmissionHistory

    -- ** Teacher
    , Teacher (..)
    , newTeacher

    -- ** TimeOfDay'
    , TimeOfDay' (..)
    , newTimeOfDay

    -- ** Topic
    , Topic (..)
    , newTopic

    -- ** TurnInStudentSubmissionRequest
    , TurnInStudentSubmissionRequest (..)
    , newTurnInStudentSubmissionRequest

    -- ** UserProfile
    , UserProfile (..)
    , newUserProfile

    -- ** YouTubeVideo
    , YouTubeVideo (..)
    , newYouTubeVideo

    -- ** CoursesAnnouncementsListAnnouncementStates
    , CoursesAnnouncementsListAnnouncementStates (..)

    -- ** CoursesCourseWorkListCourseWorkStates
    , CoursesCourseWorkListCourseWorkStates (..)

    -- ** CoursesCourseWorkStudentSubmissionsListLate
    , CoursesCourseWorkStudentSubmissionsListLate (..)

    -- ** CoursesCourseWorkStudentSubmissionsListStates
    , CoursesCourseWorkStudentSubmissionsListStates (..)

    -- ** CoursesCourseWorkMaterialsListCourseWorkMaterialStates
    , CoursesCourseWorkMaterialsListCourseWorkMaterialStates (..)

    -- ** CoursesListCourseStates
    , CoursesListCourseStates (..)

    -- ** UserProfilesGuardianInvitationsListStates
    , UserProfilesGuardianInvitationsListStates (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Internal.Product
import Gogol.Classroom.Internal.Sum

-- | Default request referring to version @v1@ of the Google Classroom API. This contains the host and root path used as a starting point for constructing service requests.
classroomService :: Core.ServiceConfig
classroomService
  = Core.defaultService (Core.ServiceId "classroom:v1")
      "classroom.googleapis.com"

-- | View and manage announcements in Google Classroom
classroomAnnouncementsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.announcements"]
classroomAnnouncementsScope = Core.Proxy

-- | View announcements in Google Classroom
classroomAnnouncementsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.announcements.readonly"]
classroomAnnouncementsReadOnlyScope = Core.Proxy

-- | See, edit, create, and permanently delete your Google Classroom classes
classroomCoursesScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.courses"]
classroomCoursesScope = Core.Proxy

-- | View your Google Classroom classes
classroomCoursesReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.courses.readonly"]
classroomCoursesReadOnlyScope = Core.Proxy

-- | See, create and edit coursework items including assignments, questions, and grades
classroomCourseworkMeScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.coursework.me"]
classroomCourseworkMeScope = Core.Proxy

-- | View your course work and grades in Google Classroom
classroomCourseworkMeReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.coursework.me.readonly"]
classroomCourseworkMeReadOnlyScope = Core.Proxy

-- | Manage course work and grades for students in the Google Classroom classes you teach and view the course work and grades for classes you administer
classroomCourseworkStudentsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.coursework.students"]
classroomCourseworkStudentsScope = Core.Proxy

-- | View course work and grades for students in the Google Classroom classes you teach or administer
classroomCourseworkStudentsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.coursework.students.readonly"]
classroomCourseworkStudentsReadOnlyScope = Core.Proxy

-- | See, edit, and create classwork materials in Google Classroom
classroomCourseworkmaterialsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.courseworkmaterials"]
classroomCourseworkmaterialsScope = Core.Proxy

-- | See all classwork materials for your Google Classroom classes
classroomCourseworkmaterialsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"]
classroomCourseworkmaterialsReadOnlyScope = Core.Proxy

-- | View your Google Classroom guardians
classroomGuardianlinksMeReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly"]
classroomGuardianlinksMeReadOnlyScope = Core.Proxy

-- | View and manage guardians for students in your Google Classroom classes
classroomGuardianlinksStudentsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.guardianlinks.students"]
classroomGuardianlinksStudentsScope = Core.Proxy

-- | View guardians for students in your Google Classroom classes
classroomGuardianlinksStudentsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly"]
classroomGuardianlinksStudentsReadOnlyScope = Core.Proxy

-- | View the email addresses of people in your classes
classroomProfileEmailsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.profile.emails"]
classroomProfileEmailsScope = Core.Proxy

-- | View the profile photos of people in your classes
classroomProfilePhotosScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.profile.photos"]
classroomProfilePhotosScope = Core.Proxy

-- | Receive notifications about your Google Classroom data
classroomPushNotificationsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.push-notifications"]
classroomPushNotificationsScope = Core.Proxy

-- | Manage your Google Classroom class rosters
classroomRostersScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.rosters"]
classroomRostersScope = Core.Proxy

-- | View your Google Classroom class rosters
classroomRostersReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.rosters.readonly"]
classroomRostersReadOnlyScope = Core.Proxy

-- | View your course work and grades in Google Classroom
classroomStudentSubmissionsMeReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.student-submissions.me.readonly"]
classroomStudentSubmissionsMeReadOnlyScope = Core.Proxy

-- | View course work and grades for students in the Google Classroom classes you teach or administer
classroomStudentSubmissionsStudentsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"]
classroomStudentSubmissionsStudentsReadOnlyScope = Core.Proxy

-- | See, create, and edit topics in Google Classroom
classroomTopicsScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.topics"]
classroomTopicsScope = Core.Proxy

-- | View topics in Google Classroom
classroomTopicsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/classroom.topics.readonly"]
classroomTopicsReadOnlyScope = Core.Proxy
