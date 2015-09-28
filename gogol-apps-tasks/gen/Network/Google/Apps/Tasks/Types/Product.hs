{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Tasks.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Tasks.Types.Product where

import           Network.Google.Apps.Tasks.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'taskLists' smart constructor.
data TaskLists = TaskLists
    { _tlEtag          :: !(Maybe Text)
    , _tlNextPageToken :: !(Maybe Text)
    , _tlKind          :: !Text
    , _tlItems         :: !(Maybe [Maybe TaskList])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlEtag'
--
-- * 'tlNextPageToken'
--
-- * 'tlKind'
--
-- * 'tlItems'
taskLists
    :: TaskLists
taskLists =
    TaskLists
    { _tlEtag = Nothing
    , _tlNextPageToken = Nothing
    , _tlKind = "tasks#taskLists"
    , _tlItems = Nothing
    }

-- | ETag of the resource.
tlEtag :: Lens' TaskLists (Maybe Text)
tlEtag = lens _tlEtag (\ s a -> s{_tlEtag = a})

-- | Token that can be used to request the next page of this result.
tlNextPageToken :: Lens' TaskLists (Maybe Text)
tlNextPageToken
  = lens _tlNextPageToken
      (\ s a -> s{_tlNextPageToken = a})

-- | Type of the resource. This is always \"tasks#taskLists\".
tlKind :: Lens' TaskLists Text
tlKind = lens _tlKind (\ s a -> s{_tlKind = a})

-- | Collection of task lists.
tlItems :: Lens' TaskLists [Maybe TaskList]
tlItems
  = lens _tlItems (\ s a -> s{_tlItems = a}) . _Default
      . _Coerce

instance FromJSON TaskLists where
        parseJSON
          = withObject "TaskLists"
              (\ o ->
                 TaskLists <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "tasks#taskLists")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TaskLists where
        toJSON TaskLists{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tlEtag,
                  ("nextPageToken" .=) <$> _tlNextPageToken,
                  Just ("kind" .= _tlKind), ("items" .=) <$> _tlItems])

--
-- /See:/ 'taskList' smart constructor.
data TaskList = TaskList
    { _tEtag     :: !(Maybe Text)
    , _tKind     :: !Text
    , _tSelfLink :: !(Maybe Text)
    , _tId       :: !(Maybe Text)
    , _tUpdated  :: !(Maybe UTCTime)
    , _tTitle    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tEtag'
--
-- * 'tKind'
--
-- * 'tSelfLink'
--
-- * 'tId'
--
-- * 'tUpdated'
--
-- * 'tTitle'
taskList
    :: TaskList
taskList =
    TaskList
    { _tEtag = Nothing
    , _tKind = "tasks#taskList"
    , _tSelfLink = Nothing
    , _tId = Nothing
    , _tUpdated = Nothing
    , _tTitle = Nothing
    }

-- | ETag of the resource.
tEtag :: Lens' TaskList (Maybe Text)
tEtag = lens _tEtag (\ s a -> s{_tEtag = a})

-- | Type of the resource. This is always \"tasks#taskList\".
tKind :: Lens' TaskList Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | URL pointing to this task list. Used to retrieve, update, or delete this
-- task list.
tSelfLink :: Lens' TaskList (Maybe Text)
tSelfLink
  = lens _tSelfLink (\ s a -> s{_tSelfLink = a})

-- | Task list identifier.
tId :: Lens' TaskList (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

-- | Last modification time of the task list (as a RFC 3339 timestamp).
tUpdated :: Lens' TaskList (Maybe UTCTime)
tUpdated = lens _tUpdated (\ s a -> s{_tUpdated = a})

-- | Title of the task list.
tTitle :: Lens' TaskList (Maybe Text)
tTitle = lens _tTitle (\ s a -> s{_tTitle = a})

instance FromJSON TaskList where
        parseJSON
          = withObject "TaskList"
              (\ o ->
                 TaskList <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "tasks#taskList")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON TaskList where
        toJSON TaskList{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tEtag, Just ("kind" .= _tKind),
                  ("selfLink" .=) <$> _tSelfLink, ("id" .=) <$> _tId,
                  ("updated" .=) <$> _tUpdated,
                  ("title" .=) <$> _tTitle])

--
-- /See:/ 'task' smart constructor.
data Task = Task
    { _tasParent    :: !(Maybe Text)
    , _tasStatus    :: !(Maybe Text)
    , _tasDue       :: !(Maybe UTCTime)
    , _tasEtag      :: !(Maybe Text)
    , _tasKind      :: !Text
    , _tasSelfLink  :: !(Maybe Text)
    , _tasHidden    :: !(Maybe Bool)
    , _tasCompleted :: !(Maybe UTCTime)
    , _tasId        :: !(Maybe Text)
    , _tasDeleted   :: !(Maybe Bool)
    , _tasUpdated   :: !(Maybe UTCTime)
    , _tasTitle     :: !(Maybe Text)
    , _tasLinks     :: !(Maybe [TaskItemLinks])
    , _tasNotes     :: !(Maybe Text)
    , _tasPosition  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasParent'
--
-- * 'tasStatus'
--
-- * 'tasDue'
--
-- * 'tasEtag'
--
-- * 'tasKind'
--
-- * 'tasSelfLink'
--
-- * 'tasHidden'
--
-- * 'tasCompleted'
--
-- * 'tasId'
--
-- * 'tasDeleted'
--
-- * 'tasUpdated'
--
-- * 'tasTitle'
--
-- * 'tasLinks'
--
-- * 'tasNotes'
--
-- * 'tasPosition'
task
    :: Task
task =
    Task
    { _tasParent = Nothing
    , _tasStatus = Nothing
    , _tasDue = Nothing
    , _tasEtag = Nothing
    , _tasKind = "tasks#task"
    , _tasSelfLink = Nothing
    , _tasHidden = Nothing
    , _tasCompleted = Nothing
    , _tasId = Nothing
    , _tasDeleted = Nothing
    , _tasUpdated = Nothing
    , _tasTitle = Nothing
    , _tasLinks = Nothing
    , _tasNotes = Nothing
    , _tasPosition = Nothing
    }

-- | Parent task identifier. This field is omitted if it is a top-level task.
-- This field is read-only. Use the \"move\" method to move the task under
-- a different parent or to the top level.
tasParent :: Lens' Task (Maybe Text)
tasParent
  = lens _tasParent (\ s a -> s{_tasParent = a})

-- | Status of the task. This is either \"needsAction\" or \"completed\".
tasStatus :: Lens' Task (Maybe Text)
tasStatus
  = lens _tasStatus (\ s a -> s{_tasStatus = a})

-- | Due date of the task (as a RFC 3339 timestamp). Optional.
tasDue :: Lens' Task (Maybe UTCTime)
tasDue = lens _tasDue (\ s a -> s{_tasDue = a})

-- | ETag of the resource.
tasEtag :: Lens' Task (Maybe Text)
tasEtag = lens _tasEtag (\ s a -> s{_tasEtag = a})

-- | Type of the resource. This is always \"tasks#task\".
tasKind :: Lens' Task Text
tasKind = lens _tasKind (\ s a -> s{_tasKind = a})

-- | URL pointing to this task. Used to retrieve, update, or delete this
-- task.
tasSelfLink :: Lens' Task (Maybe Text)
tasSelfLink
  = lens _tasSelfLink (\ s a -> s{_tasSelfLink = a})

-- | Flag indicating whether the task is hidden. This is the case if the task
-- had been marked completed when the task list was last cleared. The
-- default is False. This field is read-only.
tasHidden :: Lens' Task (Maybe Bool)
tasHidden
  = lens _tasHidden (\ s a -> s{_tasHidden = a})

-- | Completion date of the task (as a RFC 3339 timestamp). This field is
-- omitted if the task has not been completed.
tasCompleted :: Lens' Task (Maybe UTCTime)
tasCompleted
  = lens _tasCompleted (\ s a -> s{_tasCompleted = a})

-- | Task identifier.
tasId :: Lens' Task (Maybe Text)
tasId = lens _tasId (\ s a -> s{_tasId = a})

-- | Flag indicating whether the task has been deleted. The default if False.
tasDeleted :: Lens' Task (Maybe Bool)
tasDeleted
  = lens _tasDeleted (\ s a -> s{_tasDeleted = a})

-- | Last modification time of the task (as a RFC 3339 timestamp).
tasUpdated :: Lens' Task (Maybe UTCTime)
tasUpdated
  = lens _tasUpdated (\ s a -> s{_tasUpdated = a})

-- | Title of the task.
tasTitle :: Lens' Task (Maybe Text)
tasTitle = lens _tasTitle (\ s a -> s{_tasTitle = a})

-- | Collection of links. This collection is read-only.
tasLinks :: Lens' Task [TaskItemLinks]
tasLinks
  = lens _tasLinks (\ s a -> s{_tasLinks = a}) .
      _Default
      . _Coerce

-- | Notes describing the task. Optional.
tasNotes :: Lens' Task (Maybe Text)
tasNotes = lens _tasNotes (\ s a -> s{_tasNotes = a})

-- | String indicating the position of the task among its sibling tasks under
-- the same parent task or at the top level. If this string is greater than
-- another task\'s corresponding position string according to
-- lexicographical ordering, the task is positioned after the other task
-- under the same parent task (or at the top level). This field is
-- read-only. Use the \"move\" method to move the task to another position.
tasPosition :: Lens' Task (Maybe Text)
tasPosition
  = lens _tasPosition (\ s a -> s{_tasPosition = a})

instance FromJSON Task where
        parseJSON
          = withObject "Task"
              (\ o ->
                 Task <$>
                   (o .:? "parent") <*> (o .:? "status") <*>
                     (o .:? "due")
                     <*> (o .:? "etag")
                     <*> (o .:? "kind" .!= "tasks#task")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "hidden")
                     <*> (o .:? "completed")
                     <*> (o .:? "id")
                     <*> (o .:? "deleted")
                     <*> (o .:? "updated")
                     <*> (o .:? "title")
                     <*> (o .:? "links" .!= mempty)
                     <*> (o .:? "notes")
                     <*> (o .:? "position"))

instance ToJSON Task where
        toJSON Task{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _tasParent,
                  ("status" .=) <$> _tasStatus, ("due" .=) <$> _tasDue,
                  ("etag" .=) <$> _tasEtag, Just ("kind" .= _tasKind),
                  ("selfLink" .=) <$> _tasSelfLink,
                  ("hidden" .=) <$> _tasHidden,
                  ("completed" .=) <$> _tasCompleted,
                  ("id" .=) <$> _tasId, ("deleted" .=) <$> _tasDeleted,
                  ("updated" .=) <$> _tasUpdated,
                  ("title" .=) <$> _tasTitle,
                  ("links" .=) <$> _tasLinks,
                  ("notes" .=) <$> _tasNotes,
                  ("position" .=) <$> _tasPosition])

--
-- /See:/ 'tasks' smart constructor.
data Tasks = Tasks
    { _ttEtag          :: !(Maybe Text)
    , _ttNextPageToken :: !(Maybe Text)
    , _ttKind          :: !Text
    , _ttItems         :: !(Maybe [Maybe Task])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttEtag'
--
-- * 'ttNextPageToken'
--
-- * 'ttKind'
--
-- * 'ttItems'
tasks
    :: Tasks
tasks =
    Tasks
    { _ttEtag = Nothing
    , _ttNextPageToken = Nothing
    , _ttKind = "tasks#tasks"
    , _ttItems = Nothing
    }

-- | ETag of the resource.
ttEtag :: Lens' Tasks (Maybe Text)
ttEtag = lens _ttEtag (\ s a -> s{_ttEtag = a})

-- | Token used to access the next page of this result.
ttNextPageToken :: Lens' Tasks (Maybe Text)
ttNextPageToken
  = lens _ttNextPageToken
      (\ s a -> s{_ttNextPageToken = a})

-- | Type of the resource. This is always \"tasks#tasks\".
ttKind :: Lens' Tasks Text
ttKind = lens _ttKind (\ s a -> s{_ttKind = a})

-- | Collection of tasks.
ttItems :: Lens' Tasks [Maybe Task]
ttItems
  = lens _ttItems (\ s a -> s{_ttItems = a}) . _Default
      . _Coerce

instance FromJSON Tasks where
        parseJSON
          = withObject "Tasks"
              (\ o ->
                 Tasks <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "tasks#tasks")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Tasks where
        toJSON Tasks{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ttEtag,
                  ("nextPageToken" .=) <$> _ttNextPageToken,
                  Just ("kind" .= _ttKind), ("items" .=) <$> _ttItems])

--
-- /See:/ 'taskItemLinks' smart constructor.
data TaskItemLinks = TaskItemLinks
    { _tilLink        :: !(Maybe Text)
    , _tilType        :: !(Maybe Text)
    , _tilDescription :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskItemLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tilLink'
--
-- * 'tilType'
--
-- * 'tilDescription'
taskItemLinks
    :: TaskItemLinks
taskItemLinks =
    TaskItemLinks
    { _tilLink = Nothing
    , _tilType = Nothing
    , _tilDescription = Nothing
    }

-- | The URL.
tilLink :: Lens' TaskItemLinks (Maybe Text)
tilLink = lens _tilLink (\ s a -> s{_tilLink = a})

-- | Type of the link, e.g. \"email\".
tilType :: Lens' TaskItemLinks (Maybe Text)
tilType = lens _tilType (\ s a -> s{_tilType = a})

-- | The description. In HTML speak: Everything between and .
tilDescription :: Lens' TaskItemLinks (Maybe Text)
tilDescription
  = lens _tilDescription
      (\ s a -> s{_tilDescription = a})

instance FromJSON TaskItemLinks where
        parseJSON
          = withObject "TaskItemLinks"
              (\ o ->
                 TaskItemLinks <$>
                   (o .:? "link") <*> (o .:? "type") <*>
                     (o .:? "description"))

instance ToJSON TaskItemLinks where
        toJSON TaskItemLinks{..}
          = object
              (catMaybes
                 [("link" .=) <$> _tilLink, ("type" .=) <$> _tilType,
                  ("description" .=) <$> _tilDescription])
