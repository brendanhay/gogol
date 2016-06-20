{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Classroom.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Classroom.Types.Product where

import           Network.Google.Classroom.Types.Sum
import           Network.Google.Prelude

-- | Response when listing course aliases.
--
-- /See:/ 'listCourseAliasesResponse' smart constructor.
data ListCourseAliasesResponse = ListCourseAliasesResponse'
    { _lcarNextPageToken :: !(Maybe Text)
    , _lcarAliases       :: !(Maybe [CourseAlias])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lcarNextPageToken = Nothing
    , _lcarAliases = Nothing
    }

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
data CourseWork = CourseWork'
    { _cwCreationTime               :: !(Maybe Text)
    , _cwState                      :: !(Maybe Text)
    , _cwMaterials                  :: !(Maybe [Material])
    , _cwCourseId                   :: !(Maybe Text)
    , _cwMaxPoints                  :: !(Maybe (Textual Double))
    , _cwWorkType                   :: !(Maybe Text)
    , _cwDueTime                    :: !(Maybe TimeOfDay')
    , _cwAssociatedWithDeveloper    :: !(Maybe Bool)
    , _cwUpdateTime                 :: !(Maybe Text)
    , _cwMultipleChoiceQuestion     :: !(Maybe MultipleChoiceQuestion)
    , _cwId                         :: !(Maybe Text)
    , _cwSubmissionModificationMode :: !(Maybe Text)
    , _cwDueDate                    :: !(Maybe Date)
    , _cwTitle                      :: !(Maybe Text)
    , _cwAlternateLink              :: !(Maybe Text)
    , _cwAssignment                 :: !(Maybe Assignment)
    , _cwDescription                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CourseWork' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwCreationTime'
--
-- * 'cwState'
--
-- * 'cwMaterials'
--
-- * 'cwCourseId'
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
-- * 'cwMultipleChoiceQuestion'
--
-- * 'cwId'
--
-- * 'cwSubmissionModificationMode'
--
-- * 'cwDueDate'
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
    , _cwState = Nothing
    , _cwMaterials = Nothing
    , _cwCourseId = Nothing
    , _cwMaxPoints = Nothing
    , _cwWorkType = Nothing
    , _cwDueTime = Nothing
    , _cwAssociatedWithDeveloper = Nothing
    , _cwUpdateTime = Nothing
    , _cwMultipleChoiceQuestion = Nothing
    , _cwId = Nothing
    , _cwSubmissionModificationMode = Nothing
    , _cwDueDate = Nothing
    , _cwTitle = Nothing
    , _cwAlternateLink = Nothing
    , _cwAssignment = Nothing
    , _cwDescription = Nothing
    }

-- | Timestamp when this course work was created. Read-only.
cwCreationTime :: Lens' CourseWork (Maybe Text)
cwCreationTime
  = lens _cwCreationTime
      (\ s a -> s{_cwCreationTime = a})

-- | Status of this course work.. If unspecified, the default state is
-- \`DRAFT\`.
cwState :: Lens' CourseWork (Maybe Text)
cwState = lens _cwState (\ s a -> s{_cwState = a})

-- | Additional materials.
cwMaterials :: Lens' CourseWork [Material]
cwMaterials
  = lens _cwMaterials (\ s a -> s{_cwMaterials = a}) .
      _Default
      . _Coerce

-- | Identifier of the course. Read-only.
cwCourseId :: Lens' CourseWork (Maybe Text)
cwCourseId
  = lens _cwCourseId (\ s a -> s{_cwCourseId = a})

-- | Maximum grade for this course work. If zero or unspecified, this
-- assignment is considered ungraded. This must be an integer value.
cwMaxPoints :: Lens' CourseWork (Maybe Double)
cwMaxPoints
  = lens _cwMaxPoints (\ s a -> s{_cwMaxPoints = a}) .
      mapping _Coerce

-- | Type of this course work. The type is set when the course work is
-- created and cannot be changed. When creating course work, this must be
-- \`ASSIGNMENT\`.
cwWorkType :: Lens' CourseWork (Maybe Text)
cwWorkType
  = lens _cwWorkType (\ s a -> s{_cwWorkType = a})

-- | Optional time of day, in UTC, that submissions for this this course work
-- are due. This must be specified if \`due_date\` is specified.
cwDueTime :: Lens' CourseWork (Maybe TimeOfDay')
cwDueTime
  = lens _cwDueTime (\ s a -> s{_cwDueTime = a})

-- | Whether this course work item is associated with the Developer Console
-- project making the request. See google.classroom.Work.CreateCourseWork
-- for more details. Read-only.
cwAssociatedWithDeveloper :: Lens' CourseWork (Maybe Bool)
cwAssociatedWithDeveloper
  = lens _cwAssociatedWithDeveloper
      (\ s a -> s{_cwAssociatedWithDeveloper = a})

-- | Timestamp of the most recent change to this course work. Read-only.
cwUpdateTime :: Lens' CourseWork (Maybe Text)
cwUpdateTime
  = lens _cwUpdateTime (\ s a -> s{_cwUpdateTime = a})

-- | Multiple choice question details. This is populated only when
-- \`work_type\` is \`MULTIPLE_CHOICE_QUESTION\`.
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
cwSubmissionModificationMode :: Lens' CourseWork (Maybe Text)
cwSubmissionModificationMode
  = lens _cwSubmissionModificationMode
      (\ s a -> s{_cwSubmissionModificationMode = a})

-- | Optional date, in UTC, that submissions for this this course work are
-- due. This must be specified if \`due_time\` is specified.
cwDueDate :: Lens' CourseWork (Maybe Date)
cwDueDate
  = lens _cwDueDate (\ s a -> s{_cwDueDate = a})

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
-- \`ASSIGNMENT\`.
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
                   (o .:? "creationTime") <*> (o .:? "state") <*>
                     (o .:? "materials" .!= mempty)
                     <*> (o .:? "courseId")
                     <*> (o .:? "maxPoints")
                     <*> (o .:? "workType")
                     <*> (o .:? "dueTime")
                     <*> (o .:? "associatedWithDeveloper")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "multipleChoiceQuestion")
                     <*> (o .:? "id")
                     <*> (o .:? "submissionModificationMode")
                     <*> (o .:? "dueDate")
                     <*> (o .:? "title")
                     <*> (o .:? "alternateLink")
                     <*> (o .:? "assignment")
                     <*> (o .:? "description"))

instance ToJSON CourseWork where
        toJSON CourseWork'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _cwCreationTime,
                  ("state" .=) <$> _cwState,
                  ("materials" .=) <$> _cwMaterials,
                  ("courseId" .=) <$> _cwCourseId,
                  ("maxPoints" .=) <$> _cwMaxPoints,
                  ("workType" .=) <$> _cwWorkType,
                  ("dueTime" .=) <$> _cwDueTime,
                  ("associatedWithDeveloper" .=) <$>
                    _cwAssociatedWithDeveloper,
                  ("updateTime" .=) <$> _cwUpdateTime,
                  ("multipleChoiceQuestion" .=) <$>
                    _cwMultipleChoiceQuestion,
                  ("id" .=) <$> _cwId,
                  ("submissionModificationMode" .=) <$>
                    _cwSubmissionModificationMode,
                  ("dueDate" .=) <$> _cwDueDate,
                  ("title" .=) <$> _cwTitle,
                  ("alternateLink" .=) <$> _cwAlternateLink,
                  ("assignment" .=) <$> _cwAssignment,
                  ("description" .=) <$> _cwDescription])

-- | Representation of a Google Drive file.
--
-- /See:/ 'driveFile' smart constructor.
data DriveFile = DriveFile'
    { _dfThumbnailURL  :: !(Maybe Text)
    , _dfId            :: !(Maybe Text)
    , _dfTitle         :: !(Maybe Text)
    , _dfAlternateLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Request to return a student submission.
--
-- /See:/ 'returnStudentSubmissionRequest' smart constructor.
data ReturnStudentSubmissionRequest =
    ReturnStudentSubmissionRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

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
    deriving (Eq,Show,Data,Typeable,Generic)

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
data ListCourseWorkResponse = ListCourseWorkResponse'
    { _lcwrCourseWork    :: !(Maybe [CourseWork])
    , _lcwrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lcwrCourseWork = Nothing
    , _lcwrNextPageToken = Nothing
    }

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
    deriving (Eq,Show,Data,Typeable,Generic)

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
newtype GlobalPermission = GlobalPermission'
    { _gpPermission :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpPermission'
globalPermission
    :: GlobalPermission
globalPermission =
    GlobalPermission'
    { _gpPermission = Nothing
    }

-- | Permission value.
gpPermission :: Lens' GlobalPermission (Maybe Text)
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

-- | URL item.
--
-- /See:/ 'link' smart constructor.
data Link = Link'
    { _lThumbnailURL :: !(Maybe Text)
    , _lURL          :: !(Maybe Text)
    , _lTitle        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
link =
    Link'
    { _lThumbnailURL = Nothing
    , _lURL = Nothing
    , _lTitle = Nothing
    }

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

-- | Student work for an assignment.
--
-- /See:/ 'assignmentSubmission' smart constructor.
newtype AssignmentSubmission = AssignmentSubmission'
    { _asAttachments :: Maybe [Attachment]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssignmentSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asAttachments'
assignmentSubmission
    :: AssignmentSubmission
assignmentSubmission =
    AssignmentSubmission'
    { _asAttachments = Nothing
    }

-- | Attachments added by the student. Drive files that correspond to
-- materials with a share mode of SUBMISSION_COPY may not exist yet if the
-- student has not accessed the assignment in Classroom. Some attachment
-- metadata is only populated if the requesting user has permission to
-- access it. Identifier and alternate_link fields are available, but
-- others (e.g. title) may not be.
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
newtype ModifyAttachmentsRequest = ModifyAttachmentsRequest'
    { _marAddAttachments :: Maybe [Attachment]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModifyAttachmentsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'marAddAttachments'
modifyAttachmentsRequest
    :: ModifyAttachmentsRequest
modifyAttachmentsRequest =
    ModifyAttachmentsRequest'
    { _marAddAttachments = Nothing
    }

-- | Attachments to add. This may only contain link attachments.
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

-- | Response when listing student submissions.
--
-- /See:/ 'listStudentSubmissionsResponse' smart constructor.
data ListStudentSubmissionsResponse = ListStudentSubmissionsResponse'
    { _lssrNextPageToken      :: !(Maybe Text)
    , _lssrStudentSubmissions :: !(Maybe [StudentSubmission])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lssrNextPageToken = Nothing
    , _lssrStudentSubmissions = Nothing
    }

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

-- | Material attached to course work. When creating attachments, only the
-- Link field may be specified.
--
-- /See:/ 'material' smart constructor.
data Material = Material'
    { _mDriveFile    :: !(Maybe SharedDriveFile)
    , _mLink         :: !(Maybe Link)
    , _mYouTubeVideo :: !(Maybe YouTubeVideo)
    , _mForm         :: !(Maybe Form)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Link material.
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
newtype MultipleChoiceSubmission = MultipleChoiceSubmission'
    { _mcsAnswer :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MultipleChoiceSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsAnswer'
multipleChoiceSubmission
    :: MultipleChoiceSubmission
multipleChoiceSubmission =
    MultipleChoiceSubmission'
    { _mcsAnswer = Nothing
    }

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
data ListInvitationsResponse = ListInvitationsResponse'
    { _lirNextPageToken :: !(Maybe Text)
    , _lirInvitations   :: !(Maybe [Invitation])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _lirNextPageToken = Nothing
    , _lirInvitations = Nothing
    }

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

-- | A material attached to a course as part of a material set.
--
-- /See:/ 'courseMaterial' smart constructor.
data CourseMaterial = CourseMaterial'
    { _cmDriveFile    :: !(Maybe DriveFile)
    , _cmLink         :: !(Maybe Link)
    , _cmYouTubeVideo :: !(Maybe YouTubeVideo)
    , _cmForm         :: !(Maybe Form)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
newtype ShortAnswerSubmission = ShortAnswerSubmission'
    { _sasAnswer :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ShortAnswerSubmission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sasAnswer'
shortAnswerSubmission
    :: ShortAnswerSubmission
shortAnswerSubmission =
    ShortAnswerSubmission'
    { _sasAnswer = Nothing
    }

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
data Invitation = Invitation'
    { _iCourseId :: !(Maybe Text)
    , _iUserId   :: !(Maybe Text)
    , _iRole     :: !(Maybe Text)
    , _iId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _iCourseId = Nothing
    , _iUserId = Nothing
    , _iRole = Nothing
    , _iId = Nothing
    }

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
iRole :: Lens' Invitation (Maybe Text)
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
-- only the Link field may be specified.
--
-- /See:/ 'attachment' smart constructor.
data Attachment = Attachment'
    { _aDriveFile    :: !(Maybe DriveFile)
    , _aLink         :: !(Maybe Link)
    , _aYouTubeVideo :: !(Maybe YouTubeVideo)
    , _aForm         :: !(Maybe Form)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Student submission for course work. StudentSubmission items are
-- generated when a CourseWork item is created. StudentSubmissions that
-- have never been accessed (i.e. with \`state\` = NEW) may not have a
-- creation time or update time.
--
-- /See:/ 'studentSubmission' smart constructor.
data StudentSubmission = StudentSubmission'
    { _ssCreationTime             :: !(Maybe Text)
    , _ssLate                     :: !(Maybe Bool)
    , _ssState                    :: !(Maybe Text)
    , _ssCourseId                 :: !(Maybe Text)
    , _ssMultipleChoiceSubmission :: !(Maybe MultipleChoiceSubmission)
    , _ssAssignmentSubmission     :: !(Maybe AssignmentSubmission)
    , _ssShortAnswerSubmission    :: !(Maybe ShortAnswerSubmission)
    , _ssAssociatedWithDeveloper  :: !(Maybe Bool)
    , _ssUserId                   :: !(Maybe Text)
    , _ssUpdateTime               :: !(Maybe Text)
    , _ssCourseWorkType           :: !(Maybe Text)
    , _ssAssignedGrade            :: !(Maybe (Textual Double))
    , _ssId                       :: !(Maybe Text)
    , _ssDraftGrade               :: !(Maybe (Textual Double))
    , _ssAlternateLink            :: !(Maybe Text)
    , _ssCourseWorkId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    , _ssAssignedGrade = Nothing
    , _ssId = Nothing
    , _ssDraftGrade = Nothing
    , _ssAlternateLink = Nothing
    , _ssCourseWorkId = Nothing
    }

-- | Creation time of this submission.. This may be unset if the student has
-- not accessed this item. Read-only.
ssCreationTime :: Lens' StudentSubmission (Maybe Text)
ssCreationTime
  = lens _ssCreationTime
      (\ s a -> s{_ssCreationTime = a})

-- | Whether this submission is late. Read-only.
ssLate :: Lens' StudentSubmission (Maybe Bool)
ssLate = lens _ssLate (\ s a -> s{_ssLate = a})

-- | State of this submission. Read-only.
ssState :: Lens' StudentSubmission (Maybe Text)
ssState = lens _ssState (\ s a -> s{_ssState = a})

-- | Identifier of the course. Read-only.
ssCourseId :: Lens' StudentSubmission (Maybe Text)
ssCourseId
  = lens _ssCourseId (\ s a -> s{_ssCourseId = a})

-- | Submission content when course_work_type is MUTIPLE_CHOICE_QUESTION.
ssMultipleChoiceSubmission :: Lens' StudentSubmission (Maybe MultipleChoiceSubmission)
ssMultipleChoiceSubmission
  = lens _ssMultipleChoiceSubmission
      (\ s a -> s{_ssMultipleChoiceSubmission = a})

-- | Submission content when course_work_type is ASSIGNMENT .
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
-- project making the request. See google.classroom.Work.CreateCourseWork
-- for more details. Read-only.
ssAssociatedWithDeveloper :: Lens' StudentSubmission (Maybe Bool)
ssAssociatedWithDeveloper
  = lens _ssAssociatedWithDeveloper
      (\ s a -> s{_ssAssociatedWithDeveloper = a})

-- | Identifier for the student that owns this submission. Read-only.
ssUserId :: Lens' StudentSubmission (Maybe Text)
ssUserId = lens _ssUserId (\ s a -> s{_ssUserId = a})

-- | Last update time of this submission. This may be unset if the student
-- has not accessed this item. Read-only.
ssUpdateTime :: Lens' StudentSubmission (Maybe Text)
ssUpdateTime
  = lens _ssUpdateTime (\ s a -> s{_ssUpdateTime = a})

-- | Type of course work this submission is for. Read-only.
ssCourseWorkType :: Lens' StudentSubmission (Maybe Text)
ssCourseWorkType
  = lens _ssCourseWorkType
      (\ s a -> s{_ssCourseWorkType = a})

-- | Optional grade. If unset, no grade was set. This must be an integer
-- value. This may be modified only by course teachers.
ssAssignedGrade :: Lens' StudentSubmission (Maybe Double)
ssAssignedGrade
  = lens _ssAssignedGrade
      (\ s a -> s{_ssAssignedGrade = a})
      . mapping _Coerce

-- | Classroom-assigned Identifier for the student submission. This is unique
-- among submissions for the relevant course work. Read-only.
ssId :: Lens' StudentSubmission (Maybe Text)
ssId = lens _ssId (\ s a -> s{_ssId = a})

-- | Optional pending grade. If unset, no grade was set. This must be an
-- integer value. This is only visible to and modifiable by course
-- teachers.
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
                  ("assignedGrade" .=) <$> _ssAssignedGrade,
                  ("id" .=) <$> _ssId,
                  ("draftGrade" .=) <$> _ssDraftGrade,
                  ("alternateLink" .=) <$> _ssAlternateLink,
                  ("courseWorkId" .=) <$> _ssCourseWorkId])

-- | Represents a whole calendar date, e.g. date of birth. The time of day
-- and time zone are either specified elsewhere or are not significant. The
-- date is relative to the Proleptic Gregorian Calendar. The day may be 0
-- to represent a year and month where the day is not significant, e.g.
-- credit card expiration date. The year may be 0 to represent a month and
-- day independent of year, e.g. anniversary date. Related types are
-- google.type.TimeOfDay and \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date = Date'
    { _dDay   :: !(Maybe (Textual Int32))
    , _dYear  :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
date =
    Date'
    { _dDay = Nothing
    , _dYear = Nothing
    , _dMonth = Nothing
    }

-- | Day of month. Must be from 1 to 31 and valid for the year and month, or
-- 0 if specifying a year\/month where the day is not significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of date. Must be from 1 to 9999, or 0 if specifying a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of year. Must be from 1 to 12.
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
data YouTubeVideo = YouTubeVideo'
    { _ytvThumbnailURL  :: !(Maybe Text)
    , _ytvId            :: !(Maybe Text)
    , _ytvTitle         :: !(Maybe Text)
    , _ytvAlternateLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data Teacher = Teacher'
    { _tCourseId :: !(Maybe Text)
    , _tProFile  :: !(Maybe UserProFile)
    , _tUserId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Teacher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCourseId'
--
-- * 'tProFile'
--
-- * 'tUserId'
teacher
    :: Teacher
teacher =
    Teacher'
    { _tCourseId = Nothing
    , _tProFile = Nothing
    , _tUserId = Nothing
    }

-- | Identifier of the course. Read-only.
tCourseId :: Lens' Teacher (Maybe Text)
tCourseId
  = lens _tCourseId (\ s a -> s{_tCourseId = a})

-- | Global user information for the teacher. Read-only.
tProFile :: Lens' Teacher (Maybe UserProFile)
tProFile = lens _tProFile (\ s a -> s{_tProFile = a})

-- | Identifier of the user. When specified as a parameter of a request, this
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user
tUserId :: Lens' Teacher (Maybe Text)
tUserId = lens _tUserId (\ s a -> s{_tUserId = a})

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
                 [("courseId" .=) <$> _tCourseId,
                  ("profile" .=) <$> _tProFile,
                  ("userId" .=) <$> _tUserId])

-- | A set of materials that appears on the \"About\" page of the course.
-- These materials might include a syllabus, schedule, or other background
-- information relating to the course as a whole.
--
-- /See:/ 'courseMaterialSet' smart constructor.
data CourseMaterialSet = CourseMaterialSet'
    { _cmsMaterials :: !(Maybe [CourseMaterial])
    , _cmsTitle     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    CourseMaterialSet'
    { _cmsMaterials = Nothing
    , _cmsTitle = Nothing
    }

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
data Name = Name'
    { _nGivenName  :: !(Maybe Text)
    , _nFullName   :: !(Maybe Text)
    , _nFamilyName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Name'
    { _nGivenName = Nothing
    , _nFullName = Nothing
    , _nFamilyName = Nothing
    }

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
data ListCoursesResponse = ListCoursesResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrCourses       :: !(Maybe [Course])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListCoursesResponse'
    { _lcrNextPageToken = Nothing
    , _lcrCourses = Nothing
    }

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
    deriving (Eq,Show,Data,Typeable,Generic)

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
data UserProFile = UserProFile'
    { _upfPhotoURL     :: !(Maybe Text)
    , _upfName         :: !(Maybe Name)
    , _upfEmailAddress :: !(Maybe Text)
    , _upfId           :: !(Maybe Text)
    , _upfPermissions  :: !(Maybe [GlobalPermission])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfPhotoURL'
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
    , _upfName = Nothing
    , _upfEmailAddress = Nothing
    , _upfId = Nothing
    , _upfPermissions = Nothing
    }

-- | URL of user\'s profile photo. Read-only.
upfPhotoURL :: Lens' UserProFile (Maybe Text)
upfPhotoURL
  = lens _upfPhotoURL (\ s a -> s{_upfPhotoURL = a})

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
                   (o .:? "photoUrl") <*> (o .:? "name") <*>
                     (o .:? "emailAddress")
                     <*> (o .:? "id")
                     <*> (o .:? "permissions" .!= mempty))

instance ToJSON UserProFile where
        toJSON UserProFile'{..}
          = object
              (catMaybes
                 [("photoUrl" .=) <$> _upfPhotoURL,
                  ("name" .=) <$> _upfName,
                  ("emailAddress" .=) <$> _upfEmailAddress,
                  ("id" .=) <$> _upfId,
                  ("permissions" .=) <$> _upfPermissions])

-- | Representation of a Google Drive folder.
--
-- /See:/ 'driveFolder' smart constructor.
data DriveFolder = DriveFolder'
    { _dId            :: !(Maybe Text)
    , _dTitle         :: !(Maybe Text)
    , _dAlternateLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DriveFolder'
    { _dId = Nothing
    , _dTitle = Nothing
    , _dAlternateLink = Nothing
    }

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

-- | Additional details for multiple-choice questions.
--
-- /See:/ 'multipleChoiceQuestion' smart constructor.
newtype MultipleChoiceQuestion = MultipleChoiceQuestion'
    { _mcqChoices :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MultipleChoiceQuestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcqChoices'
multipleChoiceQuestion
    :: MultipleChoiceQuestion
multipleChoiceQuestion =
    MultipleChoiceQuestion'
    { _mcqChoices = Nothing
    }

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
data Course = Course'
    { _cCreationTime       :: !(Maybe Text)
    , _cRoom               :: !(Maybe Text)
    , _cCourseMaterialSets :: !(Maybe [CourseMaterialSet])
    , _cTeacherGroupEmail  :: !(Maybe Text)
    , _cTeacherFolder      :: !(Maybe DriveFolder)
    , _cCourseState        :: !(Maybe Text)
    , _cEnrollmentCode     :: !(Maybe Text)
    , _cUpdateTime         :: !(Maybe Text)
    , _cOwnerId            :: !(Maybe Text)
    , _cName               :: !(Maybe Text)
    , _cId                 :: !(Maybe Text)
    , _cAlternateLink      :: !(Maybe Text)
    , _cCourseGroupEmail   :: !(Maybe Text)
    , _cDescription        :: !(Maybe Text)
    , _cDescriptionHeading :: !(Maybe Text)
    , _cSection            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Course' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCreationTime'
--
-- * 'cRoom'
--
-- * 'cCourseMaterialSets'
--
-- * 'cTeacherGroupEmail'
--
-- * 'cTeacherFolder'
--
-- * 'cCourseState'
--
-- * 'cEnrollmentCode'
--
-- * 'cUpdateTime'
--
-- * 'cOwnerId'
--
-- * 'cName'
--
-- * 'cId'
--
-- * 'cAlternateLink'
--
-- * 'cCourseGroupEmail'
--
-- * 'cDescription'
--
-- * 'cDescriptionHeading'
--
-- * 'cSection'
course
    :: Course
course =
    Course'
    { _cCreationTime = Nothing
    , _cRoom = Nothing
    , _cCourseMaterialSets = Nothing
    , _cTeacherGroupEmail = Nothing
    , _cTeacherFolder = Nothing
    , _cCourseState = Nothing
    , _cEnrollmentCode = Nothing
    , _cUpdateTime = Nothing
    , _cOwnerId = Nothing
    , _cName = Nothing
    , _cId = Nothing
    , _cAlternateLink = Nothing
    , _cCourseGroupEmail = Nothing
    , _cDescription = Nothing
    , _cDescriptionHeading = Nothing
    , _cSection = Nothing
    }

-- | Creation time of the course. Specifying this field in a course update
-- mask results in an error. Read-only.
cCreationTime :: Lens' Course (Maybe Text)
cCreationTime
  = lens _cCreationTime
      (\ s a -> s{_cCreationTime = a})

-- | Optional room location. For example, \"301\". If set, this field must be
-- a valid UTF-8 string and no longer than 650 characters.
cRoom :: Lens' Course (Maybe Text)
cRoom = lens _cRoom (\ s a -> s{_cRoom = a})

-- | Sets of materials that appear on the \"about\" page of this course.
-- Read-only.
cCourseMaterialSets :: Lens' Course [CourseMaterialSet]
cCourseMaterialSets
  = lens _cCourseMaterialSets
      (\ s a -> s{_cCourseMaterialSets = a})
      . _Default
      . _Coerce

-- | The email address of a Google group containing all teachers of the
-- course. This group does not accept email and can only be used for
-- permissions. Read-only.
cTeacherGroupEmail :: Lens' Course (Maybe Text)
cTeacherGroupEmail
  = lens _cTeacherGroupEmail
      (\ s a -> s{_cTeacherGroupEmail = a})

-- | Information about a Drive Folder that is shared with all teachers of the
-- course. This field will only be set for teachers of the course and
-- domain administrators. Read-only.
cTeacherFolder :: Lens' Course (Maybe DriveFolder)
cTeacherFolder
  = lens _cTeacherFolder
      (\ s a -> s{_cTeacherFolder = a})

-- | State of the course. If unspecified, the default state is
-- \`PROVISIONED\`.
cCourseState :: Lens' Course (Maybe Text)
cCourseState
  = lens _cCourseState (\ s a -> s{_cCourseState = a})

-- | Enrollment code to use when joining this course. Specifying this field
-- in a course update mask results in an error. Read-only.
cEnrollmentCode :: Lens' Course (Maybe Text)
cEnrollmentCode
  = lens _cEnrollmentCode
      (\ s a -> s{_cEnrollmentCode = a})

-- | Time of the most recent update to this course. Specifying this field in
-- a course update mask results in an error. Read-only.
cUpdateTime :: Lens' Course (Maybe Text)
cUpdateTime
  = lens _cUpdateTime (\ s a -> s{_cUpdateTime = a})

-- | The identifier of the owner of a course. When specified as a parameter
-- of a create course request, this field is required. The identifier can
-- be one of the following: * the numeric identifier for the user * the
-- email address of the user * the string literal \`\"me\"\`, indicating
-- the requesting user This must be set in a create request. Specifying
-- this field in a course update mask results in an \`INVALID_ARGUMENT\`
-- error.
cOwnerId :: Lens' Course (Maybe Text)
cOwnerId = lens _cOwnerId (\ s a -> s{_cOwnerId = a})

-- | Name of the course. For example, \"10th Grade Biology\". The name is
-- required. It must be between 1 and 750 characters and a valid UTF-8
-- string.
cName :: Lens' Course (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Identifier for this course assigned by Classroom. When creating a
-- course, you may optionally set this identifier to an alias string in the
-- request to create a corresponding alias. The \`id\` is still assigned by
-- Classroom and cannot be updated after the course is created. Specifying
-- this field in a course update mask results in an error.
cId :: Lens' Course (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Absolute link to this course in the Classroom web UI. Read-only.
cAlternateLink :: Lens' Course (Maybe Text)
cAlternateLink
  = lens _cAlternateLink
      (\ s a -> s{_cAlternateLink = a})

-- | The email address of a Google group containing all members of the
-- course. This group does not accept email and can only be used for
-- permissions. Read-only.
cCourseGroupEmail :: Lens' Course (Maybe Text)
cCourseGroupEmail
  = lens _cCourseGroupEmail
      (\ s a -> s{_cCourseGroupEmail = a})

-- | Optional description. For example, \"We\'ll be learning about the
-- structure of living creatures from a combination of textbooks, guest
-- lectures, and lab work. Expect to be excited!\" If set, this field must
-- be a valid UTF-8 string and no longer than 30,000 characters.
cDescription :: Lens' Course (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

-- | Optional heading for the description. For example, \"Welcome to 10th
-- Grade Biology.\" If set, this field must be a valid UTF-8 string and no
-- longer than 3600 characters.
cDescriptionHeading :: Lens' Course (Maybe Text)
cDescriptionHeading
  = lens _cDescriptionHeading
      (\ s a -> s{_cDescriptionHeading = a})

-- | Section of the course. For example, \"Period 2\". If set, this field
-- must be a valid UTF-8 string and no longer than 2800 characters.
cSection :: Lens' Course (Maybe Text)
cSection = lens _cSection (\ s a -> s{_cSection = a})

instance FromJSON Course where
        parseJSON
          = withObject "Course"
              (\ o ->
                 Course' <$>
                   (o .:? "creationTime") <*> (o .:? "room") <*>
                     (o .:? "courseMaterialSets" .!= mempty)
                     <*> (o .:? "teacherGroupEmail")
                     <*> (o .:? "teacherFolder")
                     <*> (o .:? "courseState")
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
                 [("creationTime" .=) <$> _cCreationTime,
                  ("room" .=) <$> _cRoom,
                  ("courseMaterialSets" .=) <$> _cCourseMaterialSets,
                  ("teacherGroupEmail" .=) <$> _cTeacherGroupEmail,
                  ("teacherFolder" .=) <$> _cTeacherFolder,
                  ("courseState" .=) <$> _cCourseState,
                  ("enrollmentCode" .=) <$> _cEnrollmentCode,
                  ("updateTime" .=) <$> _cUpdateTime,
                  ("ownerId" .=) <$> _cOwnerId, ("name" .=) <$> _cName,
                  ("id" .=) <$> _cId,
                  ("alternateLink" .=) <$> _cAlternateLink,
                  ("courseGroupEmail" .=) <$> _cCourseGroupEmail,
                  ("description" .=) <$> _cDescription,
                  ("descriptionHeading" .=) <$> _cDescriptionHeading,
                  ("section" .=) <$> _cSection])

-- | Represents a time of day. The date and time zone are either not
-- significant or are specified elsewhere. An API may chose to allow leap
-- seconds. Related types are google.type.Date and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'timeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay''
    { _todNanos   :: !(Maybe (Textual Int32))
    , _todHours   :: !(Maybe (Textual Int32))
    , _todMinutes :: !(Maybe (Textual Int32))
    , _todSeconds :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | Additional details for assignments.
--
-- /See:/ 'assignment' smart constructor.
newtype Assignment = Assignment'
    { _aStudentWorkFolder :: Maybe DriveFolder
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Assignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStudentWorkFolder'
assignment
    :: Assignment
assignment =
    Assignment'
    { _aStudentWorkFolder = Nothing
    }

-- | Drive folder where attachments from student submissions are placed. This
-- is only populated for course teachers.
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
data ListStudentsResponse = ListStudentsResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrStudents      :: !(Maybe [Student])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ListStudentsResponse'
    { _lsrNextPageToken = Nothing
    , _lsrStudents = Nothing
    }

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
data SharedDriveFile = SharedDriveFile'
    { _sdfDriveFile :: !(Maybe DriveFile)
    , _sdfShareMode :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    SharedDriveFile'
    { _sdfDriveFile = Nothing
    , _sdfShareMode = Nothing
    }

-- | Drive file details.
sdfDriveFile :: Lens' SharedDriveFile (Maybe DriveFile)
sdfDriveFile
  = lens _sdfDriveFile (\ s a -> s{_sdfDriveFile = a})

-- | Mechanism by which students access the Drive item.
sdfShareMode :: Lens' SharedDriveFile (Maybe Text)
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
newtype CourseAlias = CourseAlias'
    { _caAlias :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CourseAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAlias'
courseAlias
    :: CourseAlias
courseAlias =
    CourseAlias'
    { _caAlias = Nothing
    }

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

-- | Google Forms item.
--
-- /See:/ 'form' smart constructor.
data Form = Form'
    { _fThumbnailURL :: !(Maybe Text)
    , _fFormURL      :: !(Maybe Text)
    , _fTitle        :: !(Maybe Text)
    , _fResponseURL  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ListTeachersResponse = ListTeachersResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTeachers      :: !(Maybe [Teacher])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTeachersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTeachers'
listTeachersResponse
    :: ListTeachersResponse
listTeachersResponse =
    ListTeachersResponse'
    { _ltrNextPageToken = Nothing
    , _ltrTeachers = Nothing
    }

-- | Token identifying the next page of results to return. If empty, no
-- further results are available.
ltrNextPageToken :: Lens' ListTeachersResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | Teachers who match the list request.
ltrTeachers :: Lens' ListTeachersResponse [Teacher]
ltrTeachers
  = lens _ltrTeachers (\ s a -> s{_ltrTeachers = a}) .
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
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("teachers" .=) <$> _ltrTeachers])

-- | Student in a course.
--
-- /See:/ 'student' smart constructor.
data Student = Student'
    { _sCourseId          :: !(Maybe Text)
    , _sProFile           :: !(Maybe UserProFile)
    , _sStudentWorkFolder :: !(Maybe DriveFolder)
    , _sUserId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
