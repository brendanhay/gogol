{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Tasks.TaskLists.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.patch@.
module Network.Google.Resource.Tasks.TaskLists.Patch
    (
    -- * REST Resource
      TaskListsPatchResource

    -- * Creating a Request
    , taskListsPatch
    , TaskListsPatch

    -- * Request Lenses
    , tlpPayload
    , tlpTaskList
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasklists.patch@ method which the
-- 'TaskListsPatch' request conforms to.
type TaskListsPatchResource =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TaskList :> Patch '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ 'taskListsPatch' smart constructor.
data TaskListsPatch = TaskListsPatch
    { _tlpPayload  :: !TaskList
    , _tlpTaskList :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlpPayload'
--
-- * 'tlpTaskList'
taskListsPatch
    :: TaskList -- ^ 'tlpPayload'
    -> Text -- ^ 'tlpTaskList'
    -> TaskListsPatch
taskListsPatch pTlpPayload_ pTlpTaskList_ =
    TaskListsPatch
    { _tlpPayload = pTlpPayload_
    , _tlpTaskList = pTlpTaskList_
    }

-- | Multipart request metadata.
tlpPayload :: Lens' TaskListsPatch TaskList
tlpPayload
  = lens _tlpPayload (\ s a -> s{_tlpPayload = a})

-- | Task list identifier.
tlpTaskList :: Lens' TaskListsPatch Text
tlpTaskList
  = lens _tlpTaskList (\ s a -> s{_tlpTaskList = a})

instance GoogleRequest TaskListsPatch where
        type Rs TaskListsPatch = TaskList
        requestClient TaskListsPatch{..}
          = go _tlpTaskList (Just AltJSON) _tlpPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TaskListsPatchResource)
                      mempty
