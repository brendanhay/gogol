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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific task by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTaskGet@.
module Network.Google.Resource.FusionTables.Task.Get
    (
    -- * REST Resource
      TaskGetResource

    -- * Creating a Request
    , taskGet'
    , TaskGet'

    -- * Request Lenses
    , tgTaskId
    , tgTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTaskGet@ method which the
-- 'TaskGet'' request conforms to.
type TaskGetResource =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           Capture "taskId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Retrieves a specific task by its ID.
--
-- /See:/ 'taskGet'' smart constructor.
data TaskGet' = TaskGet'
    { _tgTaskId  :: !Text
    , _tgTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgTaskId'
--
-- * 'tgTableId'
taskGet'
    :: Text -- ^ 'taskId'
    -> Text -- ^ 'tableId'
    -> TaskGet'
taskGet' pTgTaskId_ pTgTableId_ =
    TaskGet'
    { _tgTaskId = pTgTaskId_
    , _tgTableId = pTgTableId_
    }

-- | The identifier of the task to get.
tgTaskId :: Lens' TaskGet' Text
tgTaskId = lens _tgTaskId (\ s a -> s{_tgTaskId = a})

-- | Table to which the task belongs.
tgTableId :: Lens' TaskGet' Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

instance GoogleRequest TaskGet' where
        type Rs TaskGet' = Task
        requestClient TaskGet'{..}
          = go _tgTableId _tgTaskId (Just AltJSON) fusionTables
          where go
                  = buildClient (Proxy :: Proxy TaskGetResource) mempty
