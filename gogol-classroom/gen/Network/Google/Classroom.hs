{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Classroom
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages classes, rosters, and invitations in Google Classroom.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference>
module Network.Google.Classroom
  ( -- * Configuration
    classroomService,

    -- * OAuth Scopes
    classroomAnnouncementsScope,
    classroomAnnouncementsReadOnlyScope,
    classroomCoursesScope,
    classroomCoursesReadOnlyScope,
    classroomCourseworkMeScope,
    classroomCourseworkMeReadOnlyScope,
    classroomCourseworkStudentsScope,
    classroomCourseworkStudentsReadOnlyScope,
    classroomCourseworkmaterialsScope,
    classroomCourseworkmaterialsReadOnlyScope,
    classroomGuardianlinksMeReadOnlyScope,
    classroomGuardianlinksStudentsScope,
    classroomGuardianlinksStudentsReadOnlyScope,
    classroomProfileEmailsScope,
    classroomProfilePhotosScope,
    classroomPushNotificationsScope,
    classroomRostersScope,
    classroomRostersReadOnlyScope,
    classroomStudentSubmissionsMeReadOnlyScope,
    classroomStudentSubmissionsStudentsReadOnlyScope,
    classroomTopicsScope,
    classroomTopicsReadOnlyScope,

    -- * Resources

    -- ** classroom.courses.aliases.create
    ClassroomCoursesAliasesCreateResource,
    newClassroomCoursesAliasesCreate,
    ClassroomCoursesAliasesCreate,

    -- ** classroom.courses.aliases.delete
    ClassroomCoursesAliasesDeleteResource,
    newClassroomCoursesAliasesDelete,
    ClassroomCoursesAliasesDelete,

    -- ** classroom.courses.aliases.list
    ClassroomCoursesAliasesListResource,
    newClassroomCoursesAliasesList,
    ClassroomCoursesAliasesList,

    -- ** classroom.courses.announcements.create
    ClassroomCoursesAnnouncementsCreateResource,
    newClassroomCoursesAnnouncementsCreate,
    ClassroomCoursesAnnouncementsCreate,

    -- ** classroom.courses.announcements.delete
    ClassroomCoursesAnnouncementsDeleteResource,
    newClassroomCoursesAnnouncementsDelete,
    ClassroomCoursesAnnouncementsDelete,

    -- ** classroom.courses.announcements.get
    ClassroomCoursesAnnouncementsGetResource,
    newClassroomCoursesAnnouncementsGet,
    ClassroomCoursesAnnouncementsGet,

    -- ** classroom.courses.announcements.list
    ClassroomCoursesAnnouncementsListResource,
    newClassroomCoursesAnnouncementsList,
    ClassroomCoursesAnnouncementsList,

    -- ** classroom.courses.announcements.modifyAssignees
    ClassroomCoursesAnnouncementsModifyAssigneesResource,
    newClassroomCoursesAnnouncementsModifyAssignees,
    ClassroomCoursesAnnouncementsModifyAssignees,

    -- ** classroom.courses.announcements.patch
    ClassroomCoursesAnnouncementsPatchResource,
    newClassroomCoursesAnnouncementsPatch,
    ClassroomCoursesAnnouncementsPatch,

    -- ** classroom.courses.courseWork.create
    ClassroomCoursesCourseWorkCreateResource,
    newClassroomCoursesCourseWorkCreate,
    ClassroomCoursesCourseWorkCreate,

    -- ** classroom.courses.courseWork.delete
    ClassroomCoursesCourseWorkDeleteResource,
    newClassroomCoursesCourseWorkDelete,
    ClassroomCoursesCourseWorkDelete,

    -- ** classroom.courses.courseWork.get
    ClassroomCoursesCourseWorkGetResource,
    newClassroomCoursesCourseWorkGet,
    ClassroomCoursesCourseWorkGet,

    -- ** classroom.courses.courseWork.list
    ClassroomCoursesCourseWorkListResource,
    newClassroomCoursesCourseWorkList,
    ClassroomCoursesCourseWorkList,

    -- ** classroom.courses.courseWork.modifyAssignees
    ClassroomCoursesCourseWorkModifyAssigneesResource,
    newClassroomCoursesCourseWorkModifyAssignees,
    ClassroomCoursesCourseWorkModifyAssignees,

    -- ** classroom.courses.courseWork.patch
    ClassroomCoursesCourseWorkPatchResource,
    newClassroomCoursesCourseWorkPatch,
    ClassroomCoursesCourseWorkPatch,

    -- ** classroom.courses.courseWork.studentSubmissions.get
    ClassroomCoursesCourseWorkStudentSubmissionsGetResource,
    newClassroomCoursesCourseWorkStudentSubmissionsGet,
    ClassroomCoursesCourseWorkStudentSubmissionsGet,

    -- ** classroom.courses.courseWork.studentSubmissions.list
    ClassroomCoursesCourseWorkStudentSubmissionsListResource,
    newClassroomCoursesCourseWorkStudentSubmissionsList,
    ClassroomCoursesCourseWorkStudentSubmissionsList,

    -- ** classroom.courses.courseWork.studentSubmissions.modifyAttachments
    ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachmentsResource,
    newClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments,
    ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments,

    -- ** classroom.courses.courseWork.studentSubmissions.patch
    ClassroomCoursesCourseWorkStudentSubmissionsPatchResource,
    newClassroomCoursesCourseWorkStudentSubmissionsPatch,
    ClassroomCoursesCourseWorkStudentSubmissionsPatch,

    -- ** classroom.courses.courseWork.studentSubmissions.reclaim
    ClassroomCoursesCourseWorkStudentSubmissionsReclaimResource,
    newClassroomCoursesCourseWorkStudentSubmissionsReclaim,
    ClassroomCoursesCourseWorkStudentSubmissionsReclaim,

    -- ** classroom.courses.courseWork.studentSubmissions.return
    ClassroomCoursesCourseWorkStudentSubmissionsReturnResource,
    newClassroomCoursesCourseWorkStudentSubmissionsReturn,
    ClassroomCoursesCourseWorkStudentSubmissionsReturn,

    -- ** classroom.courses.courseWork.studentSubmissions.turnIn
    ClassroomCoursesCourseWorkStudentSubmissionsTurnInResource,
    newClassroomCoursesCourseWorkStudentSubmissionsTurnIn,
    ClassroomCoursesCourseWorkStudentSubmissionsTurnIn,

    -- ** classroom.courses.courseWorkMaterials.create
    ClassroomCoursesCourseWorkMaterialsCreateResource,
    newClassroomCoursesCourseWorkMaterialsCreate,
    ClassroomCoursesCourseWorkMaterialsCreate,

    -- ** classroom.courses.courseWorkMaterials.delete
    ClassroomCoursesCourseWorkMaterialsDeleteResource,
    newClassroomCoursesCourseWorkMaterialsDelete,
    ClassroomCoursesCourseWorkMaterialsDelete,

    -- ** classroom.courses.courseWorkMaterials.get
    ClassroomCoursesCourseWorkMaterialsGetResource,
    newClassroomCoursesCourseWorkMaterialsGet,
    ClassroomCoursesCourseWorkMaterialsGet,

    -- ** classroom.courses.courseWorkMaterials.list
    ClassroomCoursesCourseWorkMaterialsListResource,
    newClassroomCoursesCourseWorkMaterialsList,
    ClassroomCoursesCourseWorkMaterialsList,

    -- ** classroom.courses.courseWorkMaterials.patch
    ClassroomCoursesCourseWorkMaterialsPatchResource,
    newClassroomCoursesCourseWorkMaterialsPatch,
    ClassroomCoursesCourseWorkMaterialsPatch,

    -- ** classroom.courses.create
    ClassroomCoursesCreateResource,
    newClassroomCoursesCreate,
    ClassroomCoursesCreate,

    -- ** classroom.courses.delete
    ClassroomCoursesDeleteResource,
    newClassroomCoursesDelete,
    ClassroomCoursesDelete,

    -- ** classroom.courses.get
    ClassroomCoursesGetResource,
    newClassroomCoursesGet,
    ClassroomCoursesGet,

    -- ** classroom.courses.list
    ClassroomCoursesListResource,
    newClassroomCoursesList,
    ClassroomCoursesList,

    -- ** classroom.courses.patch
    ClassroomCoursesPatchResource,
    newClassroomCoursesPatch,
    ClassroomCoursesPatch,

    -- ** classroom.courses.students.create
    ClassroomCoursesStudentsCreateResource,
    newClassroomCoursesStudentsCreate,
    ClassroomCoursesStudentsCreate,

    -- ** classroom.courses.students.delete
    ClassroomCoursesStudentsDeleteResource,
    newClassroomCoursesStudentsDelete,
    ClassroomCoursesStudentsDelete,

    -- ** classroom.courses.students.get
    ClassroomCoursesStudentsGetResource,
    newClassroomCoursesStudentsGet,
    ClassroomCoursesStudentsGet,

    -- ** classroom.courses.students.list
    ClassroomCoursesStudentsListResource,
    newClassroomCoursesStudentsList,
    ClassroomCoursesStudentsList,

    -- ** classroom.courses.teachers.create
    ClassroomCoursesTeachersCreateResource,
    newClassroomCoursesTeachersCreate,
    ClassroomCoursesTeachersCreate,

    -- ** classroom.courses.teachers.delete
    ClassroomCoursesTeachersDeleteResource,
    newClassroomCoursesTeachersDelete,
    ClassroomCoursesTeachersDelete,

    -- ** classroom.courses.teachers.get
    ClassroomCoursesTeachersGetResource,
    newClassroomCoursesTeachersGet,
    ClassroomCoursesTeachersGet,

    -- ** classroom.courses.teachers.list
    ClassroomCoursesTeachersListResource,
    newClassroomCoursesTeachersList,
    ClassroomCoursesTeachersList,

    -- ** classroom.courses.topics.create
    ClassroomCoursesTopicsCreateResource,
    newClassroomCoursesTopicsCreate,
    ClassroomCoursesTopicsCreate,

    -- ** classroom.courses.topics.delete
    ClassroomCoursesTopicsDeleteResource,
    newClassroomCoursesTopicsDelete,
    ClassroomCoursesTopicsDelete,

    -- ** classroom.courses.topics.get
    ClassroomCoursesTopicsGetResource,
    newClassroomCoursesTopicsGet,
    ClassroomCoursesTopicsGet,

    -- ** classroom.courses.topics.list
    ClassroomCoursesTopicsListResource,
    newClassroomCoursesTopicsList,
    ClassroomCoursesTopicsList,

    -- ** classroom.courses.topics.patch
    ClassroomCoursesTopicsPatchResource,
    newClassroomCoursesTopicsPatch,
    ClassroomCoursesTopicsPatch,

    -- ** classroom.courses.update
    ClassroomCoursesUpdateResource,
    newClassroomCoursesUpdate,
    ClassroomCoursesUpdate,

    -- ** classroom.invitations.accept
    ClassroomInvitationsAcceptResource,
    newClassroomInvitationsAccept,
    ClassroomInvitationsAccept,

    -- ** classroom.invitations.create
    ClassroomInvitationsCreateResource,
    newClassroomInvitationsCreate,
    ClassroomInvitationsCreate,

    -- ** classroom.invitations.delete
    ClassroomInvitationsDeleteResource,
    newClassroomInvitationsDelete,
    ClassroomInvitationsDelete,

    -- ** classroom.invitations.get
    ClassroomInvitationsGetResource,
    newClassroomInvitationsGet,
    ClassroomInvitationsGet,

    -- ** classroom.invitations.list
    ClassroomInvitationsListResource,
    newClassroomInvitationsList,
    ClassroomInvitationsList,

    -- ** classroom.registrations.create
    ClassroomRegistrationsCreateResource,
    newClassroomRegistrationsCreate,
    ClassroomRegistrationsCreate,

    -- ** classroom.registrations.delete
    ClassroomRegistrationsDeleteResource,
    newClassroomRegistrationsDelete,
    ClassroomRegistrationsDelete,

    -- ** classroom.userProfiles.get
    ClassroomUserProfilesGetResource,
    newClassroomUserProfilesGet,
    ClassroomUserProfilesGet,

    -- ** classroom.userProfiles.guardianInvitations.create
    ClassroomUserProfilesGuardianInvitationsCreateResource,
    newClassroomUserProfilesGuardianInvitationsCreate,
    ClassroomUserProfilesGuardianInvitationsCreate,

    -- ** classroom.userProfiles.guardianInvitations.get
    ClassroomUserProfilesGuardianInvitationsGetResource,
    newClassroomUserProfilesGuardianInvitationsGet,
    ClassroomUserProfilesGuardianInvitationsGet,

    -- ** classroom.userProfiles.guardianInvitations.list
    ClassroomUserProfilesGuardianInvitationsListResource,
    newClassroomUserProfilesGuardianInvitationsList,
    ClassroomUserProfilesGuardianInvitationsList,

    -- ** classroom.userProfiles.guardianInvitations.patch
    ClassroomUserProfilesGuardianInvitationsPatchResource,
    newClassroomUserProfilesGuardianInvitationsPatch,
    ClassroomUserProfilesGuardianInvitationsPatch,

    -- ** classroom.userProfiles.guardians.delete
    ClassroomUserProfilesGuardiansDeleteResource,
    newClassroomUserProfilesGuardiansDelete,
    ClassroomUserProfilesGuardiansDelete,

    -- ** classroom.userProfiles.guardians.get
    ClassroomUserProfilesGuardiansGetResource,
    newClassroomUserProfilesGuardiansGet,
    ClassroomUserProfilesGuardiansGet,

    -- ** classroom.userProfiles.guardians.list
    ClassroomUserProfilesGuardiansListResource,
    newClassroomUserProfilesGuardiansList,
    ClassroomUserProfilesGuardiansList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

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

    -- ** Date
    Date (..),
    newDate,

    -- ** DriveFile
    DriveFile (..),
    newDriveFile,

    -- ** DriveFolder
    DriveFolder (..),
    newDriveFolder,

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

    -- ** Link
    Link (..),
    newLink,

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

    -- ** StudentSubmission
    StudentSubmission (..),
    newStudentSubmission,

    -- ** StudentSubmission_CourseWorkType
    StudentSubmission_CourseWorkType (..),

    -- ** StudentSubmission_State
    StudentSubmission_State (..),

    -- ** SubmissionHistory
    SubmissionHistory (..),
    newSubmissionHistory,

    -- ** Teacher
    Teacher (..),
    newTeacher,

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

import Network.Google.Classroom.Courses.Aliases.Create
import Network.Google.Classroom.Courses.Aliases.Delete
import Network.Google.Classroom.Courses.Aliases.List
import Network.Google.Classroom.Courses.Announcements.Create
import Network.Google.Classroom.Courses.Announcements.Delete
import Network.Google.Classroom.Courses.Announcements.Get
import Network.Google.Classroom.Courses.Announcements.List
import Network.Google.Classroom.Courses.Announcements.ModifyAssignees
import Network.Google.Classroom.Courses.Announcements.Patch
import Network.Google.Classroom.Courses.CourseWork.Create
import Network.Google.Classroom.Courses.CourseWork.Delete
import Network.Google.Classroom.Courses.CourseWork.Get
import Network.Google.Classroom.Courses.CourseWork.List
import Network.Google.Classroom.Courses.CourseWork.ModifyAssignees
import Network.Google.Classroom.Courses.CourseWork.Patch
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.Get
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.List
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.Patch
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.Return
import Network.Google.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn
import Network.Google.Classroom.Courses.CourseWorkMaterials.Create
import Network.Google.Classroom.Courses.CourseWorkMaterials.Delete
import Network.Google.Classroom.Courses.CourseWorkMaterials.Get
import Network.Google.Classroom.Courses.CourseWorkMaterials.List
import Network.Google.Classroom.Courses.CourseWorkMaterials.Patch
import Network.Google.Classroom.Courses.Create
import Network.Google.Classroom.Courses.Delete
import Network.Google.Classroom.Courses.Get
import Network.Google.Classroom.Courses.List
import Network.Google.Classroom.Courses.Patch
import Network.Google.Classroom.Courses.Students.Create
import Network.Google.Classroom.Courses.Students.Delete
import Network.Google.Classroom.Courses.Students.Get
import Network.Google.Classroom.Courses.Students.List
import Network.Google.Classroom.Courses.Teachers.Create
import Network.Google.Classroom.Courses.Teachers.Delete
import Network.Google.Classroom.Courses.Teachers.Get
import Network.Google.Classroom.Courses.Teachers.List
import Network.Google.Classroom.Courses.Topics.Create
import Network.Google.Classroom.Courses.Topics.Delete
import Network.Google.Classroom.Courses.Topics.Get
import Network.Google.Classroom.Courses.Topics.List
import Network.Google.Classroom.Courses.Topics.Patch
import Network.Google.Classroom.Courses.Update
import Network.Google.Classroom.Invitations.Accept
import Network.Google.Classroom.Invitations.Create
import Network.Google.Classroom.Invitations.Delete
import Network.Google.Classroom.Invitations.Get
import Network.Google.Classroom.Invitations.List
import Network.Google.Classroom.Registrations.Create
import Network.Google.Classroom.Registrations.Delete
import Network.Google.Classroom.Types
import Network.Google.Classroom.UserProfiles.Get
import Network.Google.Classroom.UserProfiles.GuardianInvitations.Create
import Network.Google.Classroom.UserProfiles.GuardianInvitations.Get
import Network.Google.Classroom.UserProfiles.GuardianInvitations.List
import Network.Google.Classroom.UserProfiles.GuardianInvitations.Patch
import Network.Google.Classroom.UserProfiles.Guardians.Delete
import Network.Google.Classroom.UserProfiles.Guardians.Get
import Network.Google.Classroom.UserProfiles.Guardians.List
