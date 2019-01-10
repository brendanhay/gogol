{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Classroom.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Classroom.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The type of grade change at this time in the submission grade history.
data GradeHistoryGradeChangeType
    = UnknownGradeChangeType
      -- ^ @UNKNOWN_GRADE_CHANGE_TYPE@
      -- No grade change type specified. This should never be returned.
    | DraftGradePointsEarnedChange
      -- ^ @DRAFT_GRADE_POINTS_EARNED_CHANGE@
      -- A change in the numerator of the draft grade.
    | AssignedGradePointsEarnedChange
      -- ^ @ASSIGNED_GRADE_POINTS_EARNED_CHANGE@
      -- A change in the numerator of the assigned grade.
    | MaxPointsChange
      -- ^ @MAX_POINTS_CHANGE@
      -- A change in the denominator of the grade.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GradeHistoryGradeChangeType

instance FromHttpApiData GradeHistoryGradeChangeType where
    parseQueryParam = \case
        "UNKNOWN_GRADE_CHANGE_TYPE" -> Right UnknownGradeChangeType
        "DRAFT_GRADE_POINTS_EARNED_CHANGE" -> Right DraftGradePointsEarnedChange
        "ASSIGNED_GRADE_POINTS_EARNED_CHANGE" -> Right AssignedGradePointsEarnedChange
        "MAX_POINTS_CHANGE" -> Right MaxPointsChange
        x -> Left ("Unable to parse GradeHistoryGradeChangeType from: " <> x)

instance ToHttpApiData GradeHistoryGradeChangeType where
    toQueryParam = \case
        UnknownGradeChangeType -> "UNKNOWN_GRADE_CHANGE_TYPE"
        DraftGradePointsEarnedChange -> "DRAFT_GRADE_POINTS_EARNED_CHANGE"
        AssignedGradePointsEarnedChange -> "ASSIGNED_GRADE_POINTS_EARNED_CHANGE"
        MaxPointsChange -> "MAX_POINTS_CHANGE"

instance FromJSON GradeHistoryGradeChangeType where
    parseJSON = parseJSONText "GradeHistoryGradeChangeType"

instance ToJSON GradeHistoryGradeChangeType where
    toJSON = toJSONText

-- | State of the course. If unspecified, the default state is
-- \`PROVISIONED\`.
data CourseCourseState
    = CourseStateUnspecified
      -- ^ @COURSE_STATE_UNSPECIFIED@
      -- No course state. No returned Course message will use this value.
    | Active
      -- ^ @ACTIVE@
      -- The course is active.
    | Archived
      -- ^ @ARCHIVED@
      -- The course has been archived. You cannot modify it except to change it
      -- to a different state.
    | Provisioned
      -- ^ @PROVISIONED@
      -- The course has been created, but not yet activated. It is accessible by
      -- the primary teacher and domain administrators, who may modify it or
      -- change it to the \`ACTIVE\` or \`DECLINED\` states. A course may only be
      -- changed to \`PROVISIONED\` if it is in the \`DECLINED\` state.
    | Declined
      -- ^ @DECLINED@
      -- The course has been created, but declined. It is accessible by the
      -- course owner and domain administrators, though it will not be displayed
      -- in the web UI. You cannot modify the course except to change it to the
      -- \`PROVISIONED\` state. A course may only be changed to \`DECLINED\` if
      -- it is in the \`PROVISIONED\` state.
    | Suspended
      -- ^ @SUSPENDED@
      -- The course has been suspended. You cannot modify the course, and only
      -- the user identified by the \`owner_id\` can view the course. A course
      -- may be placed in this state if it potentially violates the Terms of
      -- Service.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CourseCourseState

instance FromHttpApiData CourseCourseState where
    parseQueryParam = \case
        "COURSE_STATE_UNSPECIFIED" -> Right CourseStateUnspecified
        "ACTIVE" -> Right Active
        "ARCHIVED" -> Right Archived
        "PROVISIONED" -> Right Provisioned
        "DECLINED" -> Right Declined
        "SUSPENDED" -> Right Suspended
        x -> Left ("Unable to parse CourseCourseState from: " <> x)

instance ToHttpApiData CourseCourseState where
    toQueryParam = \case
        CourseStateUnspecified -> "COURSE_STATE_UNSPECIFIED"
        Active -> "ACTIVE"
        Archived -> "ARCHIVED"
        Provisioned -> "PROVISIONED"
        Declined -> "DECLINED"
        Suspended -> "SUSPENDED"

instance FromJSON CourseCourseState where
    parseJSON = parseJSONText "CourseCourseState"

instance ToJSON CourseCourseState where
    toJSON = toJSONText

-- | The workflow pipeline stage.
data StateHistoryState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- No state specified. This should never be returned.
    | Created
      -- ^ @CREATED@
      -- The Submission has been created.
    | TurnedIn
      -- ^ @TURNED_IN@
      -- The student has turned in an assigned document, which may or may not be
      -- a template.
    | Returned
      -- ^ @RETURNED@
      -- The teacher has returned the assigned document to the student.
    | ReclaimedByStudent
      -- ^ @RECLAIMED_BY_STUDENT@
      -- The student turned in the assigned document, and then chose to
      -- \"unsubmit\" the assignment, giving the student control again as the
      -- owner.
    | StudentEditedAfterTurnIn
      -- ^ @STUDENT_EDITED_AFTER_TURN_IN@
      -- The student edited their submission after turning it in. Currently, only
      -- used by Questions, when the student edits their answer.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StateHistoryState

instance FromHttpApiData StateHistoryState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATED" -> Right Created
        "TURNED_IN" -> Right TurnedIn
        "RETURNED" -> Right Returned
        "RECLAIMED_BY_STUDENT" -> Right ReclaimedByStudent
        "STUDENT_EDITED_AFTER_TURN_IN" -> Right StudentEditedAfterTurnIn
        x -> Left ("Unable to parse StateHistoryState from: " <> x)

instance ToHttpApiData StateHistoryState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Created -> "CREATED"
        TurnedIn -> "TURNED_IN"
        Returned -> "RETURNED"
        ReclaimedByStudent -> "RECLAIMED_BY_STUDENT"
        StudentEditedAfterTurnIn -> "STUDENT_EDITED_AFTER_TURN_IN"

instance FromJSON StateHistoryState where
    parseJSON = parseJSONText "StateHistoryState"

instance ToJSON StateHistoryState where
    toJSON = toJSONText

-- | Type of this course work. The type is set when the course work is
-- created and cannot be changed.
data CourseWorkWorkType
    = CWWTCourseWorkTypeUnspecified
      -- ^ @COURSE_WORK_TYPE_UNSPECIFIED@
      -- No work type specified. This is never returned.
    | CWWTAssignment
      -- ^ @ASSIGNMENT@
      -- An assignment.
    | CWWTShortAnswerQuestion
      -- ^ @SHORT_ANSWER_QUESTION@
      -- A short answer question.
    | CWWTMultipleChoiceQuestion
      -- ^ @MULTIPLE_CHOICE_QUESTION@
      -- A multiple-choice question.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CourseWorkWorkType

instance FromHttpApiData CourseWorkWorkType where
    parseQueryParam = \case
        "COURSE_WORK_TYPE_UNSPECIFIED" -> Right CWWTCourseWorkTypeUnspecified
        "ASSIGNMENT" -> Right CWWTAssignment
        "SHORT_ANSWER_QUESTION" -> Right CWWTShortAnswerQuestion
        "MULTIPLE_CHOICE_QUESTION" -> Right CWWTMultipleChoiceQuestion
        x -> Left ("Unable to parse CourseWorkWorkType from: " <> x)

instance ToHttpApiData CourseWorkWorkType where
    toQueryParam = \case
        CWWTCourseWorkTypeUnspecified -> "COURSE_WORK_TYPE_UNSPECIFIED"
        CWWTAssignment -> "ASSIGNMENT"
        CWWTShortAnswerQuestion -> "SHORT_ANSWER_QUESTION"
        CWWTMultipleChoiceQuestion -> "MULTIPLE_CHOICE_QUESTION"

instance FromJSON CourseWorkWorkType where
    parseJSON = parseJSONText "CourseWorkWorkType"

instance ToJSON CourseWorkWorkType where
    toJSON = toJSONText

-- | Mode of the coursework describing whether it will be assigned to all
-- students or specified individual students.
data ModifyCourseWorkAssigneesRequestAssigneeMode
    = AssigneeModeUnspecified
      -- ^ @ASSIGNEE_MODE_UNSPECIFIED@
      -- No mode specified. This is never returned.
    | AllStudents
      -- ^ @ALL_STUDENTS@
      -- All students can see the item. This is the default state.
    | IndividualStudents
      -- ^ @INDIVIDUAL_STUDENTS@
      -- A subset of the students can see the item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ModifyCourseWorkAssigneesRequestAssigneeMode

instance FromHttpApiData ModifyCourseWorkAssigneesRequestAssigneeMode where
    parseQueryParam = \case
        "ASSIGNEE_MODE_UNSPECIFIED" -> Right AssigneeModeUnspecified
        "ALL_STUDENTS" -> Right AllStudents
        "INDIVIDUAL_STUDENTS" -> Right IndividualStudents
        x -> Left ("Unable to parse ModifyCourseWorkAssigneesRequestAssigneeMode from: " <> x)

instance ToHttpApiData ModifyCourseWorkAssigneesRequestAssigneeMode where
    toQueryParam = \case
        AssigneeModeUnspecified -> "ASSIGNEE_MODE_UNSPECIFIED"
        AllStudents -> "ALL_STUDENTS"
        IndividualStudents -> "INDIVIDUAL_STUDENTS"

instance FromJSON ModifyCourseWorkAssigneesRequestAssigneeMode where
    parseJSON = parseJSONText "ModifyCourseWorkAssigneesRequestAssigneeMode"

instance ToJSON ModifyCourseWorkAssigneesRequestAssigneeMode where
    toJSON = toJSONText

-- | The state that this invitation is in.
data GuardianInvitationState
    = GuardianInvitationStateUnspecified
      -- ^ @GUARDIAN_INVITATION_STATE_UNSPECIFIED@
      -- Should never be returned.
    | Pending
      -- ^ @PENDING@
      -- The invitation is active and awaiting a response.
    | Complete
      -- ^ @COMPLETE@
      -- The invitation is no longer active. It may have been accepted, declined,
      -- withdrawn or it may have expired.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GuardianInvitationState

instance FromHttpApiData GuardianInvitationState where
    parseQueryParam = \case
        "GUARDIAN_INVITATION_STATE_UNSPECIFIED" -> Right GuardianInvitationStateUnspecified
        "PENDING" -> Right Pending
        "COMPLETE" -> Right Complete
        x -> Left ("Unable to parse GuardianInvitationState from: " <> x)

instance ToHttpApiData GuardianInvitationState where
    toQueryParam = \case
        GuardianInvitationStateUnspecified -> "GUARDIAN_INVITATION_STATE_UNSPECIFIED"
        Pending -> "PENDING"
        Complete -> "COMPLETE"

instance FromJSON GuardianInvitationState where
    parseJSON = parseJSONText "GuardianInvitationState"

instance ToJSON GuardianInvitationState where
    toJSON = toJSONText

-- | Mechanism by which students access the Drive item.
data SharedDriveFileShareMode
    = UnknownShareMode
      -- ^ @UNKNOWN_SHARE_MODE@
      -- No sharing mode specified. This should never be returned.
    | View
      -- ^ @VIEW@
      -- Students can view the shared file.
    | Edit
      -- ^ @EDIT@
      -- Students can edit the shared file.
    | StudentCopy
      -- ^ @STUDENT_COPY@
      -- Students have a personal copy of the shared file.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SharedDriveFileShareMode

instance FromHttpApiData SharedDriveFileShareMode where
    parseQueryParam = \case
        "UNKNOWN_SHARE_MODE" -> Right UnknownShareMode
        "VIEW" -> Right View
        "EDIT" -> Right Edit
        "STUDENT_COPY" -> Right StudentCopy
        x -> Left ("Unable to parse SharedDriveFileShareMode from: " <> x)

instance ToHttpApiData SharedDriveFileShareMode where
    toQueryParam = \case
        UnknownShareMode -> "UNKNOWN_SHARE_MODE"
        View -> "VIEW"
        Edit -> "EDIT"
        StudentCopy -> "STUDENT_COPY"

instance FromJSON SharedDriveFileShareMode where
    parseJSON = parseJSONText "SharedDriveFileShareMode"

instance ToJSON SharedDriveFileShareMode where
    toJSON = toJSONText

-- | Mode of the announcement describing whether it will be accessible by all
-- students or specified individual students.
data ModifyAnnouncementAssigneesRequestAssigneeMode
    = MAARAMAssigneeModeUnspecified
      -- ^ @ASSIGNEE_MODE_UNSPECIFIED@
      -- No mode specified. This is never returned.
    | MAARAMAllStudents
      -- ^ @ALL_STUDENTS@
      -- All students can see the item. This is the default state.
    | MAARAMIndividualStudents
      -- ^ @INDIVIDUAL_STUDENTS@
      -- A subset of the students can see the item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ModifyAnnouncementAssigneesRequestAssigneeMode

instance FromHttpApiData ModifyAnnouncementAssigneesRequestAssigneeMode where
    parseQueryParam = \case
        "ASSIGNEE_MODE_UNSPECIFIED" -> Right MAARAMAssigneeModeUnspecified
        "ALL_STUDENTS" -> Right MAARAMAllStudents
        "INDIVIDUAL_STUDENTS" -> Right MAARAMIndividualStudents
        x -> Left ("Unable to parse ModifyAnnouncementAssigneesRequestAssigneeMode from: " <> x)

instance ToHttpApiData ModifyAnnouncementAssigneesRequestAssigneeMode where
    toQueryParam = \case
        MAARAMAssigneeModeUnspecified -> "ASSIGNEE_MODE_UNSPECIFIED"
        MAARAMAllStudents -> "ALL_STUDENTS"
        MAARAMIndividualStudents -> "INDIVIDUAL_STUDENTS"

instance FromJSON ModifyAnnouncementAssigneesRequestAssigneeMode where
    parseJSON = parseJSONText "ModifyAnnouncementAssigneesRequestAssigneeMode"

instance ToJSON ModifyAnnouncementAssigneesRequestAssigneeMode where
    toJSON = toJSONText

-- | Assignee mode of the announcement. If unspecified, the default value is
-- \`ALL_STUDENTS\`.
data AnnouncementAssigneeMode
    = AAMAssigneeModeUnspecified
      -- ^ @ASSIGNEE_MODE_UNSPECIFIED@
      -- No mode specified. This is never returned.
    | AAMAllStudents
      -- ^ @ALL_STUDENTS@
      -- All students can see the item. This is the default state.
    | AAMIndividualStudents
      -- ^ @INDIVIDUAL_STUDENTS@
      -- A subset of the students can see the item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnouncementAssigneeMode

instance FromHttpApiData AnnouncementAssigneeMode where
    parseQueryParam = \case
        "ASSIGNEE_MODE_UNSPECIFIED" -> Right AAMAssigneeModeUnspecified
        "ALL_STUDENTS" -> Right AAMAllStudents
        "INDIVIDUAL_STUDENTS" -> Right AAMIndividualStudents
        x -> Left ("Unable to parse AnnouncementAssigneeMode from: " <> x)

instance ToHttpApiData AnnouncementAssigneeMode where
    toQueryParam = \case
        AAMAssigneeModeUnspecified -> "ASSIGNEE_MODE_UNSPECIFIED"
        AAMAllStudents -> "ALL_STUDENTS"
        AAMIndividualStudents -> "INDIVIDUAL_STUDENTS"

instance FromJSON AnnouncementAssigneeMode where
    parseJSON = parseJSONText "AnnouncementAssigneeMode"

instance ToJSON AnnouncementAssigneeMode where
    toJSON = toJSONText

-- | Status of this course work. If unspecified, the default state is
-- \`DRAFT\`.
data CourseWorkState
    = CourseWorkStateUnspecified
      -- ^ @COURSE_WORK_STATE_UNSPECIFIED@
      -- No state specified. This is never returned.
    | Published
      -- ^ @PUBLISHED@
      -- Status for work that has been published. This is the default state.
    | Draft
      -- ^ @DRAFT@
      -- Status for work that is not yet published. Work in this state is visible
      -- only to course teachers and domain administrators.
    | Deleted
      -- ^ @DELETED@
      -- Status for work that was published but is now deleted. Work in this
      -- state is visible only to course teachers and domain administrators. Work
      -- in this state is deleted after some time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CourseWorkState

instance FromHttpApiData CourseWorkState where
    parseQueryParam = \case
        "COURSE_WORK_STATE_UNSPECIFIED" -> Right CourseWorkStateUnspecified
        "PUBLISHED" -> Right Published
        "DRAFT" -> Right Draft
        "DELETED" -> Right Deleted
        x -> Left ("Unable to parse CourseWorkState from: " <> x)

instance ToHttpApiData CourseWorkState where
    toQueryParam = \case
        CourseWorkStateUnspecified -> "COURSE_WORK_STATE_UNSPECIFIED"
        Published -> "PUBLISHED"
        Draft -> "DRAFT"
        Deleted -> "DELETED"

instance FromJSON CourseWorkState where
    parseJSON = parseJSONText "CourseWorkState"

instance ToJSON CourseWorkState where
    toJSON = toJSONText

-- | State of this submission. Read-only.
data StudentSubmissionState
    = SSSSubmissionStateUnspecified
      -- ^ @SUBMISSION_STATE_UNSPECIFIED@
      -- No state specified. This should never be returned.
    | SSSNew
      -- ^ @NEW@
      -- The student has never accessed this submission. Attachments are not
      -- returned and timestamps is not set.
    | SSSCreated
      -- ^ @CREATED@
      -- Has been created.
    | SSSTurnedIn
      -- ^ @TURNED_IN@
      -- Has been turned in to the teacher.
    | SSSReturned
      -- ^ @RETURNED@
      -- Has been returned to the student.
    | SSSReclaimedByStudent
      -- ^ @RECLAIMED_BY_STUDENT@
      -- Student chose to \"unsubmit\" the assignment.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StudentSubmissionState

instance FromHttpApiData StudentSubmissionState where
    parseQueryParam = \case
        "SUBMISSION_STATE_UNSPECIFIED" -> Right SSSSubmissionStateUnspecified
        "NEW" -> Right SSSNew
        "CREATED" -> Right SSSCreated
        "TURNED_IN" -> Right SSSTurnedIn
        "RETURNED" -> Right SSSReturned
        "RECLAIMED_BY_STUDENT" -> Right SSSReclaimedByStudent
        x -> Left ("Unable to parse StudentSubmissionState from: " <> x)

instance ToHttpApiData StudentSubmissionState where
    toQueryParam = \case
        SSSSubmissionStateUnspecified -> "SUBMISSION_STATE_UNSPECIFIED"
        SSSNew -> "NEW"
        SSSCreated -> "CREATED"
        SSSTurnedIn -> "TURNED_IN"
        SSSReturned -> "RETURNED"
        SSSReclaimedByStudent -> "RECLAIMED_BY_STUDENT"

instance FromJSON StudentSubmissionState where
    parseJSON = parseJSONText "StudentSubmissionState"

instance ToJSON StudentSubmissionState where
    toJSON = toJSONText

-- | Status of this announcement. If unspecified, the default state is
-- \`DRAFT\`.
data AnnouncementState
    = ASAnnouncementStateUnspecified
      -- ^ @ANNOUNCEMENT_STATE_UNSPECIFIED@
      -- No state specified. This is never returned.
    | ASPublished
      -- ^ @PUBLISHED@
      -- Status for announcement that has been published. This is the default
      -- state.
    | ASDraft
      -- ^ @DRAFT@
      -- Status for an announcement that is not yet published. Announcement in
      -- this state is visible only to course teachers and domain administrators.
    | ASDeleted
      -- ^ @DELETED@
      -- Status for announcement that was published but is now deleted.
      -- Announcement in this state is visible only to course teachers and domain
      -- administrators. Announcement in this state is deleted after some time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AnnouncementState

instance FromHttpApiData AnnouncementState where
    parseQueryParam = \case
        "ANNOUNCEMENT_STATE_UNSPECIFIED" -> Right ASAnnouncementStateUnspecified
        "PUBLISHED" -> Right ASPublished
        "DRAFT" -> Right ASDraft
        "DELETED" -> Right ASDeleted
        x -> Left ("Unable to parse AnnouncementState from: " <> x)

instance ToHttpApiData AnnouncementState where
    toQueryParam = \case
        ASAnnouncementStateUnspecified -> "ANNOUNCEMENT_STATE_UNSPECIFIED"
        ASPublished -> "PUBLISHED"
        ASDraft -> "DRAFT"
        ASDeleted -> "DELETED"

instance FromJSON AnnouncementState where
    parseJSON = parseJSONText "AnnouncementState"

instance ToJSON AnnouncementState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Role to invite the user to have. Must not be
-- \`COURSE_ROLE_UNSPECIFIED\`.
data InvitationRole
    = IRCourseRoleUnspecified
      -- ^ @COURSE_ROLE_UNSPECIFIED@
      -- No course role.
    | IRStudent
      -- ^ @STUDENT@
      -- Student in the course.
    | IRTeacher
      -- ^ @TEACHER@
      -- Teacher of the course.
    | IROwner
      -- ^ @OWNER@
      -- Owner of the course.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InvitationRole

instance FromHttpApiData InvitationRole where
    parseQueryParam = \case
        "COURSE_ROLE_UNSPECIFIED" -> Right IRCourseRoleUnspecified
        "STUDENT" -> Right IRStudent
        "TEACHER" -> Right IRTeacher
        "OWNER" -> Right IROwner
        x -> Left ("Unable to parse InvitationRole from: " <> x)

instance ToHttpApiData InvitationRole where
    toQueryParam = \case
        IRCourseRoleUnspecified -> "COURSE_ROLE_UNSPECIFIED"
        IRStudent -> "STUDENT"
        IRTeacher -> "TEACHER"
        IROwner -> "OWNER"

instance FromJSON InvitationRole where
    parseJSON = parseJSONText "InvitationRole"

instance ToJSON InvitationRole where
    toJSON = toJSONText

-- | Type of course work this submission is for. Read-only.
data StudentSubmissionCourseWorkType
    = SSCWTCourseWorkTypeUnspecified
      -- ^ @COURSE_WORK_TYPE_UNSPECIFIED@
      -- No work type specified. This is never returned.
    | SSCWTAssignment
      -- ^ @ASSIGNMENT@
      -- An assignment.
    | SSCWTShortAnswerQuestion
      -- ^ @SHORT_ANSWER_QUESTION@
      -- A short answer question.
    | SSCWTMultipleChoiceQuestion
      -- ^ @MULTIPLE_CHOICE_QUESTION@
      -- A multiple-choice question.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable StudentSubmissionCourseWorkType

instance FromHttpApiData StudentSubmissionCourseWorkType where
    parseQueryParam = \case
        "COURSE_WORK_TYPE_UNSPECIFIED" -> Right SSCWTCourseWorkTypeUnspecified
        "ASSIGNMENT" -> Right SSCWTAssignment
        "SHORT_ANSWER_QUESTION" -> Right SSCWTShortAnswerQuestion
        "MULTIPLE_CHOICE_QUESTION" -> Right SSCWTMultipleChoiceQuestion
        x -> Left ("Unable to parse StudentSubmissionCourseWorkType from: " <> x)

instance ToHttpApiData StudentSubmissionCourseWorkType where
    toQueryParam = \case
        SSCWTCourseWorkTypeUnspecified -> "COURSE_WORK_TYPE_UNSPECIFIED"
        SSCWTAssignment -> "ASSIGNMENT"
        SSCWTShortAnswerQuestion -> "SHORT_ANSWER_QUESTION"
        SSCWTMultipleChoiceQuestion -> "MULTIPLE_CHOICE_QUESTION"

instance FromJSON StudentSubmissionCourseWorkType where
    parseJSON = parseJSONText "StudentSubmissionCourseWorkType"

instance ToJSON StudentSubmissionCourseWorkType where
    toJSON = toJSONText

-- | The type of feed.
data FeedFeedType
    = FeedTypeUnspecified
      -- ^ @FEED_TYPE_UNSPECIFIED@
      -- Should never be returned or provided.
    | DomainRosterChanges
      -- ^ @DOMAIN_ROSTER_CHANGES@
      -- All roster changes for a particular domain. Notifications will be
      -- generated whenever a user joins or leaves a course. No notifications
      -- will be generated when an invitation is created or deleted, but
      -- notifications will be generated when a user joins a course by accepting
      -- an invitation.
    | CourseRosterChanges
      -- ^ @COURSE_ROSTER_CHANGES@
      -- All roster changes for a particular course. Notifications will be
      -- generated whenever a user joins or leaves a course. No notifications
      -- will be generated when an invitation is created or deleted, but
      -- notifications will be generated when a user joins a course by accepting
      -- an invitation.
    | CourseWorkChanges
      -- ^ @COURSE_WORK_CHANGES@
      -- All course work activity for a particular course. Notifications will be
      -- generated when a CourseWork or StudentSubmission object is created or
      -- modified. No notification will be generated when a StudentSubmission
      -- object is created in connection with the creation or modification of its
      -- parent CourseWork object (but a notification will be generated for that
      -- CourseWork object\'s creation or modification).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FeedFeedType

instance FromHttpApiData FeedFeedType where
    parseQueryParam = \case
        "FEED_TYPE_UNSPECIFIED" -> Right FeedTypeUnspecified
        "DOMAIN_ROSTER_CHANGES" -> Right DomainRosterChanges
        "COURSE_ROSTER_CHANGES" -> Right CourseRosterChanges
        "COURSE_WORK_CHANGES" -> Right CourseWorkChanges
        x -> Left ("Unable to parse FeedFeedType from: " <> x)

instance ToHttpApiData FeedFeedType where
    toQueryParam = \case
        FeedTypeUnspecified -> "FEED_TYPE_UNSPECIFIED"
        DomainRosterChanges -> "DOMAIN_ROSTER_CHANGES"
        CourseRosterChanges -> "COURSE_ROSTER_CHANGES"
        CourseWorkChanges -> "COURSE_WORK_CHANGES"

instance FromJSON FeedFeedType where
    parseJSON = parseJSONText "FeedFeedType"

instance ToJSON FeedFeedType where
    toJSON = toJSONText

-- | Permission value.
data GlobalPermissionPermission
    = PermissionUnspecified
      -- ^ @PERMISSION_UNSPECIFIED@
      -- No permission is specified. This is not returned and is not a valid
      -- value.
    | CreateCourse
      -- ^ @CREATE_COURSE@
      -- User is permitted to create a course.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GlobalPermissionPermission

instance FromHttpApiData GlobalPermissionPermission where
    parseQueryParam = \case
        "PERMISSION_UNSPECIFIED" -> Right PermissionUnspecified
        "CREATE_COURSE" -> Right CreateCourse
        x -> Left ("Unable to parse GlobalPermissionPermission from: " <> x)

instance ToHttpApiData GlobalPermissionPermission where
    toQueryParam = \case
        PermissionUnspecified -> "PERMISSION_UNSPECIFIED"
        CreateCourse -> "CREATE_COURSE"

instance FromJSON GlobalPermissionPermission where
    parseJSON = parseJSONText "GlobalPermissionPermission"

instance ToJSON GlobalPermissionPermission where
    toJSON = toJSONText

-- | Assignee mode of the coursework. If unspecified, the default value is
-- \`ALL_STUDENTS\`.
data CourseWorkAssigneeMode
    = CWAMAssigneeModeUnspecified
      -- ^ @ASSIGNEE_MODE_UNSPECIFIED@
      -- No mode specified. This is never returned.
    | CWAMAllStudents
      -- ^ @ALL_STUDENTS@
      -- All students can see the item. This is the default state.
    | CWAMIndividualStudents
      -- ^ @INDIVIDUAL_STUDENTS@
      -- A subset of the students can see the item.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CourseWorkAssigneeMode

instance FromHttpApiData CourseWorkAssigneeMode where
    parseQueryParam = \case
        "ASSIGNEE_MODE_UNSPECIFIED" -> Right CWAMAssigneeModeUnspecified
        "ALL_STUDENTS" -> Right CWAMAllStudents
        "INDIVIDUAL_STUDENTS" -> Right CWAMIndividualStudents
        x -> Left ("Unable to parse CourseWorkAssigneeMode from: " <> x)

instance ToHttpApiData CourseWorkAssigneeMode where
    toQueryParam = \case
        CWAMAssigneeModeUnspecified -> "ASSIGNEE_MODE_UNSPECIFIED"
        CWAMAllStudents -> "ALL_STUDENTS"
        CWAMIndividualStudents -> "INDIVIDUAL_STUDENTS"

instance FromJSON CourseWorkAssigneeMode where
    parseJSON = parseJSONText "CourseWorkAssigneeMode"

instance ToJSON CourseWorkAssigneeMode where
    toJSON = toJSONText

-- | Setting to determine when students are allowed to modify submissions. If
-- unspecified, the default value is \`MODIFIABLE_UNTIL_TURNED_IN\`.
data CourseWorkSubmissionModificationMode
    = SubmissionModificationModeUnspecified
      -- ^ @SUBMISSION_MODIFICATION_MODE_UNSPECIFIED@
      -- No modification mode specified. This is never returned.
    | ModifiableUntilTurnedIn
      -- ^ @MODIFIABLE_UNTIL_TURNED_IN@
      -- Submissions can be modified before being turned in.
    | Modifiable
      -- ^ @MODIFIABLE@
      -- Submissions can be modified at any time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CourseWorkSubmissionModificationMode

instance FromHttpApiData CourseWorkSubmissionModificationMode where
    parseQueryParam = \case
        "SUBMISSION_MODIFICATION_MODE_UNSPECIFIED" -> Right SubmissionModificationModeUnspecified
        "MODIFIABLE_UNTIL_TURNED_IN" -> Right ModifiableUntilTurnedIn
        "MODIFIABLE" -> Right Modifiable
        x -> Left ("Unable to parse CourseWorkSubmissionModificationMode from: " <> x)

instance ToHttpApiData CourseWorkSubmissionModificationMode where
    toQueryParam = \case
        SubmissionModificationModeUnspecified -> "SUBMISSION_MODIFICATION_MODE_UNSPECIFIED"
        ModifiableUntilTurnedIn -> "MODIFIABLE_UNTIL_TURNED_IN"
        Modifiable -> "MODIFIABLE"

instance FromJSON CourseWorkSubmissionModificationMode where
    parseJSON = parseJSONText "CourseWorkSubmissionModificationMode"

instance ToJSON CourseWorkSubmissionModificationMode where
    toJSON = toJSONText
