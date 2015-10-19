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
-- Module      : Network.Google.Resource.FusionTables.Task.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.delete@.
module Network.Google.Resource.FusionTables.Task.Delete
    (
    -- * REST Resource
      TaskDeleteResource

    -- * Creating a Request
    , taskDelete'
    , TaskDelete'

    -- * Request Lenses
    , tTaskId
    , tTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.task.delete@ method which the
-- 'TaskDelete'' request conforms to.
type TaskDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           Capture "taskId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a specific task by its ID, unless that task has already started
-- running.
--
-- /See:/ 'taskDelete'' smart constructor.
data TaskDelete' = TaskDelete'
    { _tTaskId  :: !Text
    , _tTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTaskId'
--
-- * 'tTableId'
taskDelete'
    :: Text -- ^ 'tTaskId'
    -> Text -- ^ 'tTableId'
    -> TaskDelete'
taskDelete' pTTaskId_ pTTableId_ =
    TaskDelete'
    { _tTaskId = pTTaskId_
    , _tTableId = pTTableId_
    }

-- | The identifier of the task to delete.
tTaskId :: Lens' TaskDelete' Text
tTaskId = lens _tTaskId (\ s a -> s{_tTaskId = a})

-- | Table from which the task is being deleted.
tTableId :: Lens' TaskDelete' Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

instance GoogleRequest TaskDelete' where
        type Rs TaskDelete' = ()
        requestClient TaskDelete'{..}
          = go _tTableId _tTaskId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TaskDeleteResource)
                      mempty
