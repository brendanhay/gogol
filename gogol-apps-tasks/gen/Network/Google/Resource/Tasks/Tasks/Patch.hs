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
-- Module      : Network.Google.Resource.Tasks.Tasks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified task. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.patch@.
module Network.Google.Resource.Tasks.Tasks.Patch
    (
    -- * REST Resource
      TasksPatchResource

    -- * Creating a Request
    , tasksPatch
    , TasksPatch

    -- * Request Lenses
    , tpPayload
    , tpTaskList
    , tpTask
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.patch@ method which the
-- 'TasksPatch' request conforms to.
type TasksPatchResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               Capture "task" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Task :> Patch '[JSON] Task

-- | Updates the specified task. This method supports patch semantics.
--
-- /See:/ 'tasksPatch' smart constructor.
data TasksPatch =
  TasksPatch'
    { _tpPayload  :: !Task
    , _tpTaskList :: !Text
    , _tpTask     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TasksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPayload'
--
-- * 'tpTaskList'
--
-- * 'tpTask'
tasksPatch
    :: Task -- ^ 'tpPayload'
    -> Text -- ^ 'tpTaskList'
    -> Text -- ^ 'tpTask'
    -> TasksPatch
tasksPatch pTpPayload_ pTpTaskList_ pTpTask_ =
  TasksPatch'
    {_tpPayload = pTpPayload_, _tpTaskList = pTpTaskList_, _tpTask = pTpTask_}


-- | Multipart request metadata.
tpPayload :: Lens' TasksPatch Task
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | Task list identifier.
tpTaskList :: Lens' TasksPatch Text
tpTaskList
  = lens _tpTaskList (\ s a -> s{_tpTaskList = a})

-- | Task identifier.
tpTask :: Lens' TasksPatch Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

instance GoogleRequest TasksPatch where
        type Rs TasksPatch = Task
        type Scopes TasksPatch =
             '["https://www.googleapis.com/auth/tasks"]
        requestClient TasksPatch'{..}
          = go _tpTaskList _tpTask (Just AltJSON) _tpPayload
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksPatchResource)
                      mempty
