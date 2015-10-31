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
-- Module      : Network.Google.Resource.FusionTables.Task.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific task by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.get@.
module Network.Google.Resource.FusionTables.Task.Get
    (
    -- * REST Resource
      TaskGetResource

    -- * Creating a Request
    , taskGet
    , TaskGet

    -- * Request Lenses
    , tggTaskId
    , tggTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.task.get@ method which the
-- 'TaskGet' request conforms to.
type TaskGetResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "tasks" :>
               Capture "taskId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Retrieves a specific task by its ID.
--
-- /See:/ 'taskGet' smart constructor.
data TaskGet = TaskGet
    { _tggTaskId  :: !Text
    , _tggTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tggTaskId'
--
-- * 'tggTableId'
taskGet
    :: Text -- ^ 'tggTaskId'
    -> Text -- ^ 'tggTableId'
    -> TaskGet
taskGet pTggTaskId_ pTggTableId_ =
    TaskGet
    { _tggTaskId = pTggTaskId_
    , _tggTableId = pTggTableId_
    }

-- | The identifier of the task to get.
tggTaskId :: Lens' TaskGet Text
tggTaskId
  = lens _tggTaskId (\ s a -> s{_tggTaskId = a})

-- | Table to which the task belongs.
tggTableId :: Lens' TaskGet Text
tggTableId
  = lens _tggTableId (\ s a -> s{_tggTableId = a})

instance GoogleRequest TaskGet where
        type Rs TaskGet = Task
        type Scopes TaskGet =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient TaskGet{..}
          = go _tggTableId _tggTaskId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TaskGetResource) mempty
