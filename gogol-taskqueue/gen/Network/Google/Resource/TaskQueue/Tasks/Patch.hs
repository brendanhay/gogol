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
-- Module      : Network.Google.Resource.TaskQueue.Tasks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update tasks that are leased out of a TaskQueue. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.tasks.patch@.
module Network.Google.Resource.TaskQueue.Tasks.Patch
    (
    -- * REST Resource
      TasksPatchResource

    -- * Creating a Request
    , tasksPatch
    , TasksPatch

    -- * Request Lenses
    , tpTaskqueue
    , tpProject
    , tpPayload
    , tpTask
    , tpNewLeaseSeconds
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @taskqueue.tasks.patch@ method which the
-- 'TasksPatch' request conforms to.
type TasksPatchResource =
     "taskqueue" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "taskqueues" :>
               Capture "taskqueue" Text :>
                 "tasks" :>
                   Capture "task" Text :>
                     QueryParam "newLeaseSeconds" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Task :> Patch '[JSON] Task

-- | Update tasks that are leased out of a TaskQueue. This method supports
-- patch semantics.
--
-- /See:/ 'tasksPatch' smart constructor.
data TasksPatch = TasksPatch
    { _tpTaskqueue       :: !Text
    , _tpProject         :: !Text
    , _tpPayload         :: !Task
    , _tpTask            :: !Text
    , _tpNewLeaseSeconds :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpTaskqueue'
--
-- * 'tpProject'
--
-- * 'tpPayload'
--
-- * 'tpTask'
--
-- * 'tpNewLeaseSeconds'
tasksPatch
    :: Text -- ^ 'tpTaskqueue'
    -> Text -- ^ 'tpProject'
    -> Task -- ^ 'tpPayload'
    -> Text -- ^ 'tpTask'
    -> Int32 -- ^ 'tpNewLeaseSeconds'
    -> TasksPatch
tasksPatch pTpTaskqueue_ pTpProject_ pTpPayload_ pTpTask_ pTpNewLeaseSeconds_ =
    TasksPatch
    { _tpTaskqueue = pTpTaskqueue_
    , _tpProject = pTpProject_
    , _tpPayload = pTpPayload_
    , _tpTask = pTpTask_
    , _tpNewLeaseSeconds = _Coerce # pTpNewLeaseSeconds_
    }

tpTaskqueue :: Lens' TasksPatch Text
tpTaskqueue
  = lens _tpTaskqueue (\ s a -> s{_tpTaskqueue = a})

-- | The project under which the queue lies.
tpProject :: Lens' TasksPatch Text
tpProject
  = lens _tpProject (\ s a -> s{_tpProject = a})

-- | Multipart request metadata.
tpPayload :: Lens' TasksPatch Task
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

tpTask :: Lens' TasksPatch Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | The new lease in seconds.
tpNewLeaseSeconds :: Lens' TasksPatch Int32
tpNewLeaseSeconds
  = lens _tpNewLeaseSeconds
      (\ s a -> s{_tpNewLeaseSeconds = a})
      . _Coerce

instance GoogleRequest TasksPatch where
        type Rs TasksPatch = Task
        type Scopes TasksPatch =
             '["https://www.googleapis.com/auth/taskqueue",
               "https://www.googleapis.com/auth/taskqueue.consumer"]
        requestClient TasksPatch{..}
          = go _tpProject _tpTaskqueue _tpTask
              (Just _tpNewLeaseSeconds)
              (Just AltJSON)
              _tpPayload
              taskQueueService
          where go
                  = buildClient (Proxy :: Proxy TasksPatchResource)
                      mempty
