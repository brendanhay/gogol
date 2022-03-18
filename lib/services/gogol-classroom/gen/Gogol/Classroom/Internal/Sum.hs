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
-- Module      : Gogol.Classroom.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Classroom.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Announcement_AssigneeMode
    Announcement_AssigneeMode
      (
        Announcement_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
        Announcement_AssigneeMode_ALLSTUDENTS,
        Announcement_AssigneeMode_INDIVIDUALSTUDENTS,
        ..
      ),

    -- * Announcement_State
    Announcement_State
      (
        Announcement_State_ANNOUNCEMENTSTATEUNSPECIFIED,
        Announcement_State_Published,
        Announcement_State_Draft,
        Announcement_State_Deleted,
        ..
      ),

    -- * Course_CourseState
    Course_CourseState
      (
        Course_CourseState_COURSESTATEUNSPECIFIED,
        Course_CourseState_Active,
        Course_CourseState_Archived,
        Course_CourseState_Provisioned,
        Course_CourseState_Declined,
        Course_CourseState_Suspended,
        ..
      ),

    -- * CourseWork_AssigneeMode
    CourseWork_AssigneeMode
      (
        CourseWork_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
        CourseWork_AssigneeMode_ALLSTUDENTS,
        CourseWork_AssigneeMode_INDIVIDUALSTUDENTS,
        ..
      ),

    -- * CourseWork_State
    CourseWork_State
      (
        CourseWork_State_COURSEWORKSTATEUNSPECIFIED,
        CourseWork_State_Published,
        CourseWork_State_Draft,
        CourseWork_State_Deleted,
        ..
      ),

    -- * CourseWork_SubmissionModificationMode
    CourseWork_SubmissionModificationMode
      (
        CourseWork_SubmissionModificationMode_SUBMISSIONMODIFICATIONMODEUNSPECIFIED,
        CourseWork_SubmissionModificationMode_MODIFIABLEUNTILTURNEDIN,
        CourseWork_SubmissionModificationMode_Modifiable,
        ..
      ),

    -- * CourseWork_WorkType
    CourseWork_WorkType
      (
        CourseWork_WorkType_COURSEWORKTYPEUNSPECIFIED,
        CourseWork_WorkType_Assignment,
        CourseWork_WorkType_SHORTANSWERQUESTION,
        CourseWork_WorkType_MULTIPLECHOICEQUESTION,
        ..
      ),

    -- * CourseWorkMaterial_AssigneeMode
    CourseWorkMaterial_AssigneeMode
      (
        CourseWorkMaterial_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
        CourseWorkMaterial_AssigneeMode_ALLSTUDENTS,
        CourseWorkMaterial_AssigneeMode_INDIVIDUALSTUDENTS,
        ..
      ),

    -- * CourseWorkMaterial_State
    CourseWorkMaterial_State
      (
        CourseWorkMaterial_State_COURSEWORKMATERIALSTATEUNSPECIFIED,
        CourseWorkMaterial_State_Published,
        CourseWorkMaterial_State_Draft,
        CourseWorkMaterial_State_Deleted,
        ..
      ),

    -- * Feed_FeedType
    Feed_FeedType
      (
        Feed_FeedType_FEEDTYPEUNSPECIFIED,
        Feed_FeedType_DOMAINROSTERCHANGES,
        Feed_FeedType_COURSEROSTERCHANGES,
        Feed_FeedType_COURSEWORKCHANGES,
        ..
      ),

    -- * GlobalPermission_Permission
    GlobalPermission_Permission
      (
        GlobalPermission_Permission_PERMISSIONUNSPECIFIED,
        GlobalPermission_Permission_CREATECOURSE,
        ..
      ),

    -- * GradeHistory_GradeChangeType
    GradeHistory_GradeChangeType
      (
        GradeHistory_GradeChangeType_UNKNOWNGRADECHANGETYPE,
        GradeHistory_GradeChangeType_DRAFTGRADEPOINTSEARNEDCHANGE,
        GradeHistory_GradeChangeType_ASSIGNEDGRADEPOINTSEARNEDCHANGE,
        GradeHistory_GradeChangeType_MAXPOINTSCHANGE,
        ..
      ),

    -- * GradebookSettings_CalculationType
    GradebookSettings_CalculationType
      (
        GradebookSettings_CalculationType_CALCULATIONTYPEUNSPECIFIED,
        GradebookSettings_CalculationType_TOTALPOINTS,
        GradebookSettings_CalculationType_WEIGHTEDCATEGORIES,
        ..
      ),

    -- * GradebookSettings_DisplaySetting
    GradebookSettings_DisplaySetting
      (
        GradebookSettings_DisplaySetting_DISPLAYSETTINGUNSPECIFIED,
        GradebookSettings_DisplaySetting_SHOWOVERALLGRADE,
        GradebookSettings_DisplaySetting_HIDEOVERALLGRADE,
        GradebookSettings_DisplaySetting_SHOWTEACHERSONLY,
        ..
      ),

    -- * GuardianInvitation_State
    GuardianInvitation_State
      (
        GuardianInvitation_State_GUARDIANINVITATIONSTATEUNSPECIFIED,
        GuardianInvitation_State_Pending,
        GuardianInvitation_State_Complete,
        ..
      ),

    -- * Invitation_Role
    Invitation_Role
      (
        Invitation_Role_COURSEROLEUNSPECIFIED,
        Invitation_Role_Student,
        Invitation_Role_Teacher,
        Invitation_Role_Owner,
        ..
      ),

    -- * ModifyAnnouncementAssigneesRequest_AssigneeMode
    ModifyAnnouncementAssigneesRequest_AssigneeMode
      (
        ModifyAnnouncementAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
        ModifyAnnouncementAssigneesRequest_AssigneeMode_ALLSTUDENTS,
        ModifyAnnouncementAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS,
        ..
      ),

    -- * ModifyCourseWorkAssigneesRequest_AssigneeMode
    ModifyCourseWorkAssigneesRequest_AssigneeMode
      (
        ModifyCourseWorkAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
        ModifyCourseWorkAssigneesRequest_AssigneeMode_ALLSTUDENTS,
        ModifyCourseWorkAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS,
        ..
      ),

    -- * SharedDriveFile_ShareMode
    SharedDriveFile_ShareMode
      (
        SharedDriveFile_ShareMode_UNKNOWNSHAREMODE,
        SharedDriveFile_ShareMode_View,
        SharedDriveFile_ShareMode_Edit,
        SharedDriveFile_ShareMode_STUDENTCOPY,
        ..
      ),

    -- * StateHistory_State
    StateHistory_State
      (
        StateHistory_State_STATEUNSPECIFIED,
        StateHistory_State_Created,
        StateHistory_State_TURNEDIN,
        StateHistory_State_Returned,
        StateHistory_State_RECLAIMEDBYSTUDENT,
        StateHistory_State_STUDENTEDITEDAFTERTURNIN,
        ..
      ),

    -- * StudentSubmission_CourseWorkType
    StudentSubmission_CourseWorkType
      (
        StudentSubmission_CourseWorkType_COURSEWORKTYPEUNSPECIFIED,
        StudentSubmission_CourseWorkType_Assignment,
        StudentSubmission_CourseWorkType_SHORTANSWERQUESTION,
        StudentSubmission_CourseWorkType_MULTIPLECHOICEQUESTION,
        ..
      ),

    -- * StudentSubmission_State
    StudentSubmission_State
      (
        StudentSubmission_State_SUBMISSIONSTATEUNSPECIFIED,
        StudentSubmission_State_New,
        StudentSubmission_State_Created,
        StudentSubmission_State_TURNEDIN,
        StudentSubmission_State_Returned,
        StudentSubmission_State_RECLAIMEDBYSTUDENT,
        ..
      ),

    -- * CoursesAnnouncementsListAnnouncementStates
    CoursesAnnouncementsListAnnouncementStates
      (
        CoursesAnnouncementsListAnnouncementStates_ANNOUNCEMENTSTATEUNSPECIFIED,
        CoursesAnnouncementsListAnnouncementStates_Published,
        CoursesAnnouncementsListAnnouncementStates_Draft,
        CoursesAnnouncementsListAnnouncementStates_Deleted,
        ..
      ),

    -- * CoursesCourseWorkListCourseWorkStates
    CoursesCourseWorkListCourseWorkStates
      (
        CoursesCourseWorkListCourseWorkStates_COURSEWORKSTATEUNSPECIFIED,
        CoursesCourseWorkListCourseWorkStates_Published,
        CoursesCourseWorkListCourseWorkStates_Draft,
        CoursesCourseWorkListCourseWorkStates_Deleted,
        ..
      ),

    -- * CoursesCourseWorkStudentSubmissionsListLate
    CoursesCourseWorkStudentSubmissionsListLate
      (
        CoursesCourseWorkStudentSubmissionsListLate_LATEVALUESUNSPECIFIED,
        CoursesCourseWorkStudentSubmissionsListLate_LATEONLY,
        CoursesCourseWorkStudentSubmissionsListLate_NOTLATEONLY,
        ..
      ),

    -- * CoursesCourseWorkStudentSubmissionsListStates
    CoursesCourseWorkStudentSubmissionsListStates
      (
        CoursesCourseWorkStudentSubmissionsListStates_SUBMISSIONSTATEUNSPECIFIED,
        CoursesCourseWorkStudentSubmissionsListStates_New,
        CoursesCourseWorkStudentSubmissionsListStates_Created,
        CoursesCourseWorkStudentSubmissionsListStates_TURNEDIN,
        CoursesCourseWorkStudentSubmissionsListStates_Returned,
        CoursesCourseWorkStudentSubmissionsListStates_RECLAIMEDBYSTUDENT,
        ..
      ),

    -- * CoursesCourseWorkMaterialsListCourseWorkMaterialStates
    CoursesCourseWorkMaterialsListCourseWorkMaterialStates
      (
        CoursesCourseWorkMaterialsListCourseWorkMaterialStates_COURSEWORKMATERIALSTATEUNSPECIFIED,
        CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Published,
        CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Draft,
        CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Deleted,
        ..
      ),

    -- * CoursesListCourseStates
    CoursesListCourseStates
      (
        CoursesListCourseStates_COURSESTATEUNSPECIFIED,
        CoursesListCourseStates_Active,
        CoursesListCourseStates_Archived,
        CoursesListCourseStates_Provisioned,
        CoursesListCourseStates_Declined,
        CoursesListCourseStates_Suspended,
        ..
      ),

    -- * UserProfilesGuardianInvitationsListStates
    UserProfilesGuardianInvitationsListStates
      (
        UserProfilesGuardianInvitationsListStates_GUARDIANINVITATIONSTATEUNSPECIFIED,
        UserProfilesGuardianInvitationsListStates_Pending,
        UserProfilesGuardianInvitationsListStates_Complete,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Assignee mode of the announcement. If unspecified, the default value is @ALL_STUDENTS@.
newtype Announcement_AssigneeMode = Announcement_AssigneeMode { fromAnnouncement_AssigneeMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No mode specified. This is never returned.
pattern Announcement_AssigneeMode_ASSIGNEEMODEUNSPECIFIED :: Announcement_AssigneeMode
pattern Announcement_AssigneeMode_ASSIGNEEMODEUNSPECIFIED = Announcement_AssigneeMode "ASSIGNEE_MODE_UNSPECIFIED"

-- | All students can see the item. This is the default state.
pattern Announcement_AssigneeMode_ALLSTUDENTS :: Announcement_AssigneeMode
pattern Announcement_AssigneeMode_ALLSTUDENTS = Announcement_AssigneeMode "ALL_STUDENTS"

-- | A subset of the students can see the item.
pattern Announcement_AssigneeMode_INDIVIDUALSTUDENTS :: Announcement_AssigneeMode
pattern Announcement_AssigneeMode_INDIVIDUALSTUDENTS = Announcement_AssigneeMode "INDIVIDUAL_STUDENTS"

{-# COMPLETE
  Announcement_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
  Announcement_AssigneeMode_ALLSTUDENTS,
  Announcement_AssigneeMode_INDIVIDUALSTUDENTS,
  Announcement_AssigneeMode #-}

-- | Status of this announcement. If unspecified, the default state is @DRAFT@.
newtype Announcement_State = Announcement_State { fromAnnouncement_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This is never returned.
pattern Announcement_State_ANNOUNCEMENTSTATEUNSPECIFIED :: Announcement_State
pattern Announcement_State_ANNOUNCEMENTSTATEUNSPECIFIED = Announcement_State "ANNOUNCEMENT_STATE_UNSPECIFIED"

-- | Status for announcement that has been published. This is the default state.
pattern Announcement_State_Published :: Announcement_State
pattern Announcement_State_Published = Announcement_State "PUBLISHED"

-- | Status for an announcement that is not yet published. Announcement in this state is visible only to course teachers and domain administrators.
pattern Announcement_State_Draft :: Announcement_State
pattern Announcement_State_Draft = Announcement_State "DRAFT"

-- | Status for announcement that was published but is now deleted. Announcement in this state is visible only to course teachers and domain administrators. Announcement in this state is deleted after some time.
pattern Announcement_State_Deleted :: Announcement_State
pattern Announcement_State_Deleted = Announcement_State "DELETED"

{-# COMPLETE
  Announcement_State_ANNOUNCEMENTSTATEUNSPECIFIED,
  Announcement_State_Published,
  Announcement_State_Draft,
  Announcement_State_Deleted,
  Announcement_State #-}

-- | State of the course. If unspecified, the default state is @PROVISIONED@.
newtype Course_CourseState = Course_CourseState { fromCourse_CourseState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No course state. No returned Course message will use this value.
pattern Course_CourseState_COURSESTATEUNSPECIFIED :: Course_CourseState
pattern Course_CourseState_COURSESTATEUNSPECIFIED = Course_CourseState "COURSE_STATE_UNSPECIFIED"

-- | The course is active.
pattern Course_CourseState_Active :: Course_CourseState
pattern Course_CourseState_Active = Course_CourseState "ACTIVE"

-- | The course has been archived. You cannot modify it except to change it to a different state.
pattern Course_CourseState_Archived :: Course_CourseState
pattern Course_CourseState_Archived = Course_CourseState "ARCHIVED"

-- | The course has been created, but not yet activated. It is accessible by the primary teacher and domain administrators, who may modify it or change it to the @ACTIVE@ or @DECLINED@ states. A course may only be changed to @PROVISIONED@ if it is in the @DECLINED@ state.
pattern Course_CourseState_Provisioned :: Course_CourseState
pattern Course_CourseState_Provisioned = Course_CourseState "PROVISIONED"

-- | The course has been created, but declined. It is accessible by the course owner and domain administrators, though it will not be displayed in the web UI. You cannot modify the course except to change it to the @PROVISIONED@ state. A course may only be changed to @DECLINED@ if it is in the @PROVISIONED@ state.
pattern Course_CourseState_Declined :: Course_CourseState
pattern Course_CourseState_Declined = Course_CourseState "DECLINED"

-- | The course has been suspended. You cannot modify the course, and only the user identified by the @owner_id@ can view the course. A course may be placed in this state if it potentially violates the Terms of Service.
pattern Course_CourseState_Suspended :: Course_CourseState
pattern Course_CourseState_Suspended = Course_CourseState "SUSPENDED"

{-# COMPLETE
  Course_CourseState_COURSESTATEUNSPECIFIED,
  Course_CourseState_Active,
  Course_CourseState_Archived,
  Course_CourseState_Provisioned,
  Course_CourseState_Declined,
  Course_CourseState_Suspended,
  Course_CourseState #-}

-- | Assignee mode of the coursework. If unspecified, the default value is @ALL_STUDENTS@.
newtype CourseWork_AssigneeMode = CourseWork_AssigneeMode { fromCourseWork_AssigneeMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No mode specified. This is never returned.
pattern CourseWork_AssigneeMode_ASSIGNEEMODEUNSPECIFIED :: CourseWork_AssigneeMode
pattern CourseWork_AssigneeMode_ASSIGNEEMODEUNSPECIFIED = CourseWork_AssigneeMode "ASSIGNEE_MODE_UNSPECIFIED"

-- | All students can see the item. This is the default state.
pattern CourseWork_AssigneeMode_ALLSTUDENTS :: CourseWork_AssigneeMode
pattern CourseWork_AssigneeMode_ALLSTUDENTS = CourseWork_AssigneeMode "ALL_STUDENTS"

-- | A subset of the students can see the item.
pattern CourseWork_AssigneeMode_INDIVIDUALSTUDENTS :: CourseWork_AssigneeMode
pattern CourseWork_AssigneeMode_INDIVIDUALSTUDENTS = CourseWork_AssigneeMode "INDIVIDUAL_STUDENTS"

{-# COMPLETE
  CourseWork_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
  CourseWork_AssigneeMode_ALLSTUDENTS,
  CourseWork_AssigneeMode_INDIVIDUALSTUDENTS,
  CourseWork_AssigneeMode #-}

-- | Status of this course work. If unspecified, the default state is @DRAFT@.
newtype CourseWork_State = CourseWork_State { fromCourseWork_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This is never returned.
pattern CourseWork_State_COURSEWORKSTATEUNSPECIFIED :: CourseWork_State
pattern CourseWork_State_COURSEWORKSTATEUNSPECIFIED = CourseWork_State "COURSE_WORK_STATE_UNSPECIFIED"

-- | Status for work that has been published. This is the default state.
pattern CourseWork_State_Published :: CourseWork_State
pattern CourseWork_State_Published = CourseWork_State "PUBLISHED"

-- | Status for work that is not yet published. Work in this state is visible only to course teachers and domain administrators.
pattern CourseWork_State_Draft :: CourseWork_State
pattern CourseWork_State_Draft = CourseWork_State "DRAFT"

-- | Status for work that was published but is now deleted. Work in this state is visible only to course teachers and domain administrators. Work in this state is deleted after some time.
pattern CourseWork_State_Deleted :: CourseWork_State
pattern CourseWork_State_Deleted = CourseWork_State "DELETED"

{-# COMPLETE
  CourseWork_State_COURSEWORKSTATEUNSPECIFIED,
  CourseWork_State_Published,
  CourseWork_State_Draft,
  CourseWork_State_Deleted,
  CourseWork_State #-}

-- | Setting to determine when students are allowed to modify submissions. If unspecified, the default value is @MODIFIABLE_UNTIL_TURNED_IN@.
newtype CourseWork_SubmissionModificationMode = CourseWork_SubmissionModificationMode { fromCourseWork_SubmissionModificationMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No modification mode specified. This is never returned.
pattern CourseWork_SubmissionModificationMode_SUBMISSIONMODIFICATIONMODEUNSPECIFIED :: CourseWork_SubmissionModificationMode
pattern CourseWork_SubmissionModificationMode_SUBMISSIONMODIFICATIONMODEUNSPECIFIED = CourseWork_SubmissionModificationMode "SUBMISSION_MODIFICATION_MODE_UNSPECIFIED"

-- | Submissions can be modified before being turned in.
pattern CourseWork_SubmissionModificationMode_MODIFIABLEUNTILTURNEDIN :: CourseWork_SubmissionModificationMode
pattern CourseWork_SubmissionModificationMode_MODIFIABLEUNTILTURNEDIN = CourseWork_SubmissionModificationMode "MODIFIABLE_UNTIL_TURNED_IN"

-- | Submissions can be modified at any time.
pattern CourseWork_SubmissionModificationMode_Modifiable :: CourseWork_SubmissionModificationMode
pattern CourseWork_SubmissionModificationMode_Modifiable = CourseWork_SubmissionModificationMode "MODIFIABLE"

{-# COMPLETE
  CourseWork_SubmissionModificationMode_SUBMISSIONMODIFICATIONMODEUNSPECIFIED,
  CourseWork_SubmissionModificationMode_MODIFIABLEUNTILTURNEDIN,
  CourseWork_SubmissionModificationMode_Modifiable,
  CourseWork_SubmissionModificationMode #-}

-- | Type of this course work. The type is set when the course work is created and cannot be changed.
newtype CourseWork_WorkType = CourseWork_WorkType { fromCourseWork_WorkType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No work type specified. This is never returned.
pattern CourseWork_WorkType_COURSEWORKTYPEUNSPECIFIED :: CourseWork_WorkType
pattern CourseWork_WorkType_COURSEWORKTYPEUNSPECIFIED = CourseWork_WorkType "COURSE_WORK_TYPE_UNSPECIFIED"

-- | An assignment.
pattern CourseWork_WorkType_Assignment :: CourseWork_WorkType
pattern CourseWork_WorkType_Assignment = CourseWork_WorkType "ASSIGNMENT"

-- | A short answer question.
pattern CourseWork_WorkType_SHORTANSWERQUESTION :: CourseWork_WorkType
pattern CourseWork_WorkType_SHORTANSWERQUESTION = CourseWork_WorkType "SHORT_ANSWER_QUESTION"

-- | A multiple-choice question.
pattern CourseWork_WorkType_MULTIPLECHOICEQUESTION :: CourseWork_WorkType
pattern CourseWork_WorkType_MULTIPLECHOICEQUESTION = CourseWork_WorkType "MULTIPLE_CHOICE_QUESTION"

{-# COMPLETE
  CourseWork_WorkType_COURSEWORKTYPEUNSPECIFIED,
  CourseWork_WorkType_Assignment,
  CourseWork_WorkType_SHORTANSWERQUESTION,
  CourseWork_WorkType_MULTIPLECHOICEQUESTION,
  CourseWork_WorkType #-}

-- | Assignee mode of the course work material. If unspecified, the default value is @ALL_STUDENTS@.
newtype CourseWorkMaterial_AssigneeMode = CourseWorkMaterial_AssigneeMode { fromCourseWorkMaterial_AssigneeMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No mode specified. This is never returned.
pattern CourseWorkMaterial_AssigneeMode_ASSIGNEEMODEUNSPECIFIED :: CourseWorkMaterial_AssigneeMode
pattern CourseWorkMaterial_AssigneeMode_ASSIGNEEMODEUNSPECIFIED = CourseWorkMaterial_AssigneeMode "ASSIGNEE_MODE_UNSPECIFIED"

-- | All students can see the item. This is the default state.
pattern CourseWorkMaterial_AssigneeMode_ALLSTUDENTS :: CourseWorkMaterial_AssigneeMode
pattern CourseWorkMaterial_AssigneeMode_ALLSTUDENTS = CourseWorkMaterial_AssigneeMode "ALL_STUDENTS"

-- | A subset of the students can see the item.
pattern CourseWorkMaterial_AssigneeMode_INDIVIDUALSTUDENTS :: CourseWorkMaterial_AssigneeMode
pattern CourseWorkMaterial_AssigneeMode_INDIVIDUALSTUDENTS = CourseWorkMaterial_AssigneeMode "INDIVIDUAL_STUDENTS"

{-# COMPLETE
  CourseWorkMaterial_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
  CourseWorkMaterial_AssigneeMode_ALLSTUDENTS,
  CourseWorkMaterial_AssigneeMode_INDIVIDUALSTUDENTS,
  CourseWorkMaterial_AssigneeMode #-}

-- | Status of this course work material. If unspecified, the default state is @DRAFT@.
newtype CourseWorkMaterial_State = CourseWorkMaterial_State { fromCourseWorkMaterial_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This is never returned.
pattern CourseWorkMaterial_State_COURSEWORKMATERIALSTATEUNSPECIFIED :: CourseWorkMaterial_State
pattern CourseWorkMaterial_State_COURSEWORKMATERIALSTATEUNSPECIFIED = CourseWorkMaterial_State "COURSEWORK_MATERIAL_STATE_UNSPECIFIED"

-- | Status for course work material that has been published. This is the default state.
pattern CourseWorkMaterial_State_Published :: CourseWorkMaterial_State
pattern CourseWorkMaterial_State_Published = CourseWorkMaterial_State "PUBLISHED"

-- | Status for an course work material that is not yet published. Course work material in this state is visible only to course teachers and domain administrators.
pattern CourseWorkMaterial_State_Draft :: CourseWorkMaterial_State
pattern CourseWorkMaterial_State_Draft = CourseWorkMaterial_State "DRAFT"

-- | Status for course work material that was published but is now deleted. Course work material in this state is visible only to course teachers and domain administrators. Course work material in this state is deleted after some time.
pattern CourseWorkMaterial_State_Deleted :: CourseWorkMaterial_State
pattern CourseWorkMaterial_State_Deleted = CourseWorkMaterial_State "DELETED"

{-# COMPLETE
  CourseWorkMaterial_State_COURSEWORKMATERIALSTATEUNSPECIFIED,
  CourseWorkMaterial_State_Published,
  CourseWorkMaterial_State_Draft,
  CourseWorkMaterial_State_Deleted,
  CourseWorkMaterial_State #-}

-- | The type of feed.
newtype Feed_FeedType = Feed_FeedType { fromFeed_FeedType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should never be returned or provided.
pattern Feed_FeedType_FEEDTYPEUNSPECIFIED :: Feed_FeedType
pattern Feed_FeedType_FEEDTYPEUNSPECIFIED = Feed_FeedType "FEED_TYPE_UNSPECIFIED"

-- | All roster changes for a particular domain. Notifications will be generated whenever a user joins or leaves a course. No notifications will be generated when an invitation is created or deleted, but notifications will be generated when a user joins a course by accepting an invitation.
pattern Feed_FeedType_DOMAINROSTERCHANGES :: Feed_FeedType
pattern Feed_FeedType_DOMAINROSTERCHANGES = Feed_FeedType "DOMAIN_ROSTER_CHANGES"

-- | All roster changes for a particular course. Notifications will be generated whenever a user joins or leaves a course. No notifications will be generated when an invitation is created or deleted, but notifications will be generated when a user joins a course by accepting an invitation.
pattern Feed_FeedType_COURSEROSTERCHANGES :: Feed_FeedType
pattern Feed_FeedType_COURSEROSTERCHANGES = Feed_FeedType "COURSE_ROSTER_CHANGES"

-- | All course work activity for a particular course. Notifications will be generated when a CourseWork or StudentSubmission object is created or modified. No notification will be generated when a StudentSubmission object is created in connection with the creation or modification of its parent CourseWork object (but a notification will be generated for that CourseWork object\'s creation or modification).
pattern Feed_FeedType_COURSEWORKCHANGES :: Feed_FeedType
pattern Feed_FeedType_COURSEWORKCHANGES = Feed_FeedType "COURSE_WORK_CHANGES"

{-# COMPLETE
  Feed_FeedType_FEEDTYPEUNSPECIFIED,
  Feed_FeedType_DOMAINROSTERCHANGES,
  Feed_FeedType_COURSEROSTERCHANGES,
  Feed_FeedType_COURSEWORKCHANGES,
  Feed_FeedType #-}

-- | Permission value.
newtype GlobalPermission_Permission = GlobalPermission_Permission { fromGlobalPermission_Permission :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No permission is specified. This is not returned and is not a valid value.
pattern GlobalPermission_Permission_PERMISSIONUNSPECIFIED :: GlobalPermission_Permission
pattern GlobalPermission_Permission_PERMISSIONUNSPECIFIED = GlobalPermission_Permission "PERMISSION_UNSPECIFIED"

-- | User is permitted to create a course.
pattern GlobalPermission_Permission_CREATECOURSE :: GlobalPermission_Permission
pattern GlobalPermission_Permission_CREATECOURSE = GlobalPermission_Permission "CREATE_COURSE"

{-# COMPLETE
  GlobalPermission_Permission_PERMISSIONUNSPECIFIED,
  GlobalPermission_Permission_CREATECOURSE,
  GlobalPermission_Permission #-}

-- | The type of grade change at this time in the submission grade history.
newtype GradeHistory_GradeChangeType = GradeHistory_GradeChangeType { fromGradeHistory_GradeChangeType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No grade change type specified. This should never be returned.
pattern GradeHistory_GradeChangeType_UNKNOWNGRADECHANGETYPE :: GradeHistory_GradeChangeType
pattern GradeHistory_GradeChangeType_UNKNOWNGRADECHANGETYPE = GradeHistory_GradeChangeType "UNKNOWN_GRADE_CHANGE_TYPE"

-- | A change in the numerator of the draft grade.
pattern GradeHistory_GradeChangeType_DRAFTGRADEPOINTSEARNEDCHANGE :: GradeHistory_GradeChangeType
pattern GradeHistory_GradeChangeType_DRAFTGRADEPOINTSEARNEDCHANGE = GradeHistory_GradeChangeType "DRAFT_GRADE_POINTS_EARNED_CHANGE"

-- | A change in the numerator of the assigned grade.
pattern GradeHistory_GradeChangeType_ASSIGNEDGRADEPOINTSEARNEDCHANGE :: GradeHistory_GradeChangeType
pattern GradeHistory_GradeChangeType_ASSIGNEDGRADEPOINTSEARNEDCHANGE = GradeHistory_GradeChangeType "ASSIGNED_GRADE_POINTS_EARNED_CHANGE"

-- | A change in the denominator of the grade.
pattern GradeHistory_GradeChangeType_MAXPOINTSCHANGE :: GradeHistory_GradeChangeType
pattern GradeHistory_GradeChangeType_MAXPOINTSCHANGE = GradeHistory_GradeChangeType "MAX_POINTS_CHANGE"

{-# COMPLETE
  GradeHistory_GradeChangeType_UNKNOWNGRADECHANGETYPE,
  GradeHistory_GradeChangeType_DRAFTGRADEPOINTSEARNEDCHANGE,
  GradeHistory_GradeChangeType_ASSIGNEDGRADEPOINTSEARNEDCHANGE,
  GradeHistory_GradeChangeType_MAXPOINTSCHANGE,
  GradeHistory_GradeChangeType #-}

-- | Indicates how the overall grade is calculated.
newtype GradebookSettings_CalculationType = GradebookSettings_CalculationType { fromGradebookSettings_CalculationType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No method specified. This is never returned.
pattern GradebookSettings_CalculationType_CALCULATIONTYPEUNSPECIFIED :: GradebookSettings_CalculationType
pattern GradebookSettings_CalculationType_CALCULATIONTYPEUNSPECIFIED = GradebookSettings_CalculationType "CALCULATION_TYPE_UNSPECIFIED"

-- | Overall grade is the sum of grades divided by the sum of total points regardless of category.
pattern GradebookSettings_CalculationType_TOTALPOINTS :: GradebookSettings_CalculationType
pattern GradebookSettings_CalculationType_TOTALPOINTS = GradebookSettings_CalculationType "TOTAL_POINTS"

-- | Overall grade is the weighted average by category.
pattern GradebookSettings_CalculationType_WEIGHTEDCATEGORIES :: GradebookSettings_CalculationType
pattern GradebookSettings_CalculationType_WEIGHTEDCATEGORIES = GradebookSettings_CalculationType "WEIGHTED_CATEGORIES"

{-# COMPLETE
  GradebookSettings_CalculationType_CALCULATIONTYPEUNSPECIFIED,
  GradebookSettings_CalculationType_TOTALPOINTS,
  GradebookSettings_CalculationType_WEIGHTEDCATEGORIES,
  GradebookSettings_CalculationType #-}

-- | Indicates who can see the overall grade..
newtype GradebookSettings_DisplaySetting = GradebookSettings_DisplaySetting { fromGradebookSettings_DisplaySetting :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No setting specified. This is never returned.
pattern GradebookSettings_DisplaySetting_DISPLAYSETTINGUNSPECIFIED :: GradebookSettings_DisplaySetting
pattern GradebookSettings_DisplaySetting_DISPLAYSETTINGUNSPECIFIED = GradebookSettings_DisplaySetting "DISPLAY_SETTING_UNSPECIFIED"

-- | Shows overall grade in the gradebook and student profile to both teachers and students.
pattern GradebookSettings_DisplaySetting_SHOWOVERALLGRADE :: GradebookSettings_DisplaySetting
pattern GradebookSettings_DisplaySetting_SHOWOVERALLGRADE = GradebookSettings_DisplaySetting "SHOW_OVERALL_GRADE"

-- | Does not show overall grade in the gradebook or student profile.
pattern GradebookSettings_DisplaySetting_HIDEOVERALLGRADE :: GradebookSettings_DisplaySetting
pattern GradebookSettings_DisplaySetting_HIDEOVERALLGRADE = GradebookSettings_DisplaySetting "HIDE_OVERALL_GRADE"

-- | Shows the overall grade to teachers in the gradebook and student profile. Hides from students in their student profile.
pattern GradebookSettings_DisplaySetting_SHOWTEACHERSONLY :: GradebookSettings_DisplaySetting
pattern GradebookSettings_DisplaySetting_SHOWTEACHERSONLY = GradebookSettings_DisplaySetting "SHOW_TEACHERS_ONLY"

{-# COMPLETE
  GradebookSettings_DisplaySetting_DISPLAYSETTINGUNSPECIFIED,
  GradebookSettings_DisplaySetting_SHOWOVERALLGRADE,
  GradebookSettings_DisplaySetting_HIDEOVERALLGRADE,
  GradebookSettings_DisplaySetting_SHOWTEACHERSONLY,
  GradebookSettings_DisplaySetting #-}

-- | The state that this invitation is in.
newtype GuardianInvitation_State = GuardianInvitation_State { fromGuardianInvitation_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should never be returned.
pattern GuardianInvitation_State_GUARDIANINVITATIONSTATEUNSPECIFIED :: GuardianInvitation_State
pattern GuardianInvitation_State_GUARDIANINVITATIONSTATEUNSPECIFIED = GuardianInvitation_State "GUARDIAN_INVITATION_STATE_UNSPECIFIED"

-- | The invitation is active and awaiting a response.
pattern GuardianInvitation_State_Pending :: GuardianInvitation_State
pattern GuardianInvitation_State_Pending = GuardianInvitation_State "PENDING"

-- | The invitation is no longer active. It may have been accepted, declined, withdrawn or it may have expired.
pattern GuardianInvitation_State_Complete :: GuardianInvitation_State
pattern GuardianInvitation_State_Complete = GuardianInvitation_State "COMPLETE"

{-# COMPLETE
  GuardianInvitation_State_GUARDIANINVITATIONSTATEUNSPECIFIED,
  GuardianInvitation_State_Pending,
  GuardianInvitation_State_Complete,
  GuardianInvitation_State #-}

-- | Role to invite the user to have. Must not be @COURSE_ROLE_UNSPECIFIED@.
newtype Invitation_Role = Invitation_Role { fromInvitation_Role :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No course role.
pattern Invitation_Role_COURSEROLEUNSPECIFIED :: Invitation_Role
pattern Invitation_Role_COURSEROLEUNSPECIFIED = Invitation_Role "COURSE_ROLE_UNSPECIFIED"

-- | Student in the course.
pattern Invitation_Role_Student :: Invitation_Role
pattern Invitation_Role_Student = Invitation_Role "STUDENT"

-- | Teacher of the course.
pattern Invitation_Role_Teacher :: Invitation_Role
pattern Invitation_Role_Teacher = Invitation_Role "TEACHER"

-- | Owner of the course.
pattern Invitation_Role_Owner :: Invitation_Role
pattern Invitation_Role_Owner = Invitation_Role "OWNER"

{-# COMPLETE
  Invitation_Role_COURSEROLEUNSPECIFIED,
  Invitation_Role_Student,
  Invitation_Role_Teacher,
  Invitation_Role_Owner,
  Invitation_Role #-}

-- | Mode of the announcement describing whether it is accessible by all students or specified individual students.
newtype ModifyAnnouncementAssigneesRequest_AssigneeMode = ModifyAnnouncementAssigneesRequest_AssigneeMode { fromModifyAnnouncementAssigneesRequest_AssigneeMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No mode specified. This is never returned.
pattern ModifyAnnouncementAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED :: ModifyAnnouncementAssigneesRequest_AssigneeMode
pattern ModifyAnnouncementAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED = ModifyAnnouncementAssigneesRequest_AssigneeMode "ASSIGNEE_MODE_UNSPECIFIED"

-- | All students can see the item. This is the default state.
pattern ModifyAnnouncementAssigneesRequest_AssigneeMode_ALLSTUDENTS :: ModifyAnnouncementAssigneesRequest_AssigneeMode
pattern ModifyAnnouncementAssigneesRequest_AssigneeMode_ALLSTUDENTS = ModifyAnnouncementAssigneesRequest_AssigneeMode "ALL_STUDENTS"

-- | A subset of the students can see the item.
pattern ModifyAnnouncementAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS :: ModifyAnnouncementAssigneesRequest_AssigneeMode
pattern ModifyAnnouncementAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS = ModifyAnnouncementAssigneesRequest_AssigneeMode "INDIVIDUAL_STUDENTS"

{-# COMPLETE
  ModifyAnnouncementAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
  ModifyAnnouncementAssigneesRequest_AssigneeMode_ALLSTUDENTS,
  ModifyAnnouncementAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS,
  ModifyAnnouncementAssigneesRequest_AssigneeMode #-}

-- | Mode of the coursework describing whether it will be assigned to all students or specified individual students.
newtype ModifyCourseWorkAssigneesRequest_AssigneeMode = ModifyCourseWorkAssigneesRequest_AssigneeMode { fromModifyCourseWorkAssigneesRequest_AssigneeMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No mode specified. This is never returned.
pattern ModifyCourseWorkAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED :: ModifyCourseWorkAssigneesRequest_AssigneeMode
pattern ModifyCourseWorkAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED = ModifyCourseWorkAssigneesRequest_AssigneeMode "ASSIGNEE_MODE_UNSPECIFIED"

-- | All students can see the item. This is the default state.
pattern ModifyCourseWorkAssigneesRequest_AssigneeMode_ALLSTUDENTS :: ModifyCourseWorkAssigneesRequest_AssigneeMode
pattern ModifyCourseWorkAssigneesRequest_AssigneeMode_ALLSTUDENTS = ModifyCourseWorkAssigneesRequest_AssigneeMode "ALL_STUDENTS"

-- | A subset of the students can see the item.
pattern ModifyCourseWorkAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS :: ModifyCourseWorkAssigneesRequest_AssigneeMode
pattern ModifyCourseWorkAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS = ModifyCourseWorkAssigneesRequest_AssigneeMode "INDIVIDUAL_STUDENTS"

{-# COMPLETE
  ModifyCourseWorkAssigneesRequest_AssigneeMode_ASSIGNEEMODEUNSPECIFIED,
  ModifyCourseWorkAssigneesRequest_AssigneeMode_ALLSTUDENTS,
  ModifyCourseWorkAssigneesRequest_AssigneeMode_INDIVIDUALSTUDENTS,
  ModifyCourseWorkAssigneesRequest_AssigneeMode #-}

-- | Mechanism by which students access the Drive item.
newtype SharedDriveFile_ShareMode = SharedDriveFile_ShareMode { fromSharedDriveFile_ShareMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No sharing mode specified. This should never be returned.
pattern SharedDriveFile_ShareMode_UNKNOWNSHAREMODE :: SharedDriveFile_ShareMode
pattern SharedDriveFile_ShareMode_UNKNOWNSHAREMODE = SharedDriveFile_ShareMode "UNKNOWN_SHARE_MODE"

-- | Students can view the shared file.
pattern SharedDriveFile_ShareMode_View :: SharedDriveFile_ShareMode
pattern SharedDriveFile_ShareMode_View = SharedDriveFile_ShareMode "VIEW"

-- | Students can edit the shared file.
pattern SharedDriveFile_ShareMode_Edit :: SharedDriveFile_ShareMode
pattern SharedDriveFile_ShareMode_Edit = SharedDriveFile_ShareMode "EDIT"

-- | Students have a personal copy of the shared file.
pattern SharedDriveFile_ShareMode_STUDENTCOPY :: SharedDriveFile_ShareMode
pattern SharedDriveFile_ShareMode_STUDENTCOPY = SharedDriveFile_ShareMode "STUDENT_COPY"

{-# COMPLETE
  SharedDriveFile_ShareMode_UNKNOWNSHAREMODE,
  SharedDriveFile_ShareMode_View,
  SharedDriveFile_ShareMode_Edit,
  SharedDriveFile_ShareMode_STUDENTCOPY,
  SharedDriveFile_ShareMode #-}

-- | The workflow pipeline stage.
newtype StateHistory_State = StateHistory_State { fromStateHistory_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This should never be returned.
pattern StateHistory_State_STATEUNSPECIFIED :: StateHistory_State
pattern StateHistory_State_STATEUNSPECIFIED = StateHistory_State "STATE_UNSPECIFIED"

-- | The Submission has been created.
pattern StateHistory_State_Created :: StateHistory_State
pattern StateHistory_State_Created = StateHistory_State "CREATED"

-- | The student has turned in an assigned document, which may or may not be a template.
pattern StateHistory_State_TURNEDIN :: StateHistory_State
pattern StateHistory_State_TURNEDIN = StateHistory_State "TURNED_IN"

-- | The teacher has returned the assigned document to the student.
pattern StateHistory_State_Returned :: StateHistory_State
pattern StateHistory_State_Returned = StateHistory_State "RETURNED"

-- | The student turned in the assigned document, and then chose to \"unsubmit\" the assignment, giving the student control again as the owner.
pattern StateHistory_State_RECLAIMEDBYSTUDENT :: StateHistory_State
pattern StateHistory_State_RECLAIMEDBYSTUDENT = StateHistory_State "RECLAIMED_BY_STUDENT"

-- | The student edited their submission after turning it in. Currently, only used by Questions, when the student edits their answer.
pattern StateHistory_State_STUDENTEDITEDAFTERTURNIN :: StateHistory_State
pattern StateHistory_State_STUDENTEDITEDAFTERTURNIN = StateHistory_State "STUDENT_EDITED_AFTER_TURN_IN"

{-# COMPLETE
  StateHistory_State_STATEUNSPECIFIED,
  StateHistory_State_Created,
  StateHistory_State_TURNEDIN,
  StateHistory_State_Returned,
  StateHistory_State_RECLAIMEDBYSTUDENT,
  StateHistory_State_STUDENTEDITEDAFTERTURNIN,
  StateHistory_State #-}

-- | Type of course work this submission is for. Read-only.
newtype StudentSubmission_CourseWorkType = StudentSubmission_CourseWorkType { fromStudentSubmission_CourseWorkType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No work type specified. This is never returned.
pattern StudentSubmission_CourseWorkType_COURSEWORKTYPEUNSPECIFIED :: StudentSubmission_CourseWorkType
pattern StudentSubmission_CourseWorkType_COURSEWORKTYPEUNSPECIFIED = StudentSubmission_CourseWorkType "COURSE_WORK_TYPE_UNSPECIFIED"

-- | An assignment.
pattern StudentSubmission_CourseWorkType_Assignment :: StudentSubmission_CourseWorkType
pattern StudentSubmission_CourseWorkType_Assignment = StudentSubmission_CourseWorkType "ASSIGNMENT"

-- | A short answer question.
pattern StudentSubmission_CourseWorkType_SHORTANSWERQUESTION :: StudentSubmission_CourseWorkType
pattern StudentSubmission_CourseWorkType_SHORTANSWERQUESTION = StudentSubmission_CourseWorkType "SHORT_ANSWER_QUESTION"

-- | A multiple-choice question.
pattern StudentSubmission_CourseWorkType_MULTIPLECHOICEQUESTION :: StudentSubmission_CourseWorkType
pattern StudentSubmission_CourseWorkType_MULTIPLECHOICEQUESTION = StudentSubmission_CourseWorkType "MULTIPLE_CHOICE_QUESTION"

{-# COMPLETE
  StudentSubmission_CourseWorkType_COURSEWORKTYPEUNSPECIFIED,
  StudentSubmission_CourseWorkType_Assignment,
  StudentSubmission_CourseWorkType_SHORTANSWERQUESTION,
  StudentSubmission_CourseWorkType_MULTIPLECHOICEQUESTION,
  StudentSubmission_CourseWorkType #-}

-- | State of this submission. Read-only.
newtype StudentSubmission_State = StudentSubmission_State { fromStudentSubmission_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This should never be returned.
pattern StudentSubmission_State_SUBMISSIONSTATEUNSPECIFIED :: StudentSubmission_State
pattern StudentSubmission_State_SUBMISSIONSTATEUNSPECIFIED = StudentSubmission_State "SUBMISSION_STATE_UNSPECIFIED"

-- | The student has never accessed this submission. Attachments are not returned and timestamps is not set.
pattern StudentSubmission_State_New :: StudentSubmission_State
pattern StudentSubmission_State_New = StudentSubmission_State "NEW"

-- | Has been created.
pattern StudentSubmission_State_Created :: StudentSubmission_State
pattern StudentSubmission_State_Created = StudentSubmission_State "CREATED"

-- | Has been turned in to the teacher.
pattern StudentSubmission_State_TURNEDIN :: StudentSubmission_State
pattern StudentSubmission_State_TURNEDIN = StudentSubmission_State "TURNED_IN"

-- | Has been returned to the student.
pattern StudentSubmission_State_Returned :: StudentSubmission_State
pattern StudentSubmission_State_Returned = StudentSubmission_State "RETURNED"

-- | Student chose to \"unsubmit\" the assignment.
pattern StudentSubmission_State_RECLAIMEDBYSTUDENT :: StudentSubmission_State
pattern StudentSubmission_State_RECLAIMEDBYSTUDENT = StudentSubmission_State "RECLAIMED_BY_STUDENT"

{-# COMPLETE
  StudentSubmission_State_SUBMISSIONSTATEUNSPECIFIED,
  StudentSubmission_State_New,
  StudentSubmission_State_Created,
  StudentSubmission_State_TURNEDIN,
  StudentSubmission_State_Returned,
  StudentSubmission_State_RECLAIMEDBYSTUDENT,
  StudentSubmission_State #-}

-- | Restriction on the @state@ of announcements returned. If this argument is left unspecified, the default value is @PUBLISHED@.
newtype CoursesAnnouncementsListAnnouncementStates = CoursesAnnouncementsListAnnouncementStates { fromCoursesAnnouncementsListAnnouncementStates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This is never returned.
pattern CoursesAnnouncementsListAnnouncementStates_ANNOUNCEMENTSTATEUNSPECIFIED :: CoursesAnnouncementsListAnnouncementStates
pattern CoursesAnnouncementsListAnnouncementStates_ANNOUNCEMENTSTATEUNSPECIFIED = CoursesAnnouncementsListAnnouncementStates "ANNOUNCEMENT_STATE_UNSPECIFIED"

-- | Status for announcement that has been published. This is the default state.
pattern CoursesAnnouncementsListAnnouncementStates_Published :: CoursesAnnouncementsListAnnouncementStates
pattern CoursesAnnouncementsListAnnouncementStates_Published = CoursesAnnouncementsListAnnouncementStates "PUBLISHED"

-- | Status for an announcement that is not yet published. Announcement in this state is visible only to course teachers and domain administrators.
pattern CoursesAnnouncementsListAnnouncementStates_Draft :: CoursesAnnouncementsListAnnouncementStates
pattern CoursesAnnouncementsListAnnouncementStates_Draft = CoursesAnnouncementsListAnnouncementStates "DRAFT"

-- | Status for announcement that was published but is now deleted. Announcement in this state is visible only to course teachers and domain administrators. Announcement in this state is deleted after some time.
pattern CoursesAnnouncementsListAnnouncementStates_Deleted :: CoursesAnnouncementsListAnnouncementStates
pattern CoursesAnnouncementsListAnnouncementStates_Deleted = CoursesAnnouncementsListAnnouncementStates "DELETED"

{-# COMPLETE
  CoursesAnnouncementsListAnnouncementStates_ANNOUNCEMENTSTATEUNSPECIFIED,
  CoursesAnnouncementsListAnnouncementStates_Published,
  CoursesAnnouncementsListAnnouncementStates_Draft,
  CoursesAnnouncementsListAnnouncementStates_Deleted,
  CoursesAnnouncementsListAnnouncementStates #-}

-- | Restriction on the work status to return. Only courseWork that matches is returned. If unspecified, items with a work status of @PUBLISHED@ is returned.
newtype CoursesCourseWorkListCourseWorkStates = CoursesCourseWorkListCourseWorkStates { fromCoursesCourseWorkListCourseWorkStates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This is never returned.
pattern CoursesCourseWorkListCourseWorkStates_COURSEWORKSTATEUNSPECIFIED :: CoursesCourseWorkListCourseWorkStates
pattern CoursesCourseWorkListCourseWorkStates_COURSEWORKSTATEUNSPECIFIED = CoursesCourseWorkListCourseWorkStates "COURSE_WORK_STATE_UNSPECIFIED"

-- | Status for work that has been published. This is the default state.
pattern CoursesCourseWorkListCourseWorkStates_Published :: CoursesCourseWorkListCourseWorkStates
pattern CoursesCourseWorkListCourseWorkStates_Published = CoursesCourseWorkListCourseWorkStates "PUBLISHED"

-- | Status for work that is not yet published. Work in this state is visible only to course teachers and domain administrators.
pattern CoursesCourseWorkListCourseWorkStates_Draft :: CoursesCourseWorkListCourseWorkStates
pattern CoursesCourseWorkListCourseWorkStates_Draft = CoursesCourseWorkListCourseWorkStates "DRAFT"

-- | Status for work that was published but is now deleted. Work in this state is visible only to course teachers and domain administrators. Work in this state is deleted after some time.
pattern CoursesCourseWorkListCourseWorkStates_Deleted :: CoursesCourseWorkListCourseWorkStates
pattern CoursesCourseWorkListCourseWorkStates_Deleted = CoursesCourseWorkListCourseWorkStates "DELETED"

{-# COMPLETE
  CoursesCourseWorkListCourseWorkStates_COURSEWORKSTATEUNSPECIFIED,
  CoursesCourseWorkListCourseWorkStates_Published,
  CoursesCourseWorkListCourseWorkStates_Draft,
  CoursesCourseWorkListCourseWorkStates_Deleted,
  CoursesCourseWorkListCourseWorkStates #-}

-- | Requested lateness value. If specified, returned student submissions are restricted by the requested value. If unspecified, submissions are returned regardless of @late@ value.
newtype CoursesCourseWorkStudentSubmissionsListLate = CoursesCourseWorkStudentSubmissionsListLate { fromCoursesCourseWorkStudentSubmissionsListLate :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No restriction on submission late values specified.
pattern CoursesCourseWorkStudentSubmissionsListLate_LATEVALUESUNSPECIFIED :: CoursesCourseWorkStudentSubmissionsListLate
pattern CoursesCourseWorkStudentSubmissionsListLate_LATEVALUESUNSPECIFIED = CoursesCourseWorkStudentSubmissionsListLate "LATE_VALUES_UNSPECIFIED"

-- | Return StudentSubmissions where late is true.
pattern CoursesCourseWorkStudentSubmissionsListLate_LATEONLY :: CoursesCourseWorkStudentSubmissionsListLate
pattern CoursesCourseWorkStudentSubmissionsListLate_LATEONLY = CoursesCourseWorkStudentSubmissionsListLate "LATE_ONLY"

-- | Return StudentSubmissions where late is false.
pattern CoursesCourseWorkStudentSubmissionsListLate_NOTLATEONLY :: CoursesCourseWorkStudentSubmissionsListLate
pattern CoursesCourseWorkStudentSubmissionsListLate_NOTLATEONLY = CoursesCourseWorkStudentSubmissionsListLate "NOT_LATE_ONLY"

{-# COMPLETE
  CoursesCourseWorkStudentSubmissionsListLate_LATEVALUESUNSPECIFIED,
  CoursesCourseWorkStudentSubmissionsListLate_LATEONLY,
  CoursesCourseWorkStudentSubmissionsListLate_NOTLATEONLY,
  CoursesCourseWorkStudentSubmissionsListLate #-}

-- | Requested submission states. If specified, returned student submissions match one of the specified submission states.
newtype CoursesCourseWorkStudentSubmissionsListStates = CoursesCourseWorkStudentSubmissionsListStates { fromCoursesCourseWorkStudentSubmissionsListStates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This should never be returned.
pattern CoursesCourseWorkStudentSubmissionsListStates_SUBMISSIONSTATEUNSPECIFIED :: CoursesCourseWorkStudentSubmissionsListStates
pattern CoursesCourseWorkStudentSubmissionsListStates_SUBMISSIONSTATEUNSPECIFIED = CoursesCourseWorkStudentSubmissionsListStates "SUBMISSION_STATE_UNSPECIFIED"

-- | The student has never accessed this submission. Attachments are not returned and timestamps is not set.
pattern CoursesCourseWorkStudentSubmissionsListStates_New :: CoursesCourseWorkStudentSubmissionsListStates
pattern CoursesCourseWorkStudentSubmissionsListStates_New = CoursesCourseWorkStudentSubmissionsListStates "NEW"

-- | Has been created.
pattern CoursesCourseWorkStudentSubmissionsListStates_Created :: CoursesCourseWorkStudentSubmissionsListStates
pattern CoursesCourseWorkStudentSubmissionsListStates_Created = CoursesCourseWorkStudentSubmissionsListStates "CREATED"

-- | Has been turned in to the teacher.
pattern CoursesCourseWorkStudentSubmissionsListStates_TURNEDIN :: CoursesCourseWorkStudentSubmissionsListStates
pattern CoursesCourseWorkStudentSubmissionsListStates_TURNEDIN = CoursesCourseWorkStudentSubmissionsListStates "TURNED_IN"

-- | Has been returned to the student.
pattern CoursesCourseWorkStudentSubmissionsListStates_Returned :: CoursesCourseWorkStudentSubmissionsListStates
pattern CoursesCourseWorkStudentSubmissionsListStates_Returned = CoursesCourseWorkStudentSubmissionsListStates "RETURNED"

-- | Student chose to \"unsubmit\" the assignment.
pattern CoursesCourseWorkStudentSubmissionsListStates_RECLAIMEDBYSTUDENT :: CoursesCourseWorkStudentSubmissionsListStates
pattern CoursesCourseWorkStudentSubmissionsListStates_RECLAIMEDBYSTUDENT = CoursesCourseWorkStudentSubmissionsListStates "RECLAIMED_BY_STUDENT"

{-# COMPLETE
  CoursesCourseWorkStudentSubmissionsListStates_SUBMISSIONSTATEUNSPECIFIED,
  CoursesCourseWorkStudentSubmissionsListStates_New,
  CoursesCourseWorkStudentSubmissionsListStates_Created,
  CoursesCourseWorkStudentSubmissionsListStates_TURNEDIN,
  CoursesCourseWorkStudentSubmissionsListStates_Returned,
  CoursesCourseWorkStudentSubmissionsListStates_RECLAIMEDBYSTUDENT,
  CoursesCourseWorkStudentSubmissionsListStates #-}

-- | Restriction on the work status to return. Only course work material that matches is returned. If unspecified, items with a work status of @PUBLISHED@ is returned.
newtype CoursesCourseWorkMaterialsListCourseWorkMaterialStates = CoursesCourseWorkMaterialsListCourseWorkMaterialStates { fromCoursesCourseWorkMaterialsListCourseWorkMaterialStates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No state specified. This is never returned.
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_COURSEWORKMATERIALSTATEUNSPECIFIED :: CoursesCourseWorkMaterialsListCourseWorkMaterialStates
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_COURSEWORKMATERIALSTATEUNSPECIFIED = CoursesCourseWorkMaterialsListCourseWorkMaterialStates "COURSEWORK_MATERIAL_STATE_UNSPECIFIED"

-- | Status for course work material that has been published. This is the default state.
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Published :: CoursesCourseWorkMaterialsListCourseWorkMaterialStates
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Published = CoursesCourseWorkMaterialsListCourseWorkMaterialStates "PUBLISHED"

-- | Status for an course work material that is not yet published. Course work material in this state is visible only to course teachers and domain administrators.
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Draft :: CoursesCourseWorkMaterialsListCourseWorkMaterialStates
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Draft = CoursesCourseWorkMaterialsListCourseWorkMaterialStates "DRAFT"

-- | Status for course work material that was published but is now deleted. Course work material in this state is visible only to course teachers and domain administrators. Course work material in this state is deleted after some time.
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Deleted :: CoursesCourseWorkMaterialsListCourseWorkMaterialStates
pattern CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Deleted = CoursesCourseWorkMaterialsListCourseWorkMaterialStates "DELETED"

{-# COMPLETE
  CoursesCourseWorkMaterialsListCourseWorkMaterialStates_COURSEWORKMATERIALSTATEUNSPECIFIED,
  CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Published,
  CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Draft,
  CoursesCourseWorkMaterialsListCourseWorkMaterialStates_Deleted,
  CoursesCourseWorkMaterialsListCourseWorkMaterialStates #-}

-- | Restricts returned courses to those in one of the specified states The default value is ACTIVE, ARCHIVED, PROVISIONED, DECLINED.
newtype CoursesListCourseStates = CoursesListCourseStates { fromCoursesListCourseStates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No course state. No returned Course message will use this value.
pattern CoursesListCourseStates_COURSESTATEUNSPECIFIED :: CoursesListCourseStates
pattern CoursesListCourseStates_COURSESTATEUNSPECIFIED = CoursesListCourseStates "COURSE_STATE_UNSPECIFIED"

-- | The course is active.
pattern CoursesListCourseStates_Active :: CoursesListCourseStates
pattern CoursesListCourseStates_Active = CoursesListCourseStates "ACTIVE"

-- | The course has been archived. You cannot modify it except to change it to a different state.
pattern CoursesListCourseStates_Archived :: CoursesListCourseStates
pattern CoursesListCourseStates_Archived = CoursesListCourseStates "ARCHIVED"

-- | The course has been created, but not yet activated. It is accessible by the primary teacher and domain administrators, who may modify it or change it to the @ACTIVE@ or @DECLINED@ states. A course may only be changed to @PROVISIONED@ if it is in the @DECLINED@ state.
pattern CoursesListCourseStates_Provisioned :: CoursesListCourseStates
pattern CoursesListCourseStates_Provisioned = CoursesListCourseStates "PROVISIONED"

-- | The course has been created, but declined. It is accessible by the course owner and domain administrators, though it will not be displayed in the web UI. You cannot modify the course except to change it to the @PROVISIONED@ state. A course may only be changed to @DECLINED@ if it is in the @PROVISIONED@ state.
pattern CoursesListCourseStates_Declined :: CoursesListCourseStates
pattern CoursesListCourseStates_Declined = CoursesListCourseStates "DECLINED"

-- | The course has been suspended. You cannot modify the course, and only the user identified by the @owner_id@ can view the course. A course may be placed in this state if it potentially violates the Terms of Service.
pattern CoursesListCourseStates_Suspended :: CoursesListCourseStates
pattern CoursesListCourseStates_Suspended = CoursesListCourseStates "SUSPENDED"

{-# COMPLETE
  CoursesListCourseStates_COURSESTATEUNSPECIFIED,
  CoursesListCourseStates_Active,
  CoursesListCourseStates_Archived,
  CoursesListCourseStates_Provisioned,
  CoursesListCourseStates_Declined,
  CoursesListCourseStates_Suspended,
  CoursesListCourseStates #-}

-- | If specified, only results with the specified @state@ values are returned. Otherwise, results with a @state@ of @PENDING@ are returned.
newtype UserProfilesGuardianInvitationsListStates = UserProfilesGuardianInvitationsListStates { fromUserProfilesGuardianInvitationsListStates :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should never be returned.
pattern UserProfilesGuardianInvitationsListStates_GUARDIANINVITATIONSTATEUNSPECIFIED :: UserProfilesGuardianInvitationsListStates
pattern UserProfilesGuardianInvitationsListStates_GUARDIANINVITATIONSTATEUNSPECIFIED = UserProfilesGuardianInvitationsListStates "GUARDIAN_INVITATION_STATE_UNSPECIFIED"

-- | The invitation is active and awaiting a response.
pattern UserProfilesGuardianInvitationsListStates_Pending :: UserProfilesGuardianInvitationsListStates
pattern UserProfilesGuardianInvitationsListStates_Pending = UserProfilesGuardianInvitationsListStates "PENDING"

-- | The invitation is no longer active. It may have been accepted, declined, withdrawn or it may have expired.
pattern UserProfilesGuardianInvitationsListStates_Complete :: UserProfilesGuardianInvitationsListStates
pattern UserProfilesGuardianInvitationsListStates_Complete = UserProfilesGuardianInvitationsListStates "COMPLETE"

{-# COMPLETE
  UserProfilesGuardianInvitationsListStates_GUARDIANINVITATIONSTATEUNSPECIFIED,
  UserProfilesGuardianInvitationsListStates_Pending,
  UserProfilesGuardianInvitationsListStates_Complete,
  UserProfilesGuardianInvitationsListStates #-}
