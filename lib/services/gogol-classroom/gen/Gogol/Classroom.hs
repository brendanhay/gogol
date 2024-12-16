{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Classroom
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages classes, rosters, and invitations in Google Classroom.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference>
module Gogol.Classroom
    (
    -- * Configuration
      classroomService

    -- * OAuth Scopes
    , Classroom'Announcements
    , Classroom'Announcements'Readonly
    , Classroom'Courses
    , Classroom'Courses'Readonly
    , Classroom'Coursework'Me
    , Classroom'Coursework'Me'Readonly
    , Classroom'Coursework'Students
    , Classroom'Coursework'Students'Readonly
    , Classroom'Courseworkmaterials
    , Classroom'Courseworkmaterials'Readonly
    , Classroom'Guardianlinks'Me'Readonly
    , Classroom'Guardianlinks'Students
    , Classroom'Guardianlinks'Students'Readonly
    , Classroom'Profile'Emails
    , Classroom'Profile'Photos
    , Classroom'PushNotifications
    , Classroom'Rosters
    , Classroom'Rosters'Readonly
    , Classroom'StudentSubmissions'Me'Readonly
    , Classroom'StudentSubmissions'Students'Readonly
    , Classroom'Topics
    , Classroom'Topics'Readonly

    -- * Resources

    -- ** classroom.courses.aliases.create
    , ClassroomCoursesAliasesCreateResource
    , ClassroomCoursesAliasesCreate (..)
    , newClassroomCoursesAliasesCreate

    -- ** classroom.courses.aliases.delete
    , ClassroomCoursesAliasesDeleteResource
    , ClassroomCoursesAliasesDelete (..)
    , newClassroomCoursesAliasesDelete

    -- ** classroom.courses.aliases.list
    , ClassroomCoursesAliasesListResource
    , ClassroomCoursesAliasesList (..)
    , newClassroomCoursesAliasesList

    -- ** classroom.courses.announcements.addOnAttachments.create
    , ClassroomCoursesAnnouncementsAddOnAttachmentsCreateResource
    , ClassroomCoursesAnnouncementsAddOnAttachmentsCreate (..)
    , newClassroomCoursesAnnouncementsAddOnAttachmentsCreate

    -- ** classroom.courses.announcements.addOnAttachments.delete
    , ClassroomCoursesAnnouncementsAddOnAttachmentsDeleteResource
    , ClassroomCoursesAnnouncementsAddOnAttachmentsDelete (..)
    , newClassroomCoursesAnnouncementsAddOnAttachmentsDelete

    -- ** classroom.courses.announcements.addOnAttachments.get
    , ClassroomCoursesAnnouncementsAddOnAttachmentsGetResource
    , ClassroomCoursesAnnouncementsAddOnAttachmentsGet (..)
    , newClassroomCoursesAnnouncementsAddOnAttachmentsGet

    -- ** classroom.courses.announcements.addOnAttachments.list
    , ClassroomCoursesAnnouncementsAddOnAttachmentsListResource
    , ClassroomCoursesAnnouncementsAddOnAttachmentsList (..)
    , newClassroomCoursesAnnouncementsAddOnAttachmentsList

    -- ** classroom.courses.announcements.addOnAttachments.patch
    , ClassroomCoursesAnnouncementsAddOnAttachmentsPatchResource
    , ClassroomCoursesAnnouncementsAddOnAttachmentsPatch (..)
    , newClassroomCoursesAnnouncementsAddOnAttachmentsPatch

    -- ** classroom.courses.announcements.create
    , ClassroomCoursesAnnouncementsCreateResource
    , ClassroomCoursesAnnouncementsCreate (..)
    , newClassroomCoursesAnnouncementsCreate

    -- ** classroom.courses.announcements.delete
    , ClassroomCoursesAnnouncementsDeleteResource
    , ClassroomCoursesAnnouncementsDelete (..)
    , newClassroomCoursesAnnouncementsDelete

    -- ** classroom.courses.announcements.get
    , ClassroomCoursesAnnouncementsGetResource
    , ClassroomCoursesAnnouncementsGet (..)
    , newClassroomCoursesAnnouncementsGet

    -- ** classroom.courses.announcements.getAddOnContext
    , ClassroomCoursesAnnouncementsGetAddOnContextResource
    , ClassroomCoursesAnnouncementsGetAddOnContext (..)
    , newClassroomCoursesAnnouncementsGetAddOnContext

    -- ** classroom.courses.announcements.list
    , ClassroomCoursesAnnouncementsListResource
    , ClassroomCoursesAnnouncementsList (..)
    , newClassroomCoursesAnnouncementsList

    -- ** classroom.courses.announcements.modifyAssignees
    , ClassroomCoursesAnnouncementsModifyAssigneesResource
    , ClassroomCoursesAnnouncementsModifyAssignees (..)
    , newClassroomCoursesAnnouncementsModifyAssignees

    -- ** classroom.courses.announcements.patch
    , ClassroomCoursesAnnouncementsPatchResource
    , ClassroomCoursesAnnouncementsPatch (..)
    , newClassroomCoursesAnnouncementsPatch

    -- ** classroom.courses.courseWork.addOnAttachments.create
    , ClassroomCoursesCourseWorkAddOnAttachmentsCreateResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsCreate (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsCreate

    -- ** classroom.courses.courseWork.addOnAttachments.delete
    , ClassroomCoursesCourseWorkAddOnAttachmentsDeleteResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsDelete (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsDelete

    -- ** classroom.courses.courseWork.addOnAttachments.get
    , ClassroomCoursesCourseWorkAddOnAttachmentsGetResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsGet (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsGet

    -- ** classroom.courses.courseWork.addOnAttachments.list
    , ClassroomCoursesCourseWorkAddOnAttachmentsListResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsList (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsList

    -- ** classroom.courses.courseWork.addOnAttachments.patch
    , ClassroomCoursesCourseWorkAddOnAttachmentsPatchResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsPatch (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsPatch

    -- ** classroom.courses.courseWork.addOnAttachments.studentSubmissions.get
    , ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsGetResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsGet (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsGet

    -- ** classroom.courses.courseWork.addOnAttachments.studentSubmissions.patch
    , ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatchResource
    , ClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch (..)
    , newClassroomCoursesCourseWorkAddOnAttachmentsStudentSubmissionsPatch

    -- ** classroom.courses.courseWork.create
    , ClassroomCoursesCourseWorkCreateResource
    , ClassroomCoursesCourseWorkCreate (..)
    , newClassroomCoursesCourseWorkCreate

    -- ** classroom.courses.courseWork.delete
    , ClassroomCoursesCourseWorkDeleteResource
    , ClassroomCoursesCourseWorkDelete (..)
    , newClassroomCoursesCourseWorkDelete

    -- ** classroom.courses.courseWork.get
    , ClassroomCoursesCourseWorkGetResource
    , ClassroomCoursesCourseWorkGet (..)
    , newClassroomCoursesCourseWorkGet

    -- ** classroom.courses.courseWork.getAddOnContext
    , ClassroomCoursesCourseWorkGetAddOnContextResource
    , ClassroomCoursesCourseWorkGetAddOnContext (..)
    , newClassroomCoursesCourseWorkGetAddOnContext

    -- ** classroom.courses.courseWork.list
    , ClassroomCoursesCourseWorkListResource
    , ClassroomCoursesCourseWorkList (..)
    , newClassroomCoursesCourseWorkList

    -- ** classroom.courses.courseWork.modifyAssignees
    , ClassroomCoursesCourseWorkModifyAssigneesResource
    , ClassroomCoursesCourseWorkModifyAssignees (..)
    , newClassroomCoursesCourseWorkModifyAssignees

    -- ** classroom.courses.courseWork.patch
    , ClassroomCoursesCourseWorkPatchResource
    , ClassroomCoursesCourseWorkPatch (..)
    , newClassroomCoursesCourseWorkPatch

    -- ** classroom.courses.courseWork.rubrics.create
    , ClassroomCoursesCourseWorkRubricsCreateResource
    , ClassroomCoursesCourseWorkRubricsCreate (..)
    , newClassroomCoursesCourseWorkRubricsCreate

    -- ** classroom.courses.courseWork.rubrics.delete
    , ClassroomCoursesCourseWorkRubricsDeleteResource
    , ClassroomCoursesCourseWorkRubricsDelete (..)
    , newClassroomCoursesCourseWorkRubricsDelete

    -- ** classroom.courses.courseWork.rubrics.get
    , ClassroomCoursesCourseWorkRubricsGetResource
    , ClassroomCoursesCourseWorkRubricsGet (..)
    , newClassroomCoursesCourseWorkRubricsGet

    -- ** classroom.courses.courseWork.rubrics.list
    , ClassroomCoursesCourseWorkRubricsListResource
    , ClassroomCoursesCourseWorkRubricsList (..)
    , newClassroomCoursesCourseWorkRubricsList

    -- ** classroom.courses.courseWork.rubrics.patch
    , ClassroomCoursesCourseWorkRubricsPatchResource
    , ClassroomCoursesCourseWorkRubricsPatch (..)
    , newClassroomCoursesCourseWorkRubricsPatch

    -- ** classroom.courses.courseWork.studentSubmissions.get
    , ClassroomCoursesCourseWorkStudentSubmissionsGetResource
    , ClassroomCoursesCourseWorkStudentSubmissionsGet (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsGet

    -- ** classroom.courses.courseWork.studentSubmissions.list
    , ClassroomCoursesCourseWorkStudentSubmissionsListResource
    , ClassroomCoursesCourseWorkStudentSubmissionsList (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsList

    -- ** classroom.courses.courseWork.studentSubmissions.modifyAttachments
    , ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachmentsResource
    , ClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsModifyAttachments

    -- ** classroom.courses.courseWork.studentSubmissions.patch
    , ClassroomCoursesCourseWorkStudentSubmissionsPatchResource
    , ClassroomCoursesCourseWorkStudentSubmissionsPatch (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsPatch

    -- ** classroom.courses.courseWork.studentSubmissions.reclaim
    , ClassroomCoursesCourseWorkStudentSubmissionsReclaimResource
    , ClassroomCoursesCourseWorkStudentSubmissionsReclaim (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsReclaim

    -- ** classroom.courses.courseWork.studentSubmissions.return
    , ClassroomCoursesCourseWorkStudentSubmissionsReturnResource
    , ClassroomCoursesCourseWorkStudentSubmissionsReturn (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsReturn

    -- ** classroom.courses.courseWork.studentSubmissions.turnIn
    , ClassroomCoursesCourseWorkStudentSubmissionsTurnInResource
    , ClassroomCoursesCourseWorkStudentSubmissionsTurnIn (..)
    , newClassroomCoursesCourseWorkStudentSubmissionsTurnIn

    -- ** classroom.courses.courseWork.updateRubric
    , ClassroomCoursesCourseWorkUpdateRubricResource
    , ClassroomCoursesCourseWorkUpdateRubric (..)
    , newClassroomCoursesCourseWorkUpdateRubric

    -- ** classroom.courses.courseWorkMaterials.addOnAttachments.create
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsCreateResource
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsCreate (..)
    , newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsCreate

    -- ** classroom.courses.courseWorkMaterials.addOnAttachments.delete
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsDeleteResource
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsDelete (..)
    , newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsDelete

    -- ** classroom.courses.courseWorkMaterials.addOnAttachments.get
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGetResource
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet (..)
    , newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsGet

    -- ** classroom.courses.courseWorkMaterials.addOnAttachments.list
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsListResource
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList (..)
    , newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsList

    -- ** classroom.courses.courseWorkMaterials.addOnAttachments.patch
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsPatchResource
    , ClassroomCoursesCourseWorkMaterialsAddOnAttachmentsPatch (..)
    , newClassroomCoursesCourseWorkMaterialsAddOnAttachmentsPatch

    -- ** classroom.courses.courseWorkMaterials.create
    , ClassroomCoursesCourseWorkMaterialsCreateResource
    , ClassroomCoursesCourseWorkMaterialsCreate (..)
    , newClassroomCoursesCourseWorkMaterialsCreate

    -- ** classroom.courses.courseWorkMaterials.delete
    , ClassroomCoursesCourseWorkMaterialsDeleteResource
    , ClassroomCoursesCourseWorkMaterialsDelete (..)
    , newClassroomCoursesCourseWorkMaterialsDelete

    -- ** classroom.courses.courseWorkMaterials.get
    , ClassroomCoursesCourseWorkMaterialsGetResource
    , ClassroomCoursesCourseWorkMaterialsGet (..)
    , newClassroomCoursesCourseWorkMaterialsGet

    -- ** classroom.courses.courseWorkMaterials.getAddOnContext
    , ClassroomCoursesCourseWorkMaterialsGetAddOnContextResource
    , ClassroomCoursesCourseWorkMaterialsGetAddOnContext (..)
    , newClassroomCoursesCourseWorkMaterialsGetAddOnContext

    -- ** classroom.courses.courseWorkMaterials.list
    , ClassroomCoursesCourseWorkMaterialsListResource
    , ClassroomCoursesCourseWorkMaterialsList (..)
    , newClassroomCoursesCourseWorkMaterialsList

    -- ** classroom.courses.courseWorkMaterials.patch
    , ClassroomCoursesCourseWorkMaterialsPatchResource
    , ClassroomCoursesCourseWorkMaterialsPatch (..)
    , newClassroomCoursesCourseWorkMaterialsPatch

    -- ** classroom.courses.create
    , ClassroomCoursesCreateResource
    , ClassroomCoursesCreate (..)
    , newClassroomCoursesCreate

    -- ** classroom.courses.delete
    , ClassroomCoursesDeleteResource
    , ClassroomCoursesDelete (..)
    , newClassroomCoursesDelete

    -- ** classroom.courses.get
    , ClassroomCoursesGetResource
    , ClassroomCoursesGet (..)
    , newClassroomCoursesGet

    -- ** classroom.courses.list
    , ClassroomCoursesListResource
    , ClassroomCoursesList (..)
    , newClassroomCoursesList

    -- ** classroom.courses.patch
    , ClassroomCoursesPatchResource
    , ClassroomCoursesPatch (..)
    , newClassroomCoursesPatch

    -- ** classroom.courses.posts.addOnAttachments.create
    , ClassroomCoursesPostsAddOnAttachmentsCreateResource
    , ClassroomCoursesPostsAddOnAttachmentsCreate (..)
    , newClassroomCoursesPostsAddOnAttachmentsCreate

    -- ** classroom.courses.posts.addOnAttachments.delete
    , ClassroomCoursesPostsAddOnAttachmentsDeleteResource
    , ClassroomCoursesPostsAddOnAttachmentsDelete (..)
    , newClassroomCoursesPostsAddOnAttachmentsDelete

    -- ** classroom.courses.posts.addOnAttachments.get
    , ClassroomCoursesPostsAddOnAttachmentsGetResource
    , ClassroomCoursesPostsAddOnAttachmentsGet (..)
    , newClassroomCoursesPostsAddOnAttachmentsGet

    -- ** classroom.courses.posts.addOnAttachments.list
    , ClassroomCoursesPostsAddOnAttachmentsListResource
    , ClassroomCoursesPostsAddOnAttachmentsList (..)
    , newClassroomCoursesPostsAddOnAttachmentsList

    -- ** classroom.courses.posts.addOnAttachments.patch
    , ClassroomCoursesPostsAddOnAttachmentsPatchResource
    , ClassroomCoursesPostsAddOnAttachmentsPatch (..)
    , newClassroomCoursesPostsAddOnAttachmentsPatch

    -- ** classroom.courses.posts.addOnAttachments.studentSubmissions.get
    , ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGetResource
    , ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet (..)
    , newClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsGet

    -- ** classroom.courses.posts.addOnAttachments.studentSubmissions.patch
    , ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsPatchResource
    , ClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsPatch (..)
    , newClassroomCoursesPostsAddOnAttachmentsStudentSubmissionsPatch

    -- ** classroom.courses.posts.getAddOnContext
    , ClassroomCoursesPostsGetAddOnContextResource
    , ClassroomCoursesPostsGetAddOnContext (..)
    , newClassroomCoursesPostsGetAddOnContext

    -- ** classroom.courses.students.create
    , ClassroomCoursesStudentsCreateResource
    , ClassroomCoursesStudentsCreate (..)
    , newClassroomCoursesStudentsCreate

    -- ** classroom.courses.students.delete
    , ClassroomCoursesStudentsDeleteResource
    , ClassroomCoursesStudentsDelete (..)
    , newClassroomCoursesStudentsDelete

    -- ** classroom.courses.students.get
    , ClassroomCoursesStudentsGetResource
    , ClassroomCoursesStudentsGet (..)
    , newClassroomCoursesStudentsGet

    -- ** classroom.courses.students.list
    , ClassroomCoursesStudentsListResource
    , ClassroomCoursesStudentsList (..)
    , newClassroomCoursesStudentsList

    -- ** classroom.courses.teachers.create
    , ClassroomCoursesTeachersCreateResource
    , ClassroomCoursesTeachersCreate (..)
    , newClassroomCoursesTeachersCreate

    -- ** classroom.courses.teachers.delete
    , ClassroomCoursesTeachersDeleteResource
    , ClassroomCoursesTeachersDelete (..)
    , newClassroomCoursesTeachersDelete

    -- ** classroom.courses.teachers.get
    , ClassroomCoursesTeachersGetResource
    , ClassroomCoursesTeachersGet (..)
    , newClassroomCoursesTeachersGet

    -- ** classroom.courses.teachers.list
    , ClassroomCoursesTeachersListResource
    , ClassroomCoursesTeachersList (..)
    , newClassroomCoursesTeachersList

    -- ** classroom.courses.topics.create
    , ClassroomCoursesTopicsCreateResource
    , ClassroomCoursesTopicsCreate (..)
    , newClassroomCoursesTopicsCreate

    -- ** classroom.courses.topics.delete
    , ClassroomCoursesTopicsDeleteResource
    , ClassroomCoursesTopicsDelete (..)
    , newClassroomCoursesTopicsDelete

    -- ** classroom.courses.topics.get
    , ClassroomCoursesTopicsGetResource
    , ClassroomCoursesTopicsGet (..)
    , newClassroomCoursesTopicsGet

    -- ** classroom.courses.topics.list
    , ClassroomCoursesTopicsListResource
    , ClassroomCoursesTopicsList (..)
    , newClassroomCoursesTopicsList

    -- ** classroom.courses.topics.patch
    , ClassroomCoursesTopicsPatchResource
    , ClassroomCoursesTopicsPatch (..)
    , newClassroomCoursesTopicsPatch

    -- ** classroom.courses.update
    , ClassroomCoursesUpdateResource
    , ClassroomCoursesUpdate (..)
    , newClassroomCoursesUpdate

    -- ** classroom.invitations.accept
    , ClassroomInvitationsAcceptResource
    , ClassroomInvitationsAccept (..)
    , newClassroomInvitationsAccept

    -- ** classroom.invitations.create
    , ClassroomInvitationsCreateResource
    , ClassroomInvitationsCreate (..)
    , newClassroomInvitationsCreate

    -- ** classroom.invitations.delete
    , ClassroomInvitationsDeleteResource
    , ClassroomInvitationsDelete (..)
    , newClassroomInvitationsDelete

    -- ** classroom.invitations.get
    , ClassroomInvitationsGetResource
    , ClassroomInvitationsGet (..)
    , newClassroomInvitationsGet

    -- ** classroom.invitations.list
    , ClassroomInvitationsListResource
    , ClassroomInvitationsList (..)
    , newClassroomInvitationsList

    -- ** classroom.registrations.create
    , ClassroomRegistrationsCreateResource
    , ClassroomRegistrationsCreate (..)
    , newClassroomRegistrationsCreate

    -- ** classroom.registrations.delete
    , ClassroomRegistrationsDeleteResource
    , ClassroomRegistrationsDelete (..)
    , newClassroomRegistrationsDelete

    -- ** classroom.userProfiles.get
    , ClassroomUserProfilesGetResource
    , ClassroomUserProfilesGet (..)
    , newClassroomUserProfilesGet

    -- ** classroom.userProfiles.guardianInvitations.create
    , ClassroomUserProfilesGuardianInvitationsCreateResource
    , ClassroomUserProfilesGuardianInvitationsCreate (..)
    , newClassroomUserProfilesGuardianInvitationsCreate

    -- ** classroom.userProfiles.guardianInvitations.get
    , ClassroomUserProfilesGuardianInvitationsGetResource
    , ClassroomUserProfilesGuardianInvitationsGet (..)
    , newClassroomUserProfilesGuardianInvitationsGet

    -- ** classroom.userProfiles.guardianInvitations.list
    , ClassroomUserProfilesGuardianInvitationsListResource
    , ClassroomUserProfilesGuardianInvitationsList (..)
    , newClassroomUserProfilesGuardianInvitationsList

    -- ** classroom.userProfiles.guardianInvitations.patch
    , ClassroomUserProfilesGuardianInvitationsPatchResource
    , ClassroomUserProfilesGuardianInvitationsPatch (..)
    , newClassroomUserProfilesGuardianInvitationsPatch

    -- ** classroom.userProfiles.guardians.delete
    , ClassroomUserProfilesGuardiansDeleteResource
    , ClassroomUserProfilesGuardiansDelete (..)
    , newClassroomUserProfilesGuardiansDelete

    -- ** classroom.userProfiles.guardians.get
    , ClassroomUserProfilesGuardiansGetResource
    , ClassroomUserProfilesGuardiansGet (..)
    , newClassroomUserProfilesGuardiansGet

    -- ** classroom.userProfiles.guardians.list
    , ClassroomUserProfilesGuardiansListResource
    , ClassroomUserProfilesGuardiansList (..)
    , newClassroomUserProfilesGuardiansList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AddOnAttachment
    , AddOnAttachment (..)
    , newAddOnAttachment

    -- ** AddOnAttachmentStudentSubmission
    , AddOnAttachmentStudentSubmission (..)
    , newAddOnAttachmentStudentSubmission

    -- ** AddOnAttachmentStudentSubmission_PostSubmissionState
    , AddOnAttachmentStudentSubmission_PostSubmissionState (..)

    -- ** AddOnContext
    , AddOnContext (..)
    , newAddOnContext

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

    -- ** CopyHistory
    , CopyHistory (..)
    , newCopyHistory

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

    -- ** Criterion
    , Criterion (..)
    , newCriterion

    -- ** Date
    , Date (..)
    , newDate

    -- ** DriveFile
    , DriveFile (..)
    , newDriveFile

    -- ** DriveFolder
    , DriveFolder (..)
    , newDriveFolder

    -- ** EmbedUri
    , EmbedUri (..)
    , newEmbedUri

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

    -- ** Level
    , Level (..)
    , newLevel

    -- ** Link
    , Link (..)
    , newLink

    -- ** ListAddOnAttachmentsResponse
    , ListAddOnAttachmentsResponse (..)
    , newListAddOnAttachmentsResponse

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

    -- ** ListRubricsResponse
    , ListRubricsResponse (..)
    , newListRubricsResponse

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

    -- ** Rubric
    , Rubric (..)
    , newRubric

    -- ** RubricGrade
    , RubricGrade (..)
    , newRubricGrade

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

    -- ** StudentContext
    , StudentContext (..)
    , newStudentContext

    -- ** StudentSubmission
    , StudentSubmission (..)
    , newStudentSubmission

    -- ** StudentSubmission_AssignedRubricGrades
    , StudentSubmission_AssignedRubricGrades (..)
    , newStudentSubmission_AssignedRubricGrades

    -- ** StudentSubmission_CourseWorkType
    , StudentSubmission_CourseWorkType (..)

    -- ** StudentSubmission_DraftRubricGrades
    , StudentSubmission_DraftRubricGrades (..)
    , newStudentSubmission_DraftRubricGrades

    -- ** StudentSubmission_State
    , StudentSubmission_State (..)

    -- ** SubmissionHistory
    , SubmissionHistory (..)
    , newSubmissionHistory

    -- ** Teacher
    , Teacher (..)
    , newTeacher

    -- ** TeacherContext
    , TeacherContext (..)
    , newTeacherContext

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

import Gogol.Classroom.Courses.Aliases.Create
import Gogol.Classroom.Courses.Aliases.Delete
import Gogol.Classroom.Courses.Aliases.List
import Gogol.Classroom.Courses.Announcements.AddOnAttachments.Create
import Gogol.Classroom.Courses.Announcements.AddOnAttachments.Delete
import Gogol.Classroom.Courses.Announcements.AddOnAttachments.Get
import Gogol.Classroom.Courses.Announcements.AddOnAttachments.List
import Gogol.Classroom.Courses.Announcements.AddOnAttachments.Patch
import Gogol.Classroom.Courses.Announcements.Create
import Gogol.Classroom.Courses.Announcements.Delete
import Gogol.Classroom.Courses.Announcements.Get
import Gogol.Classroom.Courses.Announcements.GetAddOnContext
import Gogol.Classroom.Courses.Announcements.List
import Gogol.Classroom.Courses.Announcements.ModifyAssignees
import Gogol.Classroom.Courses.Announcements.Patch
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.Create
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.Delete
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.Get
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.List
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.Patch
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.StudentSubmissions.Get
import Gogol.Classroom.Courses.CourseWork.AddOnAttachments.StudentSubmissions.Patch
import Gogol.Classroom.Courses.CourseWork.Create
import Gogol.Classroom.Courses.CourseWork.Delete
import Gogol.Classroom.Courses.CourseWork.Get
import Gogol.Classroom.Courses.CourseWork.GetAddOnContext
import Gogol.Classroom.Courses.CourseWork.List
import Gogol.Classroom.Courses.CourseWork.ModifyAssignees
import Gogol.Classroom.Courses.CourseWork.Patch
import Gogol.Classroom.Courses.CourseWork.Rubrics.Create
import Gogol.Classroom.Courses.CourseWork.Rubrics.Delete
import Gogol.Classroom.Courses.CourseWork.Rubrics.Get
import Gogol.Classroom.Courses.CourseWork.Rubrics.List
import Gogol.Classroom.Courses.CourseWork.Rubrics.Patch
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Get
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.List
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Patch
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.Return
import Gogol.Classroom.Courses.CourseWork.StudentSubmissions.TurnIn
import Gogol.Classroom.Courses.CourseWork.UpdateRubric
import Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.Create
import Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.Delete
import Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.Get
import Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.List
import Gogol.Classroom.Courses.CourseWorkMaterials.AddOnAttachments.Patch
import Gogol.Classroom.Courses.CourseWorkMaterials.Create
import Gogol.Classroom.Courses.CourseWorkMaterials.Delete
import Gogol.Classroom.Courses.CourseWorkMaterials.Get
import Gogol.Classroom.Courses.CourseWorkMaterials.GetAddOnContext
import Gogol.Classroom.Courses.CourseWorkMaterials.List
import Gogol.Classroom.Courses.CourseWorkMaterials.Patch
import Gogol.Classroom.Courses.Create
import Gogol.Classroom.Courses.Delete
import Gogol.Classroom.Courses.Get
import Gogol.Classroom.Courses.List
import Gogol.Classroom.Courses.Patch
import Gogol.Classroom.Courses.Posts.AddOnAttachments.Create
import Gogol.Classroom.Courses.Posts.AddOnAttachments.Delete
import Gogol.Classroom.Courses.Posts.AddOnAttachments.Get
import Gogol.Classroom.Courses.Posts.AddOnAttachments.List
import Gogol.Classroom.Courses.Posts.AddOnAttachments.Patch
import Gogol.Classroom.Courses.Posts.AddOnAttachments.StudentSubmissions.Get
import Gogol.Classroom.Courses.Posts.AddOnAttachments.StudentSubmissions.Patch
import Gogol.Classroom.Courses.Posts.GetAddOnContext
import Gogol.Classroom.Courses.Students.Create
import Gogol.Classroom.Courses.Students.Delete
import Gogol.Classroom.Courses.Students.Get
import Gogol.Classroom.Courses.Students.List
import Gogol.Classroom.Courses.Teachers.Create
import Gogol.Classroom.Courses.Teachers.Delete
import Gogol.Classroom.Courses.Teachers.Get
import Gogol.Classroom.Courses.Teachers.List
import Gogol.Classroom.Courses.Topics.Create
import Gogol.Classroom.Courses.Topics.Delete
import Gogol.Classroom.Courses.Topics.Get
import Gogol.Classroom.Courses.Topics.List
import Gogol.Classroom.Courses.Topics.Patch
import Gogol.Classroom.Courses.Update
import Gogol.Classroom.Invitations.Accept
import Gogol.Classroom.Invitations.Create
import Gogol.Classroom.Invitations.Delete
import Gogol.Classroom.Invitations.Get
import Gogol.Classroom.Invitations.List
import Gogol.Classroom.Registrations.Create
import Gogol.Classroom.Registrations.Delete
import Gogol.Classroom.Types
import Gogol.Classroom.UserProfiles.Get
import Gogol.Classroom.UserProfiles.GuardianInvitations.Create
import Gogol.Classroom.UserProfiles.GuardianInvitations.Get
import Gogol.Classroom.UserProfiles.GuardianInvitations.List
import Gogol.Classroom.UserProfiles.GuardianInvitations.Patch
import Gogol.Classroom.UserProfiles.Guardians.Delete
import Gogol.Classroom.UserProfiles.Guardians.Get
import Gogol.Classroom.UserProfiles.Guardians.List
