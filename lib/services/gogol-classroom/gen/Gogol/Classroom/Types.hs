{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Classroom.Types
  ( -- * Configuration
    classroomService,

    -- * OAuth Scopes
    Classroom'Addons'Student,
    Classroom'Addons'Teacher,
    Classroom'Announcements,
    Classroom'Announcements'Readonly,
    Classroom'Courses,
    Classroom'Courses'Readonly,
    Classroom'Coursework'Me,
    Classroom'Coursework'Me'Readonly,
    Classroom'Coursework'Students,
    Classroom'Coursework'Students'Readonly,
    Classroom'Courseworkmaterials,
    Classroom'Courseworkmaterials'Readonly,
    Classroom'Guardianlinks'Me'Readonly,
    Classroom'Guardianlinks'Students,
    Classroom'Guardianlinks'Students'Readonly,
    Classroom'Profile'Emails,
    Classroom'Profile'Photos,
    Classroom'PushNotifications,
    Classroom'Rosters,
    Classroom'Rosters'Readonly,
    Classroom'StudentSubmissions'Me'Readonly,
    Classroom'StudentSubmissions'Students'Readonly,
    Classroom'Topics,
    Classroom'Topics'Readonly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddOnAttachment
    AddOnAttachment (..),
    newAddOnAttachment,

    -- ** AddOnAttachmentStudentSubmission
    AddOnAttachmentStudentSubmission (..),
    newAddOnAttachmentStudentSubmission,

    -- ** AddOnAttachmentStudentSubmission_PostSubmissionState
    AddOnAttachmentStudentSubmission_PostSubmissionState (..),

    -- ** AddOnContext
    AddOnContext (..),
    newAddOnContext,

    -- ** Announcement
    Announcement (..),
    newAnnouncement,

    -- ** Announcement_AssigneeMode
    Announcement_AssigneeMode (..),

    -- ** Announcement_State
    Announcement_State (..),

    -- ** Assignment
    Assignment (..),
    newAssignment,

    -- ** AssignmentSubmission
    AssignmentSubmission (..),
    newAssignmentSubmission,

    -- ** Attachment
    Attachment (..),
    newAttachment,

    -- ** CloudPubsubTopic
    CloudPubsubTopic (..),
    newCloudPubsubTopic,

    -- ** CopyHistory
    CopyHistory (..),
    newCopyHistory,

    -- ** Course
    Course (..),
    newCourse,

    -- ** Course_CourseState
    Course_CourseState (..),

    -- ** CourseAlias
    CourseAlias (..),
    newCourseAlias,

    -- ** CourseMaterial
    CourseMaterial (..),
    newCourseMaterial,

    -- ** CourseMaterialSet
    CourseMaterialSet (..),
    newCourseMaterialSet,

    -- ** CourseRosterChangesInfo
    CourseRosterChangesInfo (..),
    newCourseRosterChangesInfo,

    -- ** CourseWork
    CourseWork (..),
    newCourseWork,

    -- ** CourseWork_AssigneeMode
    CourseWork_AssigneeMode (..),

    -- ** CourseWork_State
    CourseWork_State (..),

    -- ** CourseWork_SubmissionModificationMode
    CourseWork_SubmissionModificationMode (..),

    -- ** CourseWork_WorkType
    CourseWork_WorkType (..),

    -- ** CourseWorkChangesInfo
    CourseWorkChangesInfo (..),
    newCourseWorkChangesInfo,

    -- ** CourseWorkMaterial
    CourseWorkMaterial (..),
    newCourseWorkMaterial,

    -- ** CourseWorkMaterial_AssigneeMode
    CourseWorkMaterial_AssigneeMode (..),

    -- ** CourseWorkMaterial_State
    CourseWorkMaterial_State (..),

    -- ** Criterion
    Criterion (..),
    newCriterion,

    -- ** Date
    Date (..),
    newDate,

    -- ** DriveFile
    DriveFile (..),
    newDriveFile,

    -- ** DriveFolder
    DriveFolder (..),
    newDriveFolder,

    -- ** EmbedUri
    EmbedUri (..),
    newEmbedUri,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Feed
    Feed (..),
    newFeed,

    -- ** Feed_FeedType
    Feed_FeedType (..),

    -- ** Form
    Form (..),
    newForm,

    -- ** GlobalPermission
    GlobalPermission (..),
    newGlobalPermission,

    -- ** GlobalPermission_Permission
    GlobalPermission_Permission (..),

    -- ** GradeCategory
    GradeCategory (..),
    newGradeCategory,

    -- ** GradeHistory
    GradeHistory (..),
    newGradeHistory,

    -- ** GradeHistory_GradeChangeType
    GradeHistory_GradeChangeType (..),

    -- ** GradebookSettings
    GradebookSettings (..),
    newGradebookSettings,

    -- ** GradebookSettings_CalculationType
    GradebookSettings_CalculationType (..),

    -- ** GradebookSettings_DisplaySetting
    GradebookSettings_DisplaySetting (..),

    -- ** Guardian
    Guardian (..),
    newGuardian,

    -- ** GuardianInvitation
    GuardianInvitation (..),
    newGuardianInvitation,

    -- ** GuardianInvitation_State
    GuardianInvitation_State (..),

    -- ** IndividualStudentsOptions
    IndividualStudentsOptions (..),
    newIndividualStudentsOptions,

    -- ** Invitation
    Invitation (..),
    newInvitation,

    -- ** Invitation_Role
    Invitation_Role (..),

    -- ** Level
    Level (..),
    newLevel,

    -- ** Link
    Link (..),
    newLink,

    -- ** ListAddOnAttachmentsResponse
    ListAddOnAttachmentsResponse (..),
    newListAddOnAttachmentsResponse,

    -- ** ListAnnouncementsResponse
    ListAnnouncementsResponse (..),
    newListAnnouncementsResponse,

    -- ** ListCourseAliasesResponse
    ListCourseAliasesResponse (..),
    newListCourseAliasesResponse,

    -- ** ListCourseWorkMaterialResponse
    ListCourseWorkMaterialResponse (..),
    newListCourseWorkMaterialResponse,

    -- ** ListCourseWorkResponse
    ListCourseWorkResponse (..),
    newListCourseWorkResponse,

    -- ** ListCoursesResponse
    ListCoursesResponse (..),
    newListCoursesResponse,

    -- ** ListGuardianInvitationsResponse
    ListGuardianInvitationsResponse (..),
    newListGuardianInvitationsResponse,

    -- ** ListGuardiansResponse
    ListGuardiansResponse (..),
    newListGuardiansResponse,

    -- ** ListInvitationsResponse
    ListInvitationsResponse (..),
    newListInvitationsResponse,

    -- ** ListRubricsResponse
    ListRubricsResponse (..),
    newListRubricsResponse,

    -- ** ListStudentSubmissionsResponse
    ListStudentSubmissionsResponse (..),
    newListStudentSubmissionsResponse,

    -- ** ListStudentsResponse
    ListStudentsResponse (..),
    newListStudentsResponse,

    -- ** ListTeachersResponse
    ListTeachersResponse (..),
    newListTeachersResponse,

    -- ** ListTopicResponse
    ListTopicResponse (..),
    newListTopicResponse,

    -- ** Material
    Material (..),
    newMaterial,

    -- ** ModifyAnnouncementAssigneesRequest
    ModifyAnnouncementAssigneesRequest (..),
    newModifyAnnouncementAssigneesRequest,

    -- ** ModifyAnnouncementAssigneesRequest_AssigneeMode
    ModifyAnnouncementAssigneesRequest_AssigneeMode (..),

    -- ** ModifyAttachmentsRequest
    ModifyAttachmentsRequest (..),
    newModifyAttachmentsRequest,

    -- ** ModifyCourseWorkAssigneesRequest
    ModifyCourseWorkAssigneesRequest (..),
    newModifyCourseWorkAssigneesRequest,

    -- ** ModifyCourseWorkAssigneesRequest_AssigneeMode
    ModifyCourseWorkAssigneesRequest_AssigneeMode (..),

    -- ** ModifyIndividualStudentsOptions
    ModifyIndividualStudentsOptions (..),
    newModifyIndividualStudentsOptions,

    -- ** MultipleChoiceQuestion
    MultipleChoiceQuestion (..),
    newMultipleChoiceQuestion,

    -- ** MultipleChoiceSubmission
    MultipleChoiceSubmission (..),
    newMultipleChoiceSubmission,

    -- ** Name
    Name (..),
    newName,

    -- ** ReclaimStudentSubmissionRequest
    ReclaimStudentSubmissionRequest (..),
    newReclaimStudentSubmissionRequest,

    -- ** Registration
    Registration (..),
    newRegistration,

    -- ** ReturnStudentSubmissionRequest
    ReturnStudentSubmissionRequest (..),
    newReturnStudentSubmissionRequest,

    -- ** Rubric
    Rubric (..),
    newRubric,

    -- ** RubricGrade
    RubricGrade (..),
    newRubricGrade,

    -- ** SharedDriveFile
    SharedDriveFile (..),
    newSharedDriveFile,

    -- ** SharedDriveFile_ShareMode
    SharedDriveFile_ShareMode (..),

    -- ** ShortAnswerSubmission
    ShortAnswerSubmission (..),
    newShortAnswerSubmission,

    -- ** StateHistory
    StateHistory (..),
    newStateHistory,

    -- ** StateHistory_State
    StateHistory_State (..),

    -- ** Student
    Student (..),
    newStudent,

    -- ** StudentContext
    StudentContext (..),
    newStudentContext,

    -- ** StudentSubmission
    StudentSubmission (..),
    newStudentSubmission,

    -- ** StudentSubmission_AssignedRubricGrades
    StudentSubmission_AssignedRubricGrades (..),
    newStudentSubmission_AssignedRubricGrades,

    -- ** StudentSubmission_CourseWorkType
    StudentSubmission_CourseWorkType (..),

    -- ** StudentSubmission_DraftRubricGrades
    StudentSubmission_DraftRubricGrades (..),
    newStudentSubmission_DraftRubricGrades,

    -- ** StudentSubmission_State
    StudentSubmission_State (..),

    -- ** SubmissionHistory
    SubmissionHistory (..),
    newSubmissionHistory,

    -- ** Teacher
    Teacher (..),
    newTeacher,

    -- ** TeacherContext
    TeacherContext (..),
    newTeacherContext,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** Topic
    Topic (..),
    newTopic,

    -- ** TurnInStudentSubmissionRequest
    TurnInStudentSubmissionRequest (..),
    newTurnInStudentSubmissionRequest,

    -- ** UserProfile
    UserProfile (..),
    newUserProfile,

    -- ** YouTubeVideo
    YouTubeVideo (..),
    newYouTubeVideo,

    -- ** CoursesAnnouncementsListAnnouncementStates
    CoursesAnnouncementsListAnnouncementStates (..),

    -- ** CoursesCourseWorkListCourseWorkStates
    CoursesCourseWorkListCourseWorkStates (..),

    -- ** CoursesCourseWorkStudentSubmissionsListLate
    CoursesCourseWorkStudentSubmissionsListLate (..),

    -- ** CoursesCourseWorkStudentSubmissionsListStates
    CoursesCourseWorkStudentSubmissionsListStates (..),

    -- ** CoursesCourseWorkMaterialsListCourseWorkMaterialStates
    CoursesCourseWorkMaterialsListCourseWorkMaterialStates (..),

    -- ** CoursesListCourseStates
    CoursesListCourseStates (..),

    -- ** UserProfilesGuardianInvitationsListStates
    UserProfilesGuardianInvitationsListStates (..),
  )
where

import Gogol.Classroom.Internal.Product
import Gogol.Classroom.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Google Classroom API. This contains the host and root path used as a starting point for constructing service requests.
classroomService :: Core.ServiceConfig
classroomService =
  Core.defaultService
    (Core.ServiceId "classroom:v1")
    "classroom.googleapis.com"

-- | See and update its own attachments to posts in Google Classroom
type Classroom'Addons'Student =
  "https://www.googleapis.com/auth/classroom.addons.student"

-- | See, create, and update its own attachments to posts in classes you teach in Google Classroom
type Classroom'Addons'Teacher =
  "https://www.googleapis.com/auth/classroom.addons.teacher"

-- | View and manage announcements in Google Classroom
type Classroom'Announcements =
  "https://www.googleapis.com/auth/classroom.announcements"

-- | View announcements in Google Classroom
type Classroom'Announcements'Readonly =
  "https://www.googleapis.com/auth/classroom.announcements.readonly"

-- | See, edit, create, and permanently delete your Google Classroom classes
type Classroom'Courses =
  "https://www.googleapis.com/auth/classroom.courses"

-- | View your Google Classroom classes
type Classroom'Courses'Readonly =
  "https://www.googleapis.com/auth/classroom.courses.readonly"

-- | See, create and edit coursework items including assignments, questions, and grades
type Classroom'Coursework'Me =
  "https://www.googleapis.com/auth/classroom.coursework.me"

-- | View your course work and grades in Google Classroom
type Classroom'Coursework'Me'Readonly =
  "https://www.googleapis.com/auth/classroom.coursework.me.readonly"

-- | Manage course work and grades for students in the Google Classroom classes you teach and view the course work and grades for classes you administer
type Classroom'Coursework'Students =
  "https://www.googleapis.com/auth/classroom.coursework.students"

-- | View course work and grades for students in the Google Classroom classes you teach or administer
type Classroom'Coursework'Students'Readonly =
  "https://www.googleapis.com/auth/classroom.coursework.students.readonly"

-- | See, edit, and create classwork materials in Google Classroom
type Classroom'Courseworkmaterials =
  "https://www.googleapis.com/auth/classroom.courseworkmaterials"

-- | See all classwork materials for your Google Classroom classes
type Classroom'Courseworkmaterials'Readonly =
  "https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"

-- | View your Google Classroom guardians
type Classroom'Guardianlinks'Me'Readonly =
  "https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly"

-- | View and manage guardians for students in your Google Classroom classes
type Classroom'Guardianlinks'Students =
  "https://www.googleapis.com/auth/classroom.guardianlinks.students"

-- | View guardians for students in your Google Classroom classes
type Classroom'Guardianlinks'Students'Readonly =
  "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly"

-- | View the email addresses of people in your classes
type Classroom'Profile'Emails =
  "https://www.googleapis.com/auth/classroom.profile.emails"

-- | View the profile photos of people in your classes
type Classroom'Profile'Photos =
  "https://www.googleapis.com/auth/classroom.profile.photos"

-- | Receive notifications about your Google Classroom data
type Classroom'PushNotifications =
  "https://www.googleapis.com/auth/classroom.push-notifications"

-- | Manage your Google Classroom class rosters
type Classroom'Rosters =
  "https://www.googleapis.com/auth/classroom.rosters"

-- | View your Google Classroom class rosters
type Classroom'Rosters'Readonly =
  "https://www.googleapis.com/auth/classroom.rosters.readonly"

-- | View your course work and grades in Google Classroom
type Classroom'StudentSubmissions'Me'Readonly =
  "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly"

-- | View course work and grades for students in the Google Classroom classes you teach or administer
type Classroom'StudentSubmissions'Students'Readonly =
  "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"

-- | See, create, and edit topics in Google Classroom
type Classroom'Topics =
  "https://www.googleapis.com/auth/classroom.topics"

-- | View topics in Google Classroom
type Classroom'Topics'Readonly =
  "https://www.googleapis.com/auth/classroom.topics.readonly"
