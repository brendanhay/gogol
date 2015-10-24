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
-- Module      : Network.Google.Resource.FusionTables.Task.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of tasks.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.list@.
module Network.Google.Resource.FusionTables.Task.List
    (
    -- * REST Resource
      TaskListResource

    -- * Creating a Request
    , taskList'
    , TaskList'

    -- * Request Lenses
    , tlPageToken
    , tlTableId
    , tlStartIndex
    , tlMaxResults
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.task.list@ method which the
-- 'TaskList'' request conforms to.
type TaskListResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "tasks" :>
               QueryParam "pageToken" Text :>
                 QueryParam "startIndex" (Textual Word32) :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] TaskList

-- | Retrieves a list of tasks.
--
-- /See:/ 'taskList'' smart constructor.
data TaskList' = TaskList'
    { _tlPageToken  :: !(Maybe Text)
    , _tlTableId    :: !Text
    , _tlStartIndex :: !(Maybe (Textual Word32))
    , _tlMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlPageToken'
--
-- * 'tlTableId'
--
-- * 'tlStartIndex'
--
-- * 'tlMaxResults'
taskList'
    :: Text -- ^ 'tlTableId'
    -> TaskList'
taskList' pTlTableId_ =
    TaskList'
    { _tlPageToken = Nothing
    , _tlTableId = pTlTableId_
    , _tlStartIndex = Nothing
    , _tlMaxResults = Nothing
    }

-- | Continuation token specifying which result page to return.
tlPageToken :: Lens' TaskList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Table whose tasks are being listed.
tlTableId :: Lens' TaskList' Text
tlTableId
  = lens _tlTableId (\ s a -> s{_tlTableId = a})

-- | Index of the first result returned in the current page.
tlStartIndex :: Lens' TaskList' (Maybe Word32)
tlStartIndex
  = lens _tlStartIndex (\ s a -> s{_tlStartIndex = a})
      . mapping _Coerce

-- | Maximum number of tasks to return. Default is 5.
tlMaxResults :: Lens' TaskList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest TaskList' where
        type Rs TaskList' = TaskList
        requestClient TaskList'{..}
          = go _tlTableId _tlPageToken _tlStartIndex
              _tlMaxResults
              (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TaskListResource)
                      mempty
