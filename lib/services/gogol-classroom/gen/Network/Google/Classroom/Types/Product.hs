{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Classroom.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Classroom.Types.Product where

import Network.Google.Classroom.Types.Sum
import Network.Google.Prelude

-- | Response when listing course aliases.
--
-- /See:/ 'listCourseAliasesResponse' smart constructor.
data ListCourseAliasesResponse =
  ListCourseAliasesResponse'
    { _lcarNextPageToken :: !(Maybe Text)
    , _lcarAliases :: !(Maybe [CourseAlias])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCourseAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcarNextPageToken'
--
-- * 'lcarAliases'
listCourseAliasesResponse
    :: ListCourseAliasesResponse
listCourseAliasesResponse =
  ListCourseAliasesResponse'
    {_lcarNextPageToken = Nothing, _lcarAliases = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lcarNextPageToken :: Lens' ListCourseAliasesResponse (Maybe Text)
lcarNextPageToken
  = lens _lcarNextPageToken
      (\ s a -> s{_lcarNextPageToken = a})

-- | The course aliases.
lcarAliases :: Lens' ListCourseAliasesResponse [CourseAlias]
lcarAliases
  = lens _lcarAliases (\ s a -> s{_lcarAliases = a}) .
      _Default
      . _Coerce

instance FromJSON ListCourseAliasesResponse where
        parseJSON
          = withObject "ListCourseAliasesResponse"
              (\ o ->
                 ListCourseAliasesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "aliases" .!= mempty))

instance ToJSON ListCourseAliasesResponse where
        toJSON ListCourseAliasesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcarNextPageToken,
                  ("aliases" .=) <$> _lcarAliases])

-- | Course work created by a teacher for students of the course.
--
-- /See:/ 'courseWork' smart constructor.
data CourseWork =
  CourseWork'
    { _cwCreationTime :: !(Maybe DateTime')
    , _cwScheduledTime :: !(Maybe DateTime')
    , _cwState :: !(Maybe CourseWorkState)
    , _cwAssigneeMode :: !(Maybe CourseWorkAssigneeMode)
    , _cwMaterials :: !(Maybe [Material])
    , _cwCourseId :: !(Maybe Text)
    , _cwIndividualStudentsOptions :: !(Maybe IndividualStudentsOptions)
    , _cwMaxPoints :: !(Maybe (Textual Double))
    , _cwWorkType :: !(Maybe CourseWorkWorkType)
    , _cwDueTime :: !(Maybe TimeOfDay')
    , _cwAssociatedWithDeveloper :: !(Maybe Bool)
    , _cwUpdateTime :: !(Maybe DateTime')
    , _cwTopicId :: !(Maybe Text)
    , _cwMultipleChoiceQuestion :: !(Maybe MultipleChoiceQuestion)
    , _cwId :: !(Maybe Text)
    , _cwSubmissionModificationMode :: !(Maybe CourseWorkSubmissionModificationMode)
    , _cwDueDate :: !(Maybe Date)
    , _cwCreatorUserId :: !(Maybe Text)
    , _cwTitle :: !(Maybe Text)
    , _cwAlternateLink :: !(Maybe Text)
    , _cwAssignment :: !(Maybe Assignment)
    , _cwDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseWork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwCreationTime'
--
-- * 'cwScheduledTime'
--
-- * 'cwState'
--
-- * 'cwAssigneeMode'
--
-- * 'cwMaterials'
--
-- * 'cwCourseId'
--
-- * 'cwIndividualStudentsOptions'
--
-- * 'cwMaxPoints'
--
-- * 'cwWorkType'
--
-- * 'cwDueTime'
--
-- * 'cwAssociatedWithDeveloper'
--
-- * 'cwUpdateTime'
--
-- * 'cwTopicId'
--
-- * 'cwMultipleChoiceQuestion'
--
-- * 'cwId'
--
-- * 'cwSubmissionModificationMode'
--
-- * 'cwDueDate'
--
-- * 'cwCreatorUserId'
--
-- * 'cwTitle'
--
-- * 'cwAlternateLink'
--
-- * 'cwAssignment'
--
-- * 'cwDescription'
courseWork
    :: CourseWork
courseWork =
  CourseWork'
    { _cwCreationTime = Nothing
    , _cwScheduledTime = Nothing
    , _cwState = Nothing
    , _cwAssigneeMode = Nothing
    , _cwMaterials = Nothing
    , _cwCourseId = Nothing
    , _cwIndividualStudentsOptions = Nothing
    , _cwMaxPoints = Nothing
    , _cwWorkType = Nothing
    , _cwDueTime = Nothing
    , _cwAssociatedWithDeveloper = Nothing
    , _cwUpdateTime = Nothing
    , _cwTopicId = Nothing
    , _cwMultipleChoiceQuestion = Nothing
    , _cwId = Nothing
    , _cwSubmissionModificationMode = Nothing
    , _cwDueDate = Nothing
    , _cwCreatorUserId = Nothing
    , _cwTitle = Nothing
    , _cwAlternateLink = Nothing
    , _cwAssignment = Nothing
    , _cwDescription = Nothing
    }


-- | Timestamp when this course work was created. Read-only.
cwCreationTime :: Lens' CourseWork (Maybe UTCTime)
cwCreationTime
  = lens _cwCreationTime
      (\ s a -> s{_cwCreationTime = a})
      . mapping _DateTime

-- | Optional timestamp when this course work is scheduled to be published.
cwScheduledTime :: Lens' CourseWork (Maybe UTCTime)
cwScheduledTime
  = lens _cwScheduledTime
      (\ s a -> s{_cwScheduledTime = a})
      . mapping _DateTime

-- | Status of this course work. If unspecified, the default state is
-- \`DRAFT\`.
cwState :: Lens' CourseWork (Maybe CourseWorkState)
cwState = lens _cwState (\ s a -> s{_cwState = a})

-- | Assignee mode of the coursework. If unspecified, the default value is
-- \`ALL_STUDENTS\`.
cwAssigneeMode :: Lens' CourseWork (Maybe CourseWorkAssigneeMode)
cwAssigneeMode
  = lens _cwAssigneeMode
      (\ s a -> s{_cwAssigneeMode = a})

-- | Additional materials. CourseWork must have no more than 20 material
-- items.
cwMaterials :: Lens' CourseWork [Material]
cwMaterials
  = lens _cwMaterials (\ s a -> s{_cwMaterials = a}) .
      _Default
      . _Coerce

-- | Identifier of the course. Read-only.
cwCourseId :: Lens' CourseWork (Maybe Text)
cwCourseId
  = lens _cwCourseId (\ s a -> s{_cwCourseId = a})

-- | Identifiers of students with access to the coursework. This field is set
-- only if \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`. If the
-- \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`, then only students
-- specified in this field are assigned the coursework.
cwIndividualStudentsOptions :: Lens' CourseWork (Maybe IndividualStudentsOptions)
cwIndividualStudentsOptions
  = lens _cwIndividualStudentsOptions
      (\ s a -> s{_cwIndividualStudentsOptions = a})

-- | Maximum grade for this course work. If zero or unspecified, this
-- assignment is considered ungraded. This must be a non-negative integer
-- value.
cwMaxPoints :: Lens' CourseWork (Maybe Double)
cwMaxPoints
  = lens _cwMaxPoints (\ s a -> s{_cwMaxPoints = a}) .
      mapping _Coerce

-- | Type of this course work. The type is set when the course work is
-- created and cannot be changed.
cwWorkType :: Lens' CourseWork (Maybe CourseWorkWorkType)
cwWorkType
  = lens _cwWorkType (\ s a -> s{_cwWorkType = a})

-- | Optional time of day, in UTC, that submissions for this course work are
-- due. This must be specified if \`due_date\` is specified.
cwDueTime :: Lens' CourseWork (Maybe TimeOfDay')
cwDueTime
  = lens _cwDueTime (\ s a -> s{_cwDueTime = a})

-- | Whether this course work item is associated with the Developer Console
-- project making the request. See CreateCourseWork for more details.
-- Read-only.
cwAssociatedWithDeveloper :: Lens' CourseWork (Maybe Bool)
cwAssociatedWithDeveloper
  = lens _cwAssociatedWithDeveloper
      (\ s a -> s{_cwAssociatedWithDeveloper = a})

-- | Timestamp of the most recent change to this course work. Read-only.
cwUpdateTime :: Lens' CourseWork (Maybe UTCTime)
cwUpdateTime
  = lens _cwUpdateTime (\ s a -> s{_cwUpdateTime = a})
      . mapping _DateTime

-- | Identifier for the topic that this coursework is associated with. Must
-- match an existing topic in the course.
cwTopicId :: Lens' CourseWork (Maybe Text)
cwTopicId
  = lens _cwTopicId (\ s a -> s{_cwTopicId = a})

-- | Multiple choice question details. For read operations, this field is
-- populated only when \`work_type\` is \`MULTIPLE_CHOICE_QUESTION\`. For
-- write operations, this field must be specified when creating course work
-- with a \`work_type\` of \`MULTIPLE_CHOICE_QUESTION\`, and it must not be
-- set otherwise.
cwMultipleChoiceQuestion :: Lens' CourseWork (Maybe MultipleChoiceQuestion)
cwMultipleChoiceQuestion
  = lens _cwMultipleChoiceQuestion
      (\ s a -> s{_cwMultipleChoiceQuestion = a})

-- | Classroom-assigned identifier of this course work, unique per course.
-- Read-only.
cwId :: Lens' CourseWork (Maybe Text)
cwId = lens _cwId (\ s a -> s{_cwId = a})

-- | Setting to determine when students are allowed to modify submissions. If
-- unspecified, the default value is \`MODIFIABLE_UNTIL_TURNED_IN\`.
cwSubmissionModificationMode :: Lens' CourseWork (Maybe CourseWorkSubmissionModificationMode)
cwSubmissionModificationMode
  = lens _cwSubmissionModificationMode
      (\ s a -> s{_cwSubmissionModificationMode = a})

-- | Optional date, in UTC, that submissions for this course work are due.
-- This must be specified if \`due_time\` is specified.
cwDueDate :: Lens' CourseWork (Maybe Date)
cwDueDate
  = lens _cwDueDate (\ s a -> s{_cwDueDate = a})

-- | Identifier for the user that created the coursework. Read-only.
cwCreatorUserId :: Lens' CourseWork (Maybe Text)
cwCreatorUserId
  = lens _cwCreatorUserId
      (\ s a -> s{_cwCreatorUserId = a})

-- | Title of this course work. The title must be a valid UTF-8 string
-- containing between 1 and 3000 characters.
cwTitle :: Lens' CourseWork (Maybe Text)
cwTitle = lens _cwTitle (\ s a -> s{_cwTitle = a})

-- | Absolute link to this course work in the Classroom web UI. This is only
-- populated if \`state\` is \`PUBLISHED\`. Read-only.
cwAlternateLink :: Lens' CourseWork (Maybe Text)
cwAlternateLink
  = lens _cwAlternateLink
      (\ s a -> s{_cwAlternateLink = a})

-- | Assignment details. This is populated only when \`work_type\` is
-- \`ASSIGNMENT\`. Read-only.
cwAssignment :: Lens' CourseWork (Maybe Assignment)
cwAssignment
  = lens _cwAssignment (\ s a -> s{_cwAssignment = a})

-- | Optional description of this course work. If set, the description must
-- be a valid UTF-8 string containing no more than 30,000 characters.
cwDescription :: Lens' CourseWork (Maybe Text)
cwDescription
  = lens _cwDescription
      (\ s a -> s{_cwDescription = a})

instance FromJSON CourseWork where
        parseJSON
          = withObject "CourseWork"
              (\ o ->
                 CourseWork' <$>
                   (o .:? "creationTime") <*> (o .:? "scheduledTime")
                     <*> (o .:? "state")
                     <*> (o .:? "assigneeMode")
                     <*> (o .:? "materials" .!= mempty)
                     <*> (o .:? "courseId")
                     <*> (o .:? "individualStudentsOptions")
                     <*> (o .:? "maxPoints")
                     <*> (o .:? "workType")
                     <*> (o .:? "dueTime")
                     <*> (o .:? "associatedWithDeveloper")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "topicId")
                     <*> (o .:? "multipleChoiceQuestion")
                     <*> (o .:? "id")
                     <*> (o .:? "submissionModificationMode")
                     <*> (o .:? "dueDate")
                     <*> (o .:? "creatorUserId")
                     <*> (o .:? "title")
                     <*> (o .:? "alternateLink")
                     <*> (o .:? "assignment")
                     <*> (o .:? "description"))

instance ToJSON CourseWork where
        toJSON CourseWork'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _cwCreationTime,
                  ("scheduledTime" .=) <$> _cwScheduledTime,
                  ("state" .=) <$> _cwState,
                  ("assigneeMode" .=) <$> _cwAssigneeMode,
                  ("materials" .=) <$> _cwMaterials,
                  ("courseId" .=) <$> _cwCourseId,
                  ("individualStudentsOptions" .=) <$>
                    _cwIndividualStudentsOptions,
                  ("maxPoints" .=) <$> _cwMaxPoints,
                  ("workType" .=) <$> _cwWorkType,
                  ("dueTime" .=) <$> _cwDueTime,
                  ("associatedWithDeveloper" .=) <$>
                    _cwAssociatedWithDeveloper,
                  ("updateTime" .=) <$> _cwUpdateTime,
                  ("topicId" .=) <$> _cwTopicId,
                  ("multipleChoiceQuestion" .=) <$>
                    _cwMultipleChoiceQuestion,
                  ("id" .=) <$> _cwId,
                  ("submissionModificationMode" .=) <$>
                    _cwSubmissionModificationMode,
                  ("dueDate" .=) <$> _cwDueDate,
                  ("creatorUserId" .=) <$> _cwCreatorUserId,
                  ("title" .=) <$> _cwTitle,
                  ("alternateLink" .=) <$> _cwAlternateLink,
                  ("assignment" .=) <$> _cwAssignment,
                  ("description" .=) <$> _cwDescription])

-- | The history of each grade on this submission.
--
-- /See:/ 'gradeHistory' smart constructor.
data GradeHistory =
  GradeHistory'
    { _ghGradeTimestamp :: !(Maybe DateTime')
    , _ghMaxPoints :: !(Maybe (Textual Double))
    , _ghPointsEarned :: !(Maybe (Textual Double))
    , _ghActorUserId :: !(Maybe Text)
    , _ghGradeChangeType :: !(Maybe GradeHistoryGradeChangeType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GradeHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghGradeTimestamp'
--
-- * 'ghMaxPoints'
--
-- * 'ghPointsEarned'
--
-- * 'ghActorUserId'
--
-- * 'ghGradeChangeType'
gradeHistory
    :: GradeHistory
gradeHistory =
  GradeHistory'
    { _ghGradeTimestamp = Nothing
    , _ghMaxPoints = Nothing
    , _ghPointsEarned = Nothing
    , _ghActorUserId = Nothing
    , _ghGradeChangeType = Nothing
    }


-- | When the grade of the submission was changed.
ghGradeTimestamp :: Lens' GradeHistory (Maybe UTCTime)
ghGradeTimestamp
  = lens _ghGradeTimestamp
      (\ s a -> s{_ghGradeTimestamp = a})
      . mapping _DateTime

-- | The denominator of the grade at this time in the submission grade
-- history.
ghMaxPoints :: Lens' GradeHistory (Maybe Double)
ghMaxPoints
  = lens _ghMaxPoints (\ s a -> s{_ghMaxPoints = a}) .
      mapping _Coerce

-- | The numerator of the grade at this time in the submission grade history.
ghPointsEarned :: Lens' GradeHistory (Maybe Double)
ghPointsEarned
  = lens _ghPointsEarned
      (\ s a -> s{_ghPointsEarned = a})
      . mapping _Coerce

-- | The teacher who made the grade change.
ghActorUserId :: Lens' GradeHistory (Maybe Text)
ghActorUserId
  = lens _ghActorUserId
      (\ s a -> s{_ghActorUserId = a})

-- | The type of grade change at this time in the submission grade history.
ghGradeChangeType :: Lens' GradeHistory (Maybe GradeHistoryGradeChangeType)
ghGradeChangeType
  = lens _ghGradeChangeType
      (\ s a -> s{_ghGradeChangeType = a})

instance FromJSON GradeHistory where
        parseJSON
          = withObject "GradeHistory"
              (\ o ->
                 GradeHistory' <$>
                   (o .:? "gradeTimestamp") <*> (o .:? "maxPoints") <*>
                     (o .:? "pointsEarned")
                     <*> (o .:? "actorUserId")
                     <*> (o .:? "gradeChangeType"))

instance ToJSON GradeHistory where
        toJSON GradeHistory'{..}
          = object
              (catMaybes
                 [("gradeTimestamp" .=) <$> _ghGradeTimestamp,
                  ("maxPoints" .=) <$> _ghMaxPoints,
                  ("pointsEarned" .=) <$> _ghPointsEarned,
                  ("actorUserId" .=) <$> _ghActorUserId,
                  ("gradeChangeType" .=) <$> _ghGradeChangeType])

-- | Information about a \`Feed\` with a \`feed_type\` of
-- \`COURSE_WORK_CHANGES\`.
--
-- /See:/ 'courseWorkChangesInfo' smart constructor.
newtype CourseWorkChangesInfo =
  CourseWorkChangesInfo'
    { _cwciCourseId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseWorkChangesInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwciCourseId'
courseWorkChangesInfo
    :: CourseWorkChangesInfo
courseWorkChangesInfo = CourseWorkChangesInfo' {_cwciCourseId = Nothing}


-- | The \`course_id\` of the course to subscribe to work changes for.
cwciCourseId :: Lens' CourseWorkChangesInfo (Maybe Text)
cwciCourseId
  = lens _cwciCourseId (\ s a -> s{_cwciCourseId = a})

instance FromJSON CourseWorkChangesInfo where
        parseJSON
          = withObject "CourseWorkChangesInfo"
              (\ o ->
                 CourseWorkChangesInfo' <$> (o .:? "courseId"))

instance ToJSON CourseWorkChangesInfo where
        toJSON CourseWorkChangesInfo'{..}
          = object
              (catMaybes [("courseId" .=) <$> _cwciCourseId])

-- | Course work material created by a teacher for students of the course
--
-- /See:/ 'courseWorkMaterial' smart constructor.
data CourseWorkMaterial =
  CourseWorkMaterial'
    { _cwmCreationTime :: !(Maybe DateTime')
    , _cwmScheduledTime :: !(Maybe DateTime')
    , _cwmState :: !(Maybe CourseWorkMaterialState)
    , _cwmAssigneeMode :: !(Maybe CourseWorkMaterialAssigneeMode)
    , _cwmMaterials :: !(Maybe [Material])
    , _cwmCourseId :: !(Maybe Text)
    , _cwmIndividualStudentsOptions :: !(Maybe IndividualStudentsOptions)
    , _cwmUpdateTime :: !(Maybe DateTime')
    , _cwmTopicId :: !(Maybe Text)
    , _cwmId :: !(Maybe Text)
    , _cwmCreatorUserId :: !(Maybe Text)
    , _cwmTitle :: !(Maybe Text)
    , _cwmAlternateLink :: !(Maybe Text)
    , _cwmDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseWorkMaterial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwmCreationTime'
--
-- * 'cwmScheduledTime'
--
-- * 'cwmState'
--
-- * 'cwmAssigneeMode'
--
-- * 'cwmMaterials'
--
-- * 'cwmCourseId'
--
-- * 'cwmIndividualStudentsOptions'
--
-- * 'cwmUpdateTime'
--
-- * 'cwmTopicId'
--
-- * 'cwmId'
--
-- * 'cwmCreatorUserId'
--
-- * 'cwmTitle'
--
-- * 'cwmAlternateLink'
--
-- * 'cwmDescription'
courseWorkMaterial
    :: CourseWorkMaterial
courseWorkMaterial =
  CourseWorkMaterial'
    { _cwmCreationTime = Nothing
    , _cwmScheduledTime = Nothing
    , _cwmState = Nothing
    , _cwmAssigneeMode = Nothing
    , _cwmMaterials = Nothing
    , _cwmCourseId = Nothing
    , _cwmIndividualStudentsOptions = Nothing
    , _cwmUpdateTime = Nothing
    , _cwmTopicId = Nothing
    , _cwmId = Nothing
    , _cwmCreatorUserId = Nothing
    , _cwmTitle = Nothing
    , _cwmAlternateLink = Nothing
    , _cwmDescription = Nothing
    }


-- | Timestamp when this course work material was created. Read-only.
cwmCreationTime :: Lens' CourseWorkMaterial (Maybe UTCTime)
cwmCreationTime
  = lens _cwmCreationTime
      (\ s a -> s{_cwmCreationTime = a})
      . mapping _DateTime

-- | Optional timestamp when this course work material is scheduled to be
-- published.
cwmScheduledTime :: Lens' CourseWorkMaterial (Maybe UTCTime)
cwmScheduledTime
  = lens _cwmScheduledTime
      (\ s a -> s{_cwmScheduledTime = a})
      . mapping _DateTime

-- | Status of this course work material. If unspecified, the default state
-- is \`DRAFT\`.
cwmState :: Lens' CourseWorkMaterial (Maybe CourseWorkMaterialState)
cwmState = lens _cwmState (\ s a -> s{_cwmState = a})

-- | Assignee mode of the course work material. If unspecified, the default
-- value is \`ALL_STUDENTS\`.
cwmAssigneeMode :: Lens' CourseWorkMaterial (Maybe CourseWorkMaterialAssigneeMode)
cwmAssigneeMode
  = lens _cwmAssigneeMode
      (\ s a -> s{_cwmAssigneeMode = a})

-- | Additional materials. A course work material must have no more than 20
-- material items.
cwmMaterials :: Lens' CourseWorkMaterial [Material]
cwmMaterials
  = lens _cwmMaterials (\ s a -> s{_cwmMaterials = a})
      . _Default
      . _Coerce

-- | Identifier of the course. Read-only.
cwmCourseId :: Lens' CourseWorkMaterial (Maybe Text)
cwmCourseId
  = lens _cwmCourseId (\ s a -> s{_cwmCourseId = a})

-- | Identifiers of students with access to the course work material. This
-- field is set only if \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`. If the
-- \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`, then only students
-- specified in this field can see the course work material.
cwmIndividualStudentsOptions :: Lens' CourseWorkMaterial (Maybe IndividualStudentsOptions)
cwmIndividualStudentsOptions
  = lens _cwmIndividualStudentsOptions
      (\ s a -> s{_cwmIndividualStudentsOptions = a})

-- | Timestamp of the most recent change to this course work material.
-- Read-only.
cwmUpdateTime :: Lens' CourseWorkMaterial (Maybe UTCTime)
cwmUpdateTime
  = lens _cwmUpdateTime
      (\ s a -> s{_cwmUpdateTime = a})
      . mapping _DateTime

-- | Identifier for the topic that this course work material is associated
-- with. Must match an existing topic in the course.
cwmTopicId :: Lens' CourseWorkMaterial (Maybe Text)
cwmTopicId
  = lens _cwmTopicId (\ s a -> s{_cwmTopicId = a})

-- | Classroom-assigned identifier of this course work material, unique per
-- course. Read-only.
cwmId :: Lens' CourseWorkMaterial (Maybe Text)
cwmId = lens _cwmId (\ s a -> s{_cwmId = a})

-- | Identifier for the user that created the course work material.
-- Read-only.
cwmCreatorUserId :: Lens' CourseWorkMaterial (Maybe Text)
cwmCreatorUserId
  = lens _cwmCreatorUserId
      (\ s a -> s{_cwmCreatorUserId = a})

-- | Title of this course work material. The title must be a valid UTF-8
-- string containing between 1 and 3000 characters.
cwmTitle :: Lens' CourseWorkMaterial (Maybe Text)
cwmTitle = lens _cwmTitle (\ s a -> s{_cwmTitle = a})

-- | Absolute link to this course work material in the Classroom web UI. This
-- is only populated if \`state\` is \`PUBLISHED\`. Read-only.
cwmAlternateLink :: Lens' CourseWorkMaterial (Maybe Text)
cwmAlternateLink
  = lens _cwmAlternateLink
      (\ s a -> s{_cwmAlternateLink = a})

-- | Optional description of this course work material. The text must be a
-- valid UTF-8 string containing no more than 30,000 characters.
cwmDescription :: Lens' CourseWorkMaterial (Maybe Text)
cwmDescription
  = lens _cwmDescription
      (\ s a -> s{_cwmDescription = a})

instance FromJSON CourseWorkMaterial where
        parseJSON
          = withObject "CourseWorkMaterial"
              (\ o ->
                 CourseWorkMaterial' <$>
                   (o .:? "creationTime") <*> (o .:? "scheduledTime")
                     <*> (o .:? "state")
                     <*> (o .:? "assigneeMode")
                     <*> (o .:? "materials" .!= mempty)
                     <*> (o .:? "courseId")
                     <*> (o .:? "individualStudentsOptions")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "topicId")
                     <*> (o .:? "id")
                     <*> (o .:? "creatorUserId")
                     <*> (o .:? "title")
                     <*> (o .:? "alternateLink")
                     <*> (o .:? "description"))

instance ToJSON CourseWorkMaterial where
        toJSON CourseWorkMaterial'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _cwmCreationTime,
                  ("scheduledTime" .=) <$> _cwmScheduledTime,
                  ("state" .=) <$> _cwmState,
                  ("assigneeMode" .=) <$> _cwmAssigneeMode,
                  ("materials" .=) <$> _cwmMaterials,
                  ("courseId" .=) <$> _cwmCourseId,
                  ("individualStudentsOptions" .=) <$>
                    _cwmIndividualStudentsOptions,
                  ("updateTime" .=) <$> _cwmUpdateTime,
                  ("topicId" .=) <$> _cwmTopicId, ("id" .=) <$> _cwmId,
                  ("creatorUserId" .=) <$> _cwmCreatorUserId,
                  ("title" .=) <$> _cwmTitle,
                  ("alternateLink" .=) <$> _cwmAlternateLink,
                  ("description" .=) <$> _cwmDescription])

-- | Request to modify assignee mode and options of a coursework.
--
-- /See:/ 'modifyCourseWorkAssigneesRequest' smart constructor.
data ModifyCourseWorkAssigneesRequest =
  ModifyCourseWorkAssigneesRequest'
    { _mcwarAssigneeMode :: !(Maybe ModifyCourseWorkAssigneesRequestAssigneeMode)
    , _mcwarModifyIndividualStudentsOptions :: !(Maybe ModifyIndividualStudentsOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyCourseWorkAssigneesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcwarAssigneeMode'
--
-- * 'mcwarModifyIndividualStudentsOptions'
modifyCourseWorkAssigneesRequest
    :: ModifyCourseWorkAssigneesRequest
modifyCourseWorkAssigneesRequest =
  ModifyCourseWorkAssigneesRequest'
    { _mcwarAssigneeMode = Nothing
    , _mcwarModifyIndividualStudentsOptions = Nothing
    }


-- | Mode of the coursework describing whether it will be assigned to all
-- students or specified individual students.
mcwarAssigneeMode :: Lens' ModifyCourseWorkAssigneesRequest (Maybe ModifyCourseWorkAssigneesRequestAssigneeMode)
mcwarAssigneeMode
  = lens _mcwarAssigneeMode
      (\ s a -> s{_mcwarAssigneeMode = a})

-- | Set which students are assigned or not assigned to the coursework. Must
-- be specified only when \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`.
mcwarModifyIndividualStudentsOptions :: Lens' ModifyCourseWorkAssigneesRequest (Maybe ModifyIndividualStudentsOptions)
mcwarModifyIndividualStudentsOptions
  = lens _mcwarModifyIndividualStudentsOptions
      (\ s a ->
         s{_mcwarModifyIndividualStudentsOptions = a})

instance FromJSON ModifyCourseWorkAssigneesRequest
         where
        parseJSON
          = withObject "ModifyCourseWorkAssigneesRequest"
              (\ o ->
                 ModifyCourseWorkAssigneesRequest' <$>
                   (o .:? "assigneeMode") <*>
                     (o .:? "modifyIndividualStudentsOptions"))

instance ToJSON ModifyCourseWorkAssigneesRequest
         where
        toJSON ModifyCourseWorkAssigneesRequest'{..}
          = object
              (catMaybes
                 [("assigneeMode" .=) <$> _mcwarAssigneeMode,
                  ("modifyIndividualStudentsOptions" .=) <$>
                    _mcwarModifyIndividualStudentsOptions])

-- | Representation of a Google Drive file.
--
-- /See:/ 'driveFile' smart constructor.
data DriveFile =
  DriveFile'
    { _dfThumbnailURL :: !(Maybe Text)
    , _dfId :: !(Maybe Text)
    , _dfTitle :: !(Maybe Text)
    , _dfAlternateLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfThumbnailURL'
--
-- * 'dfId'
--
-- * 'dfTitle'
--
-- * 'dfAlternateLink'
driveFile
    :: DriveFile
driveFile =
  DriveFile'
    { _dfThumbnailURL = Nothing
    , _dfId = Nothing
    , _dfTitle = Nothing
    , _dfAlternateLink = Nothing
    }


-- | URL of a thumbnail image of the Drive item. Read-only.
dfThumbnailURL :: Lens' DriveFile (Maybe Text)
dfThumbnailURL
  = lens _dfThumbnailURL
      (\ s a -> s{_dfThumbnailURL = a})

-- | Drive API resource ID.
dfId :: Lens' DriveFile (Maybe Text)
dfId = lens _dfId (\ s a -> s{_dfId = a})

-- | Title of the Drive item. Read-only.
dfTitle :: Lens' DriveFile (Maybe Text)
dfTitle = lens _dfTitle (\ s a -> s{_dfTitle = a})

-- | URL that can be used to access the Drive item. Read-only.
dfAlternateLink :: Lens' DriveFile (Maybe Text)
dfAlternateLink
  = lens _dfAlternateLink
      (\ s a -> s{_dfAlternateLink = a})

instance FromJSON DriveFile where
        parseJSON
          = withObject "DriveFile"
              (\ o ->
                 DriveFile' <$>
                   (o .:? "thumbnailUrl") <*> (o .:? "id") <*>
                     (o .:? "title")
                     <*> (o .:? "alternateLink"))

instance ToJSON DriveFile where
        toJSON DriveFile'{..}
          = object
              (catMaybes
                 [("thumbnailUrl" .=) <$> _dfThumbnailURL,
                  ("id" .=) <$> _dfId, ("title" .=) <$> _dfTitle,
                  ("alternateLink" .=) <$> _dfAlternateLink])

-- | An invitation to become the guardian of a specified user, sent to a
-- specified email address.
--
-- /See:/ 'guardianInvitation' smart constructor.
data GuardianInvitation =
  GuardianInvitation'
    { _giCreationTime :: !(Maybe DateTime')
    , _giStudentId :: !(Maybe Text)
    , _giState :: !(Maybe GuardianInvitationState)
    , _giInvitationId :: !(Maybe Text)
    , _giInvitedEmailAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GuardianInvitation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giCreationTime'
--
-- * 'giStudentId'
--
-- * 'giState'
--
-- * 'giInvitationId'
--
-- * 'giInvitedEmailAddress'
guardianInvitation
    :: GuardianInvitation
guardianInvitation =
  GuardianInvitation'
    { _giCreationTime = Nothing
    , _giStudentId = Nothing
    , _giState = Nothing
    , _giInvitationId = Nothing
    , _giInvitedEmailAddress = Nothing
    }


-- | The time that this invitation was created. Read-only.
giCreationTime :: Lens' GuardianInvitation (Maybe UTCTime)
giCreationTime
  = lens _giCreationTime
      (\ s a -> s{_giCreationTime = a})
      . mapping _DateTime

-- | ID of the student (in standard format)
giStudentId :: Lens' GuardianInvitation (Maybe Text)
giStudentId
  = lens _giStudentId (\ s a -> s{_giStudentId = a})

-- | The state that this invitation is in.
giState :: Lens' GuardianInvitation (Maybe GuardianInvitationState)
giState = lens _giState (\ s a -> s{_giState = a})

-- | Unique identifier for this invitation. Read-only.
giInvitationId :: Lens' GuardianInvitation (Maybe Text)
giInvitationId
  = lens _giInvitationId
      (\ s a -> s{_giInvitationId = a})

-- | Email address that the invitation was sent to. This field is only
-- visible to domain administrators.
giInvitedEmailAddress :: Lens' GuardianInvitation (Maybe Text)
giInvitedEmailAddress
  = lens _giInvitedEmailAddress
      (\ s a -> s{_giInvitedEmailAddress = a})

instance FromJSON GuardianInvitation where
        parseJSON
          = withObject "GuardianInvitation"
              (\ o ->
                 GuardianInvitation' <$>
                   (o .:? "creationTime") <*> (o .:? "studentId") <*>
                     (o .:? "state")
                     <*> (o .:? "invitationId")
                     <*> (o .:? "invitedEmailAddress"))

instance ToJSON GuardianInvitation where
        toJSON GuardianInvitation'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _giCreationTime,
                  ("studentId" .=) <$> _giStudentId,
                  ("state" .=) <$> _giState,
                  ("invitationId" .=) <$> _giInvitationId,
                  ("invitedEmailAddress" .=) <$>
                    _giInvitedEmailAddress])

-- | A class of notifications that an application can register to receive.
-- For example: \"all roster changes for a domain\".
--
-- /See:/ 'feed' smart constructor.
data Feed =
  Feed'
    { _fCourseWorkChangesInfo :: !(Maybe CourseWorkChangesInfo)
    , _fFeedType :: !(Maybe FeedFeedType)
    , _fCourseRosterChangesInfo :: !(Maybe CourseRosterChangesInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Feed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCourseWorkChangesInfo'
--
-- * 'fFeedType'
--
-- * 'fCourseRosterChangesInfo'
feed
    :: Feed
feed =
  Feed'
    { _fCourseWorkChangesInfo = Nothing
    , _fFeedType = Nothing
    , _fCourseRosterChangesInfo = Nothing
    }


-- | Information about a \`Feed\` with a \`feed_type\` of
-- \`COURSE_WORK_CHANGES\`. This field must be specified if \`feed_type\`
-- is \`COURSE_WORK_CHANGES\`.
fCourseWorkChangesInfo :: Lens' Feed (Maybe CourseWorkChangesInfo)
fCourseWorkChangesInfo
  = lens _fCourseWorkChangesInfo
      (\ s a -> s{_fCourseWorkChangesInfo = a})

-- | The type of feed.
fFeedType :: Lens' Feed (Maybe FeedFeedType)
fFeedType
  = lens _fFeedType (\ s a -> s{_fFeedType = a})

-- | Information about a \`Feed\` with a \`feed_type\` of
-- \`COURSE_ROSTER_CHANGES\`. This field must be specified if \`feed_type\`
-- is \`COURSE_ROSTER_CHANGES\`.
fCourseRosterChangesInfo :: Lens' Feed (Maybe CourseRosterChangesInfo)
fCourseRosterChangesInfo
  = lens _fCourseRosterChangesInfo
      (\ s a -> s{_fCourseRosterChangesInfo = a})

instance FromJSON Feed where
        parseJSON
          = withObject "Feed"
              (\ o ->
                 Feed' <$>
                   (o .:? "courseWorkChangesInfo") <*>
                     (o .:? "feedType")
                     <*> (o .:? "courseRosterChangesInfo"))

instance ToJSON Feed where
        toJSON Feed'{..}
          = object
              (catMaybes
                 [("courseWorkChangesInfo" .=) <$>
                    _fCourseWorkChangesInfo,
                  ("feedType" .=) <$> _fFeedType,
                  ("courseRosterChangesInfo" .=) <$>
                    _fCourseRosterChangesInfo])

-- | Request to modify assignee mode and options of an announcement.
--
-- /See:/ 'modifyAnnouncementAssigneesRequest' smart constructor.
data ModifyAnnouncementAssigneesRequest =
  ModifyAnnouncementAssigneesRequest'
    { _maarAssigneeMode :: !(Maybe ModifyAnnouncementAssigneesRequestAssigneeMode)
    , _maarModifyIndividualStudentsOptions :: !(Maybe ModifyIndividualStudentsOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyAnnouncementAssigneesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maarAssigneeMode'
--
-- * 'maarModifyIndividualStudentsOptions'
modifyAnnouncementAssigneesRequest
    :: ModifyAnnouncementAssigneesRequest
modifyAnnouncementAssigneesRequest =
  ModifyAnnouncementAssigneesRequest'
    { _maarAssigneeMode = Nothing
    , _maarModifyIndividualStudentsOptions = Nothing
    }


-- | Mode of the announcement describing whether it is accessible by all
-- students or specified individual students.
maarAssigneeMode :: Lens' ModifyAnnouncementAssigneesRequest (Maybe ModifyAnnouncementAssigneesRequestAssigneeMode)
maarAssigneeMode
  = lens _maarAssigneeMode
      (\ s a -> s{_maarAssigneeMode = a})

-- | Set which students can view or cannot view the announcement. Must be
-- specified only when \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`.
maarModifyIndividualStudentsOptions :: Lens' ModifyAnnouncementAssigneesRequest (Maybe ModifyIndividualStudentsOptions)
maarModifyIndividualStudentsOptions
  = lens _maarModifyIndividualStudentsOptions
      (\ s a ->
         s{_maarModifyIndividualStudentsOptions = a})

instance FromJSON ModifyAnnouncementAssigneesRequest
         where
        parseJSON
          = withObject "ModifyAnnouncementAssigneesRequest"
              (\ o ->
                 ModifyAnnouncementAssigneesRequest' <$>
                   (o .:? "assigneeMode") <*>
                     (o .:? "modifyIndividualStudentsOptions"))

instance ToJSON ModifyAnnouncementAssigneesRequest
         where
        toJSON ModifyAnnouncementAssigneesRequest'{..}
          = object
              (catMaybes
                 [("assigneeMode" .=) <$> _maarAssigneeMode,
                  ("modifyIndividualStudentsOptions" .=) <$>
                    _maarModifyIndividualStudentsOptions])

-- | Request to return a student submission.
--
-- /See:/ 'returnStudentSubmissionRequest' smart constructor.
data ReturnStudentSubmissionRequest =
  ReturnStudentSubmissionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnStudentSubmissionRequest' with the minimum fields required to make a request.
--
returnStudentSubmissionRequest
    :: ReturnStudentSubmissionRequest
returnStudentSubmissionRequest = ReturnStudentSubmissionRequest'


instance FromJSON ReturnStudentSubmissionRequest
         where
        parseJSON
          = withObject "ReturnStudentSubmissionRequest"
              (\ o -> pure ReturnStudentSubmissionRequest')

instance ToJSON ReturnStudentSubmissionRequest where
        toJSON = const emptyObject

-- | Request to reclaim a student submission.
--
-- /See:/ 'reclaimStudentSubmissionRequest' smart constructor.
data ReclaimStudentSubmissionRequest =
  ReclaimStudentSubmissionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReclaimStudentSubmissionRequest' with the minimum fields required to make a request.
--
reclaimStudentSubmissionRequest
    :: ReclaimStudentSubmissionRequest
reclaimStudentSubmissionRequest = ReclaimStudentSubmissionRequest'


instance FromJSON ReclaimStudentSubmissionRequest
         where
        parseJSON
          = withObject "ReclaimStudentSubmissionRequest"
              (\ o -> pure ReclaimStudentSubmissionRequest')

instance ToJSON ReclaimStudentSubmissionRequest where
        toJSON = const emptyObject

-- | Response when listing course work.
--
-- /See:/ 'listCourseWorkResponse' smart constructor.
data ListCourseWorkResponse =
  ListCourseWorkResponse'
    { _lcwrCourseWork :: !(Maybe [CourseWork])
    , _lcwrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCourseWorkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcwrCourseWork'
--
-- * 'lcwrNextPageToken'
listCourseWorkResponse
    :: ListCourseWorkResponse
listCourseWorkResponse =
  ListCourseWorkResponse'
    {_lcwrCourseWork = Nothing, _lcwrNextPageToken = Nothing}


-- | Course work items that match the request.
lcwrCourseWork :: Lens' ListCourseWorkResponse [CourseWork]
lcwrCourseWork
  = lens _lcwrCourseWork
      (\ s a -> s{_lcwrCourseWork = a})
      . _Default
      . _Coerce

-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lcwrNextPageToken :: Lens' ListCourseWorkResponse (Maybe Text)
lcwrNextPageToken
  = lens _lcwrNextPageToken
      (\ s a -> s{_lcwrNextPageToken = a})

instance FromJSON ListCourseWorkResponse where
        parseJSON
          = withObject "ListCourseWorkResponse"
              (\ o ->
                 ListCourseWorkResponse' <$>
                   (o .:? "courseWork" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListCourseWorkResponse where
        toJSON ListCourseWorkResponse'{..}
          = object
              (catMaybes
                 [("courseWork" .=) <$> _lcwrCourseWork,
                  ("nextPageToken" .=) <$> _lcwrNextPageToken])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Global user permission description.
--
-- /See:/ 'globalPermission' smart constructor.
newtype GlobalPermission =
  GlobalPermission'
    { _gpPermission :: Maybe GlobalPermissionPermission
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpPermission'
globalPermission
    :: GlobalPermission
globalPermission = GlobalPermission' {_gpPermission = Nothing}


-- | Permission value.
gpPermission :: Lens' GlobalPermission (Maybe GlobalPermissionPermission)
gpPermission
  = lens _gpPermission (\ s a -> s{_gpPermission = a})

instance FromJSON GlobalPermission where
        parseJSON
          = withObject "GlobalPermission"
              (\ o -> GlobalPermission' <$> (o .:? "permission"))

instance ToJSON GlobalPermission where
        toJSON GlobalPermission'{..}
          = object
              (catMaybes [("permission" .=) <$> _gpPermission])

-- | Response when listing topics.
--
-- /See:/ 'listTopicResponse' smart constructor.
data ListTopicResponse =
  ListTopicResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTopic :: !(Maybe [Topic])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTopicResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTopic'
listTopicResponse
    :: ListTopicResponse
listTopicResponse =
  ListTopicResponse' {_ltrNextPageToken = Nothing, _ltrTopic = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
ltrNextPageToken :: Lens' ListTopicResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | Topic items that match the request.
ltrTopic :: Lens' ListTopicResponse [Topic]
ltrTopic
  = lens _ltrTopic (\ s a -> s{_ltrTopic = a}) .
      _Default
      . _Coerce

instance FromJSON ListTopicResponse where
        parseJSON
          = withObject "ListTopicResponse"
              (\ o ->
                 ListTopicResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "topic" .!= mempty))

instance ToJSON ListTopicResponse where
        toJSON ListTopicResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("topic" .=) <$> _ltrTopic])

-- | URL item.
--
-- /See:/ 'link' smart constructor.
data Link =
  Link'
    { _lThumbnailURL :: !(Maybe Text)
    , _lURL :: !(Maybe Text)
    , _lTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Link' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lThumbnailURL'
--
-- * 'lURL'
--
-- * 'lTitle'
link
    :: Link
link = Link' {_lThumbnailURL = Nothing, _lURL = Nothing, _lTitle = Nothing}


-- | URL of a thumbnail image of the target URL. Read-only.
lThumbnailURL :: Lens' Link (Maybe Text)
lThumbnailURL
  = lens _lThumbnailURL
      (\ s a -> s{_lThumbnailURL = a})

-- | URL to link to. This must be a valid UTF-8 string containing between 1
-- and 2024 characters.
lURL :: Lens' Link (Maybe Text)
lURL = lens _lURL (\ s a -> s{_lURL = a})

-- | Title of the target of the URL. Read-only.
lTitle :: Lens' Link (Maybe Text)
lTitle = lens _lTitle (\ s a -> s{_lTitle = a})

instance FromJSON Link where
        parseJSON
          = withObject "Link"
              (\ o ->
                 Link' <$>
                   (o .:? "thumbnailUrl") <*> (o .:? "url") <*>
                     (o .:? "title"))

instance ToJSON Link where
        toJSON Link'{..}
          = object
              (catMaybes
                 [("thumbnailUrl" .=) <$> _lThumbnailURL,
                  ("url" .=) <$> _lURL, ("title" .=) <$> _lTitle])

-- | Assignee details about a coursework\/announcement. This field is set if
-- and only if \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`.
--
-- /See:/ 'individualStudentsOptions' smart constructor.
newtype IndividualStudentsOptions =
  IndividualStudentsOptions'
    { _isoStudentIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IndividualStudentsOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isoStudentIds'
individualStudentsOptions
    :: IndividualStudentsOptions
individualStudentsOptions =
  IndividualStudentsOptions' {_isoStudentIds = Nothing}


-- | Identifiers for the students that have access to the
-- coursework\/announcement.
isoStudentIds :: Lens' IndividualStudentsOptions [Text]
isoStudentIds
  = lens _isoStudentIds
      (\ s a -> s{_isoStudentIds = a})
      . _Default
      . _Coerce

instance FromJSON IndividualStudentsOptions where
        parseJSON
          = withObject "IndividualStudentsOptions"
              (\ o ->
                 IndividualStudentsOptions' <$>
                   (o .:? "studentIds" .!= mempty))

instance ToJSON IndividualStudentsOptions where
        toJSON IndividualStudentsOptions'{..}
          = object
              (catMaybes [("studentIds" .=) <$> _isoStudentIds])

-- | Student work for an assignment.
--
-- /See:/ 'assignmentSubmission' smart constructor.
newtype AssignmentSubmission =
  AssignmentSubmission'
    { _asAttachments :: Maybe [Attachment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AssignmentSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asAttachments'
assignmentSubmission
    :: AssignmentSubmission
assignmentSubmission = AssignmentSubmission' {_asAttachments = Nothing}


-- | Attachments added by the student. Drive files that correspond to
-- materials with a share mode of STUDENT_COPY may not exist yet if the
-- student has not accessed the assignment in Classroom. Some attachment
-- metadata is only populated if the requesting user has permission to
-- access it. Identifier and alternate_link fields are always available,
-- but others (for example, title) may not be.
asAttachments :: Lens' AssignmentSubmission [Attachment]
asAttachments
  = lens _asAttachments
      (\ s a -> s{_asAttachments = a})
      . _Default
      . _Coerce

instance FromJSON AssignmentSubmission where
        parseJSON
          = withObject "AssignmentSubmission"
              (\ o ->
                 AssignmentSubmission' <$>
                   (o .:? "attachments" .!= mempty))

instance ToJSON AssignmentSubmission where
        toJSON AssignmentSubmission'{..}
          = object
              (catMaybes [("attachments" .=) <$> _asAttachments])

-- | Request to modify the attachments of a student submission.
--
-- /See:/ 'modifyAttachmentsRequest' smart constructor.
newtype ModifyAttachmentsRequest =
  ModifyAttachmentsRequest'
    { _marAddAttachments :: Maybe [Attachment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyAttachmentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'marAddAttachments'
modifyAttachmentsRequest
    :: ModifyAttachmentsRequest
modifyAttachmentsRequest =
  ModifyAttachmentsRequest' {_marAddAttachments = Nothing}


-- | Attachments to add. A student submission may not have more than 20
-- attachments. Form attachments are not supported.
marAddAttachments :: Lens' ModifyAttachmentsRequest [Attachment]
marAddAttachments
  = lens _marAddAttachments
      (\ s a -> s{_marAddAttachments = a})
      . _Default
      . _Coerce

instance FromJSON ModifyAttachmentsRequest where
        parseJSON
          = withObject "ModifyAttachmentsRequest"
              (\ o ->
                 ModifyAttachmentsRequest' <$>
                   (o .:? "addAttachments" .!= mempty))

instance ToJSON ModifyAttachmentsRequest where
        toJSON ModifyAttachmentsRequest'{..}
          = object
              (catMaybes
                 [("addAttachments" .=) <$> _marAddAttachments])

-- | Response when listing course work.
--
-- /See:/ 'listAnnouncementsResponse' smart constructor.
data ListAnnouncementsResponse =
  ListAnnouncementsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAnnouncements :: !(Maybe [Announcement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAnnouncementsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAnnouncements'
listAnnouncementsResponse
    :: ListAnnouncementsResponse
listAnnouncementsResponse =
  ListAnnouncementsResponse'
    {_larNextPageToken = Nothing, _larAnnouncements = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
larNextPageToken :: Lens' ListAnnouncementsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | Announcement items that match the request.
larAnnouncements :: Lens' ListAnnouncementsResponse [Announcement]
larAnnouncements
  = lens _larAnnouncements
      (\ s a -> s{_larAnnouncements = a})
      . _Default
      . _Coerce

instance FromJSON ListAnnouncementsResponse where
        parseJSON
          = withObject "ListAnnouncementsResponse"
              (\ o ->
                 ListAnnouncementsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "announcements" .!= mempty))

instance ToJSON ListAnnouncementsResponse where
        toJSON ListAnnouncementsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("announcements" .=) <$> _larAnnouncements])

-- | Response when listing student submissions.
--
-- /See:/ 'listStudentSubmissionsResponse' smart constructor.
data ListStudentSubmissionsResponse =
  ListStudentSubmissionsResponse'
    { _lssrNextPageToken :: !(Maybe Text)
    , _lssrStudentSubmissions :: !(Maybe [StudentSubmission])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListStudentSubmissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssrNextPageToken'
--
-- * 'lssrStudentSubmissions'
listStudentSubmissionsResponse
    :: ListStudentSubmissionsResponse
listStudentSubmissionsResponse =
  ListStudentSubmissionsResponse'
    {_lssrNextPageToken = Nothing, _lssrStudentSubmissions = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lssrNextPageToken :: Lens' ListStudentSubmissionsResponse (Maybe Text)
lssrNextPageToken
  = lens _lssrNextPageToken
      (\ s a -> s{_lssrNextPageToken = a})

-- | Student work that matches the request.
lssrStudentSubmissions :: Lens' ListStudentSubmissionsResponse [StudentSubmission]
lssrStudentSubmissions
  = lens _lssrStudentSubmissions
      (\ s a -> s{_lssrStudentSubmissions = a})
      . _Default
      . _Coerce

instance FromJSON ListStudentSubmissionsResponse
         where
        parseJSON
          = withObject "ListStudentSubmissionsResponse"
              (\ o ->
                 ListStudentSubmissionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "studentSubmissions" .!= mempty))

instance ToJSON ListStudentSubmissionsResponse where
        toJSON ListStudentSubmissionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lssrNextPageToken,
                  ("studentSubmissions" .=) <$>
                    _lssrStudentSubmissions])

-- | Material attached to course work. When creating attachments, setting the
-- \`form\` field is not supported.
--
-- /See:/ 'material' smart constructor.
data Material =
  Material'
    { _mDriveFile :: !(Maybe SharedDriveFile)
    , _mLink :: !(Maybe Link)
    , _mYouTubeVideo :: !(Maybe YouTubeVideo)
    , _mForm :: !(Maybe Form)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Material' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mDriveFile'
--
-- * 'mLink'
--
-- * 'mYouTubeVideo'
--
-- * 'mForm'
material
    :: Material
material =
  Material'
    { _mDriveFile = Nothing
    , _mLink = Nothing
    , _mYouTubeVideo = Nothing
    , _mForm = Nothing
    }


-- | Google Drive file material.
mDriveFile :: Lens' Material (Maybe SharedDriveFile)
mDriveFile
  = lens _mDriveFile (\ s a -> s{_mDriveFile = a})

-- | Link material. On creation, this is upgraded to a more appropriate type
-- if possible, and this is reflected in the response.
mLink :: Lens' Material (Maybe Link)
mLink = lens _mLink (\ s a -> s{_mLink = a})

-- | YouTube video material.
mYouTubeVideo :: Lens' Material (Maybe YouTubeVideo)
mYouTubeVideo
  = lens _mYouTubeVideo
      (\ s a -> s{_mYouTubeVideo = a})

-- | Google Forms material.
mForm :: Lens' Material (Maybe Form)
mForm = lens _mForm (\ s a -> s{_mForm = a})

instance FromJSON Material where
        parseJSON
          = withObject "Material"
              (\ o ->
                 Material' <$>
                   (o .:? "driveFile") <*> (o .:? "link") <*>
                     (o .:? "youtubeVideo")
                     <*> (o .:? "form"))

instance ToJSON Material where
        toJSON Material'{..}
          = object
              (catMaybes
                 [("driveFile" .=) <$> _mDriveFile,
                  ("link" .=) <$> _mLink,
                  ("youtubeVideo" .=) <$> _mYouTubeVideo,
                  ("form" .=) <$> _mForm])

-- | Student work for a multiple-choice question.
--
-- /See:/ 'multipleChoiceSubmission' smart constructor.
newtype MultipleChoiceSubmission =
  MultipleChoiceSubmission'
    { _mcsAnswer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MultipleChoiceSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsAnswer'
multipleChoiceSubmission
    :: MultipleChoiceSubmission
multipleChoiceSubmission = MultipleChoiceSubmission' {_mcsAnswer = Nothing}


-- | Student\'s select choice.
mcsAnswer :: Lens' MultipleChoiceSubmission (Maybe Text)
mcsAnswer
  = lens _mcsAnswer (\ s a -> s{_mcsAnswer = a})

instance FromJSON MultipleChoiceSubmission where
        parseJSON
          = withObject "MultipleChoiceSubmission"
              (\ o ->
                 MultipleChoiceSubmission' <$> (o .:? "answer"))

instance ToJSON MultipleChoiceSubmission where
        toJSON MultipleChoiceSubmission'{..}
          = object (catMaybes [("answer" .=) <$> _mcsAnswer])

-- | Response when listing invitations.
--
-- /See:/ 'listInvitationsResponse' smart constructor.
data ListInvitationsResponse =
  ListInvitationsResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirInvitations :: !(Maybe [Invitation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListInvitationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lirNextPageToken'
--
-- * 'lirInvitations'
listInvitationsResponse
    :: ListInvitationsResponse
listInvitationsResponse =
  ListInvitationsResponse'
    {_lirNextPageToken = Nothing, _lirInvitations = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lirNextPageToken :: Lens' ListInvitationsResponse (Maybe Text)
lirNextPageToken
  = lens _lirNextPageToken
      (\ s a -> s{_lirNextPageToken = a})

-- | Invitations that match the list request.
lirInvitations :: Lens' ListInvitationsResponse [Invitation]
lirInvitations
  = lens _lirInvitations
      (\ s a -> s{_lirInvitations = a})
      . _Default
      . _Coerce

instance FromJSON ListInvitationsResponse where
        parseJSON
          = withObject "ListInvitationsResponse"
              (\ o ->
                 ListInvitationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "invitations" .!= mempty))

instance ToJSON ListInvitationsResponse where
        toJSON ListInvitationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lirNextPageToken,
                  ("invitations" .=) <$> _lirInvitations])

-- | Association between a student and a guardian of that student. The
-- guardian may receive information about the student\'s course work.
--
-- /See:/ 'guardian' smart constructor.
data Guardian =
  Guardian'
    { _gStudentId :: !(Maybe Text)
    , _gGuardianId :: !(Maybe Text)
    , _gInvitedEmailAddress :: !(Maybe Text)
    , _gGuardianProFile :: !(Maybe UserProFile)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Guardian' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gStudentId'
--
-- * 'gGuardianId'
--
-- * 'gInvitedEmailAddress'
--
-- * 'gGuardianProFile'
guardian
    :: Guardian
guardian =
  Guardian'
    { _gStudentId = Nothing
    , _gGuardianId = Nothing
    , _gInvitedEmailAddress = Nothing
    , _gGuardianProFile = Nothing
    }


-- | Identifier for the student to whom the guardian relationship applies.
gStudentId :: Lens' Guardian (Maybe Text)
gStudentId
  = lens _gStudentId (\ s a -> s{_gStudentId = a})

-- | Identifier for the guardian.
gGuardianId :: Lens' Guardian (Maybe Text)
gGuardianId
  = lens _gGuardianId (\ s a -> s{_gGuardianId = a})

-- | The email address to which the initial guardian invitation was sent.
-- This field is only visible to domain administrators.
gInvitedEmailAddress :: Lens' Guardian (Maybe Text)
gInvitedEmailAddress
  = lens _gInvitedEmailAddress
      (\ s a -> s{_gInvitedEmailAddress = a})

-- | User profile for the guardian.
gGuardianProFile :: Lens' Guardian (Maybe UserProFile)
gGuardianProFile
  = lens _gGuardianProFile
      (\ s a -> s{_gGuardianProFile = a})

instance FromJSON Guardian where
        parseJSON
          = withObject "Guardian"
              (\ o ->
                 Guardian' <$>
                   (o .:? "studentId") <*> (o .:? "guardianId") <*>
                     (o .:? "invitedEmailAddress")
                     <*> (o .:? "guardianProfile"))

instance ToJSON Guardian where
        toJSON Guardian'{..}
          = object
              (catMaybes
                 [("studentId" .=) <$> _gStudentId,
                  ("guardianId" .=) <$> _gGuardianId,
                  ("invitedEmailAddress" .=) <$> _gInvitedEmailAddress,
                  ("guardianProfile" .=) <$> _gGuardianProFile])

-- | A material attached to a course as part of a material set.
--
-- /See:/ 'courseMaterial' smart constructor.
data CourseMaterial =
  CourseMaterial'
    { _cmDriveFile :: !(Maybe DriveFile)
    , _cmLink :: !(Maybe Link)
    , _cmYouTubeVideo :: !(Maybe YouTubeVideo)
    , _cmForm :: !(Maybe Form)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseMaterial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmDriveFile'
--
-- * 'cmLink'
--
-- * 'cmYouTubeVideo'
--
-- * 'cmForm'
courseMaterial
    :: CourseMaterial
courseMaterial =
  CourseMaterial'
    { _cmDriveFile = Nothing
    , _cmLink = Nothing
    , _cmYouTubeVideo = Nothing
    , _cmForm = Nothing
    }


-- | Google Drive file attachment.
cmDriveFile :: Lens' CourseMaterial (Maybe DriveFile)
cmDriveFile
  = lens _cmDriveFile (\ s a -> s{_cmDriveFile = a})

-- | Link atatchment.
cmLink :: Lens' CourseMaterial (Maybe Link)
cmLink = lens _cmLink (\ s a -> s{_cmLink = a})

-- | Youtube video attachment.
cmYouTubeVideo :: Lens' CourseMaterial (Maybe YouTubeVideo)
cmYouTubeVideo
  = lens _cmYouTubeVideo
      (\ s a -> s{_cmYouTubeVideo = a})

-- | Google Forms attachment.
cmForm :: Lens' CourseMaterial (Maybe Form)
cmForm = lens _cmForm (\ s a -> s{_cmForm = a})

instance FromJSON CourseMaterial where
        parseJSON
          = withObject "CourseMaterial"
              (\ o ->
                 CourseMaterial' <$>
                   (o .:? "driveFile") <*> (o .:? "link") <*>
                     (o .:? "youTubeVideo")
                     <*> (o .:? "form"))

instance ToJSON CourseMaterial where
        toJSON CourseMaterial'{..}
          = object
              (catMaybes
                 [("driveFile" .=) <$> _cmDriveFile,
                  ("link" .=) <$> _cmLink,
                  ("youTubeVideo" .=) <$> _cmYouTubeVideo,
                  ("form" .=) <$> _cmForm])

-- | Student work for a short answer question.
--
-- /See:/ 'shortAnswerSubmission' smart constructor.
newtype ShortAnswerSubmission =
  ShortAnswerSubmission'
    { _sasAnswer :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShortAnswerSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasAnswer'
shortAnswerSubmission
    :: ShortAnswerSubmission
shortAnswerSubmission = ShortAnswerSubmission' {_sasAnswer = Nothing}


-- | Student response to a short-answer question.
sasAnswer :: Lens' ShortAnswerSubmission (Maybe Text)
sasAnswer
  = lens _sasAnswer (\ s a -> s{_sasAnswer = a})

instance FromJSON ShortAnswerSubmission where
        parseJSON
          = withObject "ShortAnswerSubmission"
              (\ o -> ShortAnswerSubmission' <$> (o .:? "answer"))

instance ToJSON ShortAnswerSubmission where
        toJSON ShortAnswerSubmission'{..}
          = object (catMaybes [("answer" .=) <$> _sasAnswer])

-- | An invitation to join a course.
--
-- /See:/ 'invitation' smart constructor.
data Invitation =
  Invitation'
    { _iCourseId :: !(Maybe Text)
    , _iUserId :: !(Maybe Text)
    , _iRole :: !(Maybe InvitationRole)
    , _iId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Invitation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iCourseId'
--
-- * 'iUserId'
--
-- * 'iRole'
--
-- * 'iId'
invitation
    :: Invitation
invitation =
  Invitation'
    {_iCourseId = Nothing, _iUserId = Nothing, _iRole = Nothing, _iId = Nothing}


-- | Identifier of the course to invite the user to.
iCourseId :: Lens' Invitation (Maybe Text)
iCourseId
  = lens _iCourseId (\ s a -> s{_iCourseId = a})

-- | Identifier of the invited user. When specified as a parameter of a
-- request, this identifier can be set to one of the following: * the
-- numeric identifier for the user * the email address of the user * the
-- string literal \`\"me\"\`, indicating the requesting user
iUserId :: Lens' Invitation (Maybe Text)
iUserId = lens _iUserId (\ s a -> s{_iUserId = a})

-- | Role to invite the user to have. Must not be
-- \`COURSE_ROLE_UNSPECIFIED\`.
iRole :: Lens' Invitation (Maybe InvitationRole)
iRole = lens _iRole (\ s a -> s{_iRole = a})

-- | Identifier assigned by Classroom. Read-only.
iId :: Lens' Invitation (Maybe Text)
iId = lens _iId (\ s a -> s{_iId = a})

instance FromJSON Invitation where
        parseJSON
          = withObject "Invitation"
              (\ o ->
                 Invitation' <$>
                   (o .:? "courseId") <*> (o .:? "userId") <*>
                     (o .:? "role")
                     <*> (o .:? "id"))

instance ToJSON Invitation where
        toJSON Invitation'{..}
          = object
              (catMaybes
                 [("courseId" .=) <$> _iCourseId,
                  ("userId" .=) <$> _iUserId, ("role" .=) <$> _iRole,
                  ("id" .=) <$> _iId])

-- | Attachment added to student assignment work. When creating attachments,
-- setting the \`form\` field is not supported.
--
-- /See:/ 'attachment' smart constructor.
data Attachment =
  Attachment'
    { _aDriveFile :: !(Maybe DriveFile)
    , _aLink :: !(Maybe Link)
    , _aYouTubeVideo :: !(Maybe YouTubeVideo)
    , _aForm :: !(Maybe Form)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDriveFile'
--
-- * 'aLink'
--
-- * 'aYouTubeVideo'
--
-- * 'aForm'
attachment
    :: Attachment
attachment =
  Attachment'
    { _aDriveFile = Nothing
    , _aLink = Nothing
    , _aYouTubeVideo = Nothing
    , _aForm = Nothing
    }


-- | Google Drive file attachment.
aDriveFile :: Lens' Attachment (Maybe DriveFile)
aDriveFile
  = lens _aDriveFile (\ s a -> s{_aDriveFile = a})

-- | Link attachment.
aLink :: Lens' Attachment (Maybe Link)
aLink = lens _aLink (\ s a -> s{_aLink = a})

-- | Youtube video attachment.
aYouTubeVideo :: Lens' Attachment (Maybe YouTubeVideo)
aYouTubeVideo
  = lens _aYouTubeVideo
      (\ s a -> s{_aYouTubeVideo = a})

-- | Google Forms attachment.
aForm :: Lens' Attachment (Maybe Form)
aForm = lens _aForm (\ s a -> s{_aForm = a})

instance FromJSON Attachment where
        parseJSON
          = withObject "Attachment"
              (\ o ->
                 Attachment' <$>
                   (o .:? "driveFile") <*> (o .:? "link") <*>
                     (o .:? "youTubeVideo")
                     <*> (o .:? "form"))

instance ToJSON Attachment where
        toJSON Attachment'{..}
          = object
              (catMaybes
                 [("driveFile" .=) <$> _aDriveFile,
                  ("link" .=) <$> _aLink,
                  ("youTubeVideo" .=) <$> _aYouTubeVideo,
                  ("form" .=) <$> _aForm])

-- | Topic created by a teacher for the course
--
-- /See:/ 'topic' smart constructor.
data Topic =
  Topic'
    { _tCourseId :: !(Maybe Text)
    , _tUpdateTime :: !(Maybe DateTime')
    , _tTopicId :: !(Maybe Text)
    , _tName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Topic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCourseId'
--
-- * 'tUpdateTime'
--
-- * 'tTopicId'
--
-- * 'tName'
topic
    :: Topic
topic =
  Topic'
    { _tCourseId = Nothing
    , _tUpdateTime = Nothing
    , _tTopicId = Nothing
    , _tName = Nothing
    }


-- | Identifier of the course. Read-only.
tCourseId :: Lens' Topic (Maybe Text)
tCourseId
  = lens _tCourseId (\ s a -> s{_tCourseId = a})

-- | The time the topic was last updated by the system. Read-only.
tUpdateTime :: Lens' Topic (Maybe UTCTime)
tUpdateTime
  = lens _tUpdateTime (\ s a -> s{_tUpdateTime = a}) .
      mapping _DateTime

-- | Unique identifier for the topic. Read-only.
tTopicId :: Lens' Topic (Maybe Text)
tTopicId = lens _tTopicId (\ s a -> s{_tTopicId = a})

-- | The name of the topic, generated by the user. Leading and trailing
-- whitespaces, if any, are trimmed. Also, multiple consecutive whitespaces
-- are collapsed into one inside the name. The result must be a non-empty
-- string. Topic names are case sensitive, and must be no longer than 100
-- characters.
tName :: Lens' Topic (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

instance FromJSON Topic where
        parseJSON
          = withObject "Topic"
              (\ o ->
                 Topic' <$>
                   (o .:? "courseId") <*> (o .:? "updateTime") <*>
                     (o .:? "topicId")
                     <*> (o .:? "name"))

instance ToJSON Topic where
        toJSON Topic'{..}
          = object
              (catMaybes
                 [("courseId" .=) <$> _tCourseId,
                  ("updateTime" .=) <$> _tUpdateTime,
                  ("topicId" .=) <$> _tTopicId,
                  ("name" .=) <$> _tName])

-- | Announcement created by a teacher for students of the course
--
-- /See:/ 'announcement' smart constructor.
data Announcement =
  Announcement'
    { _aCreationTime :: !(Maybe DateTime')
    , _aScheduledTime :: !(Maybe DateTime')
    , _aState :: !(Maybe AnnouncementState)
    , _aAssigneeMode :: !(Maybe AnnouncementAssigneeMode)
    , _aText :: !(Maybe Text)
    , _aMaterials :: !(Maybe [Material])
    , _aCourseId :: !(Maybe Text)
    , _aIndividualStudentsOptions :: !(Maybe IndividualStudentsOptions)
    , _aUpdateTime :: !(Maybe DateTime')
    , _aId :: !(Maybe Text)
    , _aCreatorUserId :: !(Maybe Text)
    , _aAlternateLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Announcement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCreationTime'
--
-- * 'aScheduledTime'
--
-- * 'aState'
--
-- * 'aAssigneeMode'
--
-- * 'aText'
--
-- * 'aMaterials'
--
-- * 'aCourseId'
--
-- * 'aIndividualStudentsOptions'
--
-- * 'aUpdateTime'
--
-- * 'aId'
--
-- * 'aCreatorUserId'
--
-- * 'aAlternateLink'
announcement
    :: Announcement
announcement =
  Announcement'
    { _aCreationTime = Nothing
    , _aScheduledTime = Nothing
    , _aState = Nothing
    , _aAssigneeMode = Nothing
    , _aText = Nothing
    , _aMaterials = Nothing
    , _aCourseId = Nothing
    , _aIndividualStudentsOptions = Nothing
    , _aUpdateTime = Nothing
    , _aId = Nothing
    , _aCreatorUserId = Nothing
    , _aAlternateLink = Nothing
    }


-- | Timestamp when this announcement was created. Read-only.
aCreationTime :: Lens' Announcement (Maybe UTCTime)
aCreationTime
  = lens _aCreationTime
      (\ s a -> s{_aCreationTime = a})
      . mapping _DateTime

-- | Optional timestamp when this announcement is scheduled to be published.
aScheduledTime :: Lens' Announcement (Maybe UTCTime)
aScheduledTime
  = lens _aScheduledTime
      (\ s a -> s{_aScheduledTime = a})
      . mapping _DateTime

-- | Status of this announcement. If unspecified, the default state is
-- \`DRAFT\`.
aState :: Lens' Announcement (Maybe AnnouncementState)
aState = lens _aState (\ s a -> s{_aState = a})

-- | Assignee mode of the announcement. If unspecified, the default value is
-- \`ALL_STUDENTS\`.
aAssigneeMode :: Lens' Announcement (Maybe AnnouncementAssigneeMode)
aAssigneeMode
  = lens _aAssigneeMode
      (\ s a -> s{_aAssigneeMode = a})

-- | Description of this announcement. The text must be a valid UTF-8 string
-- containing no more than 30,000 characters.
aText :: Lens' Announcement (Maybe Text)
aText = lens _aText (\ s a -> s{_aText = a})

-- | Additional materials. Announcements must have no more than 20 material
-- items.
aMaterials :: Lens' Announcement [Material]
aMaterials
  = lens _aMaterials (\ s a -> s{_aMaterials = a}) .
      _Default
      . _Coerce

-- | Identifier of the course. Read-only.
aCourseId :: Lens' Announcement (Maybe Text)
aCourseId
  = lens _aCourseId (\ s a -> s{_aCourseId = a})

-- | Identifiers of students with access to the announcement. This field is
-- set only if \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`. If the
-- \`assigneeMode\` is \`INDIVIDUAL_STUDENTS\`, then only students
-- specified in this field can see the announcement.
aIndividualStudentsOptions :: Lens' Announcement (Maybe IndividualStudentsOptions)
aIndividualStudentsOptions
  = lens _aIndividualStudentsOptions
      (\ s a -> s{_aIndividualStudentsOptions = a})

-- | Timestamp of the most recent change to this announcement. Read-only.
aUpdateTime :: Lens' Announcement (Maybe UTCTime)
aUpdateTime
  = lens _aUpdateTime (\ s a -> s{_aUpdateTime = a}) .
      mapping _DateTime

-- | Classroom-assigned identifier of this announcement, unique per course.
-- Read-only.
aId :: Lens' Announcement (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

-- | Identifier for the user that created the announcement. Read-only.
aCreatorUserId :: Lens' Announcement (Maybe Text)
aCreatorUserId
  = lens _aCreatorUserId
      (\ s a -> s{_aCreatorUserId = a})

-- | Absolute link to this announcement in the Classroom web UI. This is only
-- populated if \`state\` is \`PUBLISHED\`. Read-only.
aAlternateLink :: Lens' Announcement (Maybe Text)
aAlternateLink
  = lens _aAlternateLink
      (\ s a -> s{_aAlternateLink = a})

instance FromJSON Announcement where
        parseJSON
          = withObject "Announcement"
              (\ o ->
                 Announcement' <$>
                   (o .:? "creationTime") <*> (o .:? "scheduledTime")
                     <*> (o .:? "state")
                     <*> (o .:? "assigneeMode")
                     <*> (o .:? "text")
                     <*> (o .:? "materials" .!= mempty)
                     <*> (o .:? "courseId")
                     <*> (o .:? "individualStudentsOptions")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "id")
                     <*> (o .:? "creatorUserId")
                     <*> (o .:? "alternateLink"))

instance ToJSON Announcement where
        toJSON Announcement'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _aCreationTime,
                  ("scheduledTime" .=) <$> _aScheduledTime,
                  ("state" .=) <$> _aState,
                  ("assigneeMode" .=) <$> _aAssigneeMode,
                  ("text" .=) <$> _aText,
                  ("materials" .=) <$> _aMaterials,
                  ("courseId" .=) <$> _aCourseId,
                  ("individualStudentsOptions" .=) <$>
                    _aIndividualStudentsOptions,
                  ("updateTime" .=) <$> _aUpdateTime,
                  ("id" .=) <$> _aId,
                  ("creatorUserId" .=) <$> _aCreatorUserId,
                  ("alternateLink" .=) <$> _aAlternateLink])

-- | Student submission for course work. StudentSubmission items are
-- generated when a CourseWork item is created. StudentSubmissions that
-- have never been accessed (i.e. with \`state\` = NEW) may not have a
-- creation time or update time.
--
-- /See:/ 'studentSubmission' smart constructor.
data StudentSubmission =
  StudentSubmission'
    { _ssCreationTime :: !(Maybe DateTime')
    , _ssLate :: !(Maybe Bool)
    , _ssState :: !(Maybe StudentSubmissionState)
    , _ssCourseId :: !(Maybe Text)
    , _ssMultipleChoiceSubmission :: !(Maybe MultipleChoiceSubmission)
    , _ssAssignmentSubmission :: !(Maybe AssignmentSubmission)
    , _ssShortAnswerSubmission :: !(Maybe ShortAnswerSubmission)
    , _ssAssociatedWithDeveloper :: !(Maybe Bool)
    , _ssUserId :: !(Maybe Text)
    , _ssUpdateTime :: !(Maybe DateTime')
    , _ssCourseWorkType :: !(Maybe StudentSubmissionCourseWorkType)
    , _ssSubmissionHistory :: !(Maybe [SubmissionHistory])
    , _ssAssignedGrade :: !(Maybe (Textual Double))
    , _ssId :: !(Maybe Text)
    , _ssDraftGrade :: !(Maybe (Textual Double))
    , _ssAlternateLink :: !(Maybe Text)
    , _ssCourseWorkId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StudentSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssCreationTime'
--
-- * 'ssLate'
--
-- * 'ssState'
--
-- * 'ssCourseId'
--
-- * 'ssMultipleChoiceSubmission'
--
-- * 'ssAssignmentSubmission'
--
-- * 'ssShortAnswerSubmission'
--
-- * 'ssAssociatedWithDeveloper'
--
-- * 'ssUserId'
--
-- * 'ssUpdateTime'
--
-- * 'ssCourseWorkType'
--
-- * 'ssSubmissionHistory'
--
-- * 'ssAssignedGrade'
--
-- * 'ssId'
--
-- * 'ssDraftGrade'
--
-- * 'ssAlternateLink'
--
-- * 'ssCourseWorkId'
studentSubmission
    :: StudentSubmission
studentSubmission =
  StudentSubmission'
    { _ssCreationTime = Nothing
    , _ssLate = Nothing
    , _ssState = Nothing
    , _ssCourseId = Nothing
    , _ssMultipleChoiceSubmission = Nothing
    , _ssAssignmentSubmission = Nothing
    , _ssShortAnswerSubmission = Nothing
    , _ssAssociatedWithDeveloper = Nothing
    , _ssUserId = Nothing
    , _ssUpdateTime = Nothing
    , _ssCourseWorkType = Nothing
    , _ssSubmissionHistory = Nothing
    , _ssAssignedGrade = Nothing
    , _ssId = Nothing
    , _ssDraftGrade = Nothing
    , _ssAlternateLink = Nothing
    , _ssCourseWorkId = Nothing
    }


-- | Creation time of this submission. This may be unset if the student has
-- not accessed this item. Read-only.
ssCreationTime :: Lens' StudentSubmission (Maybe UTCTime)
ssCreationTime
  = lens _ssCreationTime
      (\ s a -> s{_ssCreationTime = a})
      . mapping _DateTime

-- | Whether this submission is late. Read-only.
ssLate :: Lens' StudentSubmission (Maybe Bool)
ssLate = lens _ssLate (\ s a -> s{_ssLate = a})

-- | State of this submission. Read-only.
ssState :: Lens' StudentSubmission (Maybe StudentSubmissionState)
ssState = lens _ssState (\ s a -> s{_ssState = a})

-- | Identifier of the course. Read-only.
ssCourseId :: Lens' StudentSubmission (Maybe Text)
ssCourseId
  = lens _ssCourseId (\ s a -> s{_ssCourseId = a})

-- | Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION.
ssMultipleChoiceSubmission :: Lens' StudentSubmission (Maybe MultipleChoiceSubmission)
ssMultipleChoiceSubmission
  = lens _ssMultipleChoiceSubmission
      (\ s a -> s{_ssMultipleChoiceSubmission = a})

-- | Submission content when course_work_type is ASSIGNMENT. Students can
-- modify this content using ModifyAttachments.
ssAssignmentSubmission :: Lens' StudentSubmission (Maybe AssignmentSubmission)
ssAssignmentSubmission
  = lens _ssAssignmentSubmission
      (\ s a -> s{_ssAssignmentSubmission = a})

-- | Submission content when course_work_type is SHORT_ANSWER_QUESTION.
ssShortAnswerSubmission :: Lens' StudentSubmission (Maybe ShortAnswerSubmission)
ssShortAnswerSubmission
  = lens _ssShortAnswerSubmission
      (\ s a -> s{_ssShortAnswerSubmission = a})

-- | Whether this student submission is associated with the Developer Console
-- project making the request. See CreateCourseWork for more details.
-- Read-only.
ssAssociatedWithDeveloper :: Lens' StudentSubmission (Maybe Bool)
ssAssociatedWithDeveloper
  = lens _ssAssociatedWithDeveloper
      (\ s a -> s{_ssAssociatedWithDeveloper = a})

-- | Identifier for the student that owns this submission. Read-only.
ssUserId :: Lens' StudentSubmission (Maybe Text)
ssUserId = lens _ssUserId (\ s a -> s{_ssUserId = a})

-- | Last update time of this submission. This may be unset if the student
-- has not accessed this item. Read-only.
ssUpdateTime :: Lens' StudentSubmission (Maybe UTCTime)
ssUpdateTime
  = lens _ssUpdateTime (\ s a -> s{_ssUpdateTime = a})
      . mapping _DateTime

-- | Type of course work this submission is for. Read-only.
ssCourseWorkType :: Lens' StudentSubmission (Maybe StudentSubmissionCourseWorkType)
ssCourseWorkType
  = lens _ssCourseWorkType
      (\ s a -> s{_ssCourseWorkType = a})

-- | The history of the submission (includes state and grade histories).
-- Read-only.
ssSubmissionHistory :: Lens' StudentSubmission [SubmissionHistory]
ssSubmissionHistory
  = lens _ssSubmissionHistory
      (\ s a -> s{_ssSubmissionHistory = a})
      . _Default
      . _Coerce

-- | Optional grade. If unset, no grade was set. This value must be
-- non-negative. Decimal (that is, non-integer) values are allowed, but are
-- rounded to two decimal places. This may be modified only by course
-- teachers.
ssAssignedGrade :: Lens' StudentSubmission (Maybe Double)
ssAssignedGrade
  = lens _ssAssignedGrade
      (\ s a -> s{_ssAssignedGrade = a})
      . mapping _Coerce

-- | Classroom-assigned Identifier for the student submission. This is unique
-- among submissions for the relevant course work. Read-only.
ssId :: Lens' StudentSubmission (Maybe Text)
ssId = lens _ssId (\ s a -> s{_ssId = a})

-- | Optional pending grade. If unset, no grade was set. This value must be
-- non-negative. Decimal (that is, non-integer) values are allowed, but are
-- rounded to two decimal places. This is only visible to and modifiable by
-- course teachers.
ssDraftGrade :: Lens' StudentSubmission (Maybe Double)
ssDraftGrade
  = lens _ssDraftGrade (\ s a -> s{_ssDraftGrade = a})
      . mapping _Coerce

-- | Absolute link to the submission in the Classroom web UI. Read-only.
ssAlternateLink :: Lens' StudentSubmission (Maybe Text)
ssAlternateLink
  = lens _ssAlternateLink
      (\ s a -> s{_ssAlternateLink = a})

-- | Identifier for the course work this corresponds to. Read-only.
ssCourseWorkId :: Lens' StudentSubmission (Maybe Text)
ssCourseWorkId
  = lens _ssCourseWorkId
      (\ s a -> s{_ssCourseWorkId = a})

instance FromJSON StudentSubmission where
        parseJSON
          = withObject "StudentSubmission"
              (\ o ->
                 StudentSubmission' <$>
                   (o .:? "creationTime") <*> (o .:? "late") <*>
                     (o .:? "state")
                     <*> (o .:? "courseId")
                     <*> (o .:? "multipleChoiceSubmission")
                     <*> (o .:? "assignmentSubmission")
                     <*> (o .:? "shortAnswerSubmission")
                     <*> (o .:? "associatedWithDeveloper")
                     <*> (o .:? "userId")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "courseWorkType")
                     <*> (o .:? "submissionHistory" .!= mempty)
                     <*> (o .:? "assignedGrade")
                     <*> (o .:? "id")
                     <*> (o .:? "draftGrade")
                     <*> (o .:? "alternateLink")
                     <*> (o .:? "courseWorkId"))

instance ToJSON StudentSubmission where
        toJSON StudentSubmission'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _ssCreationTime,
                  ("late" .=) <$> _ssLate, ("state" .=) <$> _ssState,
                  ("courseId" .=) <$> _ssCourseId,
                  ("multipleChoiceSubmission" .=) <$>
                    _ssMultipleChoiceSubmission,
                  ("assignmentSubmission" .=) <$>
                    _ssAssignmentSubmission,
                  ("shortAnswerSubmission" .=) <$>
                    _ssShortAnswerSubmission,
                  ("associatedWithDeveloper" .=) <$>
                    _ssAssociatedWithDeveloper,
                  ("userId" .=) <$> _ssUserId,
                  ("updateTime" .=) <$> _ssUpdateTime,
                  ("courseWorkType" .=) <$> _ssCourseWorkType,
                  ("submissionHistory" .=) <$> _ssSubmissionHistory,
                  ("assignedGrade" .=) <$> _ssAssignedGrade,
                  ("id" .=) <$> _ssId,
                  ("draftGrade" .=) <$> _ssDraftGrade,
                  ("alternateLink" .=) <$> _ssAlternateLink,
                  ("courseWorkId" .=) <$> _ssCourseWorkId])

-- | Response when listing guardians.
--
-- /See:/ 'listGuardiansResponse' smart constructor.
data ListGuardiansResponse =
  ListGuardiansResponse'
    { _lgrNextPageToken :: !(Maybe Text)
    , _lgrGuardians :: !(Maybe [Guardian])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGuardiansResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrNextPageToken'
--
-- * 'lgrGuardians'
listGuardiansResponse
    :: ListGuardiansResponse
listGuardiansResponse =
  ListGuardiansResponse' {_lgrNextPageToken = Nothing, _lgrGuardians = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lgrNextPageToken :: Lens' ListGuardiansResponse (Maybe Text)
lgrNextPageToken
  = lens _lgrNextPageToken
      (\ s a -> s{_lgrNextPageToken = a})

-- | Guardians on this page of results that met the criteria specified in the
-- request.
lgrGuardians :: Lens' ListGuardiansResponse [Guardian]
lgrGuardians
  = lens _lgrGuardians (\ s a -> s{_lgrGuardians = a})
      . _Default
      . _Coerce

instance FromJSON ListGuardiansResponse where
        parseJSON
          = withObject "ListGuardiansResponse"
              (\ o ->
                 ListGuardiansResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "guardians" .!= mempty))

instance ToJSON ListGuardiansResponse where
        toJSON ListGuardiansResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgrNextPageToken,
                  ("guardians" .=) <$> _lgrGuardians])

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | YouTube video item.
--
-- /See:/ 'youTubeVideo' smart constructor.
data YouTubeVideo =
  YouTubeVideo'
    { _ytvThumbnailURL :: !(Maybe Text)
    , _ytvId :: !(Maybe Text)
    , _ytvTitle :: !(Maybe Text)
    , _ytvAlternateLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'YouTubeVideo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ytvThumbnailURL'
--
-- * 'ytvId'
--
-- * 'ytvTitle'
--
-- * 'ytvAlternateLink'
youTubeVideo
    :: YouTubeVideo
youTubeVideo =
  YouTubeVideo'
    { _ytvThumbnailURL = Nothing
    , _ytvId = Nothing
    , _ytvTitle = Nothing
    , _ytvAlternateLink = Nothing
    }


-- | URL of a thumbnail image of the YouTube video. Read-only.
ytvThumbnailURL :: Lens' YouTubeVideo (Maybe Text)
ytvThumbnailURL
  = lens _ytvThumbnailURL
      (\ s a -> s{_ytvThumbnailURL = a})

-- | YouTube API resource ID.
ytvId :: Lens' YouTubeVideo (Maybe Text)
ytvId = lens _ytvId (\ s a -> s{_ytvId = a})

-- | Title of the YouTube video. Read-only.
ytvTitle :: Lens' YouTubeVideo (Maybe Text)
ytvTitle = lens _ytvTitle (\ s a -> s{_ytvTitle = a})

-- | URL that can be used to view the YouTube video. Read-only.
ytvAlternateLink :: Lens' YouTubeVideo (Maybe Text)
ytvAlternateLink
  = lens _ytvAlternateLink
      (\ s a -> s{_ytvAlternateLink = a})

instance FromJSON YouTubeVideo where
        parseJSON
          = withObject "YouTubeVideo"
              (\ o ->
                 YouTubeVideo' <$>
                   (o .:? "thumbnailUrl") <*> (o .:? "id") <*>
                     (o .:? "title")
                     <*> (o .:? "alternateLink"))

instance ToJSON YouTubeVideo where
        toJSON YouTubeVideo'{..}
          = object
              (catMaybes
                 [("thumbnailUrl" .=) <$> _ytvThumbnailURL,
                  ("id" .=) <$> _ytvId, ("title" .=) <$> _ytvTitle,
                  ("alternateLink" .=) <$> _ytvAlternateLink])

-- | Teacher of a course.
--
-- /See:/ 'teacher' smart constructor.
data Teacher =
  Teacher'
    { _teaCourseId :: !(Maybe Text)
    , _teaProFile :: !(Maybe UserProFile)
    , _teaUserId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Teacher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'teaCourseId'
--
-- * 'teaProFile'
--
-- * 'teaUserId'
teacher
    :: Teacher
teacher =
  Teacher' {_teaCourseId = Nothing, _teaProFile = Nothing, _teaUserId = Nothing}


-- | Identifier of the course. Read-only.
teaCourseId :: Lens' Teacher (Maybe Text)
teaCourseId
  = lens _teaCourseId (\ s a -> s{_teaCourseId = a})

-- | Global user information for the teacher. Read-only.
teaProFile :: Lens' Teacher (Maybe UserProFile)
teaProFile
  = lens _teaProFile (\ s a -> s{_teaProFile = a})

-- | Identifier of the user. When specified as a parameter of a request, this
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user
teaUserId :: Lens' Teacher (Maybe Text)
teaUserId
  = lens _teaUserId (\ s a -> s{_teaUserId = a})

instance FromJSON Teacher where
        parseJSON
          = withObject "Teacher"
              (\ o ->
                 Teacher' <$>
                   (o .:? "courseId") <*> (o .:? "profile") <*>
                     (o .:? "userId"))

instance ToJSON Teacher where
        toJSON Teacher'{..}
          = object
              (catMaybes
                 [("courseId" .=) <$> _teaCourseId,
                  ("profile" .=) <$> _teaProFile,
                  ("userId" .=) <$> _teaUserId])

-- | A set of materials that appears on the \"About\" page of the course.
-- These materials might include a syllabus, schedule, or other background
-- information relating to the course as a whole.
--
-- /See:/ 'courseMaterialSet' smart constructor.
data CourseMaterialSet =
  CourseMaterialSet'
    { _cmsMaterials :: !(Maybe [CourseMaterial])
    , _cmsTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseMaterialSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmsMaterials'
--
-- * 'cmsTitle'
courseMaterialSet
    :: CourseMaterialSet
courseMaterialSet =
  CourseMaterialSet' {_cmsMaterials = Nothing, _cmsTitle = Nothing}


-- | Materials attached to this set.
cmsMaterials :: Lens' CourseMaterialSet [CourseMaterial]
cmsMaterials
  = lens _cmsMaterials (\ s a -> s{_cmsMaterials = a})
      . _Default
      . _Coerce

-- | Title for this set.
cmsTitle :: Lens' CourseMaterialSet (Maybe Text)
cmsTitle = lens _cmsTitle (\ s a -> s{_cmsTitle = a})

instance FromJSON CourseMaterialSet where
        parseJSON
          = withObject "CourseMaterialSet"
              (\ o ->
                 CourseMaterialSet' <$>
                   (o .:? "materials" .!= mempty) <*> (o .:? "title"))

instance ToJSON CourseMaterialSet where
        toJSON CourseMaterialSet'{..}
          = object
              (catMaybes
                 [("materials" .=) <$> _cmsMaterials,
                  ("title" .=) <$> _cmsTitle])

-- | Details of the user\'s name.
--
-- /See:/ 'name' smart constructor.
data Name =
  Name'
    { _nGivenName :: !(Maybe Text)
    , _nFullName :: !(Maybe Text)
    , _nFamilyName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Name' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nGivenName'
--
-- * 'nFullName'
--
-- * 'nFamilyName'
name
    :: Name
name =
  Name' {_nGivenName = Nothing, _nFullName = Nothing, _nFamilyName = Nothing}


-- | The user\'s first name. Read-only.
nGivenName :: Lens' Name (Maybe Text)
nGivenName
  = lens _nGivenName (\ s a -> s{_nGivenName = a})

-- | The user\'s full name formed by concatenating the first and last name
-- values. Read-only.
nFullName :: Lens' Name (Maybe Text)
nFullName
  = lens _nFullName (\ s a -> s{_nFullName = a})

-- | The user\'s last name. Read-only.
nFamilyName :: Lens' Name (Maybe Text)
nFamilyName
  = lens _nFamilyName (\ s a -> s{_nFamilyName = a})

instance FromJSON Name where
        parseJSON
          = withObject "Name"
              (\ o ->
                 Name' <$>
                   (o .:? "givenName") <*> (o .:? "fullName") <*>
                     (o .:? "familyName"))

instance ToJSON Name where
        toJSON Name'{..}
          = object
              (catMaybes
                 [("givenName" .=) <$> _nGivenName,
                  ("fullName" .=) <$> _nFullName,
                  ("familyName" .=) <$> _nFamilyName])

-- | Response when listing courses.
--
-- /See:/ 'listCoursesResponse' smart constructor.
data ListCoursesResponse =
  ListCoursesResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrCourses :: !(Maybe [Course])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCoursesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrCourses'
listCoursesResponse
    :: ListCoursesResponse
listCoursesResponse =
  ListCoursesResponse' {_lcrNextPageToken = Nothing, _lcrCourses = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lcrNextPageToken :: Lens' ListCoursesResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | Courses that match the list request.
lcrCourses :: Lens' ListCoursesResponse [Course]
lcrCourses
  = lens _lcrCourses (\ s a -> s{_lcrCourses = a}) .
      _Default
      . _Coerce

instance FromJSON ListCoursesResponse where
        parseJSON
          = withObject "ListCoursesResponse"
              (\ o ->
                 ListCoursesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "courses" .!= mempty))

instance ToJSON ListCoursesResponse where
        toJSON ListCoursesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("courses" .=) <$> _lcrCourses])

-- | Request to turn in a student submission.
--
-- /See:/ 'turnInStudentSubmissionRequest' smart constructor.
data TurnInStudentSubmissionRequest =
  TurnInStudentSubmissionRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TurnInStudentSubmissionRequest' with the minimum fields required to make a request.
--
turnInStudentSubmissionRequest
    :: TurnInStudentSubmissionRequest
turnInStudentSubmissionRequest = TurnInStudentSubmissionRequest'


instance FromJSON TurnInStudentSubmissionRequest
         where
        parseJSON
          = withObject "TurnInStudentSubmissionRequest"
              (\ o -> pure TurnInStudentSubmissionRequest')

instance ToJSON TurnInStudentSubmissionRequest where
        toJSON = const emptyObject

-- | Global information for a user.
--
-- /See:/ 'userProFile' smart constructor.
data UserProFile =
  UserProFile'
    { _upfPhotoURL :: !(Maybe Text)
    , _upfVerifiedTeacher :: !(Maybe Bool)
    , _upfName :: !(Maybe Name)
    , _upfEmailAddress :: !(Maybe Text)
    , _upfId :: !(Maybe Text)
    , _upfPermissions :: !(Maybe [GlobalPermission])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfPhotoURL'
--
-- * 'upfVerifiedTeacher'
--
-- * 'upfName'
--
-- * 'upfEmailAddress'
--
-- * 'upfId'
--
-- * 'upfPermissions'
userProFile
    :: UserProFile
userProFile =
  UserProFile'
    { _upfPhotoURL = Nothing
    , _upfVerifiedTeacher = Nothing
    , _upfName = Nothing
    , _upfEmailAddress = Nothing
    , _upfId = Nothing
    , _upfPermissions = Nothing
    }


-- | URL of user\'s profile photo. Read-only.
upfPhotoURL :: Lens' UserProFile (Maybe Text)
upfPhotoURL
  = lens _upfPhotoURL (\ s a -> s{_upfPhotoURL = a})

-- | Represents whether a G Suite for Education user\'s domain administrator
-- has explicitly verified them as being a teacher. If the user is not a
-- member of a G Suite for Education domain, than this field is always
-- false. Read-only
upfVerifiedTeacher :: Lens' UserProFile (Maybe Bool)
upfVerifiedTeacher
  = lens _upfVerifiedTeacher
      (\ s a -> s{_upfVerifiedTeacher = a})

-- | Name of the user. Read-only.
upfName :: Lens' UserProFile (Maybe Name)
upfName = lens _upfName (\ s a -> s{_upfName = a})

-- | Email address of the user. Read-only.
upfEmailAddress :: Lens' UserProFile (Maybe Text)
upfEmailAddress
  = lens _upfEmailAddress
      (\ s a -> s{_upfEmailAddress = a})

-- | Identifier of the user. Read-only.
upfId :: Lens' UserProFile (Maybe Text)
upfId = lens _upfId (\ s a -> s{_upfId = a})

-- | Global permissions of the user. Read-only.
upfPermissions :: Lens' UserProFile [GlobalPermission]
upfPermissions
  = lens _upfPermissions
      (\ s a -> s{_upfPermissions = a})
      . _Default
      . _Coerce

instance FromJSON UserProFile where
        parseJSON
          = withObject "UserProFile"
              (\ o ->
                 UserProFile' <$>
                   (o .:? "photoUrl") <*> (o .:? "verifiedTeacher") <*>
                     (o .:? "name")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "id")
                     <*> (o .:? "permissions" .!= mempty))

instance ToJSON UserProFile where
        toJSON UserProFile'{..}
          = object
              (catMaybes
                 [("photoUrl" .=) <$> _upfPhotoURL,
                  ("verifiedTeacher" .=) <$> _upfVerifiedTeacher,
                  ("name" .=) <$> _upfName,
                  ("emailAddress" .=) <$> _upfEmailAddress,
                  ("id" .=) <$> _upfId,
                  ("permissions" .=) <$> _upfPermissions])

-- | Representation of a Google Drive folder.
--
-- /See:/ 'driveFolder' smart constructor.
data DriveFolder =
  DriveFolder'
    { _dId :: !(Maybe Text)
    , _dTitle :: !(Maybe Text)
    , _dAlternateLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveFolder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId'
--
-- * 'dTitle'
--
-- * 'dAlternateLink'
driveFolder
    :: DriveFolder
driveFolder =
  DriveFolder' {_dId = Nothing, _dTitle = Nothing, _dAlternateLink = Nothing}


-- | Drive API resource ID.
dId :: Lens' DriveFolder (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | Title of the Drive folder. Read-only.
dTitle :: Lens' DriveFolder (Maybe Text)
dTitle = lens _dTitle (\ s a -> s{_dTitle = a})

-- | URL that can be used to access the Drive folder. Read-only.
dAlternateLink :: Lens' DriveFolder (Maybe Text)
dAlternateLink
  = lens _dAlternateLink
      (\ s a -> s{_dAlternateLink = a})

instance FromJSON DriveFolder where
        parseJSON
          = withObject "DriveFolder"
              (\ o ->
                 DriveFolder' <$>
                   (o .:? "id") <*> (o .:? "title") <*>
                     (o .:? "alternateLink"))

instance ToJSON DriveFolder where
        toJSON DriveFolder'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _dId, ("title" .=) <$> _dTitle,
                  ("alternateLink" .=) <$> _dAlternateLink])

-- | The history of the submission. This currently includes state and grade
-- histories.
--
-- /See:/ 'submissionHistory' smart constructor.
data SubmissionHistory =
  SubmissionHistory'
    { _shGradeHistory :: !(Maybe GradeHistory)
    , _shStateHistory :: !(Maybe StateHistory)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubmissionHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shGradeHistory'
--
-- * 'shStateHistory'
submissionHistory
    :: SubmissionHistory
submissionHistory =
  SubmissionHistory' {_shGradeHistory = Nothing, _shStateHistory = Nothing}


-- | The grade history information of the submission, if present.
shGradeHistory :: Lens' SubmissionHistory (Maybe GradeHistory)
shGradeHistory
  = lens _shGradeHistory
      (\ s a -> s{_shGradeHistory = a})

-- | The state history information of the submission, if present.
shStateHistory :: Lens' SubmissionHistory (Maybe StateHistory)
shStateHistory
  = lens _shStateHistory
      (\ s a -> s{_shStateHistory = a})

instance FromJSON SubmissionHistory where
        parseJSON
          = withObject "SubmissionHistory"
              (\ o ->
                 SubmissionHistory' <$>
                   (o .:? "gradeHistory") <*> (o .:? "stateHistory"))

instance ToJSON SubmissionHistory where
        toJSON SubmissionHistory'{..}
          = object
              (catMaybes
                 [("gradeHistory" .=) <$> _shGradeHistory,
                  ("stateHistory" .=) <$> _shStateHistory])

-- | The history of each state this submission has been in.
--
-- /See:/ 'stateHistory' smart constructor.
data StateHistory =
  StateHistory'
    { _shState :: !(Maybe StateHistoryState)
    , _shActorUserId :: !(Maybe Text)
    , _shStateTimestamp :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StateHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shState'
--
-- * 'shActorUserId'
--
-- * 'shStateTimestamp'
stateHistory
    :: StateHistory
stateHistory =
  StateHistory'
    {_shState = Nothing, _shActorUserId = Nothing, _shStateTimestamp = Nothing}


-- | The workflow pipeline stage.
shState :: Lens' StateHistory (Maybe StateHistoryState)
shState = lens _shState (\ s a -> s{_shState = a})

-- | The teacher or student who made the change.
shActorUserId :: Lens' StateHistory (Maybe Text)
shActorUserId
  = lens _shActorUserId
      (\ s a -> s{_shActorUserId = a})

-- | When the submission entered this state.
shStateTimestamp :: Lens' StateHistory (Maybe UTCTime)
shStateTimestamp
  = lens _shStateTimestamp
      (\ s a -> s{_shStateTimestamp = a})
      . mapping _DateTime

instance FromJSON StateHistory where
        parseJSON
          = withObject "StateHistory"
              (\ o ->
                 StateHistory' <$>
                   (o .:? "state") <*> (o .:? "actorUserId") <*>
                     (o .:? "stateTimestamp"))

instance ToJSON StateHistory where
        toJSON StateHistory'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _shState,
                  ("actorUserId" .=) <$> _shActorUserId,
                  ("stateTimestamp" .=) <$> _shStateTimestamp])

-- | Additional details for multiple-choice questions.
--
-- /See:/ 'multipleChoiceQuestion' smart constructor.
newtype MultipleChoiceQuestion =
  MultipleChoiceQuestion'
    { _mcqChoices :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MultipleChoiceQuestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcqChoices'
multipleChoiceQuestion
    :: MultipleChoiceQuestion
multipleChoiceQuestion = MultipleChoiceQuestion' {_mcqChoices = Nothing}


-- | Possible choices.
mcqChoices :: Lens' MultipleChoiceQuestion [Text]
mcqChoices
  = lens _mcqChoices (\ s a -> s{_mcqChoices = a}) .
      _Default
      . _Coerce

instance FromJSON MultipleChoiceQuestion where
        parseJSON
          = withObject "MultipleChoiceQuestion"
              (\ o ->
                 MultipleChoiceQuestion' <$>
                   (o .:? "choices" .!= mempty))

instance ToJSON MultipleChoiceQuestion where
        toJSON MultipleChoiceQuestion'{..}
          = object (catMaybes [("choices" .=) <$> _mcqChoices])

-- | A Course in Classroom.
--
-- /See:/ 'course' smart constructor.
data Course =
  Course'
    { _couCreationTime :: !(Maybe DateTime')
    , _couRoom :: !(Maybe Text)
    , _couCourseMaterialSets :: !(Maybe [CourseMaterialSet])
    , _couCalendarId :: !(Maybe Text)
    , _couTeacherGroupEmail :: !(Maybe Text)
    , _couTeacherFolder :: !(Maybe DriveFolder)
    , _couCourseState :: !(Maybe CourseCourseState)
    , _couGuardiansEnabled :: !(Maybe Bool)
    , _couEnrollmentCode :: !(Maybe Text)
    , _couUpdateTime :: !(Maybe DateTime')
    , _couOwnerId :: !(Maybe Text)
    , _couName :: !(Maybe Text)
    , _couId :: !(Maybe Text)
    , _couAlternateLink :: !(Maybe Text)
    , _couCourseGroupEmail :: !(Maybe Text)
    , _couDescription :: !(Maybe Text)
    , _couDescriptionHeading :: !(Maybe Text)
    , _couSection :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Course' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couCreationTime'
--
-- * 'couRoom'
--
-- * 'couCourseMaterialSets'
--
-- * 'couCalendarId'
--
-- * 'couTeacherGroupEmail'
--
-- * 'couTeacherFolder'
--
-- * 'couCourseState'
--
-- * 'couGuardiansEnabled'
--
-- * 'couEnrollmentCode'
--
-- * 'couUpdateTime'
--
-- * 'couOwnerId'
--
-- * 'couName'
--
-- * 'couId'
--
-- * 'couAlternateLink'
--
-- * 'couCourseGroupEmail'
--
-- * 'couDescription'
--
-- * 'couDescriptionHeading'
--
-- * 'couSection'
course
    :: Course
course =
  Course'
    { _couCreationTime = Nothing
    , _couRoom = Nothing
    , _couCourseMaterialSets = Nothing
    , _couCalendarId = Nothing
    , _couTeacherGroupEmail = Nothing
    , _couTeacherFolder = Nothing
    , _couCourseState = Nothing
    , _couGuardiansEnabled = Nothing
    , _couEnrollmentCode = Nothing
    , _couUpdateTime = Nothing
    , _couOwnerId = Nothing
    , _couName = Nothing
    , _couId = Nothing
    , _couAlternateLink = Nothing
    , _couCourseGroupEmail = Nothing
    , _couDescription = Nothing
    , _couDescriptionHeading = Nothing
    , _couSection = Nothing
    }


-- | Creation time of the course. Specifying this field in a course update
-- mask results in an error. Read-only.
couCreationTime :: Lens' Course (Maybe UTCTime)
couCreationTime
  = lens _couCreationTime
      (\ s a -> s{_couCreationTime = a})
      . mapping _DateTime

-- | Optional room location. For example, \"301\". If set, this field must be
-- a valid UTF-8 string and no longer than 650 characters.
couRoom :: Lens' Course (Maybe Text)
couRoom = lens _couRoom (\ s a -> s{_couRoom = a})

-- | Sets of materials that appear on the \"about\" page of this course.
-- Read-only.
couCourseMaterialSets :: Lens' Course [CourseMaterialSet]
couCourseMaterialSets
  = lens _couCourseMaterialSets
      (\ s a -> s{_couCourseMaterialSets = a})
      . _Default
      . _Coerce

-- | The Calendar ID for a calendar that all course members can see, to which
-- Classroom adds events for course work and announcements in the course.
-- Read-only.
couCalendarId :: Lens' Course (Maybe Text)
couCalendarId
  = lens _couCalendarId
      (\ s a -> s{_couCalendarId = a})

-- | The email address of a Google group containing all teachers of the
-- course. This group does not accept email and can only be used for
-- permissions. Read-only.
couTeacherGroupEmail :: Lens' Course (Maybe Text)
couTeacherGroupEmail
  = lens _couTeacherGroupEmail
      (\ s a -> s{_couTeacherGroupEmail = a})

-- | Information about a Drive Folder that is shared with all teachers of the
-- course. This field will only be set for teachers of the course and
-- domain administrators. Read-only.
couTeacherFolder :: Lens' Course (Maybe DriveFolder)
couTeacherFolder
  = lens _couTeacherFolder
      (\ s a -> s{_couTeacherFolder = a})

-- | State of the course. If unspecified, the default state is
-- \`PROVISIONED\`.
couCourseState :: Lens' Course (Maybe CourseCourseState)
couCourseState
  = lens _couCourseState
      (\ s a -> s{_couCourseState = a})

-- | Whether or not guardian notifications are enabled for this course.
-- Read-only.
couGuardiansEnabled :: Lens' Course (Maybe Bool)
couGuardiansEnabled
  = lens _couGuardiansEnabled
      (\ s a -> s{_couGuardiansEnabled = a})

-- | Enrollment code to use when joining this course. Specifying this field
-- in a course update mask results in an error. Read-only.
couEnrollmentCode :: Lens' Course (Maybe Text)
couEnrollmentCode
  = lens _couEnrollmentCode
      (\ s a -> s{_couEnrollmentCode = a})

-- | Time of the most recent update to this course. Specifying this field in
-- a course update mask results in an error. Read-only.
couUpdateTime :: Lens' Course (Maybe UTCTime)
couUpdateTime
  = lens _couUpdateTime
      (\ s a -> s{_couUpdateTime = a})
      . mapping _DateTime

-- | The identifier of the owner of a course. When specified as a parameter
-- of a create course request, this field is required. The identifier can
-- be one of the following: * the numeric identifier for the user * the
-- email address of the user * the string literal \`\"me\"\`, indicating
-- the requesting user This must be set in a create request. Admins can
-- also specify this field in a patch course request to transfer ownership.
-- In other contexts, it is read-only.
couOwnerId :: Lens' Course (Maybe Text)
couOwnerId
  = lens _couOwnerId (\ s a -> s{_couOwnerId = a})

-- | Name of the course. For example, \"10th Grade Biology\". The name is
-- required. It must be between 1 and 750 characters and a valid UTF-8
-- string.
couName :: Lens' Course (Maybe Text)
couName = lens _couName (\ s a -> s{_couName = a})

-- | Identifier for this course assigned by Classroom. When creating a
-- course, you may optionally set this identifier to an alias string in the
-- request to create a corresponding alias. The \`id\` is still assigned by
-- Classroom and cannot be updated after the course is created. Specifying
-- this field in a course update mask results in an error.
couId :: Lens' Course (Maybe Text)
couId = lens _couId (\ s a -> s{_couId = a})

-- | Absolute link to this course in the Classroom web UI. Read-only.
couAlternateLink :: Lens' Course (Maybe Text)
couAlternateLink
  = lens _couAlternateLink
      (\ s a -> s{_couAlternateLink = a})

-- | The email address of a Google group containing all members of the
-- course. This group does not accept email and can only be used for
-- permissions. Read-only.
couCourseGroupEmail :: Lens' Course (Maybe Text)
couCourseGroupEmail
  = lens _couCourseGroupEmail
      (\ s a -> s{_couCourseGroupEmail = a})

-- | Optional description. For example, \"We\'ll be learning about the
-- structure of living creatures from a combination of textbooks, guest
-- lectures, and lab work. Expect to be excited!\" If set, this field must
-- be a valid UTF-8 string and no longer than 30,000 characters.
couDescription :: Lens' Course (Maybe Text)
couDescription
  = lens _couDescription
      (\ s a -> s{_couDescription = a})

-- | Optional heading for the description. For example, \"Welcome to 10th
-- Grade Biology.\" If set, this field must be a valid UTF-8 string and no
-- longer than 3600 characters.
couDescriptionHeading :: Lens' Course (Maybe Text)
couDescriptionHeading
  = lens _couDescriptionHeading
      (\ s a -> s{_couDescriptionHeading = a})

-- | Section of the course. For example, \"Period 2\". If set, this field
-- must be a valid UTF-8 string and no longer than 2800 characters.
couSection :: Lens' Course (Maybe Text)
couSection
  = lens _couSection (\ s a -> s{_couSection = a})

instance FromJSON Course where
        parseJSON
          = withObject "Course"
              (\ o ->
                 Course' <$>
                   (o .:? "creationTime") <*> (o .:? "room") <*>
                     (o .:? "courseMaterialSets" .!= mempty)
                     <*> (o .:? "calendarId")
                     <*> (o .:? "teacherGroupEmail")
                     <*> (o .:? "teacherFolder")
                     <*> (o .:? "courseState")
                     <*> (o .:? "guardiansEnabled")
                     <*> (o .:? "enrollmentCode")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "ownerId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "alternateLink")
                     <*> (o .:? "courseGroupEmail")
                     <*> (o .:? "description")
                     <*> (o .:? "descriptionHeading")
                     <*> (o .:? "section"))

instance ToJSON Course where
        toJSON Course'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _couCreationTime,
                  ("room" .=) <$> _couRoom,
                  ("courseMaterialSets" .=) <$> _couCourseMaterialSets,
                  ("calendarId" .=) <$> _couCalendarId,
                  ("teacherGroupEmail" .=) <$> _couTeacherGroupEmail,
                  ("teacherFolder" .=) <$> _couTeacherFolder,
                  ("courseState" .=) <$> _couCourseState,
                  ("guardiansEnabled" .=) <$> _couGuardiansEnabled,
                  ("enrollmentCode" .=) <$> _couEnrollmentCode,
                  ("updateTime" .=) <$> _couUpdateTime,
                  ("ownerId" .=) <$> _couOwnerId,
                  ("name" .=) <$> _couName, ("id" .=) <$> _couId,
                  ("alternateLink" .=) <$> _couAlternateLink,
                  ("courseGroupEmail" .=) <$> _couCourseGroupEmail,
                  ("description" .=) <$> _couDescription,
                  ("descriptionHeading" .=) <$> _couDescriptionHeading,
                  ("section" .=) <$> _couSection])

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may choose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay' =
  TimeOfDay''
    { _todNanos :: !(Maybe (Textual Int32))
    , _todHours :: !(Maybe (Textual Int32))
    , _todMinutes :: !(Maybe (Textual Int32))
    , _todSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todNanos'
--
-- * 'todHours'
--
-- * 'todMinutes'
--
-- * 'todSeconds'
timeOfDay
    :: TimeOfDay'
timeOfDay =
  TimeOfDay''
    { _todNanos = Nothing
    , _todHours = Nothing
    , _todMinutes = Nothing
    , _todSeconds = Nothing
    }


-- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
todNanos :: Lens' TimeOfDay' (Maybe Int32)
todNanos
  = lens _todNanos (\ s a -> s{_todNanos = a}) .
      mapping _Coerce

-- | Hours of day in 24 hour format. Should be from 0 to 23. An API may
-- choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
todHours :: Lens' TimeOfDay' (Maybe Int32)
todHours
  = lens _todHours (\ s a -> s{_todHours = a}) .
      mapping _Coerce

-- | Minutes of hour of day. Must be from 0 to 59.
todMinutes :: Lens' TimeOfDay' (Maybe Int32)
todMinutes
  = lens _todMinutes (\ s a -> s{_todMinutes = a}) .
      mapping _Coerce

-- | Seconds of minutes of the time. Must normally be from 0 to 59. An API
-- may allow the value 60 if it allows leap-seconds.
todSeconds :: Lens' TimeOfDay' (Maybe Int32)
todSeconds
  = lens _todSeconds (\ s a -> s{_todSeconds = a}) .
      mapping _Coerce

instance FromJSON TimeOfDay' where
        parseJSON
          = withObject "TimeOfDay"
              (\ o ->
                 TimeOfDay'' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*>
                     (o .:? "minutes")
                     <*> (o .:? "seconds"))

instance ToJSON TimeOfDay' where
        toJSON TimeOfDay''{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _todNanos,
                  ("hours" .=) <$> _todHours,
                  ("minutes" .=) <$> _todMinutes,
                  ("seconds" .=) <$> _todSeconds])

-- | Response when listing guardian invitations.
--
-- /See:/ 'listGuardianInvitationsResponse' smart constructor.
data ListGuardianInvitationsResponse =
  ListGuardianInvitationsResponse'
    { _lgirNextPageToken :: !(Maybe Text)
    , _lgirGuardianInvitations :: !(Maybe [GuardianInvitation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListGuardianInvitationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgirNextPageToken'
--
-- * 'lgirGuardianInvitations'
listGuardianInvitationsResponse
    :: ListGuardianInvitationsResponse
listGuardianInvitationsResponse =
  ListGuardianInvitationsResponse'
    {_lgirNextPageToken = Nothing, _lgirGuardianInvitations = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lgirNextPageToken :: Lens' ListGuardianInvitationsResponse (Maybe Text)
lgirNextPageToken
  = lens _lgirNextPageToken
      (\ s a -> s{_lgirNextPageToken = a})

-- | Guardian invitations that matched the list request.
lgirGuardianInvitations :: Lens' ListGuardianInvitationsResponse [GuardianInvitation]
lgirGuardianInvitations
  = lens _lgirGuardianInvitations
      (\ s a -> s{_lgirGuardianInvitations = a})
      . _Default
      . _Coerce

instance FromJSON ListGuardianInvitationsResponse
         where
        parseJSON
          = withObject "ListGuardianInvitationsResponse"
              (\ o ->
                 ListGuardianInvitationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "guardianInvitations" .!= mempty))

instance ToJSON ListGuardianInvitationsResponse where
        toJSON ListGuardianInvitationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lgirNextPageToken,
                  ("guardianInvitations" .=) <$>
                    _lgirGuardianInvitations])

-- | Additional details for assignments.
--
-- /See:/ 'assignment' smart constructor.
newtype Assignment =
  Assignment'
    { _aStudentWorkFolder :: Maybe DriveFolder
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Assignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStudentWorkFolder'
assignment
    :: Assignment
assignment = Assignment' {_aStudentWorkFolder = Nothing}


-- | Drive folder where attachments from student submissions are placed. This
-- is only populated for course teachers and administrators.
aStudentWorkFolder :: Lens' Assignment (Maybe DriveFolder)
aStudentWorkFolder
  = lens _aStudentWorkFolder
      (\ s a -> s{_aStudentWorkFolder = a})

instance FromJSON Assignment where
        parseJSON
          = withObject "Assignment"
              (\ o -> Assignment' <$> (o .:? "studentWorkFolder"))

instance ToJSON Assignment where
        toJSON Assignment'{..}
          = object
              (catMaybes
                 [("studentWorkFolder" .=) <$> _aStudentWorkFolder])

-- | Response when listing students.
--
-- /See:/ 'listStudentsResponse' smart constructor.
data ListStudentsResponse =
  ListStudentsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrStudents :: !(Maybe [Student])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListStudentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrStudents'
listStudentsResponse
    :: ListStudentsResponse
listStudentsResponse =
  ListStudentsResponse' {_lsrNextPageToken = Nothing, _lsrStudents = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lsrNextPageToken :: Lens' ListStudentsResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | Students who match the list request.
lsrStudents :: Lens' ListStudentsResponse [Student]
lsrStudents
  = lens _lsrStudents (\ s a -> s{_lsrStudents = a}) .
      _Default
      . _Coerce

instance FromJSON ListStudentsResponse where
        parseJSON
          = withObject "ListStudentsResponse"
              (\ o ->
                 ListStudentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "students" .!= mempty))

instance ToJSON ListStudentsResponse where
        toJSON ListStudentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("students" .=) <$> _lsrStudents])

-- | Drive file that is used as material for course work.
--
-- /See:/ 'sharedDriveFile' smart constructor.
data SharedDriveFile =
  SharedDriveFile'
    { _sdfDriveFile :: !(Maybe DriveFile)
    , _sdfShareMode :: !(Maybe SharedDriveFileShareMode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SharedDriveFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdfDriveFile'
--
-- * 'sdfShareMode'
sharedDriveFile
    :: SharedDriveFile
sharedDriveFile =
  SharedDriveFile' {_sdfDriveFile = Nothing, _sdfShareMode = Nothing}


-- | Drive file details.
sdfDriveFile :: Lens' SharedDriveFile (Maybe DriveFile)
sdfDriveFile
  = lens _sdfDriveFile (\ s a -> s{_sdfDriveFile = a})

-- | Mechanism by which students access the Drive item.
sdfShareMode :: Lens' SharedDriveFile (Maybe SharedDriveFileShareMode)
sdfShareMode
  = lens _sdfShareMode (\ s a -> s{_sdfShareMode = a})

instance FromJSON SharedDriveFile where
        parseJSON
          = withObject "SharedDriveFile"
              (\ o ->
                 SharedDriveFile' <$>
                   (o .:? "driveFile") <*> (o .:? "shareMode"))

instance ToJSON SharedDriveFile where
        toJSON SharedDriveFile'{..}
          = object
              (catMaybes
                 [("driveFile" .=) <$> _sdfDriveFile,
                  ("shareMode" .=) <$> _sdfShareMode])

-- | Alternative identifier for a course. An alias uniquely identifies a
-- course. It must be unique within one of the following scopes: * domain:
-- A domain-scoped alias is visible to all users within the alias
-- creator\'s domain and can be created only by a domain admin. A
-- domain-scoped alias is often used when a course has an identifier
-- external to Classroom. * project: A project-scoped alias is visible to
-- any request from an application using the Developer Console project ID
-- that created the alias and can be created by any project. A
-- project-scoped alias is often used when an application has alternative
-- identifiers. A random value can also be used to avoid duplicate courses
-- in the event of transmission failures, as retrying a request will return
-- \`ALREADY_EXISTS\` if a previous one has succeeded.
--
-- /See:/ 'courseAlias' smart constructor.
newtype CourseAlias =
  CourseAlias'
    { _caAlias :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAlias'
courseAlias
    :: CourseAlias
courseAlias = CourseAlias' {_caAlias = Nothing}


-- | Alias string. The format of the string indicates the desired alias
-- scoping. * \`d:\` indicates a domain-scoped alias. Example:
-- \`d:math_101\` * \`p:\` indicates a project-scoped alias. Example:
-- \`p:abc123\` This field has a maximum length of 256 characters.
caAlias :: Lens' CourseAlias (Maybe Text)
caAlias = lens _caAlias (\ s a -> s{_caAlias = a})

instance FromJSON CourseAlias where
        parseJSON
          = withObject "CourseAlias"
              (\ o -> CourseAlias' <$> (o .:? "alias"))

instance ToJSON CourseAlias where
        toJSON CourseAlias'{..}
          = object (catMaybes [("alias" .=) <$> _caAlias])

-- | Information about a \`Feed\` with a \`feed_type\` of
-- \`COURSE_ROSTER_CHANGES\`.
--
-- /See:/ 'courseRosterChangesInfo' smart constructor.
newtype CourseRosterChangesInfo =
  CourseRosterChangesInfo'
    { _crciCourseId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CourseRosterChangesInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crciCourseId'
courseRosterChangesInfo
    :: CourseRosterChangesInfo
courseRosterChangesInfo = CourseRosterChangesInfo' {_crciCourseId = Nothing}


-- | The \`course_id\` of the course to subscribe to roster changes for.
crciCourseId :: Lens' CourseRosterChangesInfo (Maybe Text)
crciCourseId
  = lens _crciCourseId (\ s a -> s{_crciCourseId = a})

instance FromJSON CourseRosterChangesInfo where
        parseJSON
          = withObject "CourseRosterChangesInfo"
              (\ o ->
                 CourseRosterChangesInfo' <$> (o .:? "courseId"))

instance ToJSON CourseRosterChangesInfo where
        toJSON CourseRosterChangesInfo'{..}
          = object
              (catMaybes [("courseId" .=) <$> _crciCourseId])

-- | Contains fields to add or remove students from a course work or
-- announcement where the \`assigneeMode\` is set to
-- \`INDIVIDUAL_STUDENTS\`.
--
-- /See:/ 'modifyIndividualStudentsOptions' smart constructor.
data ModifyIndividualStudentsOptions =
  ModifyIndividualStudentsOptions'
    { _misoAddStudentIds :: !(Maybe [Text])
    , _misoRemoveStudentIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModifyIndividualStudentsOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'misoAddStudentIds'
--
-- * 'misoRemoveStudentIds'
modifyIndividualStudentsOptions
    :: ModifyIndividualStudentsOptions
modifyIndividualStudentsOptions =
  ModifyIndividualStudentsOptions'
    {_misoAddStudentIds = Nothing, _misoRemoveStudentIds = Nothing}


-- | IDs of students to be added as having access to this
-- coursework\/announcement.
misoAddStudentIds :: Lens' ModifyIndividualStudentsOptions [Text]
misoAddStudentIds
  = lens _misoAddStudentIds
      (\ s a -> s{_misoAddStudentIds = a})
      . _Default
      . _Coerce

-- | IDs of students to be removed from having access to this
-- coursework\/announcement.
misoRemoveStudentIds :: Lens' ModifyIndividualStudentsOptions [Text]
misoRemoveStudentIds
  = lens _misoRemoveStudentIds
      (\ s a -> s{_misoRemoveStudentIds = a})
      . _Default
      . _Coerce

instance FromJSON ModifyIndividualStudentsOptions
         where
        parseJSON
          = withObject "ModifyIndividualStudentsOptions"
              (\ o ->
                 ModifyIndividualStudentsOptions' <$>
                   (o .:? "addStudentIds" .!= mempty) <*>
                     (o .:? "removeStudentIds" .!= mempty))

instance ToJSON ModifyIndividualStudentsOptions where
        toJSON ModifyIndividualStudentsOptions'{..}
          = object
              (catMaybes
                 [("addStudentIds" .=) <$> _misoAddStudentIds,
                  ("removeStudentIds" .=) <$> _misoRemoveStudentIds])

-- | A reference to a Cloud Pub\/Sub topic. To register for notifications,
-- the owner of the topic must grant
-- \`classroom-notifications\'system.gserviceaccount.com\` the
-- \`projects.topics.publish\` permission.
--
-- /See:/ 'cloudPubsubTopic' smart constructor.
newtype CloudPubsubTopic =
  CloudPubsubTopic'
    { _cptTopicName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CloudPubsubTopic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cptTopicName'
cloudPubsubTopic
    :: CloudPubsubTopic
cloudPubsubTopic = CloudPubsubTopic' {_cptTopicName = Nothing}


-- | The \`name\` field of a Cloud Pub\/Sub
-- [Topic](https:\/\/cloud.google.com\/pubsub\/docs\/reference\/rest\/v1\/projects.topics#Topic).
cptTopicName :: Lens' CloudPubsubTopic (Maybe Text)
cptTopicName
  = lens _cptTopicName (\ s a -> s{_cptTopicName = a})

instance FromJSON CloudPubsubTopic where
        parseJSON
          = withObject "CloudPubsubTopic"
              (\ o -> CloudPubsubTopic' <$> (o .:? "topicName"))

instance ToJSON CloudPubsubTopic where
        toJSON CloudPubsubTopic'{..}
          = object
              (catMaybes [("topicName" .=) <$> _cptTopicName])

-- | Google Forms item.
--
-- /See:/ 'form' smart constructor.
data Form =
  Form'
    { _fThumbnailURL :: !(Maybe Text)
    , _fFormURL :: !(Maybe Text)
    , _fTitle :: !(Maybe Text)
    , _fResponseURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Form' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fThumbnailURL'
--
-- * 'fFormURL'
--
-- * 'fTitle'
--
-- * 'fResponseURL'
form
    :: Form
form =
  Form'
    { _fThumbnailURL = Nothing
    , _fFormURL = Nothing
    , _fTitle = Nothing
    , _fResponseURL = Nothing
    }


-- | URL of a thumbnail image of the Form. Read-only.
fThumbnailURL :: Lens' Form (Maybe Text)
fThumbnailURL
  = lens _fThumbnailURL
      (\ s a -> s{_fThumbnailURL = a})

-- | URL of the form.
fFormURL :: Lens' Form (Maybe Text)
fFormURL = lens _fFormURL (\ s a -> s{_fFormURL = a})

-- | Title of the Form. Read-only.
fTitle :: Lens' Form (Maybe Text)
fTitle = lens _fTitle (\ s a -> s{_fTitle = a})

-- | URL of the form responses document. Only set if respsonses have been
-- recorded and only when the requesting user is an editor of the form.
-- Read-only.
fResponseURL :: Lens' Form (Maybe Text)
fResponseURL
  = lens _fResponseURL (\ s a -> s{_fResponseURL = a})

instance FromJSON Form where
        parseJSON
          = withObject "Form"
              (\ o ->
                 Form' <$>
                   (o .:? "thumbnailUrl") <*> (o .:? "formUrl") <*>
                     (o .:? "title")
                     <*> (o .:? "responseUrl"))

instance ToJSON Form where
        toJSON Form'{..}
          = object
              (catMaybes
                 [("thumbnailUrl" .=) <$> _fThumbnailURL,
                  ("formUrl" .=) <$> _fFormURL,
                  ("title" .=) <$> _fTitle,
                  ("responseUrl" .=) <$> _fResponseURL])

-- | Response when listing teachers.
--
-- /See:/ 'listTeachersResponse' smart constructor.
data ListTeachersResponse =
  ListTeachersResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lTeachers :: !(Maybe [Teacher])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListTeachersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lTeachers'
listTeachersResponse
    :: ListTeachersResponse
listTeachersResponse =
  ListTeachersResponse' {_lNextPageToken = Nothing, _lTeachers = Nothing}


-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lNextPageToken :: Lens' ListTeachersResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | Teachers who match the list request.
lTeachers :: Lens' ListTeachersResponse [Teacher]
lTeachers
  = lens _lTeachers (\ s a -> s{_lTeachers = a}) .
      _Default
      . _Coerce

instance FromJSON ListTeachersResponse where
        parseJSON
          = withObject "ListTeachersResponse"
              (\ o ->
                 ListTeachersResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "teachers" .!= mempty))

instance ToJSON ListTeachersResponse where
        toJSON ListTeachersResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("teachers" .=) <$> _lTeachers])

-- | Response when listing course work material.
--
-- /See:/ 'listCourseWorkMaterialResponse' smart constructor.
data ListCourseWorkMaterialResponse =
  ListCourseWorkMaterialResponse'
    { _lcwmrCourseWorkMaterial :: !(Maybe [CourseWorkMaterial])
    , _lcwmrNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCourseWorkMaterialResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcwmrCourseWorkMaterial'
--
-- * 'lcwmrNextPageToken'
listCourseWorkMaterialResponse
    :: ListCourseWorkMaterialResponse
listCourseWorkMaterialResponse =
  ListCourseWorkMaterialResponse'
    {_lcwmrCourseWorkMaterial = Nothing, _lcwmrNextPageToken = Nothing}


-- | Course work material items that match the request.
lcwmrCourseWorkMaterial :: Lens' ListCourseWorkMaterialResponse [CourseWorkMaterial]
lcwmrCourseWorkMaterial
  = lens _lcwmrCourseWorkMaterial
      (\ s a -> s{_lcwmrCourseWorkMaterial = a})
      . _Default
      . _Coerce

-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
lcwmrNextPageToken :: Lens' ListCourseWorkMaterialResponse (Maybe Text)
lcwmrNextPageToken
  = lens _lcwmrNextPageToken
      (\ s a -> s{_lcwmrNextPageToken = a})

instance FromJSON ListCourseWorkMaterialResponse
         where
        parseJSON
          = withObject "ListCourseWorkMaterialResponse"
              (\ o ->
                 ListCourseWorkMaterialResponse' <$>
                   (o .:? "courseWorkMaterial" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON ListCourseWorkMaterialResponse where
        toJSON ListCourseWorkMaterialResponse'{..}
          = object
              (catMaybes
                 [("courseWorkMaterial" .=) <$>
                    _lcwmrCourseWorkMaterial,
                  ("nextPageToken" .=) <$> _lcwmrNextPageToken])

-- | Student in a course.
--
-- /See:/ 'student' smart constructor.
data Student =
  Student'
    { _sCourseId :: !(Maybe Text)
    , _sProFile :: !(Maybe UserProFile)
    , _sStudentWorkFolder :: !(Maybe DriveFolder)
    , _sUserId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Student' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sCourseId'
--
-- * 'sProFile'
--
-- * 'sStudentWorkFolder'
--
-- * 'sUserId'
student
    :: Student
student =
  Student'
    { _sCourseId = Nothing
    , _sProFile = Nothing
    , _sStudentWorkFolder = Nothing
    , _sUserId = Nothing
    }


-- | Identifier of the course. Read-only.
sCourseId :: Lens' Student (Maybe Text)
sCourseId
  = lens _sCourseId (\ s a -> s{_sCourseId = a})

-- | Global user information for the student. Read-only.
sProFile :: Lens' Student (Maybe UserProFile)
sProFile = lens _sProFile (\ s a -> s{_sProFile = a})

-- | Information about a Drive Folder for this student\'s work in this
-- course. Only visible to the student and domain administrators.
-- Read-only.
sStudentWorkFolder :: Lens' Student (Maybe DriveFolder)
sStudentWorkFolder
  = lens _sStudentWorkFolder
      (\ s a -> s{_sStudentWorkFolder = a})

-- | Identifier of the user. When specified as a parameter of a request, this
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user
sUserId :: Lens' Student (Maybe Text)
sUserId = lens _sUserId (\ s a -> s{_sUserId = a})

instance FromJSON Student where
        parseJSON
          = withObject "Student"
              (\ o ->
                 Student' <$>
                   (o .:? "courseId") <*> (o .:? "profile") <*>
                     (o .:? "studentWorkFolder")
                     <*> (o .:? "userId"))

instance ToJSON Student where
        toJSON Student'{..}
          = object
              (catMaybes
                 [("courseId" .=) <$> _sCourseId,
                  ("profile" .=) <$> _sProFile,
                  ("studentWorkFolder" .=) <$> _sStudentWorkFolder,
                  ("userId" .=) <$> _sUserId])

-- | An instruction to Classroom to send notifications from the \`feed\` to
-- the provided destination.
--
-- /See:/ 'registration' smart constructor.
data Registration =
  Registration'
    { _rRegistrationId :: !(Maybe Text)
    , _rExpiryTime :: !(Maybe DateTime')
    , _rFeed :: !(Maybe Feed)
    , _rCloudPubsubTopic :: !(Maybe CloudPubsubTopic)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Registration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRegistrationId'
--
-- * 'rExpiryTime'
--
-- * 'rFeed'
--
-- * 'rCloudPubsubTopic'
registration
    :: Registration
registration =
  Registration'
    { _rRegistrationId = Nothing
    , _rExpiryTime = Nothing
    , _rFeed = Nothing
    , _rCloudPubsubTopic = Nothing
    }


-- | A server-generated unique identifier for this \`Registration\`.
-- Read-only.
rRegistrationId :: Lens' Registration (Maybe Text)
rRegistrationId
  = lens _rRegistrationId
      (\ s a -> s{_rRegistrationId = a})

-- | The time until which the \`Registration\` is effective. This is a
-- read-only field assigned by the server.
rExpiryTime :: Lens' Registration (Maybe UTCTime)
rExpiryTime
  = lens _rExpiryTime (\ s a -> s{_rExpiryTime = a}) .
      mapping _DateTime

-- | Specification for the class of notifications that Classroom should
-- deliver to the destination.
rFeed :: Lens' Registration (Maybe Feed)
rFeed = lens _rFeed (\ s a -> s{_rFeed = a})

-- | The Cloud Pub\/Sub topic that notifications are to be sent to.
rCloudPubsubTopic :: Lens' Registration (Maybe CloudPubsubTopic)
rCloudPubsubTopic
  = lens _rCloudPubsubTopic
      (\ s a -> s{_rCloudPubsubTopic = a})

instance FromJSON Registration where
        parseJSON
          = withObject "Registration"
              (\ o ->
                 Registration' <$>
                   (o .:? "registrationId") <*> (o .:? "expiryTime") <*>
                     (o .:? "feed")
                     <*> (o .:? "cloudPubsubTopic"))

instance ToJSON Registration where
        toJSON Registration'{..}
          = object
              (catMaybes
                 [("registrationId" .=) <$> _rRegistrationId,
                  ("expiryTime" .=) <$> _rExpiryTime,
                  ("feed" .=) <$> _rFeed,
                  ("cloudPubsubTopic" .=) <$> _rCloudPubsubTopic])
