{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsTasks.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsTasks.Types.Product where

import Network.Google.AppsTasks.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'taskLinksItem' smart constructor.
data TaskLinksItem =
  TaskLinksItem'
    { _tliLink :: !(Maybe Text)
    , _tliType :: !(Maybe Text)
    , _tliDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskLinksItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tliLink'
--
-- * 'tliType'
--
-- * 'tliDescription'
taskLinksItem
    :: TaskLinksItem
taskLinksItem =
  TaskLinksItem'
    {_tliLink = Nothing, _tliType = Nothing, _tliDescription = Nothing}


-- | The URL.
tliLink :: Lens' TaskLinksItem (Maybe Text)
tliLink = lens _tliLink (\ s a -> s{_tliLink = a})

-- | Type of the link, e.g. \"email\".
tliType :: Lens' TaskLinksItem (Maybe Text)
tliType = lens _tliType (\ s a -> s{_tliType = a})

-- | The description. In HTML speak: Everything between and .
tliDescription :: Lens' TaskLinksItem (Maybe Text)
tliDescription
  = lens _tliDescription
      (\ s a -> s{_tliDescription = a})

instance FromJSON TaskLinksItem where
        parseJSON
          = withObject "TaskLinksItem"
              (\ o ->
                 TaskLinksItem' <$>
                   (o .:? "link") <*> (o .:? "type") <*>
                     (o .:? "description"))

instance ToJSON TaskLinksItem where
        toJSON TaskLinksItem'{..}
          = object
              (catMaybes
                 [("link" .=) <$> _tliLink, ("type" .=) <$> _tliType,
                  ("description" .=) <$> _tliDescription])

--
-- /See:/ 'tasks' smart constructor.
data Tasks =
  Tasks'
    { _tEtag :: !(Maybe Text)
    , _tNextPageToken :: !(Maybe Text)
    , _tKind :: !(Maybe Text)
    , _tItems :: !(Maybe [Task])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tEtag'
--
-- * 'tNextPageToken'
--
-- * 'tKind'
--
-- * 'tItems'
tasks
    :: Tasks
tasks =
  Tasks'
    { _tEtag = Nothing
    , _tNextPageToken = Nothing
    , _tKind = Nothing
    , _tItems = Nothing
    }


-- | ETag of the resource.
tEtag :: Lens' Tasks (Maybe Text)
tEtag = lens _tEtag (\ s a -> s{_tEtag = a})

-- | Token used to access the next page of this result.
tNextPageToken :: Lens' Tasks (Maybe Text)
tNextPageToken
  = lens _tNextPageToken
      (\ s a -> s{_tNextPageToken = a})

-- | Type of the resource. This is always \"tasks#tasks\".
tKind :: Lens' Tasks (Maybe Text)
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | Collection of tasks.
tItems :: Lens' Tasks [Task]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

instance FromJSON Tasks where
        parseJSON
          = withObject "Tasks"
              (\ o ->
                 Tasks' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON Tasks where
        toJSON Tasks'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tEtag,
                  ("nextPageToken" .=) <$> _tNextPageToken,
                  ("kind" .=) <$> _tKind, ("items" .=) <$> _tItems])

--
-- /See:/ 'taskLists' smart constructor.
data TaskLists =
  TaskLists'
    { _tlEtag :: !(Maybe Text)
    , _tlNextPageToken :: !(Maybe Text)
    , _tlKind :: !(Maybe Text)
    , _tlItems :: !(Maybe [TaskList])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  TaskLists'
    { _tlEtag = Nothing
    , _tlNextPageToken = Nothing
    , _tlKind = Nothing
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
tlKind :: Lens' TaskLists (Maybe Text)
tlKind = lens _tlKind (\ s a -> s{_tlKind = a})

-- | Collection of task lists.
tlItems :: Lens' TaskLists [TaskList]
tlItems
  = lens _tlItems (\ s a -> s{_tlItems = a}) . _Default
      . _Coerce

instance FromJSON TaskLists where
        parseJSON
          = withObject "TaskLists"
              (\ o ->
                 TaskLists' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TaskLists where
        toJSON TaskLists'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tlEtag,
                  ("nextPageToken" .=) <$> _tlNextPageToken,
                  ("kind" .=) <$> _tlKind, ("items" .=) <$> _tlItems])

--
-- /See:/ 'taskList' smart constructor.
data TaskList =
  TaskList'
    { _tasEtag :: !(Maybe Text)
    , _tasKind :: !(Maybe Text)
    , _tasSelfLink :: !(Maybe Text)
    , _tasId :: !(Maybe Text)
    , _tasUpdated :: !(Maybe Text)
    , _tasTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasEtag'
--
-- * 'tasKind'
--
-- * 'tasSelfLink'
--
-- * 'tasId'
--
-- * 'tasUpdated'
--
-- * 'tasTitle'
taskList
    :: TaskList
taskList =
  TaskList'
    { _tasEtag = Nothing
    , _tasKind = Nothing
    , _tasSelfLink = Nothing
    , _tasId = Nothing
    , _tasUpdated = Nothing
    , _tasTitle = Nothing
    }


-- | ETag of the resource.
tasEtag :: Lens' TaskList (Maybe Text)
tasEtag = lens _tasEtag (\ s a -> s{_tasEtag = a})

-- | Type of the resource. This is always \"tasks#taskList\".
tasKind :: Lens' TaskList (Maybe Text)
tasKind = lens _tasKind (\ s a -> s{_tasKind = a})

-- | URL pointing to this task list. Used to retrieve, update, or delete this
-- task list.
tasSelfLink :: Lens' TaskList (Maybe Text)
tasSelfLink
  = lens _tasSelfLink (\ s a -> s{_tasSelfLink = a})

-- | Task list identifier.
tasId :: Lens' TaskList (Maybe Text)
tasId = lens _tasId (\ s a -> s{_tasId = a})

-- | Last modification time of the task list (as a RFC 3339 timestamp).
tasUpdated :: Lens' TaskList (Maybe Text)
tasUpdated
  = lens _tasUpdated (\ s a -> s{_tasUpdated = a})

-- | Title of the task list.
tasTitle :: Lens' TaskList (Maybe Text)
tasTitle = lens _tasTitle (\ s a -> s{_tasTitle = a})

instance FromJSON TaskList where
        parseJSON
          = withObject "TaskList"
              (\ o ->
                 TaskList' <$>
                   (o .:? "etag") <*> (o .:? "kind") <*>
                     (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title"))

instance ToJSON TaskList where
        toJSON TaskList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tasEtag, ("kind" .=) <$> _tasKind,
                  ("selfLink" .=) <$> _tasSelfLink,
                  ("id" .=) <$> _tasId, ("updated" .=) <$> _tasUpdated,
                  ("title" .=) <$> _tasTitle])

--
-- /See:/ 'task' smart constructor.
data Task =
  Task'
    { _ttParent :: !(Maybe Text)
    , _ttStatus :: !(Maybe Text)
    , _ttDue :: !(Maybe Text)
    , _ttEtag :: !(Maybe Text)
    , _ttKind :: !(Maybe Text)
    , _ttSelfLink :: !(Maybe Text)
    , _ttHidden :: !(Maybe Bool)
    , _ttCompleted :: !(Maybe Text)
    , _ttId :: !(Maybe Text)
    , _ttDeleted :: !(Maybe Bool)
    , _ttUpdated :: !(Maybe Text)
    , _ttTitle :: !(Maybe Text)
    , _ttLinks :: !(Maybe [TaskLinksItem])
    , _ttNotes :: !(Maybe Text)
    , _ttPosition :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttParent'
--
-- * 'ttStatus'
--
-- * 'ttDue'
--
-- * 'ttEtag'
--
-- * 'ttKind'
--
-- * 'ttSelfLink'
--
-- * 'ttHidden'
--
-- * 'ttCompleted'
--
-- * 'ttId'
--
-- * 'ttDeleted'
--
-- * 'ttUpdated'
--
-- * 'ttTitle'
--
-- * 'ttLinks'
--
-- * 'ttNotes'
--
-- * 'ttPosition'
task
    :: Task
task =
  Task'
    { _ttParent = Nothing
    , _ttStatus = Nothing
    , _ttDue = Nothing
    , _ttEtag = Nothing
    , _ttKind = Nothing
    , _ttSelfLink = Nothing
    , _ttHidden = Nothing
    , _ttCompleted = Nothing
    , _ttId = Nothing
    , _ttDeleted = Nothing
    , _ttUpdated = Nothing
    , _ttTitle = Nothing
    , _ttLinks = Nothing
    , _ttNotes = Nothing
    , _ttPosition = Nothing
    }


-- | Parent task identifier. This field is omitted if it is a top-level task.
-- This field is read-only. Use the \"move\" method to move the task under
-- a different parent or to the top level.
ttParent :: Lens' Task (Maybe Text)
ttParent = lens _ttParent (\ s a -> s{_ttParent = a})

-- | Status of the task. This is either \"needsAction\" or \"completed\".
ttStatus :: Lens' Task (Maybe Text)
ttStatus = lens _ttStatus (\ s a -> s{_ttStatus = a})

-- | Due date of the task (as a RFC 3339 timestamp). Optional. The due date
-- only records date information; the time portion of the timestamp is
-- discarded when setting the due date. It isn\'t possible to read or write
-- the time that a task is due via the API.
ttDue :: Lens' Task (Maybe Text)
ttDue = lens _ttDue (\ s a -> s{_ttDue = a})

-- | ETag of the resource.
ttEtag :: Lens' Task (Maybe Text)
ttEtag = lens _ttEtag (\ s a -> s{_ttEtag = a})

-- | Type of the resource. This is always \"tasks#task\".
ttKind :: Lens' Task (Maybe Text)
ttKind = lens _ttKind (\ s a -> s{_ttKind = a})

-- | URL pointing to this task. Used to retrieve, update, or delete this
-- task.
ttSelfLink :: Lens' Task (Maybe Text)
ttSelfLink
  = lens _ttSelfLink (\ s a -> s{_ttSelfLink = a})

-- | Flag indicating whether the task is hidden. This is the case if the task
-- had been marked completed when the task list was last cleared. The
-- default is False. This field is read-only.
ttHidden :: Lens' Task (Maybe Bool)
ttHidden = lens _ttHidden (\ s a -> s{_ttHidden = a})

-- | Completion date of the task (as a RFC 3339 timestamp). This field is
-- omitted if the task has not been completed.
ttCompleted :: Lens' Task (Maybe Text)
ttCompleted
  = lens _ttCompleted (\ s a -> s{_ttCompleted = a})

-- | Task identifier.
ttId :: Lens' Task (Maybe Text)
ttId = lens _ttId (\ s a -> s{_ttId = a})

-- | Flag indicating whether the task has been deleted. The default is False.
ttDeleted :: Lens' Task (Maybe Bool)
ttDeleted
  = lens _ttDeleted (\ s a -> s{_ttDeleted = a})

-- | Last modification time of the task (as a RFC 3339 timestamp).
ttUpdated :: Lens' Task (Maybe Text)
ttUpdated
  = lens _ttUpdated (\ s a -> s{_ttUpdated = a})

-- | Title of the task.
ttTitle :: Lens' Task (Maybe Text)
ttTitle = lens _ttTitle (\ s a -> s{_ttTitle = a})

-- | Collection of links. This collection is read-only.
ttLinks :: Lens' Task [TaskLinksItem]
ttLinks
  = lens _ttLinks (\ s a -> s{_ttLinks = a}) . _Default
      . _Coerce

-- | Notes describing the task. Optional.
ttNotes :: Lens' Task (Maybe Text)
ttNotes = lens _ttNotes (\ s a -> s{_ttNotes = a})

-- | String indicating the position of the task among its sibling tasks under
-- the same parent task or at the top level. If this string is greater than
-- another task\'s corresponding position string according to
-- lexicographical ordering, the task is positioned after the other task
-- under the same parent task (or at the top level). This field is
-- read-only. Use the \"move\" method to move the task to another position.
ttPosition :: Lens' Task (Maybe Text)
ttPosition
  = lens _ttPosition (\ s a -> s{_ttPosition = a})

instance FromJSON Task where
        parseJSON
          = withObject "Task"
              (\ o ->
                 Task' <$>
                   (o .:? "parent") <*> (o .:? "status") <*>
                     (o .:? "due")
                     <*> (o .:? "etag")
                     <*> (o .:? "kind")
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
        toJSON Task'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _ttParent,
                  ("status" .=) <$> _ttStatus, ("due" .=) <$> _ttDue,
                  ("etag" .=) <$> _ttEtag, ("kind" .=) <$> _ttKind,
                  ("selfLink" .=) <$> _ttSelfLink,
                  ("hidden" .=) <$> _ttHidden,
                  ("completed" .=) <$> _ttCompleted,
                  ("id" .=) <$> _ttId, ("deleted" .=) <$> _ttDeleted,
                  ("updated" .=) <$> _ttUpdated,
                  ("title" .=) <$> _ttTitle, ("links" .=) <$> _ttLinks,
                  ("notes" .=) <$> _ttNotes,
                  ("position" .=) <$> _ttPosition])
