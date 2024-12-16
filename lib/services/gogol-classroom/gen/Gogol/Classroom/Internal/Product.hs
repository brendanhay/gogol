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
-- Module      : Gogol.Classroom.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Classroom.Internal.Product
  (

    -- * AddOnAttachment
    AddOnAttachment (..),
    newAddOnAttachment,

    -- * AddOnAttachmentStudentSubmission
    AddOnAttachmentStudentSubmission (..),
    newAddOnAttachmentStudentSubmission,

    -- * AddOnContext
    AddOnContext (..),
    newAddOnContext,

    -- * Announcement
    Announcement (..),
    newAnnouncement,

    -- * Assignment
    Assignment (..),
    newAssignment,

    -- * AssignmentSubmission
    AssignmentSubmission (..),
    newAssignmentSubmission,

    -- * Attachment
    Attachment (..),
    newAttachment,

    -- * CloudPubsubTopic
    CloudPubsubTopic (..),
    newCloudPubsubTopic,

    -- * CopyHistory
    CopyHistory (..),
    newCopyHistory,

    -- * Course
    Course (..),
    newCourse,

    -- * CourseAlias
    CourseAlias (..),
    newCourseAlias,

    -- * CourseMaterial
    CourseMaterial (..),
    newCourseMaterial,

    -- * CourseMaterialSet
    CourseMaterialSet (..),
    newCourseMaterialSet,

    -- * CourseRosterChangesInfo
    CourseRosterChangesInfo (..),
    newCourseRosterChangesInfo,

    -- * CourseWork
    CourseWork (..),
    newCourseWork,

    -- * CourseWorkChangesInfo
    CourseWorkChangesInfo (..),
    newCourseWorkChangesInfo,

    -- * CourseWorkMaterial
    CourseWorkMaterial (..),
    newCourseWorkMaterial,

    -- * Criterion
    Criterion (..),
    newCriterion,

    -- * Date
    Date (..),
    newDate,

    -- * DriveFile
    DriveFile (..),
    newDriveFile,

    -- * DriveFolder
    DriveFolder (..),
    newDriveFolder,

    -- * EmbedUri
    EmbedUri (..),
    newEmbedUri,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * Feed
    Feed (..),
    newFeed,

    -- * Form
    Form (..),
    newForm,

    -- * GlobalPermission
    GlobalPermission (..),
    newGlobalPermission,

    -- * GradeCategory
    GradeCategory (..),
    newGradeCategory,

    -- * GradeHistory
    GradeHistory (..),
    newGradeHistory,

    -- * GradebookSettings
    GradebookSettings (..),
    newGradebookSettings,

    -- * Guardian
    Guardian (..),
    newGuardian,

    -- * GuardianInvitation
    GuardianInvitation (..),
    newGuardianInvitation,

    -- * IndividualStudentsOptions
    IndividualStudentsOptions (..),
    newIndividualStudentsOptions,

    -- * Invitation
    Invitation (..),
    newInvitation,

    -- * Level
    Level (..),
    newLevel,

    -- * Link
    Link (..),
    newLink,

    -- * ListAddOnAttachmentsResponse
    ListAddOnAttachmentsResponse (..),
    newListAddOnAttachmentsResponse,

    -- * ListAnnouncementsResponse
    ListAnnouncementsResponse (..),
    newListAnnouncementsResponse,

    -- * ListCourseAliasesResponse
    ListCourseAliasesResponse (..),
    newListCourseAliasesResponse,

    -- * ListCourseWorkMaterialResponse
    ListCourseWorkMaterialResponse (..),
    newListCourseWorkMaterialResponse,

    -- * ListCourseWorkResponse
    ListCourseWorkResponse (..),
    newListCourseWorkResponse,

    -- * ListCoursesResponse
    ListCoursesResponse (..),
    newListCoursesResponse,

    -- * ListGuardianInvitationsResponse
    ListGuardianInvitationsResponse (..),
    newListGuardianInvitationsResponse,

    -- * ListGuardiansResponse
    ListGuardiansResponse (..),
    newListGuardiansResponse,

    -- * ListInvitationsResponse
    ListInvitationsResponse (..),
    newListInvitationsResponse,

    -- * ListRubricsResponse
    ListRubricsResponse (..),
    newListRubricsResponse,

    -- * ListStudentSubmissionsResponse
    ListStudentSubmissionsResponse (..),
    newListStudentSubmissionsResponse,

    -- * ListStudentsResponse
    ListStudentsResponse (..),
    newListStudentsResponse,

    -- * ListTeachersResponse
    ListTeachersResponse (..),
    newListTeachersResponse,

    -- * ListTopicResponse
    ListTopicResponse (..),
    newListTopicResponse,

    -- * Material
    Material (..),
    newMaterial,

    -- * ModifyAnnouncementAssigneesRequest
    ModifyAnnouncementAssigneesRequest (..),
    newModifyAnnouncementAssigneesRequest,

    -- * ModifyAttachmentsRequest
    ModifyAttachmentsRequest (..),
    newModifyAttachmentsRequest,

    -- * ModifyCourseWorkAssigneesRequest
    ModifyCourseWorkAssigneesRequest (..),
    newModifyCourseWorkAssigneesRequest,

    -- * ModifyIndividualStudentsOptions
    ModifyIndividualStudentsOptions (..),
    newModifyIndividualStudentsOptions,

    -- * MultipleChoiceQuestion
    MultipleChoiceQuestion (..),
    newMultipleChoiceQuestion,

    -- * MultipleChoiceSubmission
    MultipleChoiceSubmission (..),
    newMultipleChoiceSubmission,

    -- * Name
    Name (..),
    newName,

    -- * ReclaimStudentSubmissionRequest
    ReclaimStudentSubmissionRequest (..),
    newReclaimStudentSubmissionRequest,

    -- * Registration
    Registration (..),
    newRegistration,

    -- * ReturnStudentSubmissionRequest
    ReturnStudentSubmissionRequest (..),
    newReturnStudentSubmissionRequest,

    -- * Rubric
    Rubric (..),
    newRubric,

    -- * RubricGrade
    RubricGrade (..),
    newRubricGrade,

    -- * SharedDriveFile
    SharedDriveFile (..),
    newSharedDriveFile,

    -- * ShortAnswerSubmission
    ShortAnswerSubmission (..),
    newShortAnswerSubmission,

    -- * StateHistory
    StateHistory (..),
    newStateHistory,

    -- * Student
    Student (..),
    newStudent,

    -- * StudentContext
    StudentContext (..),
    newStudentContext,

    -- * StudentSubmission
    StudentSubmission (..),
    newStudentSubmission,

    -- * StudentSubmission_AssignedRubricGrades
    StudentSubmission_AssignedRubricGrades (..),
    newStudentSubmission_AssignedRubricGrades,

    -- * StudentSubmission_DraftRubricGrades
    StudentSubmission_DraftRubricGrades (..),
    newStudentSubmission_DraftRubricGrades,

    -- * SubmissionHistory
    SubmissionHistory (..),
    newSubmissionHistory,

    -- * Teacher
    Teacher (..),
    newTeacher,

    -- * TeacherContext
    TeacherContext (..),
    newTeacherContext,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * Topic
    Topic (..),
    newTopic,

    -- * TurnInStudentSubmissionRequest
    TurnInStudentSubmissionRequest (..),
    newTurnInStudentSubmissionRequest,

    -- * UserProfile
    UserProfile (..),
    newUserProfile,

    -- * YouTubeVideo
    YouTubeVideo (..),
    newYouTubeVideo,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Classroom.Internal.Sum

-- | An add-on attachment on a post.
--
-- /See:/ 'newAddOnAttachment' smart constructor.
data AddOnAttachment = AddOnAttachment
    {
      -- | Output only. Identifiers of attachments that were previous copies of this attachment. If the attachment was previously copied by virtue of its parent post being copied, this enumerates the identifiers of attachments that were its previous copies in ascending chronological order of copy.
      copyHistory :: (Core.Maybe [CopyHistory])
      -- | Immutable. Identifier of the course.
    , courseId :: (Core.Maybe Core.Text)
      -- | Date, in UTC, that work on this attachment is due. This must be specified if @due_time@ is specified.
    , dueDate :: (Core.Maybe Date)
      -- | Time of day, in UTC, that work on this attachment is due. This must be specified if @due_date@ is specified.
    , dueTime :: (Core.Maybe TimeOfDay')
      -- | Immutable. Classroom-assigned identifier for this attachment, unique per post.
    , id :: (Core.Maybe Core.Text)
      -- | Immutable. Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached. Unique per course.
    , itemId :: (Core.Maybe Core.Text)
      -- | Maximum grade for this attachment. Can only be set if @studentWorkReviewUri@ is set. Set to a non-zero value to indicate that the attachment supports grade passback. If set, this must be a non-negative integer value. When set to zero, the attachment will not support grade passback.
    , maxPoints :: (Core.Maybe Core.Double)
      -- | Immutable. Deprecated, use @item_id@ instead.
    , postId :: (Core.Maybe Core.Text)
      -- | Required. URI to show the student view of the attachment. The URI will be opened in an iframe with the @courseId@, @itemId@, @itemType@, and @attachmentId@ query parameters set.
    , studentViewUri :: (Core.Maybe EmbedUri)
      -- | URI for the teacher to see student work on the attachment, if applicable. The URI will be opened in an iframe with the @courseId@, @itemId@, @itemType@, @attachmentId@, and @submissionId@ query parameters set. This is the same @submissionId@ returned in the <//devsite.google.com/classroom/reference/rest/v1/AddOnContext#StudentContext AddOnContext.studentContext> field when a student views the attachment. If the URI is omitted or removed, @max_points@ will also be discarded.
    , studentWorkReviewUri :: (Core.Maybe EmbedUri)
      -- | Required. URI to show the teacher view of the attachment. The URI will be opened in an iframe with the @courseId@, @itemId@, @itemType@, and @attachmentId@ query parameters set.
    , teacherViewUri :: (Core.Maybe EmbedUri)
      -- | Required. Title of this attachment. The title must be between 1 and 1000 characters.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOnAttachment' with the minimum fields required to make a request.
newAddOnAttachment 
    ::  AddOnAttachment
newAddOnAttachment =
  AddOnAttachment
    { copyHistory = Core.Nothing
    , courseId = Core.Nothing
    , dueDate = Core.Nothing
    , dueTime = Core.Nothing
    , id = Core.Nothing
    , itemId = Core.Nothing
    , maxPoints = Core.Nothing
    , postId = Core.Nothing
    , studentViewUri = Core.Nothing
    , studentWorkReviewUri = Core.Nothing
    , teacherViewUri = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON AddOnAttachment where
        parseJSON
          = Core.withObject "AddOnAttachment"
              (\ o ->
                 AddOnAttachment Core.<$>
                   (o Core..:? "copyHistory") Core.<*>
                     (o Core..:? "courseId")
                     Core.<*> (o Core..:? "dueDate")
                     Core.<*> (o Core..:? "dueTime")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "itemId")
                     Core.<*> (o Core..:? "maxPoints")
                     Core.<*> (o Core..:? "postId")
                     Core.<*> (o Core..:? "studentViewUri")
                     Core.<*> (o Core..:? "studentWorkReviewUri")
                     Core.<*> (o Core..:? "teacherViewUri")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON AddOnAttachment where
        toJSON AddOnAttachment{..}
          = Core.object
              (Core.catMaybes
                 [("copyHistory" Core..=) Core.<$> copyHistory,
                  ("courseId" Core..=) Core.<$> courseId,
                  ("dueDate" Core..=) Core.<$> dueDate,
                  ("dueTime" Core..=) Core.<$> dueTime,
                  ("id" Core..=) Core.<$> id,
                  ("itemId" Core..=) Core.<$> itemId,
                  ("maxPoints" Core..=) Core.<$> maxPoints,
                  ("postId" Core..=) Core.<$> postId,
                  ("studentViewUri" Core..=) Core.<$> studentViewUri,
                  ("studentWorkReviewUri" Core..=) Core.<$>
                    studentWorkReviewUri,
                  ("teacherViewUri" Core..=) Core.<$> teacherViewUri,
                  ("title" Core..=) Core.<$> title])


-- | Payload for grade update requests.
--
-- /See:/ 'newAddOnAttachmentStudentSubmission' smart constructor.
data AddOnAttachmentStudentSubmission = AddOnAttachmentStudentSubmission
    {
      -- | Student grade on this attachment. If unset, no grade was set.
      pointsEarned :: (Core.Maybe Core.Double)
      -- | Submission state of add-on attachment\'s parent post (i.e. assignment).
    , postSubmissionState :: (Core.Maybe AddOnAttachmentStudentSubmission_PostSubmissionState)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOnAttachmentStudentSubmission' with the minimum fields required to make a request.
newAddOnAttachmentStudentSubmission 
    ::  AddOnAttachmentStudentSubmission
newAddOnAttachmentStudentSubmission =
  AddOnAttachmentStudentSubmission
    {pointsEarned = Core.Nothing, postSubmissionState = Core.Nothing}

instance Core.FromJSON
           AddOnAttachmentStudentSubmission
         where
        parseJSON
          = Core.withObject "AddOnAttachmentStudentSubmission"
              (\ o ->
                 AddOnAttachmentStudentSubmission Core.<$>
                   (o Core..:? "pointsEarned") Core.<*>
                     (o Core..:? "postSubmissionState"))

instance Core.ToJSON AddOnAttachmentStudentSubmission
         where
        toJSON AddOnAttachmentStudentSubmission{..}
          = Core.object
              (Core.catMaybes
                 [("pointsEarned" Core..=) Core.<$> pointsEarned,
                  ("postSubmissionState" Core..=) Core.<$>
                    postSubmissionState])


-- | Attachment-relevant metadata for Classroom add-ons in the context of a specific post.
--
-- /See:/ 'newAddOnContext' smart constructor.
data AddOnContext = AddOnContext
    {
      -- | Immutable. Identifier of the course.
      courseId :: (Core.Maybe Core.Text)
      -- | Immutable. Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached.
    , itemId :: (Core.Maybe Core.Text)
      -- | Immutable. Deprecated, use @item_id@ instead.
    , postId :: (Core.Maybe Core.Text)
      -- | Add-on context corresponding to the requesting user\'s role as a student. Its presence implies that the requesting user is a student in the course.
    , studentContext :: (Core.Maybe StudentContext)
      -- | Optional. Whether the post allows the teacher to see student work and passback grades.
    , supportsStudentWork :: (Core.Maybe Core.Bool)
      -- | Add-on context corresponding to the requesting user\'s role as a teacher. Its presence implies that the requesting user is a teacher in the course.
    , teacherContext :: (Core.Maybe TeacherContext)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddOnContext' with the minimum fields required to make a request.
newAddOnContext 
    ::  AddOnContext
newAddOnContext =
  AddOnContext
    { courseId = Core.Nothing
    , itemId = Core.Nothing
    , postId = Core.Nothing
    , studentContext = Core.Nothing
    , supportsStudentWork = Core.Nothing
    , teacherContext = Core.Nothing
    }

instance Core.FromJSON AddOnContext where
        parseJSON
          = Core.withObject "AddOnContext"
              (\ o ->
                 AddOnContext Core.<$>
                   (o Core..:? "courseId") Core.<*>
                     (o Core..:? "itemId")
                     Core.<*> (o Core..:? "postId")
                     Core.<*> (o Core..:? "studentContext")
                     Core.<*> (o Core..:? "supportsStudentWork")
                     Core.<*> (o Core..:? "teacherContext"))

instance Core.ToJSON AddOnContext where
        toJSON AddOnContext{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId,
                  ("itemId" Core..=) Core.<$> itemId,
                  ("postId" Core..=) Core.<$> postId,
                  ("studentContext" Core..=) Core.<$> studentContext,
                  ("supportsStudentWork" Core..=) Core.<$>
                    supportsStudentWork,
                  ("teacherContext" Core..=) Core.<$> teacherContext])


-- | Announcement created by a teacher for students of the course
--
-- /See:/ 'newAnnouncement' smart constructor.
data Announcement = Announcement
    {
      -- | Absolute link to this announcement in the Classroom web UI. This is only populated if @state@ is @PUBLISHED@. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | Assignee mode of the announcement. If unspecified, the default value is @ALL_STUDENTS@.
    , assigneeMode :: (Core.Maybe Announcement_AssigneeMode)
      -- | Identifier of the course. Read-only.
    , courseId :: (Core.Maybe Core.Text)
      -- | Timestamp when this announcement was created. Read-only.
    , creationTime :: (Core.Maybe Core.DateTime)
      -- | Identifier for the user that created the announcement. Read-only.
    , creatorUserId :: (Core.Maybe Core.Text)
      -- | Classroom-assigned identifier of this announcement, unique per course. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Identifiers of students with access to the announcement. This field is set only if @assigneeMode@ is @INDIVIDUAL_STUDENTS@. If the @assigneeMode@ is @INDIVIDUAL_STUDENTS@, then only students specified in this field can see the announcement.
    , individualStudentsOptions :: (Core.Maybe IndividualStudentsOptions)
      -- | Additional materials. Announcements must have no more than 20 material items.
    , materials :: (Core.Maybe [Material])
      -- | Optional timestamp when this announcement is scheduled to be published.
    , scheduledTime :: (Core.Maybe Core.DateTime)
      -- | Status of this announcement. If unspecified, the default state is @DRAFT@.
    , state :: (Core.Maybe Announcement_State)
      -- | Description of this announcement. The text must be a valid UTF-8 string containing no more than 30,000 characters.
    , text :: (Core.Maybe Core.Text)
      -- | Timestamp of the most recent change to this announcement. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Announcement' with the minimum fields required to make a request.
newAnnouncement 
    ::  Announcement
newAnnouncement =
  Announcement
    { alternateLink = Core.Nothing
    , assigneeMode = Core.Nothing
    , courseId = Core.Nothing
    , creationTime = Core.Nothing
    , creatorUserId = Core.Nothing
    , id = Core.Nothing
    , individualStudentsOptions = Core.Nothing
    , materials = Core.Nothing
    , scheduledTime = Core.Nothing
    , state = Core.Nothing
    , text = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Announcement where
        parseJSON
          = Core.withObject "Announcement"
              (\ o ->
                 Announcement Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "assigneeMode")
                     Core.<*> (o Core..:? "courseId")
                     Core.<*> (o Core..:? "creationTime")
                     Core.<*> (o Core..:? "creatorUserId")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "individualStudentsOptions")
                     Core.<*> (o Core..:? "materials")
                     Core.<*> (o Core..:? "scheduledTime")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "text")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Announcement where
        toJSON Announcement{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("assigneeMode" Core..=) Core.<$> assigneeMode,
                  ("courseId" Core..=) Core.<$> courseId,
                  ("creationTime" Core..=) Core.<$> creationTime,
                  ("creatorUserId" Core..=) Core.<$> creatorUserId,
                  ("id" Core..=) Core.<$> id,
                  ("individualStudentsOptions" Core..=) Core.<$>
                    individualStudentsOptions,
                  ("materials" Core..=) Core.<$> materials,
                  ("scheduledTime" Core..=) Core.<$> scheduledTime,
                  ("state" Core..=) Core.<$> state,
                  ("text" Core..=) Core.<$> text,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Additional details for assignments.
--
-- /See:/ 'newAssignment' smart constructor.
newtype Assignment = Assignment
    {
      -- | Drive folder where attachments from student submissions are placed. This is only populated for course teachers and administrators.
      studentWorkFolder :: (Core.Maybe DriveFolder)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Assignment' with the minimum fields required to make a request.
newAssignment 
    ::  Assignment
newAssignment = Assignment {studentWorkFolder = Core.Nothing}

instance Core.FromJSON Assignment where
        parseJSON
          = Core.withObject "Assignment"
              (\ o ->
                 Assignment Core.<$> (o Core..:? "studentWorkFolder"))

instance Core.ToJSON Assignment where
        toJSON Assignment{..}
          = Core.object
              (Core.catMaybes
                 [("studentWorkFolder" Core..=) Core.<$>
                    studentWorkFolder])


-- | Student work for an assignment.
--
-- /See:/ 'newAssignmentSubmission' smart constructor.
newtype AssignmentSubmission = AssignmentSubmission
    {
      -- | Attachments added by the student. Drive files that correspond to materials with a share mode of STUDENT/COPY may not exist yet if the student has not accessed the assignment in Classroom. Some attachment metadata is only populated if the requesting user has permission to access it. Identifier and alternate/link fields are always available, but others (for example, title) may not be.
      attachments :: (Core.Maybe [Attachment])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AssignmentSubmission' with the minimum fields required to make a request.
newAssignmentSubmission 
    ::  AssignmentSubmission
newAssignmentSubmission = AssignmentSubmission {attachments = Core.Nothing}

instance Core.FromJSON AssignmentSubmission where
        parseJSON
          = Core.withObject "AssignmentSubmission"
              (\ o ->
                 AssignmentSubmission Core.<$>
                   (o Core..:? "attachments"))

instance Core.ToJSON AssignmentSubmission where
        toJSON AssignmentSubmission{..}
          = Core.object
              (Core.catMaybes
                 [("attachments" Core..=) Core.<$> attachments])


-- | Attachment added to student assignment work. When creating attachments, setting the @form@ field is not supported.
--
-- /See:/ 'newAttachment' smart constructor.
data Attachment = Attachment
    {
      -- | Google Drive file attachment.
      driveFile :: (Core.Maybe DriveFile)
      -- | Google Forms attachment.
    , form :: (Core.Maybe Form)
      -- | Link attachment.
    , link :: (Core.Maybe Link)
      -- | Youtube video attachment.
    , youTubeVideo :: (Core.Maybe YouTubeVideo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
newAttachment 
    ::  Attachment
newAttachment =
  Attachment
    { driveFile = Core.Nothing
    , form = Core.Nothing
    , link = Core.Nothing
    , youTubeVideo = Core.Nothing
    }

instance Core.FromJSON Attachment where
        parseJSON
          = Core.withObject "Attachment"
              (\ o ->
                 Attachment Core.<$>
                   (o Core..:? "driveFile") Core.<*> (o Core..:? "form")
                     Core.<*> (o Core..:? "link")
                     Core.<*> (o Core..:? "youTubeVideo"))

instance Core.ToJSON Attachment where
        toJSON Attachment{..}
          = Core.object
              (Core.catMaybes
                 [("driveFile" Core..=) Core.<$> driveFile,
                  ("form" Core..=) Core.<$> form,
                  ("link" Core..=) Core.<$> link,
                  ("youTubeVideo" Core..=) Core.<$> youTubeVideo])


-- | A reference to a Cloud Pub\/Sub topic. To register for notifications, the owner of the topic must grant @classroom-notifications\@system.gserviceaccount.com@ the @projects.topics.publish@ permission.
--
-- /See:/ 'newCloudPubsubTopic' smart constructor.
newtype CloudPubsubTopic = CloudPubsubTopic
    {
      -- | The @name@ field of a Cloud Pub\/Sub <https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic Topic>.
      topicName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPubsubTopic' with the minimum fields required to make a request.
newCloudPubsubTopic 
    ::  CloudPubsubTopic
newCloudPubsubTopic = CloudPubsubTopic {topicName = Core.Nothing}

instance Core.FromJSON CloudPubsubTopic where
        parseJSON
          = Core.withObject "CloudPubsubTopic"
              (\ o ->
                 CloudPubsubTopic Core.<$> (o Core..:? "topicName"))

instance Core.ToJSON CloudPubsubTopic where
        toJSON CloudPubsubTopic{..}
          = Core.object
              (Core.catMaybes
                 [("topicName" Core..=) Core.<$> topicName])


-- | Identifier of a previous copy of a given attachment.
--
-- /See:/ 'newCopyHistory' smart constructor.
data CopyHistory = CopyHistory
    {
      -- | Immutable. Identifier of the attachment.
      attachmentId :: (Core.Maybe Core.Text)
      -- | Immutable. Identifier of the course.
    , courseId :: (Core.Maybe Core.Text)
      -- | Immutable. Identifier of the @Announcement@, @CourseWork@, or @CourseWorkMaterial@ under which the attachment is attached.
    , itemId :: (Core.Maybe Core.Text)
      -- | Immutable. Deprecated, use @item_id@ instead.
    , postId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CopyHistory' with the minimum fields required to make a request.
newCopyHistory 
    ::  CopyHistory
newCopyHistory =
  CopyHistory
    { attachmentId = Core.Nothing
    , courseId = Core.Nothing
    , itemId = Core.Nothing
    , postId = Core.Nothing
    }

instance Core.FromJSON CopyHistory where
        parseJSON
          = Core.withObject "CopyHistory"
              (\ o ->
                 CopyHistory Core.<$>
                   (o Core..:? "attachmentId") Core.<*>
                     (o Core..:? "courseId")
                     Core.<*> (o Core..:? "itemId")
                     Core.<*> (o Core..:? "postId"))

instance Core.ToJSON CopyHistory where
        toJSON CopyHistory{..}
          = Core.object
              (Core.catMaybes
                 [("attachmentId" Core..=) Core.<$> attachmentId,
                  ("courseId" Core..=) Core.<$> courseId,
                  ("itemId" Core..=) Core.<$> itemId,
                  ("postId" Core..=) Core.<$> postId])


-- | A Course in Classroom.
--
-- /See:/ 'newCourse' smart constructor.
data Course = Course
    {
      -- | Absolute link to this course in the Classroom web UI. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | The Calendar ID for a calendar that all course members can see, to which Classroom adds events for course work and announcements in the course. The Calendar for a course is created asynchronously when the course is set to @CourseState.ACTIVE@ for the first time (at creation time or when it is updated to @ACTIVE@ through the UI or the API). The Calendar ID will not be populated until the creation process is completed. Read-only.
    , calendarId :: (Core.Maybe Core.Text)
      -- | The email address of a Google group containing all members of the course. This group does not accept email and can only be used for permissions. Read-only.
    , courseGroupEmail :: (Core.Maybe Core.Text)
      -- | Sets of materials that appear on the \"about\" page of this course. Read-only.
    , courseMaterialSets :: (Core.Maybe [CourseMaterialSet])
      -- | State of the course. If unspecified, the default state is @PROVISIONED@.
    , courseState :: (Core.Maybe Course_CourseState)
      -- | Creation time of the course. Specifying this field in a course update mask results in an error. Read-only.
    , creationTime :: (Core.Maybe Core.DateTime)
      -- | Optional description. For example, \"We\'ll be learning about the structure of living creatures from a combination of textbooks, guest lectures, and lab work. Expect to be excited!\" If set, this field must be a valid UTF-8 string and no longer than 30,000 characters.
    , description :: (Core.Maybe Core.Text)
      -- | Optional heading for the description. For example, \"Welcome to 10th Grade Biology.\" If set, this field must be a valid UTF-8 string and no longer than 3600 characters.
    , descriptionHeading :: (Core.Maybe Core.Text)
      -- | Enrollment code to use when joining this course. Specifying this field in a course update mask results in an error. Read-only.
    , enrollmentCode :: (Core.Maybe Core.Text)
      -- | The gradebook settings that specify how a student\'s overall grade for the course will be calculated and who it will be displayed to. Read-only
    , gradebookSettings :: (Core.Maybe GradebookSettings)
      -- | Whether or not guardian notifications are enabled for this course. Read-only.
    , guardiansEnabled :: (Core.Maybe Core.Bool)
      -- | Identifier for this course assigned by Classroom. When creating a course, you may optionally set this identifier to an alias string in the request to create a corresponding alias. The @id@ is still assigned by Classroom and cannot be updated after the course is created. Specifying this field in a course update mask results in an error.
    , id :: (Core.Maybe Core.Text)
      -- | Name of the course. For example, \"10th Grade Biology\". The name is required. It must be between 1 and 750 characters and a valid UTF-8 string.
    , name :: (Core.Maybe Core.Text)
      -- | The identifier of the owner of a course. When specified as a parameter of a create course request, this field is required. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user This must be set in a create request. Admins can also specify this field in a patch course request to transfer ownership. In other contexts, it is read-only.
    , ownerId :: (Core.Maybe Core.Text)
      -- | Optional room location. For example, \"301\". If set, this field must be a valid UTF-8 string and no longer than 650 characters.
    , room :: (Core.Maybe Core.Text)
      -- | Section of the course. For example, \"Period 2\". If set, this field must be a valid UTF-8 string and no longer than 2800 characters.
    , section :: (Core.Maybe Core.Text)
      -- | Information about a Drive Folder that is shared with all teachers of the course. This field will only be set for teachers of the course and domain administrators. Read-only.
    , teacherFolder :: (Core.Maybe DriveFolder)
      -- | The email address of a Google group containing all teachers of the course. This group does not accept email and can only be used for permissions. Read-only.
    , teacherGroupEmail :: (Core.Maybe Core.Text)
      -- | Time of the most recent update to this course. Specifying this field in a course update mask results in an error. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Course' with the minimum fields required to make a request.
newCourse 
    ::  Course
newCourse =
  Course
    { alternateLink = Core.Nothing
    , calendarId = Core.Nothing
    , courseGroupEmail = Core.Nothing
    , courseMaterialSets = Core.Nothing
    , courseState = Core.Nothing
    , creationTime = Core.Nothing
    , description = Core.Nothing
    , descriptionHeading = Core.Nothing
    , enrollmentCode = Core.Nothing
    , gradebookSettings = Core.Nothing
    , guardiansEnabled = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , ownerId = Core.Nothing
    , room = Core.Nothing
    , section = Core.Nothing
    , teacherFolder = Core.Nothing
    , teacherGroupEmail = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Course where
        parseJSON
          = Core.withObject "Course"
              (\ o ->
                 Course Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "calendarId")
                     Core.<*> (o Core..:? "courseGroupEmail")
                     Core.<*> (o Core..:? "courseMaterialSets")
                     Core.<*> (o Core..:? "courseState")
                     Core.<*> (o Core..:? "creationTime")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "descriptionHeading")
                     Core.<*> (o Core..:? "enrollmentCode")
                     Core.<*> (o Core..:? "gradebookSettings")
                     Core.<*> (o Core..:? "guardiansEnabled")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "ownerId")
                     Core.<*> (o Core..:? "room")
                     Core.<*> (o Core..:? "section")
                     Core.<*> (o Core..:? "teacherFolder")
                     Core.<*> (o Core..:? "teacherGroupEmail")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Course where
        toJSON Course{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("calendarId" Core..=) Core.<$> calendarId,
                  ("courseGroupEmail" Core..=) Core.<$>
                    courseGroupEmail,
                  ("courseMaterialSets" Core..=) Core.<$>
                    courseMaterialSets,
                  ("courseState" Core..=) Core.<$> courseState,
                  ("creationTime" Core..=) Core.<$> creationTime,
                  ("description" Core..=) Core.<$> description,
                  ("descriptionHeading" Core..=) Core.<$>
                    descriptionHeading,
                  ("enrollmentCode" Core..=) Core.<$> enrollmentCode,
                  ("gradebookSettings" Core..=) Core.<$>
                    gradebookSettings,
                  ("guardiansEnabled" Core..=) Core.<$>
                    guardiansEnabled,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("ownerId" Core..=) Core.<$> ownerId,
                  ("room" Core..=) Core.<$> room,
                  ("section" Core..=) Core.<$> section,
                  ("teacherFolder" Core..=) Core.<$> teacherFolder,
                  ("teacherGroupEmail" Core..=) Core.<$>
                    teacherGroupEmail,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Alternative identifier for a course. An alias uniquely identifies a course. It must be unique within one of the following scopes: * domain: A domain-scoped alias is visible to all users within the alias creator\'s domain and can be created only by a domain admin. A domain-scoped alias is often used when a course has an identifier external to Classroom. * project: A project-scoped alias is visible to any request from an application using the Developer Console project ID that created the alias and can be created by any project. A project-scoped alias is often used when an application has alternative identifiers. A random value can also be used to avoid duplicate courses in the event of transmission failures, as retrying a request will return @ALREADY_EXISTS@ if a previous one has succeeded.
--
-- /See:/ 'newCourseAlias' smart constructor.
newtype CourseAlias = CourseAlias
    {
      -- | Alias string. The format of the string indicates the desired alias scoping. * @d:@ indicates a domain-scoped alias. Example: @d:math_101@ * @p:@ indicates a project-scoped alias. Example: @p:abc123@ This field has a maximum length of 256 characters.
      alias :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseAlias' with the minimum fields required to make a request.
newCourseAlias 
    ::  CourseAlias
newCourseAlias = CourseAlias {alias = Core.Nothing}

instance Core.FromJSON CourseAlias where
        parseJSON
          = Core.withObject "CourseAlias"
              (\ o -> CourseAlias Core.<$> (o Core..:? "alias"))

instance Core.ToJSON CourseAlias where
        toJSON CourseAlias{..}
          = Core.object
              (Core.catMaybes [("alias" Core..=) Core.<$> alias])


-- | A material attached to a course as part of a material set.
--
-- /See:/ 'newCourseMaterial' smart constructor.
data CourseMaterial = CourseMaterial
    {
      -- | Google Drive file attachment.
      driveFile :: (Core.Maybe DriveFile)
      -- | Google Forms attachment.
    , form :: (Core.Maybe Form)
      -- | Link atatchment.
    , link :: (Core.Maybe Link)
      -- | Youtube video attachment.
    , youTubeVideo :: (Core.Maybe YouTubeVideo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseMaterial' with the minimum fields required to make a request.
newCourseMaterial 
    ::  CourseMaterial
newCourseMaterial =
  CourseMaterial
    { driveFile = Core.Nothing
    , form = Core.Nothing
    , link = Core.Nothing
    , youTubeVideo = Core.Nothing
    }

instance Core.FromJSON CourseMaterial where
        parseJSON
          = Core.withObject "CourseMaterial"
              (\ o ->
                 CourseMaterial Core.<$>
                   (o Core..:? "driveFile") Core.<*> (o Core..:? "form")
                     Core.<*> (o Core..:? "link")
                     Core.<*> (o Core..:? "youTubeVideo"))

instance Core.ToJSON CourseMaterial where
        toJSON CourseMaterial{..}
          = Core.object
              (Core.catMaybes
                 [("driveFile" Core..=) Core.<$> driveFile,
                  ("form" Core..=) Core.<$> form,
                  ("link" Core..=) Core.<$> link,
                  ("youTubeVideo" Core..=) Core.<$> youTubeVideo])


-- | A set of materials that appears on the \"About\" page of the course. These materials might include a syllabus, schedule, or other background information relating to the course as a whole.
--
-- /See:/ 'newCourseMaterialSet' smart constructor.
data CourseMaterialSet = CourseMaterialSet
    {
      -- | Materials attached to this set.
      materials :: (Core.Maybe [CourseMaterial])
      -- | Title for this set.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseMaterialSet' with the minimum fields required to make a request.
newCourseMaterialSet 
    ::  CourseMaterialSet
newCourseMaterialSet =
  CourseMaterialSet {materials = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON CourseMaterialSet where
        parseJSON
          = Core.withObject "CourseMaterialSet"
              (\ o ->
                 CourseMaterialSet Core.<$>
                   (o Core..:? "materials") Core.<*>
                     (o Core..:? "title"))

instance Core.ToJSON CourseMaterialSet where
        toJSON CourseMaterialSet{..}
          = Core.object
              (Core.catMaybes
                 [("materials" Core..=) Core.<$> materials,
                  ("title" Core..=) Core.<$> title])


-- | Information about a @Feed@ with a @feed_type@ of @COURSE_ROSTER_CHANGES@.
--
-- /See:/ 'newCourseRosterChangesInfo' smart constructor.
newtype CourseRosterChangesInfo = CourseRosterChangesInfo
    {
      -- | The @course_id@ of the course to subscribe to roster changes for.
      courseId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseRosterChangesInfo' with the minimum fields required to make a request.
newCourseRosterChangesInfo 
    ::  CourseRosterChangesInfo
newCourseRosterChangesInfo = CourseRosterChangesInfo {courseId = Core.Nothing}

instance Core.FromJSON CourseRosterChangesInfo where
        parseJSON
          = Core.withObject "CourseRosterChangesInfo"
              (\ o ->
                 CourseRosterChangesInfo Core.<$>
                   (o Core..:? "courseId"))

instance Core.ToJSON CourseRosterChangesInfo where
        toJSON CourseRosterChangesInfo{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId])


-- | Course work created by a teacher for students of the course.
--
-- /See:/ 'newCourseWork' smart constructor.
data CourseWork = CourseWork
    {
      -- | Absolute link to this course work in the Classroom web UI. This is only populated if @state@ is @PUBLISHED@. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | Assignee mode of the coursework. If unspecified, the default value is @ALL_STUDENTS@.
    , assigneeMode :: (Core.Maybe CourseWork_AssigneeMode)
      -- | Assignment details. This is populated only when @work_type@ is @ASSIGNMENT@. Read-only.
    , assignment :: (Core.Maybe Assignment)
      -- | Whether this course work item is associated with the Developer Console project making the request. See CreateCourseWork for more details. Read-only.
    , associatedWithDeveloper :: (Core.Maybe Core.Bool)
      -- | Identifier of the course. Read-only.
    , courseId :: (Core.Maybe Core.Text)
      -- | Timestamp when this course work was created. Read-only.
    , creationTime :: (Core.Maybe Core.DateTime)
      -- | Identifier for the user that created the coursework. Read-only.
    , creatorUserId :: (Core.Maybe Core.Text)
      -- | Optional description of this course work. If set, the description must be a valid UTF-8 string containing no more than 30,000 characters.
    , description :: (Core.Maybe Core.Text)
      -- | Optional date, in UTC, that submissions for this course work are due. This must be specified if @due_time@ is specified.
    , dueDate :: (Core.Maybe Date)
      -- | Optional time of day, in UTC, that submissions for this course work are due. This must be specified if @due_date@ is specified.
    , dueTime :: (Core.Maybe TimeOfDay')
      -- | The category that this coursework\'s grade contributes to. Present only when a category has been chosen for the coursework. May be used in calculating the overall grade. Read-only.
    , gradeCategory :: (Core.Maybe GradeCategory)
      -- | Classroom-assigned identifier of this course work, unique per course. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Identifiers of students with access to the coursework. This field is set only if @assigneeMode@ is @INDIVIDUAL_STUDENTS@. If the @assigneeMode@ is @INDIVIDUAL_STUDENTS@, then only students specified in this field are assigned the coursework.
    , individualStudentsOptions :: (Core.Maybe IndividualStudentsOptions)
      -- | Additional materials. CourseWork must have no more than 20 material items.
    , materials :: (Core.Maybe [Material])
      -- | Maximum grade for this course work. If zero or unspecified, this assignment is considered ungraded. This must be a non-negative integer value.
    , maxPoints :: (Core.Maybe Core.Double)
      -- | Multiple choice question details. For read operations, this field is populated only when @work_type@ is @MULTIPLE_CHOICE_QUESTION@. For write operations, this field must be specified when creating course work with a @work_type@ of @MULTIPLE_CHOICE_QUESTION@, and it must not be set otherwise.
    , multipleChoiceQuestion :: (Core.Maybe MultipleChoiceQuestion)
      -- | Optional timestamp when this course work is scheduled to be published.
    , scheduledTime :: (Core.Maybe Core.DateTime)
      -- | Status of this course work. If unspecified, the default state is @DRAFT@.
    , state :: (Core.Maybe CourseWork_State)
      -- | Setting to determine when students are allowed to modify submissions. If unspecified, the default value is @MODIFIABLE_UNTIL_TURNED_IN@.
    , submissionModificationMode :: (Core.Maybe CourseWork_SubmissionModificationMode)
      -- | Title of this course work. The title must be a valid UTF-8 string containing between 1 and 3000 characters.
    , title :: (Core.Maybe Core.Text)
      -- | Identifier for the topic that this coursework is associated with. Must match an existing topic in the course.
    , topicId :: (Core.Maybe Core.Text)
      -- | Timestamp of the most recent change to this course work. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | Type of this course work. The type is set when the course work is created and cannot be changed.
    , workType :: (Core.Maybe CourseWork_WorkType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseWork' with the minimum fields required to make a request.
newCourseWork 
    ::  CourseWork
newCourseWork =
  CourseWork
    { alternateLink = Core.Nothing
    , assigneeMode = Core.Nothing
    , assignment = Core.Nothing
    , associatedWithDeveloper = Core.Nothing
    , courseId = Core.Nothing
    , creationTime = Core.Nothing
    , creatorUserId = Core.Nothing
    , description = Core.Nothing
    , dueDate = Core.Nothing
    , dueTime = Core.Nothing
    , gradeCategory = Core.Nothing
    , id = Core.Nothing
    , individualStudentsOptions = Core.Nothing
    , materials = Core.Nothing
    , maxPoints = Core.Nothing
    , multipleChoiceQuestion = Core.Nothing
    , scheduledTime = Core.Nothing
    , state = Core.Nothing
    , submissionModificationMode = Core.Nothing
    , title = Core.Nothing
    , topicId = Core.Nothing
    , updateTime = Core.Nothing
    , workType = Core.Nothing
    }

instance Core.FromJSON CourseWork where
        parseJSON
          = Core.withObject "CourseWork"
              (\ o ->
                 CourseWork Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "assigneeMode")
                     Core.<*> (o Core..:? "assignment")
                     Core.<*> (o Core..:? "associatedWithDeveloper")
                     Core.<*> (o Core..:? "courseId")
                     Core.<*> (o Core..:? "creationTime")
                     Core.<*> (o Core..:? "creatorUserId")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "dueDate")
                     Core.<*> (o Core..:? "dueTime")
                     Core.<*> (o Core..:? "gradeCategory")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "individualStudentsOptions")
                     Core.<*> (o Core..:? "materials")
                     Core.<*> (o Core..:? "maxPoints")
                     Core.<*> (o Core..:? "multipleChoiceQuestion")
                     Core.<*> (o Core..:? "scheduledTime")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "submissionModificationMode")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "topicId")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "workType"))

instance Core.ToJSON CourseWork where
        toJSON CourseWork{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("assigneeMode" Core..=) Core.<$> assigneeMode,
                  ("assignment" Core..=) Core.<$> assignment,
                  ("associatedWithDeveloper" Core..=) Core.<$>
                    associatedWithDeveloper,
                  ("courseId" Core..=) Core.<$> courseId,
                  ("creationTime" Core..=) Core.<$> creationTime,
                  ("creatorUserId" Core..=) Core.<$> creatorUserId,
                  ("description" Core..=) Core.<$> description,
                  ("dueDate" Core..=) Core.<$> dueDate,
                  ("dueTime" Core..=) Core.<$> dueTime,
                  ("gradeCategory" Core..=) Core.<$> gradeCategory,
                  ("id" Core..=) Core.<$> id,
                  ("individualStudentsOptions" Core..=) Core.<$>
                    individualStudentsOptions,
                  ("materials" Core..=) Core.<$> materials,
                  ("maxPoints" Core..=) Core.<$> maxPoints,
                  ("multipleChoiceQuestion" Core..=) Core.<$>
                    multipleChoiceQuestion,
                  ("scheduledTime" Core..=) Core.<$> scheduledTime,
                  ("state" Core..=) Core.<$> state,
                  ("submissionModificationMode" Core..=) Core.<$>
                    submissionModificationMode,
                  ("title" Core..=) Core.<$> title,
                  ("topicId" Core..=) Core.<$> topicId,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("workType" Core..=) Core.<$> workType])


-- | Information about a @Feed@ with a @feed_type@ of @COURSE_WORK_CHANGES@.
--
-- /See:/ 'newCourseWorkChangesInfo' smart constructor.
newtype CourseWorkChangesInfo = CourseWorkChangesInfo
    {
      -- | The @course_id@ of the course to subscribe to work changes for.
      courseId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseWorkChangesInfo' with the minimum fields required to make a request.
newCourseWorkChangesInfo 
    ::  CourseWorkChangesInfo
newCourseWorkChangesInfo = CourseWorkChangesInfo {courseId = Core.Nothing}

instance Core.FromJSON CourseWorkChangesInfo where
        parseJSON
          = Core.withObject "CourseWorkChangesInfo"
              (\ o ->
                 CourseWorkChangesInfo Core.<$>
                   (o Core..:? "courseId"))

instance Core.ToJSON CourseWorkChangesInfo where
        toJSON CourseWorkChangesInfo{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId])


-- | Course work material created by a teacher for students of the course
--
-- /See:/ 'newCourseWorkMaterial' smart constructor.
data CourseWorkMaterial = CourseWorkMaterial
    {
      -- | Absolute link to this course work material in the Classroom web UI. This is only populated if @state@ is @PUBLISHED@. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | Assignee mode of the course work material. If unspecified, the default value is @ALL_STUDENTS@.
    , assigneeMode :: (Core.Maybe CourseWorkMaterial_AssigneeMode)
      -- | Identifier of the course. Read-only.
    , courseId :: (Core.Maybe Core.Text)
      -- | Timestamp when this course work material was created. Read-only.
    , creationTime :: (Core.Maybe Core.DateTime)
      -- | Identifier for the user that created the course work material. Read-only.
    , creatorUserId :: (Core.Maybe Core.Text)
      -- | Optional description of this course work material. The text must be a valid UTF-8 string containing no more than 30,000 characters.
    , description :: (Core.Maybe Core.Text)
      -- | Classroom-assigned identifier of this course work material, unique per course. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Identifiers of students with access to the course work material. This field is set only if @assigneeMode@ is @INDIVIDUAL_STUDENTS@. If the @assigneeMode@ is @INDIVIDUAL_STUDENTS@, then only students specified in this field can see the course work material.
    , individualStudentsOptions :: (Core.Maybe IndividualStudentsOptions)
      -- | Additional materials. A course work material must have no more than 20 material items.
    , materials :: (Core.Maybe [Material])
      -- | Optional timestamp when this course work material is scheduled to be published.
    , scheduledTime :: (Core.Maybe Core.DateTime)
      -- | Status of this course work material. If unspecified, the default state is @DRAFT@.
    , state :: (Core.Maybe CourseWorkMaterial_State)
      -- | Title of this course work material. The title must be a valid UTF-8 string containing between 1 and 3000 characters.
    , title :: (Core.Maybe Core.Text)
      -- | Identifier for the topic that this course work material is associated with. Must match an existing topic in the course.
    , topicId :: (Core.Maybe Core.Text)
      -- | Timestamp of the most recent change to this course work material. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CourseWorkMaterial' with the minimum fields required to make a request.
newCourseWorkMaterial 
    ::  CourseWorkMaterial
newCourseWorkMaterial =
  CourseWorkMaterial
    { alternateLink = Core.Nothing
    , assigneeMode = Core.Nothing
    , courseId = Core.Nothing
    , creationTime = Core.Nothing
    , creatorUserId = Core.Nothing
    , description = Core.Nothing
    , id = Core.Nothing
    , individualStudentsOptions = Core.Nothing
    , materials = Core.Nothing
    , scheduledTime = Core.Nothing
    , state = Core.Nothing
    , title = Core.Nothing
    , topicId = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON CourseWorkMaterial where
        parseJSON
          = Core.withObject "CourseWorkMaterial"
              (\ o ->
                 CourseWorkMaterial Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "assigneeMode")
                     Core.<*> (o Core..:? "courseId")
                     Core.<*> (o Core..:? "creationTime")
                     Core.<*> (o Core..:? "creatorUserId")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "individualStudentsOptions")
                     Core.<*> (o Core..:? "materials")
                     Core.<*> (o Core..:? "scheduledTime")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "topicId")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON CourseWorkMaterial where
        toJSON CourseWorkMaterial{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("assigneeMode" Core..=) Core.<$> assigneeMode,
                  ("courseId" Core..=) Core.<$> courseId,
                  ("creationTime" Core..=) Core.<$> creationTime,
                  ("creatorUserId" Core..=) Core.<$> creatorUserId,
                  ("description" Core..=) Core.<$> description,
                  ("id" Core..=) Core.<$> id,
                  ("individualStudentsOptions" Core..=) Core.<$>
                    individualStudentsOptions,
                  ("materials" Core..=) Core.<$> materials,
                  ("scheduledTime" Core..=) Core.<$> scheduledTime,
                  ("state" Core..=) Core.<$> state,
                  ("title" Core..=) Core.<$> title,
                  ("topicId" Core..=) Core.<$> topicId,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | A rubric criterion. Each criterion is a dimension on which performance is rated.
--
-- /See:/ 'newCriterion' smart constructor.
data Criterion = Criterion
    {
      -- | The description of the criterion.
      description :: (Core.Maybe Core.Text)
      -- | The criterion ID. On creation, an ID is assigned.
    , id :: (Core.Maybe Core.Text)
      -- | The list of levels within this criterion.
    , levels :: (Core.Maybe [Level])
      -- | The title of the criterion.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Criterion' with the minimum fields required to make a request.
newCriterion 
    ::  Criterion
newCriterion =
  Criterion
    { description = Core.Nothing
    , id = Core.Nothing
    , levels = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Criterion where
        parseJSON
          = Core.withObject "Criterion"
              (\ o ->
                 Criterion Core.<$>
                   (o Core..:? "description") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "levels")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Criterion where
        toJSON Criterion{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("id" Core..=) Core.<$> id,
                  ("levels" Core..=) Core.<$> levels,
                  ("title" Core..=) Core.<$> title])


-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
    {
      -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
      day :: (Core.Maybe Core.Int32)
      -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    , month :: (Core.Maybe Core.Int32)
      -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    , year :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate 
    ::  Date
newDate = Date {day = Core.Nothing, month = Core.Nothing, year = Core.Nothing}

instance Core.FromJSON Date where
        parseJSON
          = Core.withObject "Date"
              (\ o ->
                 Date Core.<$>
                   (o Core..:? "day") Core.<*> (o Core..:? "month")
                     Core.<*> (o Core..:? "year"))

instance Core.ToJSON Date where
        toJSON Date{..}
          = Core.object
              (Core.catMaybes
                 [("day" Core..=) Core.<$> day,
                  ("month" Core..=) Core.<$> month,
                  ("year" Core..=) Core.<$> year])


-- | Representation of a Google Drive file.
--
-- /See:/ 'newDriveFile' smart constructor.
data DriveFile = DriveFile
    {
      -- | URL that can be used to access the Drive item. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | Drive API resource ID.
    , id :: (Core.Maybe Core.Text)
      -- | URL of a thumbnail image of the Drive item. Read-only.
    , thumbnailUrl :: (Core.Maybe Core.Text)
      -- | Title of the Drive item. Read-only.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFile' with the minimum fields required to make a request.
newDriveFile 
    ::  DriveFile
newDriveFile =
  DriveFile
    { alternateLink = Core.Nothing
    , id = Core.Nothing
    , thumbnailUrl = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON DriveFile where
        parseJSON
          = Core.withObject "DriveFile"
              (\ o ->
                 DriveFile Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "thumbnailUrl")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON DriveFile where
        toJSON DriveFile{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("id" Core..=) Core.<$> id,
                  ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
                  ("title" Core..=) Core.<$> title])


-- | Representation of a Google Drive folder.
--
-- /See:/ 'newDriveFolder' smart constructor.
data DriveFolder = DriveFolder
    {
      -- | URL that can be used to access the Drive folder. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | Drive API resource ID.
    , id :: (Core.Maybe Core.Text)
      -- | Title of the Drive folder. Read-only.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFolder' with the minimum fields required to make a request.
newDriveFolder 
    ::  DriveFolder
newDriveFolder =
  DriveFolder
    {alternateLink = Core.Nothing, id = Core.Nothing, title = Core.Nothing}

instance Core.FromJSON DriveFolder where
        parseJSON
          = Core.withObject "DriveFolder"
              (\ o ->
                 DriveFolder Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON DriveFolder where
        toJSON DriveFolder{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("id" Core..=) Core.<$> id,
                  ("title" Core..=) Core.<$> title])


-- | URI to be iframed after being populated with query parameters.
--
-- /See:/ 'newEmbedUri' smart constructor.
newtype EmbedUri = EmbedUri
    {
      -- | Required. URI to be iframed after being populated with query parameters. This must be a valid UTF-8 string containing between 1 and 1800 characters.
      uri :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbedUri' with the minimum fields required to make a request.
newEmbedUri 
    ::  EmbedUri
newEmbedUri = EmbedUri {uri = Core.Nothing}

instance Core.FromJSON EmbedUri where
        parseJSON
          = Core.withObject "EmbedUri"
              (\ o -> EmbedUri Core.<$> (o Core..:? "uri"))

instance Core.ToJSON EmbedUri where
        toJSON EmbedUri{..}
          = Core.object
              (Core.catMaybes [("uri" Core..=) Core.<$> uri])


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | A class of notifications that an application can register to receive. For example: \"all roster changes for a domain\".
--
-- /See:/ 'newFeed' smart constructor.
data Feed = Feed
    {
      -- | Information about a @Feed@ with a @feed_type@ of @COURSE_ROSTER_CHANGES@. This field must be specified if @feed_type@ is @COURSE_ROSTER_CHANGES@.
      courseRosterChangesInfo :: (Core.Maybe CourseRosterChangesInfo)
      -- | Information about a @Feed@ with a @feed_type@ of @COURSE_WORK_CHANGES@. This field must be specified if @feed_type@ is @COURSE_WORK_CHANGES@.
    , courseWorkChangesInfo :: (Core.Maybe CourseWorkChangesInfo)
      -- | The type of feed.
    , feedType :: (Core.Maybe Feed_FeedType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Feed' with the minimum fields required to make a request.
newFeed 
    ::  Feed
newFeed =
  Feed
    { courseRosterChangesInfo = Core.Nothing
    , courseWorkChangesInfo = Core.Nothing
    , feedType = Core.Nothing
    }

instance Core.FromJSON Feed where
        parseJSON
          = Core.withObject "Feed"
              (\ o ->
                 Feed Core.<$>
                   (o Core..:? "courseRosterChangesInfo") Core.<*>
                     (o Core..:? "courseWorkChangesInfo")
                     Core.<*> (o Core..:? "feedType"))

instance Core.ToJSON Feed where
        toJSON Feed{..}
          = Core.object
              (Core.catMaybes
                 [("courseRosterChangesInfo" Core..=) Core.<$>
                    courseRosterChangesInfo,
                  ("courseWorkChangesInfo" Core..=) Core.<$>
                    courseWorkChangesInfo,
                  ("feedType" Core..=) Core.<$> feedType])


-- | Google Forms item.
--
-- /See:/ 'newForm' smart constructor.
data Form = Form
    {
      -- | URL of the form.
      formUrl :: (Core.Maybe Core.Text)
      -- | URL of the form responses document. Only set if responses have been recorded and only when the requesting user is an editor of the form. Read-only.
    , responseUrl :: (Core.Maybe Core.Text)
      -- | URL of a thumbnail image of the Form. Read-only.
    , thumbnailUrl :: (Core.Maybe Core.Text)
      -- | Title of the Form. Read-only.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Form' with the minimum fields required to make a request.
newForm 
    ::  Form
newForm =
  Form
    { formUrl = Core.Nothing
    , responseUrl = Core.Nothing
    , thumbnailUrl = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Form where
        parseJSON
          = Core.withObject "Form"
              (\ o ->
                 Form Core.<$>
                   (o Core..:? "formUrl") Core.<*>
                     (o Core..:? "responseUrl")
                     Core.<*> (o Core..:? "thumbnailUrl")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Form where
        toJSON Form{..}
          = Core.object
              (Core.catMaybes
                 [("formUrl" Core..=) Core.<$> formUrl,
                  ("responseUrl" Core..=) Core.<$> responseUrl,
                  ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
                  ("title" Core..=) Core.<$> title])


-- | Global user permission description.
--
-- /See:/ 'newGlobalPermission' smart constructor.
newtype GlobalPermission = GlobalPermission
    {
      -- | Permission value.
      permission :: (Core.Maybe GlobalPermission_Permission)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GlobalPermission' with the minimum fields required to make a request.
newGlobalPermission 
    ::  GlobalPermission
newGlobalPermission = GlobalPermission {permission = Core.Nothing}

instance Core.FromJSON GlobalPermission where
        parseJSON
          = Core.withObject "GlobalPermission"
              (\ o ->
                 GlobalPermission Core.<$> (o Core..:? "permission"))

instance Core.ToJSON GlobalPermission where
        toJSON GlobalPermission{..}
          = Core.object
              (Core.catMaybes
                 [("permission" Core..=) Core.<$> permission])


-- | Details for a grade category in a course. Coursework may have zero or one grade category, and the category may be used in computing the overall grade. See the <https://support.google.com/edu/classroom/answer/9184995 help center article> for details.
--
-- /See:/ 'newGradeCategory' smart constructor.
data GradeCategory = GradeCategory
    {
      -- | Default value of denominator. Only applicable when grade calculation type is TOTAL_POINTS.
      defaultGradeDenominator :: (Core.Maybe Core.Int32)
      -- | ID of the grade category.
    , id :: (Core.Maybe Core.Text)
      -- | Name of the grade category.
    , name :: (Core.Maybe Core.Text)
      -- | The weight of the category average as part of overall average. A weight of 12.34% is represented as 123400 (100% is 1,000,000). The last two digits should always be zero since we use two decimal precision. Only applicable when grade calculation type is WEIGHTED_CATEGORIES.
    , weight :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GradeCategory' with the minimum fields required to make a request.
newGradeCategory 
    ::  GradeCategory
newGradeCategory =
  GradeCategory
    { defaultGradeDenominator = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , weight = Core.Nothing
    }

instance Core.FromJSON GradeCategory where
        parseJSON
          = Core.withObject "GradeCategory"
              (\ o ->
                 GradeCategory Core.<$>
                   (o Core..:? "defaultGradeDenominator") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "weight"))

instance Core.ToJSON GradeCategory where
        toJSON GradeCategory{..}
          = Core.object
              (Core.catMaybes
                 [("defaultGradeDenominator" Core..=) Core.<$>
                    defaultGradeDenominator,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("weight" Core..=) Core.<$> weight])


-- | The history of each grade on this submission.
--
-- /See:/ 'newGradeHistory' smart constructor.
data GradeHistory = GradeHistory
    {
      -- | The teacher who made the grade change.
      actorUserId :: (Core.Maybe Core.Text)
      -- | The type of grade change at this time in the submission grade history.
    , gradeChangeType :: (Core.Maybe GradeHistory_GradeChangeType)
      -- | When the grade of the submission was changed.
    , gradeTimestamp :: (Core.Maybe Core.DateTime)
      -- | The denominator of the grade at this time in the submission grade history.
    , maxPoints :: (Core.Maybe Core.Double)
      -- | The numerator of the grade at this time in the submission grade history.
    , pointsEarned :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GradeHistory' with the minimum fields required to make a request.
newGradeHistory 
    ::  GradeHistory
newGradeHistory =
  GradeHistory
    { actorUserId = Core.Nothing
    , gradeChangeType = Core.Nothing
    , gradeTimestamp = Core.Nothing
    , maxPoints = Core.Nothing
    , pointsEarned = Core.Nothing
    }

instance Core.FromJSON GradeHistory where
        parseJSON
          = Core.withObject "GradeHistory"
              (\ o ->
                 GradeHistory Core.<$>
                   (o Core..:? "actorUserId") Core.<*>
                     (o Core..:? "gradeChangeType")
                     Core.<*> (o Core..:? "gradeTimestamp")
                     Core.<*> (o Core..:? "maxPoints")
                     Core.<*> (o Core..:? "pointsEarned"))

instance Core.ToJSON GradeHistory where
        toJSON GradeHistory{..}
          = Core.object
              (Core.catMaybes
                 [("actorUserId" Core..=) Core.<$> actorUserId,
                  ("gradeChangeType" Core..=) Core.<$> gradeChangeType,
                  ("gradeTimestamp" Core..=) Core.<$> gradeTimestamp,
                  ("maxPoints" Core..=) Core.<$> maxPoints,
                  ("pointsEarned" Core..=) Core.<$> pointsEarned])


-- | The gradebook settings for a course. See the <https://support.google.com/edu/classroom/answer/9184995 help center article> for details.
--
-- /See:/ 'newGradebookSettings' smart constructor.
data GradebookSettings = GradebookSettings
    {
      -- | Indicates how the overall grade is calculated.
      calculationType :: (Core.Maybe GradebookSettings_CalculationType)
      -- | Indicates who can see the overall grade..
    , displaySetting :: (Core.Maybe GradebookSettings_DisplaySetting)
      -- | Grade categories that are available for coursework in the course.
    , gradeCategories :: (Core.Maybe [GradeCategory])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GradebookSettings' with the minimum fields required to make a request.
newGradebookSettings 
    ::  GradebookSettings
newGradebookSettings =
  GradebookSettings
    { calculationType = Core.Nothing
    , displaySetting = Core.Nothing
    , gradeCategories = Core.Nothing
    }

instance Core.FromJSON GradebookSettings where
        parseJSON
          = Core.withObject "GradebookSettings"
              (\ o ->
                 GradebookSettings Core.<$>
                   (o Core..:? "calculationType") Core.<*>
                     (o Core..:? "displaySetting")
                     Core.<*> (o Core..:? "gradeCategories"))

instance Core.ToJSON GradebookSettings where
        toJSON GradebookSettings{..}
          = Core.object
              (Core.catMaybes
                 [("calculationType" Core..=) Core.<$>
                    calculationType,
                  ("displaySetting" Core..=) Core.<$> displaySetting,
                  ("gradeCategories" Core..=) Core.<$>
                    gradeCategories])


-- | Association between a student and a guardian of that student. The guardian may receive information about the student\'s course work.
--
-- /See:/ 'newGuardian' smart constructor.
data Guardian = Guardian
    {
      -- | Identifier for the guardian.
      guardianId :: (Core.Maybe Core.Text)
      -- | User profile for the guardian.
    , guardianProfile :: (Core.Maybe UserProfile)
      -- | The email address to which the initial guardian invitation was sent. This field is only visible to domain administrators.
    , invitedEmailAddress :: (Core.Maybe Core.Text)
      -- | Identifier for the student to whom the guardian relationship applies.
    , studentId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Guardian' with the minimum fields required to make a request.
newGuardian 
    ::  Guardian
newGuardian =
  Guardian
    { guardianId = Core.Nothing
    , guardianProfile = Core.Nothing
    , invitedEmailAddress = Core.Nothing
    , studentId = Core.Nothing
    }

instance Core.FromJSON Guardian where
        parseJSON
          = Core.withObject "Guardian"
              (\ o ->
                 Guardian Core.<$>
                   (o Core..:? "guardianId") Core.<*>
                     (o Core..:? "guardianProfile")
                     Core.<*> (o Core..:? "invitedEmailAddress")
                     Core.<*> (o Core..:? "studentId"))

instance Core.ToJSON Guardian where
        toJSON Guardian{..}
          = Core.object
              (Core.catMaybes
                 [("guardianId" Core..=) Core.<$> guardianId,
                  ("guardianProfile" Core..=) Core.<$> guardianProfile,
                  ("invitedEmailAddress" Core..=) Core.<$>
                    invitedEmailAddress,
                  ("studentId" Core..=) Core.<$> studentId])


-- | An invitation to become the guardian of a specified user, sent to a specified email address.
--
-- /See:/ 'newGuardianInvitation' smart constructor.
data GuardianInvitation = GuardianInvitation
    {
      -- | The time that this invitation was created. Read-only.
      creationTime :: (Core.Maybe Core.DateTime)
      -- | Unique identifier for this invitation. Read-only.
    , invitationId :: (Core.Maybe Core.Text)
      -- | Email address that the invitation was sent to. This field is only visible to domain administrators.
    , invitedEmailAddress :: (Core.Maybe Core.Text)
      -- | The state that this invitation is in.
    , state :: (Core.Maybe GuardianInvitation_State)
      -- | ID of the student (in standard format)
    , studentId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuardianInvitation' with the minimum fields required to make a request.
newGuardianInvitation 
    ::  GuardianInvitation
newGuardianInvitation =
  GuardianInvitation
    { creationTime = Core.Nothing
    , invitationId = Core.Nothing
    , invitedEmailAddress = Core.Nothing
    , state = Core.Nothing
    , studentId = Core.Nothing
    }

instance Core.FromJSON GuardianInvitation where
        parseJSON
          = Core.withObject "GuardianInvitation"
              (\ o ->
                 GuardianInvitation Core.<$>
                   (o Core..:? "creationTime") Core.<*>
                     (o Core..:? "invitationId")
                     Core.<*> (o Core..:? "invitedEmailAddress")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "studentId"))

instance Core.ToJSON GuardianInvitation where
        toJSON GuardianInvitation{..}
          = Core.object
              (Core.catMaybes
                 [("creationTime" Core..=) Core.<$> creationTime,
                  ("invitationId" Core..=) Core.<$> invitationId,
                  ("invitedEmailAddress" Core..=) Core.<$>
                    invitedEmailAddress,
                  ("state" Core..=) Core.<$> state,
                  ("studentId" Core..=) Core.<$> studentId])


-- | Assignee details about a coursework\/announcement. This field is set if and only if @assigneeMode@ is @INDIVIDUAL_STUDENTS@.
--
-- /See:/ 'newIndividualStudentsOptions' smart constructor.
newtype IndividualStudentsOptions = IndividualStudentsOptions
    {
      -- | Identifiers for the students that have access to the coursework\/announcement.
      studentIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndividualStudentsOptions' with the minimum fields required to make a request.
newIndividualStudentsOptions 
    ::  IndividualStudentsOptions
newIndividualStudentsOptions =
  IndividualStudentsOptions {studentIds = Core.Nothing}

instance Core.FromJSON IndividualStudentsOptions
         where
        parseJSON
          = Core.withObject "IndividualStudentsOptions"
              (\ o ->
                 IndividualStudentsOptions Core.<$>
                   (o Core..:? "studentIds"))

instance Core.ToJSON IndividualStudentsOptions where
        toJSON IndividualStudentsOptions{..}
          = Core.object
              (Core.catMaybes
                 [("studentIds" Core..=) Core.<$> studentIds])


-- | An invitation to join a course.
--
-- /See:/ 'newInvitation' smart constructor.
data Invitation = Invitation
    {
      -- | Identifier of the course to invite the user to.
      courseId :: (Core.Maybe Core.Text)
      -- | Identifier assigned by Classroom. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Role to invite the user to have. Must not be @COURSE_ROLE_UNSPECIFIED@.
    , role' :: (Core.Maybe Invitation_Role)
      -- | Identifier of the invited user. When specified as a parameter of a request, this identifier can be set to one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    , userId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Invitation' with the minimum fields required to make a request.
newInvitation 
    ::  Invitation
newInvitation =
  Invitation
    { courseId = Core.Nothing
    , id = Core.Nothing
    , role' = Core.Nothing
    , userId = Core.Nothing
    }

instance Core.FromJSON Invitation where
        parseJSON
          = Core.withObject "Invitation"
              (\ o ->
                 Invitation Core.<$>
                   (o Core..:? "courseId") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "role")
                     Core.<*> (o Core..:? "userId"))

instance Core.ToJSON Invitation where
        toJSON Invitation{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId,
                  ("id" Core..=) Core.<$> id,
                  ("role" Core..=) Core.<$> role',
                  ("userId" Core..=) Core.<$> userId])


-- | A level of the criterion.
--
-- /See:/ 'newLevel' smart constructor.
data Level = Level
    {
      -- | The description of the level.
      description :: (Core.Maybe Core.Text)
      -- | The level ID. On creation, an ID is assigned.
    , id :: (Core.Maybe Core.Text)
      -- | Optional points associated with this level. If set, all levels within the rubric must specify points and the value must be distinct across all levels within a single criterion. 0 is distinct from no points.
    , points :: (Core.Maybe Core.Double)
      -- | The title of the level. If the level has no points set, title must be set.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Level' with the minimum fields required to make a request.
newLevel 
    ::  Level
newLevel =
  Level
    { description = Core.Nothing
    , id = Core.Nothing
    , points = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON Level where
        parseJSON
          = Core.withObject "Level"
              (\ o ->
                 Level Core.<$>
                   (o Core..:? "description") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "points")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON Level where
        toJSON Level{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("id" Core..=) Core.<$> id,
                  ("points" Core..=) Core.<$> points,
                  ("title" Core..=) Core.<$> title])


-- | URL item.
--
-- /See:/ 'newLink' smart constructor.
data Link = Link
    {
      -- | URL of a thumbnail image of the target URL. Read-only.
      thumbnailUrl :: (Core.Maybe Core.Text)
      -- | Title of the target of the URL. Read-only.
    , title :: (Core.Maybe Core.Text)
      -- | URL to link to. This must be a valid UTF-8 string containing between 1 and 2024 characters.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
newLink 
    ::  Link
newLink =
  Link {thumbnailUrl = Core.Nothing, title = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Link where
        parseJSON
          = Core.withObject "Link"
              (\ o ->
                 Link Core.<$>
                   (o Core..:? "thumbnailUrl") Core.<*>
                     (o Core..:? "title")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON Link where
        toJSON Link{..}
          = Core.object
              (Core.catMaybes
                 [("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
                  ("title" Core..=) Core.<$> title,
                  ("url" Core..=) Core.<$> url])


-- | Response when listing add-on attachments.
--
-- /See:/ 'newListAddOnAttachmentsResponse' smart constructor.
data ListAddOnAttachmentsResponse = ListAddOnAttachmentsResponse
    {
      -- | Attachments under the given post.
      addOnAttachments :: (Core.Maybe [AddOnAttachment])
      -- | A token, which can be sent as @pageToken@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAddOnAttachmentsResponse' with the minimum fields required to make a request.
newListAddOnAttachmentsResponse 
    ::  ListAddOnAttachmentsResponse
newListAddOnAttachmentsResponse =
  ListAddOnAttachmentsResponse
    {addOnAttachments = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAddOnAttachmentsResponse
         where
        parseJSON
          = Core.withObject "ListAddOnAttachmentsResponse"
              (\ o ->
                 ListAddOnAttachmentsResponse Core.<$>
                   (o Core..:? "addOnAttachments") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAddOnAttachmentsResponse
         where
        toJSON ListAddOnAttachmentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("addOnAttachments" Core..=) Core.<$>
                    addOnAttachments,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing course work.
--
-- /See:/ 'newListAnnouncementsResponse' smart constructor.
data ListAnnouncementsResponse = ListAnnouncementsResponse
    {
      -- | Announcement items that match the request.
      announcements :: (Core.Maybe [Announcement])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAnnouncementsResponse' with the minimum fields required to make a request.
newListAnnouncementsResponse 
    ::  ListAnnouncementsResponse
newListAnnouncementsResponse =
  ListAnnouncementsResponse
    {announcements = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListAnnouncementsResponse
         where
        parseJSON
          = Core.withObject "ListAnnouncementsResponse"
              (\ o ->
                 ListAnnouncementsResponse Core.<$>
                   (o Core..:? "announcements") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListAnnouncementsResponse where
        toJSON ListAnnouncementsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("announcements" Core..=) Core.<$> announcements,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing course aliases.
--
-- /See:/ 'newListCourseAliasesResponse' smart constructor.
data ListCourseAliasesResponse = ListCourseAliasesResponse
    {
      -- | The course aliases.
      aliases :: (Core.Maybe [CourseAlias])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCourseAliasesResponse' with the minimum fields required to make a request.
newListCourseAliasesResponse 
    ::  ListCourseAliasesResponse
newListCourseAliasesResponse =
  ListCourseAliasesResponse
    {aliases = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCourseAliasesResponse
         where
        parseJSON
          = Core.withObject "ListCourseAliasesResponse"
              (\ o ->
                 ListCourseAliasesResponse Core.<$>
                   (o Core..:? "aliases") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListCourseAliasesResponse where
        toJSON ListCourseAliasesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("aliases" Core..=) Core.<$> aliases,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing course work material.
--
-- /See:/ 'newListCourseWorkMaterialResponse' smart constructor.
data ListCourseWorkMaterialResponse = ListCourseWorkMaterialResponse
    {
      -- | Course work material items that match the request.
      courseWorkMaterial :: (Core.Maybe [CourseWorkMaterial])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCourseWorkMaterialResponse' with the minimum fields required to make a request.
newListCourseWorkMaterialResponse 
    ::  ListCourseWorkMaterialResponse
newListCourseWorkMaterialResponse =
  ListCourseWorkMaterialResponse
    {courseWorkMaterial = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCourseWorkMaterialResponse
         where
        parseJSON
          = Core.withObject "ListCourseWorkMaterialResponse"
              (\ o ->
                 ListCourseWorkMaterialResponse Core.<$>
                   (o Core..:? "courseWorkMaterial") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListCourseWorkMaterialResponse
         where
        toJSON ListCourseWorkMaterialResponse{..}
          = Core.object
              (Core.catMaybes
                 [("courseWorkMaterial" Core..=) Core.<$>
                    courseWorkMaterial,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing course work.
--
-- /See:/ 'newListCourseWorkResponse' smart constructor.
data ListCourseWorkResponse = ListCourseWorkResponse
    {
      -- | Course work items that match the request.
      courseWork :: (Core.Maybe [CourseWork])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCourseWorkResponse' with the minimum fields required to make a request.
newListCourseWorkResponse 
    ::  ListCourseWorkResponse
newListCourseWorkResponse =
  ListCourseWorkResponse
    {courseWork = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCourseWorkResponse where
        parseJSON
          = Core.withObject "ListCourseWorkResponse"
              (\ o ->
                 ListCourseWorkResponse Core.<$>
                   (o Core..:? "courseWork") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListCourseWorkResponse where
        toJSON ListCourseWorkResponse{..}
          = Core.object
              (Core.catMaybes
                 [("courseWork" Core..=) Core.<$> courseWork,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing courses.
--
-- /See:/ 'newListCoursesResponse' smart constructor.
data ListCoursesResponse = ListCoursesResponse
    {
      -- | Courses that match the list request.
      courses :: (Core.Maybe [Course])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCoursesResponse' with the minimum fields required to make a request.
newListCoursesResponse 
    ::  ListCoursesResponse
newListCoursesResponse =
  ListCoursesResponse {courses = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListCoursesResponse where
        parseJSON
          = Core.withObject "ListCoursesResponse"
              (\ o ->
                 ListCoursesResponse Core.<$>
                   (o Core..:? "courses") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListCoursesResponse where
        toJSON ListCoursesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("courses" Core..=) Core.<$> courses,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing guardian invitations.
--
-- /See:/ 'newListGuardianInvitationsResponse' smart constructor.
data ListGuardianInvitationsResponse = ListGuardianInvitationsResponse
    {
      -- | Guardian invitations that matched the list request.
      guardianInvitations :: (Core.Maybe [GuardianInvitation])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGuardianInvitationsResponse' with the minimum fields required to make a request.
newListGuardianInvitationsResponse 
    ::  ListGuardianInvitationsResponse
newListGuardianInvitationsResponse =
  ListGuardianInvitationsResponse
    {guardianInvitations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON
           ListGuardianInvitationsResponse
         where
        parseJSON
          = Core.withObject "ListGuardianInvitationsResponse"
              (\ o ->
                 ListGuardianInvitationsResponse Core.<$>
                   (o Core..:? "guardianInvitations") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListGuardianInvitationsResponse
         where
        toJSON ListGuardianInvitationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("guardianInvitations" Core..=) Core.<$>
                    guardianInvitations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing guardians.
--
-- /See:/ 'newListGuardiansResponse' smart constructor.
data ListGuardiansResponse = ListGuardiansResponse
    {
      -- | Guardians on this page of results that met the criteria specified in the request.
      guardians :: (Core.Maybe [Guardian])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGuardiansResponse' with the minimum fields required to make a request.
newListGuardiansResponse 
    ::  ListGuardiansResponse
newListGuardiansResponse =
  ListGuardiansResponse {guardians = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListGuardiansResponse where
        parseJSON
          = Core.withObject "ListGuardiansResponse"
              (\ o ->
                 ListGuardiansResponse Core.<$>
                   (o Core..:? "guardians") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListGuardiansResponse where
        toJSON ListGuardiansResponse{..}
          = Core.object
              (Core.catMaybes
                 [("guardians" Core..=) Core.<$> guardians,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing invitations.
--
-- /See:/ 'newListInvitationsResponse' smart constructor.
data ListInvitationsResponse = ListInvitationsResponse
    {
      -- | Invitations that match the list request.
      invitations :: (Core.Maybe [Invitation])
      -- | Token identifying the next page of results to return. If empty, no further results are available.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInvitationsResponse' with the minimum fields required to make a request.
newListInvitationsResponse 
    ::  ListInvitationsResponse
newListInvitationsResponse =
  ListInvitationsResponse
    {invitations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListInvitationsResponse where
        parseJSON
          = Core.withObject "ListInvitationsResponse"
              (\ o ->
                 ListInvitationsResponse Core.<$>
                   (o Core..:? "invitations") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListInvitationsResponse where
        toJSON ListInvitationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("invitations" Core..=) Core.<$> invitations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response when listing rubrics.
--
-- /See:/ 'newListRubricsResponse' smart constructor.
data ListRubricsResponse = ListRubricsResponse
    {
      -- | Token identifying the next page of results to return. If empty, no further results are available.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Rubrics that match the request.
    , rubrics :: (Core.Maybe [Rubric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRubricsResponse' with the minimum fields required to make a request.
newListRubricsResponse 
    ::  ListRubricsResponse
newListRubricsResponse =
  ListRubricsResponse {nextPageToken = Core.Nothing, rubrics = Core.Nothing}

instance Core.FromJSON ListRubricsResponse where
        parseJSON
          = Core.withObject "ListRubricsResponse"
              (\ o ->
                 ListRubricsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "rubrics"))

instance Core.ToJSON ListRubricsResponse where
        toJSON ListRubricsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("rubrics" Core..=) Core.<$> rubrics])


-- | Response when listing student submissions.
--
-- /See:/ 'newListStudentSubmissionsResponse' smart constructor.
data ListStudentSubmissionsResponse = ListStudentSubmissionsResponse
    {
      -- | Token identifying the next page of results to return. If empty, no further results are available.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Student work that matches the request.
    , studentSubmissions :: (Core.Maybe [StudentSubmission])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListStudentSubmissionsResponse' with the minimum fields required to make a request.
newListStudentSubmissionsResponse 
    ::  ListStudentSubmissionsResponse
newListStudentSubmissionsResponse =
  ListStudentSubmissionsResponse
    {nextPageToken = Core.Nothing, studentSubmissions = Core.Nothing}

instance Core.FromJSON ListStudentSubmissionsResponse
         where
        parseJSON
          = Core.withObject "ListStudentSubmissionsResponse"
              (\ o ->
                 ListStudentSubmissionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "studentSubmissions"))

instance Core.ToJSON ListStudentSubmissionsResponse
         where
        toJSON ListStudentSubmissionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("studentSubmissions" Core..=) Core.<$>
                    studentSubmissions])


-- | Response when listing students.
--
-- /See:/ 'newListStudentsResponse' smart constructor.
data ListStudentsResponse = ListStudentsResponse
    {
      -- | Token identifying the next page of results to return. If empty, no further results are available.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Students who match the list request.
    , students :: (Core.Maybe [Student])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListStudentsResponse' with the minimum fields required to make a request.
newListStudentsResponse 
    ::  ListStudentsResponse
newListStudentsResponse =
  ListStudentsResponse {nextPageToken = Core.Nothing, students = Core.Nothing}

instance Core.FromJSON ListStudentsResponse where
        parseJSON
          = Core.withObject "ListStudentsResponse"
              (\ o ->
                 ListStudentsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "students"))

instance Core.ToJSON ListStudentsResponse where
        toJSON ListStudentsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("students" Core..=) Core.<$> students])


-- | Response when listing teachers.
--
-- /See:/ 'newListTeachersResponse' smart constructor.
data ListTeachersResponse = ListTeachersResponse
    {
      -- | Token identifying the next page of results to return. If empty, no further results are available.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Teachers who match the list request.
    , teachers :: (Core.Maybe [Teacher])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTeachersResponse' with the minimum fields required to make a request.
newListTeachersResponse 
    ::  ListTeachersResponse
newListTeachersResponse =
  ListTeachersResponse {nextPageToken = Core.Nothing, teachers = Core.Nothing}

instance Core.FromJSON ListTeachersResponse where
        parseJSON
          = Core.withObject "ListTeachersResponse"
              (\ o ->
                 ListTeachersResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "teachers"))

instance Core.ToJSON ListTeachersResponse where
        toJSON ListTeachersResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("teachers" Core..=) Core.<$> teachers])


-- | Response when listing topics.
--
-- /See:/ 'newListTopicResponse' smart constructor.
data ListTopicResponse = ListTopicResponse
    {
      -- | Token identifying the next page of results to return. If empty, no further results are available.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | Topic items that match the request.
    , topic :: (Core.Maybe [Topic])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListTopicResponse' with the minimum fields required to make a request.
newListTopicResponse 
    ::  ListTopicResponse
newListTopicResponse =
  ListTopicResponse {nextPageToken = Core.Nothing, topic = Core.Nothing}

instance Core.FromJSON ListTopicResponse where
        parseJSON
          = Core.withObject "ListTopicResponse"
              (\ o ->
                 ListTopicResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "topic"))

instance Core.ToJSON ListTopicResponse where
        toJSON ListTopicResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("topic" Core..=) Core.<$> topic])


-- | Material attached to course work. When creating attachments, setting the @form@ field is not supported.
--
-- /See:/ 'newMaterial' smart constructor.
data Material = Material
    {
      -- | Google Drive file material.
      driveFile :: (Core.Maybe SharedDriveFile)
      -- | Google Forms material.
    , form :: (Core.Maybe Form)
      -- | Link material. On creation, this is upgraded to a more appropriate type if possible, and this is reflected in the response.
    , link :: (Core.Maybe Link)
      -- | YouTube video material.
    , youtubeVideo :: (Core.Maybe YouTubeVideo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Material' with the minimum fields required to make a request.
newMaterial 
    ::  Material
newMaterial =
  Material
    { driveFile = Core.Nothing
    , form = Core.Nothing
    , link = Core.Nothing
    , youtubeVideo = Core.Nothing
    }

instance Core.FromJSON Material where
        parseJSON
          = Core.withObject "Material"
              (\ o ->
                 Material Core.<$>
                   (o Core..:? "driveFile") Core.<*> (o Core..:? "form")
                     Core.<*> (o Core..:? "link")
                     Core.<*> (o Core..:? "youtubeVideo"))

instance Core.ToJSON Material where
        toJSON Material{..}
          = Core.object
              (Core.catMaybes
                 [("driveFile" Core..=) Core.<$> driveFile,
                  ("form" Core..=) Core.<$> form,
                  ("link" Core..=) Core.<$> link,
                  ("youtubeVideo" Core..=) Core.<$> youtubeVideo])


-- | Request to modify assignee mode and options of an announcement.
--
-- /See:/ 'newModifyAnnouncementAssigneesRequest' smart constructor.
data ModifyAnnouncementAssigneesRequest = ModifyAnnouncementAssigneesRequest
    {
      -- | Mode of the announcement describing whether it is accessible by all students or specified individual students.
      assigneeMode :: (Core.Maybe ModifyAnnouncementAssigneesRequest_AssigneeMode)
      -- | Set which students can view or cannot view the announcement. Must be specified only when @assigneeMode@ is @INDIVIDUAL_STUDENTS@.
    , modifyIndividualStudentsOptions :: (Core.Maybe ModifyIndividualStudentsOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyAnnouncementAssigneesRequest' with the minimum fields required to make a request.
newModifyAnnouncementAssigneesRequest 
    ::  ModifyAnnouncementAssigneesRequest
newModifyAnnouncementAssigneesRequest =
  ModifyAnnouncementAssigneesRequest
    { assigneeMode = Core.Nothing
    , modifyIndividualStudentsOptions = Core.Nothing
    }

instance Core.FromJSON
           ModifyAnnouncementAssigneesRequest
         where
        parseJSON
          = Core.withObject
              "ModifyAnnouncementAssigneesRequest"
              (\ o ->
                 ModifyAnnouncementAssigneesRequest Core.<$>
                   (o Core..:? "assigneeMode") Core.<*>
                     (o Core..:? "modifyIndividualStudentsOptions"))

instance Core.ToJSON
           ModifyAnnouncementAssigneesRequest
         where
        toJSON ModifyAnnouncementAssigneesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("assigneeMode" Core..=) Core.<$> assigneeMode,
                  ("modifyIndividualStudentsOptions" Core..=) Core.<$>
                    modifyIndividualStudentsOptions])


-- | Request to modify the attachments of a student submission.
--
-- /See:/ 'newModifyAttachmentsRequest' smart constructor.
newtype ModifyAttachmentsRequest = ModifyAttachmentsRequest
    {
      -- | Attachments to add. A student submission may not have more than 20 attachments. Form attachments are not supported.
      addAttachments :: (Core.Maybe [Attachment])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyAttachmentsRequest' with the minimum fields required to make a request.
newModifyAttachmentsRequest 
    ::  ModifyAttachmentsRequest
newModifyAttachmentsRequest =
  ModifyAttachmentsRequest {addAttachments = Core.Nothing}

instance Core.FromJSON ModifyAttachmentsRequest where
        parseJSON
          = Core.withObject "ModifyAttachmentsRequest"
              (\ o ->
                 ModifyAttachmentsRequest Core.<$>
                   (o Core..:? "addAttachments"))

instance Core.ToJSON ModifyAttachmentsRequest where
        toJSON ModifyAttachmentsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("addAttachments" Core..=) Core.<$> addAttachments])


-- | Request to modify assignee mode and options of a coursework.
--
-- /See:/ 'newModifyCourseWorkAssigneesRequest' smart constructor.
data ModifyCourseWorkAssigneesRequest = ModifyCourseWorkAssigneesRequest
    {
      -- | Mode of the coursework describing whether it will be assigned to all students or specified individual students.
      assigneeMode :: (Core.Maybe ModifyCourseWorkAssigneesRequest_AssigneeMode)
      -- | Set which students are assigned or not assigned to the coursework. Must be specified only when @assigneeMode@ is @INDIVIDUAL_STUDENTS@.
    , modifyIndividualStudentsOptions :: (Core.Maybe ModifyIndividualStudentsOptions)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyCourseWorkAssigneesRequest' with the minimum fields required to make a request.
newModifyCourseWorkAssigneesRequest 
    ::  ModifyCourseWorkAssigneesRequest
newModifyCourseWorkAssigneesRequest =
  ModifyCourseWorkAssigneesRequest
    { assigneeMode = Core.Nothing
    , modifyIndividualStudentsOptions = Core.Nothing
    }

instance Core.FromJSON
           ModifyCourseWorkAssigneesRequest
         where
        parseJSON
          = Core.withObject "ModifyCourseWorkAssigneesRequest"
              (\ o ->
                 ModifyCourseWorkAssigneesRequest Core.<$>
                   (o Core..:? "assigneeMode") Core.<*>
                     (o Core..:? "modifyIndividualStudentsOptions"))

instance Core.ToJSON ModifyCourseWorkAssigneesRequest
         where
        toJSON ModifyCourseWorkAssigneesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("assigneeMode" Core..=) Core.<$> assigneeMode,
                  ("modifyIndividualStudentsOptions" Core..=) Core.<$>
                    modifyIndividualStudentsOptions])


-- | Contains fields to add or remove students from a course work or announcement where the @assigneeMode@ is set to @INDIVIDUAL_STUDENTS@.
--
-- /See:/ 'newModifyIndividualStudentsOptions' smart constructor.
data ModifyIndividualStudentsOptions = ModifyIndividualStudentsOptions
    {
      -- | IDs of students to be added as having access to this coursework\/announcement.
      addStudentIds :: (Core.Maybe [Core.Text])
      -- | IDs of students to be removed from having access to this coursework\/announcement.
    , removeStudentIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyIndividualStudentsOptions' with the minimum fields required to make a request.
newModifyIndividualStudentsOptions 
    ::  ModifyIndividualStudentsOptions
newModifyIndividualStudentsOptions =
  ModifyIndividualStudentsOptions
    {addStudentIds = Core.Nothing, removeStudentIds = Core.Nothing}

instance Core.FromJSON
           ModifyIndividualStudentsOptions
         where
        parseJSON
          = Core.withObject "ModifyIndividualStudentsOptions"
              (\ o ->
                 ModifyIndividualStudentsOptions Core.<$>
                   (o Core..:? "addStudentIds") Core.<*>
                     (o Core..:? "removeStudentIds"))

instance Core.ToJSON ModifyIndividualStudentsOptions
         where
        toJSON ModifyIndividualStudentsOptions{..}
          = Core.object
              (Core.catMaybes
                 [("addStudentIds" Core..=) Core.<$> addStudentIds,
                  ("removeStudentIds" Core..=) Core.<$>
                    removeStudentIds])


-- | Additional details for multiple-choice questions.
--
-- /See:/ 'newMultipleChoiceQuestion' smart constructor.
newtype MultipleChoiceQuestion = MultipleChoiceQuestion
    {
      -- | Possible choices.
      choices :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultipleChoiceQuestion' with the minimum fields required to make a request.
newMultipleChoiceQuestion 
    ::  MultipleChoiceQuestion
newMultipleChoiceQuestion = MultipleChoiceQuestion {choices = Core.Nothing}

instance Core.FromJSON MultipleChoiceQuestion where
        parseJSON
          = Core.withObject "MultipleChoiceQuestion"
              (\ o ->
                 MultipleChoiceQuestion Core.<$>
                   (o Core..:? "choices"))

instance Core.ToJSON MultipleChoiceQuestion where
        toJSON MultipleChoiceQuestion{..}
          = Core.object
              (Core.catMaybes
                 [("choices" Core..=) Core.<$> choices])


-- | Student work for a multiple-choice question.
--
-- /See:/ 'newMultipleChoiceSubmission' smart constructor.
newtype MultipleChoiceSubmission = MultipleChoiceSubmission
    {
      -- | Student\'s select choice.
      answer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultipleChoiceSubmission' with the minimum fields required to make a request.
newMultipleChoiceSubmission 
    ::  MultipleChoiceSubmission
newMultipleChoiceSubmission = MultipleChoiceSubmission {answer = Core.Nothing}

instance Core.FromJSON MultipleChoiceSubmission where
        parseJSON
          = Core.withObject "MultipleChoiceSubmission"
              (\ o ->
                 MultipleChoiceSubmission Core.<$>
                   (o Core..:? "answer"))

instance Core.ToJSON MultipleChoiceSubmission where
        toJSON MultipleChoiceSubmission{..}
          = Core.object
              (Core.catMaybes [("answer" Core..=) Core.<$> answer])


-- | Details of the user\'s name.
--
-- /See:/ 'newName' smart constructor.
data Name = Name
    {
      -- | The user\'s last name. Read-only.
      familyName :: (Core.Maybe Core.Text)
      -- | The user\'s full name formed by concatenating the first and last name values. Read-only.
    , fullName :: (Core.Maybe Core.Text)
      -- | The user\'s first name. Read-only.
    , givenName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Name' with the minimum fields required to make a request.
newName 
    ::  Name
newName =
  Name
    { familyName = Core.Nothing
    , fullName = Core.Nothing
    , givenName = Core.Nothing
    }

instance Core.FromJSON Name where
        parseJSON
          = Core.withObject "Name"
              (\ o ->
                 Name Core.<$>
                   (o Core..:? "familyName") Core.<*>
                     (o Core..:? "fullName")
                     Core.<*> (o Core..:? "givenName"))

instance Core.ToJSON Name where
        toJSON Name{..}
          = Core.object
              (Core.catMaybes
                 [("familyName" Core..=) Core.<$> familyName,
                  ("fullName" Core..=) Core.<$> fullName,
                  ("givenName" Core..=) Core.<$> givenName])


-- | Request to reclaim a student submission.
--
-- /See:/ 'newReclaimStudentSubmissionRequest' smart constructor.
data ReclaimStudentSubmissionRequest = ReclaimStudentSubmissionRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReclaimStudentSubmissionRequest' with the minimum fields required to make a request.
newReclaimStudentSubmissionRequest 
    ::  ReclaimStudentSubmissionRequest
newReclaimStudentSubmissionRequest = ReclaimStudentSubmissionRequest

instance Core.FromJSON
           ReclaimStudentSubmissionRequest
         where
        parseJSON
          = Core.withObject "ReclaimStudentSubmissionRequest"
              (\ o -> Core.pure ReclaimStudentSubmissionRequest)

instance Core.ToJSON ReclaimStudentSubmissionRequest
         where
        toJSON = Core.const Core.emptyObject


-- | An instruction to Classroom to send notifications from the @feed@ to the provided destination.
--
-- /See:/ 'newRegistration' smart constructor.
data Registration = Registration
    {
      -- | The Cloud Pub\/Sub topic that notifications are to be sent to.
      cloudPubsubTopic :: (Core.Maybe CloudPubsubTopic)
      -- | The time until which the @Registration@ is effective. This is a read-only field assigned by the server.
    , expiryTime :: (Core.Maybe Core.DateTime)
      -- | Specification for the class of notifications that Classroom should deliver to the destination.
    , feed :: (Core.Maybe Feed)
      -- | A server-generated unique identifier for this @Registration@. Read-only.
    , registrationId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Registration' with the minimum fields required to make a request.
newRegistration 
    ::  Registration
newRegistration =
  Registration
    { cloudPubsubTopic = Core.Nothing
    , expiryTime = Core.Nothing
    , feed = Core.Nothing
    , registrationId = Core.Nothing
    }

instance Core.FromJSON Registration where
        parseJSON
          = Core.withObject "Registration"
              (\ o ->
                 Registration Core.<$>
                   (o Core..:? "cloudPubsubTopic") Core.<*>
                     (o Core..:? "expiryTime")
                     Core.<*> (o Core..:? "feed")
                     Core.<*> (o Core..:? "registrationId"))

instance Core.ToJSON Registration where
        toJSON Registration{..}
          = Core.object
              (Core.catMaybes
                 [("cloudPubsubTopic" Core..=) Core.<$>
                    cloudPubsubTopic,
                  ("expiryTime" Core..=) Core.<$> expiryTime,
                  ("feed" Core..=) Core.<$> feed,
                  ("registrationId" Core..=) Core.<$> registrationId])


-- | Request to return a student submission.
--
-- /See:/ 'newReturnStudentSubmissionRequest' smart constructor.
data ReturnStudentSubmissionRequest = ReturnStudentSubmissionRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReturnStudentSubmissionRequest' with the minimum fields required to make a request.
newReturnStudentSubmissionRequest 
    ::  ReturnStudentSubmissionRequest
newReturnStudentSubmissionRequest = ReturnStudentSubmissionRequest

instance Core.FromJSON ReturnStudentSubmissionRequest
         where
        parseJSON
          = Core.withObject "ReturnStudentSubmissionRequest"
              (\ o -> Core.pure ReturnStudentSubmissionRequest)

instance Core.ToJSON ReturnStudentSubmissionRequest
         where
        toJSON = Core.const Core.emptyObject


-- | The rubric of the course work. A rubric is a scoring guide used to evaluate student work and give feedback. For further details, see </classroom/rubrics/limitations Rubrics structure and known limitations>.
--
-- /See:/ 'newRubric' smart constructor.
data Rubric = Rubric
    {
      -- | Identifier of the course. Read-only.
      courseId :: (Core.Maybe Core.Text)
      -- | Identifier for the course work this corresponds to. Read-only.
    , courseWorkId :: (Core.Maybe Core.Text)
      -- | Output only. Timestamp when this rubric was created. Read-only.
    , creationTime :: (Core.Maybe Core.DateTime)
      -- | List of criteria. Each criterion is a dimension on which performance is rated.
    , criteria :: (Core.Maybe [Criterion])
      -- | Classroom-assigned identifier for the rubric. This is unique among rubrics for the relevant course work. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Input only. Immutable. Google Sheets ID of the spreadsheet. This spreadsheet must contain formatted rubric settings. See <https://support.google.com/edu/classroom/answer/9335069 Create or reuse a rubric for an assignment>. Use of this field requires the @https:\/\/www.googleapis.com\/auth\/spreadsheets.readonly@ or @https:\/\/www.googleapis.com\/auth\/spreadsheets@ scope.
    , sourceSpreadsheetId :: (Core.Maybe Core.Text)
      -- | Output only. Timestamp of the most recent change to this rubric. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Rubric' with the minimum fields required to make a request.
newRubric 
    ::  Rubric
newRubric =
  Rubric
    { courseId = Core.Nothing
    , courseWorkId = Core.Nothing
    , creationTime = Core.Nothing
    , criteria = Core.Nothing
    , id = Core.Nothing
    , sourceSpreadsheetId = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Rubric where
        parseJSON
          = Core.withObject "Rubric"
              (\ o ->
                 Rubric Core.<$>
                   (o Core..:? "courseId") Core.<*>
                     (o Core..:? "courseWorkId")
                     Core.<*> (o Core..:? "creationTime")
                     Core.<*> (o Core..:? "criteria")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "sourceSpreadsheetId")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Rubric where
        toJSON Rubric{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId,
                  ("courseWorkId" Core..=) Core.<$> courseWorkId,
                  ("creationTime" Core..=) Core.<$> creationTime,
                  ("criteria" Core..=) Core.<$> criteria,
                  ("id" Core..=) Core.<$> id,
                  ("sourceSpreadsheetId" Core..=) Core.<$>
                    sourceSpreadsheetId,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | A rubric grade set for the student submission. There is at most one entry per rubric criterion.
--
-- /See:/ 'newRubricGrade' smart constructor.
data RubricGrade = RubricGrade
    {
      -- | Optional. Criterion ID.
      criterionId :: (Core.Maybe Core.Text)
      -- | Optional. Optional level ID of the selected level. If empty, no level was selected.
    , levelId :: (Core.Maybe Core.Text)
      -- | Optional. Optional points assigned for this criterion, typically based on the level. Levels might or might not have points. If unset, no points were set for this criterion.
    , points :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RubricGrade' with the minimum fields required to make a request.
newRubricGrade 
    ::  RubricGrade
newRubricGrade =
  RubricGrade
    {criterionId = Core.Nothing, levelId = Core.Nothing, points = Core.Nothing}

instance Core.FromJSON RubricGrade where
        parseJSON
          = Core.withObject "RubricGrade"
              (\ o ->
                 RubricGrade Core.<$>
                   (o Core..:? "criterionId") Core.<*>
                     (o Core..:? "levelId")
                     Core.<*> (o Core..:? "points"))

instance Core.ToJSON RubricGrade where
        toJSON RubricGrade{..}
          = Core.object
              (Core.catMaybes
                 [("criterionId" Core..=) Core.<$> criterionId,
                  ("levelId" Core..=) Core.<$> levelId,
                  ("points" Core..=) Core.<$> points])


-- | Drive file that is used as material for course work.
--
-- /See:/ 'newSharedDriveFile' smart constructor.
data SharedDriveFile = SharedDriveFile
    {
      -- | Drive file details.
      driveFile :: (Core.Maybe DriveFile)
      -- | Mechanism by which students access the Drive item.
    , shareMode :: (Core.Maybe SharedDriveFile_ShareMode)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SharedDriveFile' with the minimum fields required to make a request.
newSharedDriveFile 
    ::  SharedDriveFile
newSharedDriveFile =
  SharedDriveFile {driveFile = Core.Nothing, shareMode = Core.Nothing}

instance Core.FromJSON SharedDriveFile where
        parseJSON
          = Core.withObject "SharedDriveFile"
              (\ o ->
                 SharedDriveFile Core.<$>
                   (o Core..:? "driveFile") Core.<*>
                     (o Core..:? "shareMode"))

instance Core.ToJSON SharedDriveFile where
        toJSON SharedDriveFile{..}
          = Core.object
              (Core.catMaybes
                 [("driveFile" Core..=) Core.<$> driveFile,
                  ("shareMode" Core..=) Core.<$> shareMode])


-- | Student work for a short answer question.
--
-- /See:/ 'newShortAnswerSubmission' smart constructor.
newtype ShortAnswerSubmission = ShortAnswerSubmission
    {
      -- | Student response to a short-answer question.
      answer :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShortAnswerSubmission' with the minimum fields required to make a request.
newShortAnswerSubmission 
    ::  ShortAnswerSubmission
newShortAnswerSubmission = ShortAnswerSubmission {answer = Core.Nothing}

instance Core.FromJSON ShortAnswerSubmission where
        parseJSON
          = Core.withObject "ShortAnswerSubmission"
              (\ o ->
                 ShortAnswerSubmission Core.<$> (o Core..:? "answer"))

instance Core.ToJSON ShortAnswerSubmission where
        toJSON ShortAnswerSubmission{..}
          = Core.object
              (Core.catMaybes [("answer" Core..=) Core.<$> answer])


-- | The history of each state this submission has been in.
--
-- /See:/ 'newStateHistory' smart constructor.
data StateHistory = StateHistory
    {
      -- | The teacher or student who made the change.
      actorUserId :: (Core.Maybe Core.Text)
      -- | The workflow pipeline stage.
    , state :: (Core.Maybe StateHistory_State)
      -- | When the submission entered this state.
    , stateTimestamp :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StateHistory' with the minimum fields required to make a request.
newStateHistory 
    ::  StateHistory
newStateHistory =
  StateHistory
    { actorUserId = Core.Nothing
    , state = Core.Nothing
    , stateTimestamp = Core.Nothing
    }

instance Core.FromJSON StateHistory where
        parseJSON
          = Core.withObject "StateHistory"
              (\ o ->
                 StateHistory Core.<$>
                   (o Core..:? "actorUserId") Core.<*>
                     (o Core..:? "state")
                     Core.<*> (o Core..:? "stateTimestamp"))

instance Core.ToJSON StateHistory where
        toJSON StateHistory{..}
          = Core.object
              (Core.catMaybes
                 [("actorUserId" Core..=) Core.<$> actorUserId,
                  ("state" Core..=) Core.<$> state,
                  ("stateTimestamp" Core..=) Core.<$> stateTimestamp])


-- | Student in a course.
--
-- /See:/ 'newStudent' smart constructor.
data Student = Student
    {
      -- | Identifier of the course. Read-only.
      courseId :: (Core.Maybe Core.Text)
      -- | Global user information for the student. Read-only.
    , profile :: (Core.Maybe UserProfile)
      -- | Information about a Drive Folder for this student\'s work in this course. Only visible to the student and domain administrators. Read-only.
    , studentWorkFolder :: (Core.Maybe DriveFolder)
      -- | Identifier of the user. When specified as a parameter of a request, this identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    , userId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Student' with the minimum fields required to make a request.
newStudent 
    ::  Student
newStudent =
  Student
    { courseId = Core.Nothing
    , profile = Core.Nothing
    , studentWorkFolder = Core.Nothing
    , userId = Core.Nothing
    }

instance Core.FromJSON Student where
        parseJSON
          = Core.withObject "Student"
              (\ o ->
                 Student Core.<$>
                   (o Core..:? "courseId") Core.<*>
                     (o Core..:? "profile")
                     Core.<*> (o Core..:? "studentWorkFolder")
                     Core.<*> (o Core..:? "userId"))

instance Core.ToJSON Student where
        toJSON Student{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId,
                  ("profile" Core..=) Core.<$> profile,
                  ("studentWorkFolder" Core..=) Core.<$>
                    studentWorkFolder,
                  ("userId" Core..=) Core.<$> userId])


-- | Role-specific context if the requesting user is a student.
--
-- /See:/ 'newStudentContext' smart constructor.
newtype StudentContext = StudentContext
    {
      -- | Requesting user\'s submission id to be used for grade passback and to identify the student when showing student work to the teacher. This is set exactly when @supportsStudentWork@ is @true@.
      submissionId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StudentContext' with the minimum fields required to make a request.
newStudentContext 
    ::  StudentContext
newStudentContext = StudentContext {submissionId = Core.Nothing}

instance Core.FromJSON StudentContext where
        parseJSON
          = Core.withObject "StudentContext"
              (\ o ->
                 StudentContext Core.<$> (o Core..:? "submissionId"))

instance Core.ToJSON StudentContext where
        toJSON StudentContext{..}
          = Core.object
              (Core.catMaybes
                 [("submissionId" Core..=) Core.<$> submissionId])


-- | Student submission for course work. @StudentSubmission@ items are generated when a @CourseWork@ item is created. Student submissions that have never been accessed (i.e. with @state@ = NEW) may not have a creation time or update time.
--
-- /See:/ 'newStudentSubmission' smart constructor.
data StudentSubmission = StudentSubmission
    {
      -- | Absolute link to the submission in the Classroom web UI. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | Optional grade. If unset, no grade was set. This value must be non-negative. Decimal (that is, non-integer) values are allowed, but are rounded to two decimal places. This may be modified only by course teachers.
    , assignedGrade :: (Core.Maybe Core.Double)
      -- | Assigned rubric grades based on the rubric\'s Criteria. This map is empty if there is no rubric attached to this course work or if a rubric is attached, but no grades have been set on any Criteria. Entries are only populated for grades that have been set. Key: The rubric\'s criterion ID. Read-only.
    , assignedRubricGrades :: (Core.Maybe StudentSubmission_AssignedRubricGrades)
      -- | Submission content when course/work/type is ASSIGNMENT. Students can modify this content using ModifyAttachments.
    , assignmentSubmission :: (Core.Maybe AssignmentSubmission)
      -- | Whether this student submission is associated with the Developer Console project making the request. See CreateCourseWork for more details. Read-only.
    , associatedWithDeveloper :: (Core.Maybe Core.Bool)
      -- | Identifier of the course. Read-only.
    , courseId :: (Core.Maybe Core.Text)
      -- | Identifier for the course work this corresponds to. Read-only.
    , courseWorkId :: (Core.Maybe Core.Text)
      -- | Type of course work this submission is for. Read-only.
    , courseWorkType :: (Core.Maybe StudentSubmission_CourseWorkType)
      -- | Creation time of this submission. This may be unset if the student has not accessed this item. Read-only.
    , creationTime :: (Core.Maybe Core.DateTime)
      -- | Optional pending grade. If unset, no grade was set. This value must be non-negative. Decimal (that is, non-integer) values are allowed, but are rounded to two decimal places. This is only visible to and modifiable by course teachers.
    , draftGrade :: (Core.Maybe Core.Double)
      -- | Pending rubric grades based on the rubric\'s criteria. This map is empty if there is no rubric attached to this course work or if a rubric is attached, but no grades have been set on any criteria. Entries are only populated for grades that have been set. Key: The rubric\'s criterion ID. Read-only.
    , draftRubricGrades :: (Core.Maybe StudentSubmission_DraftRubricGrades)
      -- | Classroom-assigned Identifier for the student submission. This is unique among submissions for the relevant course work. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Whether this submission is late. Read-only.
    , late :: (Core.Maybe Core.Bool)
      -- | Submission content when course/work/type is MULTIPLE/CHOICE/QUESTION.
    , multipleChoiceSubmission :: (Core.Maybe MultipleChoiceSubmission)
      -- | Submission content when course/work/type is SHORT/ANSWER/QUESTION.
    , shortAnswerSubmission :: (Core.Maybe ShortAnswerSubmission)
      -- | State of this submission. Read-only.
    , state :: (Core.Maybe StudentSubmission_State)
      -- | The history of the submission (includes state and grade histories). Read-only.
    , submissionHistory :: (Core.Maybe [SubmissionHistory])
      -- | Last update time of this submission. This may be unset if the student has not accessed this item. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
      -- | Identifier for the student that owns this submission. Read-only.
    , userId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StudentSubmission' with the minimum fields required to make a request.
newStudentSubmission 
    ::  StudentSubmission
newStudentSubmission =
  StudentSubmission
    { alternateLink = Core.Nothing
    , assignedGrade = Core.Nothing
    , assignedRubricGrades = Core.Nothing
    , assignmentSubmission = Core.Nothing
    , associatedWithDeveloper = Core.Nothing
    , courseId = Core.Nothing
    , courseWorkId = Core.Nothing
    , courseWorkType = Core.Nothing
    , creationTime = Core.Nothing
    , draftGrade = Core.Nothing
    , draftRubricGrades = Core.Nothing
    , id = Core.Nothing
    , late = Core.Nothing
    , multipleChoiceSubmission = Core.Nothing
    , shortAnswerSubmission = Core.Nothing
    , state = Core.Nothing
    , submissionHistory = Core.Nothing
    , updateTime = Core.Nothing
    , userId = Core.Nothing
    }

instance Core.FromJSON StudentSubmission where
        parseJSON
          = Core.withObject "StudentSubmission"
              (\ o ->
                 StudentSubmission Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "assignedGrade")
                     Core.<*> (o Core..:? "assignedRubricGrades")
                     Core.<*> (o Core..:? "assignmentSubmission")
                     Core.<*> (o Core..:? "associatedWithDeveloper")
                     Core.<*> (o Core..:? "courseId")
                     Core.<*> (o Core..:? "courseWorkId")
                     Core.<*> (o Core..:? "courseWorkType")
                     Core.<*> (o Core..:? "creationTime")
                     Core.<*> (o Core..:? "draftGrade")
                     Core.<*> (o Core..:? "draftRubricGrades")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "late")
                     Core.<*> (o Core..:? "multipleChoiceSubmission")
                     Core.<*> (o Core..:? "shortAnswerSubmission")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "submissionHistory")
                     Core.<*> (o Core..:? "updateTime")
                     Core.<*> (o Core..:? "userId"))

instance Core.ToJSON StudentSubmission where
        toJSON StudentSubmission{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("assignedGrade" Core..=) Core.<$> assignedGrade,
                  ("assignedRubricGrades" Core..=) Core.<$>
                    assignedRubricGrades,
                  ("assignmentSubmission" Core..=) Core.<$>
                    assignmentSubmission,
                  ("associatedWithDeveloper" Core..=) Core.<$>
                    associatedWithDeveloper,
                  ("courseId" Core..=) Core.<$> courseId,
                  ("courseWorkId" Core..=) Core.<$> courseWorkId,
                  ("courseWorkType" Core..=) Core.<$> courseWorkType,
                  ("creationTime" Core..=) Core.<$> creationTime,
                  ("draftGrade" Core..=) Core.<$> draftGrade,
                  ("draftRubricGrades" Core..=) Core.<$>
                    draftRubricGrades,
                  ("id" Core..=) Core.<$> id,
                  ("late" Core..=) Core.<$> late,
                  ("multipleChoiceSubmission" Core..=) Core.<$>
                    multipleChoiceSubmission,
                  ("shortAnswerSubmission" Core..=) Core.<$>
                    shortAnswerSubmission,
                  ("state" Core..=) Core.<$> state,
                  ("submissionHistory" Core..=) Core.<$>
                    submissionHistory,
                  ("updateTime" Core..=) Core.<$> updateTime,
                  ("userId" Core..=) Core.<$> userId])


-- | Assigned rubric grades based on the rubric\'s Criteria. This map is empty if there is no rubric attached to this course work or if a rubric is attached, but no grades have been set on any Criteria. Entries are only populated for grades that have been set. Key: The rubric\'s criterion ID. Read-only.
--
-- /See:/ 'newStudentSubmission_AssignedRubricGrades' smart constructor.
newtype StudentSubmission_AssignedRubricGrades = StudentSubmission_AssignedRubricGrades
    {
      -- | 
      additional :: (Core.HashMap Core.Text RubricGrade)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StudentSubmission_AssignedRubricGrades' with the minimum fields required to make a request.
newStudentSubmission_AssignedRubricGrades 
    ::  Core.HashMap Core.Text RubricGrade
       -- ^  See 'additional'.
    -> StudentSubmission_AssignedRubricGrades
newStudentSubmission_AssignedRubricGrades additional =
  StudentSubmission_AssignedRubricGrades {additional = additional}

instance Core.FromJSON
           StudentSubmission_AssignedRubricGrades
         where
        parseJSON
          = Core.withObject
              "StudentSubmission_AssignedRubricGrades"
              (\ o ->
                 StudentSubmission_AssignedRubricGrades Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           StudentSubmission_AssignedRubricGrades
         where
        toJSON StudentSubmission_AssignedRubricGrades{..}
          = Core.toJSON additional


-- | Pending rubric grades based on the rubric\'s criteria. This map is empty if there is no rubric attached to this course work or if a rubric is attached, but no grades have been set on any criteria. Entries are only populated for grades that have been set. Key: The rubric\'s criterion ID. Read-only.
--
-- /See:/ 'newStudentSubmission_DraftRubricGrades' smart constructor.
newtype StudentSubmission_DraftRubricGrades = StudentSubmission_DraftRubricGrades
    {
      -- | 
      additional :: (Core.HashMap Core.Text RubricGrade)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StudentSubmission_DraftRubricGrades' with the minimum fields required to make a request.
newStudentSubmission_DraftRubricGrades 
    ::  Core.HashMap Core.Text RubricGrade
       -- ^  See 'additional'.
    -> StudentSubmission_DraftRubricGrades
newStudentSubmission_DraftRubricGrades additional =
  StudentSubmission_DraftRubricGrades {additional = additional}

instance Core.FromJSON
           StudentSubmission_DraftRubricGrades
         where
        parseJSON
          = Core.withObject
              "StudentSubmission_DraftRubricGrades"
              (\ o ->
                 StudentSubmission_DraftRubricGrades Core.<$>
                   (Core.parseJSONObject o))

instance Core.ToJSON
           StudentSubmission_DraftRubricGrades
         where
        toJSON StudentSubmission_DraftRubricGrades{..}
          = Core.toJSON additional


-- | The history of the submission. This currently includes state and grade histories.
--
-- /See:/ 'newSubmissionHistory' smart constructor.
data SubmissionHistory = SubmissionHistory
    {
      -- | The grade history information of the submission, if present.
      gradeHistory :: (Core.Maybe GradeHistory)
      -- | The state history information of the submission, if present.
    , stateHistory :: (Core.Maybe StateHistory)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubmissionHistory' with the minimum fields required to make a request.
newSubmissionHistory 
    ::  SubmissionHistory
newSubmissionHistory =
  SubmissionHistory {gradeHistory = Core.Nothing, stateHistory = Core.Nothing}

instance Core.FromJSON SubmissionHistory where
        parseJSON
          = Core.withObject "SubmissionHistory"
              (\ o ->
                 SubmissionHistory Core.<$>
                   (o Core..:? "gradeHistory") Core.<*>
                     (o Core..:? "stateHistory"))

instance Core.ToJSON SubmissionHistory where
        toJSON SubmissionHistory{..}
          = Core.object
              (Core.catMaybes
                 [("gradeHistory" Core..=) Core.<$> gradeHistory,
                  ("stateHistory" Core..=) Core.<$> stateHistory])


-- | Teacher of a course.
--
-- /See:/ 'newTeacher' smart constructor.
data Teacher = Teacher
    {
      -- | Identifier of the course. Read-only.
      courseId :: (Core.Maybe Core.Text)
      -- | Global user information for the teacher. Read-only.
    , profile :: (Core.Maybe UserProfile)
      -- | Identifier of the user. When specified as a parameter of a request, this identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal @\"me\"@, indicating the requesting user
    , userId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Teacher' with the minimum fields required to make a request.
newTeacher 
    ::  Teacher
newTeacher =
  Teacher
    {courseId = Core.Nothing, profile = Core.Nothing, userId = Core.Nothing}

instance Core.FromJSON Teacher where
        parseJSON
          = Core.withObject "Teacher"
              (\ o ->
                 Teacher Core.<$>
                   (o Core..:? "courseId") Core.<*>
                     (o Core..:? "profile")
                     Core.<*> (o Core..:? "userId"))

instance Core.ToJSON Teacher where
        toJSON Teacher{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId,
                  ("profile" Core..=) Core.<$> profile,
                  ("userId" Core..=) Core.<$> userId])


-- | Role-specific context if the requesting user is a teacher.
--
-- /See:/ 'newTeacherContext' smart constructor.
data TeacherContext = TeacherContext
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TeacherContext' with the minimum fields required to make a request.
newTeacherContext 
    ::  TeacherContext
newTeacherContext = TeacherContext

instance Core.FromJSON TeacherContext where
        parseJSON
          = Core.withObject "TeacherContext"
              (\ o -> Core.pure TeacherContext)

instance Core.ToJSON TeacherContext where
        toJSON = Core.const Core.emptyObject


-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
    {
      -- | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
      hours :: (Core.Maybe Core.Int32)
      -- | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
    , minutes :: (Core.Maybe Core.Int32)
      -- | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
    , nanos :: (Core.Maybe Core.Int32)
      -- | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
    , seconds :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay 
    ::  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing
    , minutes = Core.Nothing
    , nanos = Core.Nothing
    , seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
        parseJSON
          = Core.withObject "TimeOfDay'"
              (\ o ->
                 TimeOfDay' Core.<$>
                   (o Core..:? "hours") Core.<*> (o Core..:? "minutes")
                     Core.<*> (o Core..:? "nanos")
                     Core.<*> (o Core..:? "seconds"))

instance Core.ToJSON TimeOfDay' where
        toJSON TimeOfDay'{..}
          = Core.object
              (Core.catMaybes
                 [("hours" Core..=) Core.<$> hours,
                  ("minutes" Core..=) Core.<$> minutes,
                  ("nanos" Core..=) Core.<$> nanos,
                  ("seconds" Core..=) Core.<$> seconds])


-- | Topic created by a teacher for the course
--
-- /See:/ 'newTopic' smart constructor.
data Topic = Topic
    {
      -- | Identifier of the course. Read-only.
      courseId :: (Core.Maybe Core.Text)
      -- | The name of the topic, generated by the user. Leading and trailing whitespaces, if any, are trimmed. Also, multiple consecutive whitespaces are collapsed into one inside the name. The result must be a non-empty string. Topic names are case sensitive, and must be no longer than 100 characters.
    , name :: (Core.Maybe Core.Text)
      -- | Unique identifier for the topic. Read-only.
    , topicId :: (Core.Maybe Core.Text)
      -- | The time the topic was last updated by the system. Read-only.
    , updateTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Topic' with the minimum fields required to make a request.
newTopic 
    ::  Topic
newTopic =
  Topic
    { courseId = Core.Nothing
    , name = Core.Nothing
    , topicId = Core.Nothing
    , updateTime = Core.Nothing
    }

instance Core.FromJSON Topic where
        parseJSON
          = Core.withObject "Topic"
              (\ o ->
                 Topic Core.<$>
                   (o Core..:? "courseId") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "topicId")
                     Core.<*> (o Core..:? "updateTime"))

instance Core.ToJSON Topic where
        toJSON Topic{..}
          = Core.object
              (Core.catMaybes
                 [("courseId" Core..=) Core.<$> courseId,
                  ("name" Core..=) Core.<$> name,
                  ("topicId" Core..=) Core.<$> topicId,
                  ("updateTime" Core..=) Core.<$> updateTime])


-- | Request to turn in a student submission.
--
-- /See:/ 'newTurnInStudentSubmissionRequest' smart constructor.
data TurnInStudentSubmissionRequest = TurnInStudentSubmissionRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TurnInStudentSubmissionRequest' with the minimum fields required to make a request.
newTurnInStudentSubmissionRequest 
    ::  TurnInStudentSubmissionRequest
newTurnInStudentSubmissionRequest = TurnInStudentSubmissionRequest

instance Core.FromJSON TurnInStudentSubmissionRequest
         where
        parseJSON
          = Core.withObject "TurnInStudentSubmissionRequest"
              (\ o -> Core.pure TurnInStudentSubmissionRequest)

instance Core.ToJSON TurnInStudentSubmissionRequest
         where
        toJSON = Core.const Core.emptyObject


-- | Global information for a user.
--
-- /See:/ 'newUserProfile' smart constructor.
data UserProfile = UserProfile
    {
      -- | Email address of the user. Must request @https:\/\/www.googleapis.com\/auth\/classroom.profile.emails@ scope for this field to be populated in a response body. Read-only.
      emailAddress :: (Core.Maybe Core.Text)
      -- | Identifier of the user. Read-only.
    , id :: (Core.Maybe Core.Text)
      -- | Name of the user. Read-only.
    , name :: (Core.Maybe Name)
      -- | Global permissions of the user. Read-only.
    , permissions :: (Core.Maybe [GlobalPermission])
      -- | URL of user\'s profile photo. Must request @https:\/\/www.googleapis.com\/auth\/classroom.profile.photos@ scope for this field to be populated in a response body. Read-only.
    , photoUrl :: (Core.Maybe Core.Text)
      -- | Represents whether a Google Workspace for Education user\'s domain administrator has explicitly verified them as being a teacher. This field is always false if the user is not a member of a Google Workspace for Education domain. Read-only
    , verifiedTeacher :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserProfile' with the minimum fields required to make a request.
newUserProfile 
    ::  UserProfile
newUserProfile =
  UserProfile
    { emailAddress = Core.Nothing
    , id = Core.Nothing
    , name = Core.Nothing
    , permissions = Core.Nothing
    , photoUrl = Core.Nothing
    , verifiedTeacher = Core.Nothing
    }

instance Core.FromJSON UserProfile where
        parseJSON
          = Core.withObject "UserProfile"
              (\ o ->
                 UserProfile Core.<$>
                   (o Core..:? "emailAddress") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "permissions")
                     Core.<*> (o Core..:? "photoUrl")
                     Core.<*> (o Core..:? "verifiedTeacher"))

instance Core.ToJSON UserProfile where
        toJSON UserProfile{..}
          = Core.object
              (Core.catMaybes
                 [("emailAddress" Core..=) Core.<$> emailAddress,
                  ("id" Core..=) Core.<$> id,
                  ("name" Core..=) Core.<$> name,
                  ("permissions" Core..=) Core.<$> permissions,
                  ("photoUrl" Core..=) Core.<$> photoUrl,
                  ("verifiedTeacher" Core..=) Core.<$>
                    verifiedTeacher])


-- | YouTube video item.
--
-- /See:/ 'newYouTubeVideo' smart constructor.
data YouTubeVideo = YouTubeVideo
    {
      -- | URL that can be used to view the YouTube video. Read-only.
      alternateLink :: (Core.Maybe Core.Text)
      -- | YouTube API resource ID.
    , id :: (Core.Maybe Core.Text)
      -- | URL of a thumbnail image of the YouTube video. Read-only.
    , thumbnailUrl :: (Core.Maybe Core.Text)
      -- | Title of the YouTube video. Read-only.
    , title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeVideo' with the minimum fields required to make a request.
newYouTubeVideo 
    ::  YouTubeVideo
newYouTubeVideo =
  YouTubeVideo
    { alternateLink = Core.Nothing
    , id = Core.Nothing
    , thumbnailUrl = Core.Nothing
    , title = Core.Nothing
    }

instance Core.FromJSON YouTubeVideo where
        parseJSON
          = Core.withObject "YouTubeVideo"
              (\ o ->
                 YouTubeVideo Core.<$>
                   (o Core..:? "alternateLink") Core.<*>
                     (o Core..:? "id")
                     Core.<*> (o Core..:? "thumbnailUrl")
                     Core.<*> (o Core..:? "title"))

instance Core.ToJSON YouTubeVideo where
        toJSON YouTubeVideo{..}
          = Core.object
              (Core.catMaybes
                 [("alternateLink" Core..=) Core.<$> alternateLink,
                  ("id" Core..=) Core.<$> id,
                  ("thumbnailUrl" Core..=) Core.<$> thumbnailUrl,
                  ("title" Core..=) Core.<$> title])

