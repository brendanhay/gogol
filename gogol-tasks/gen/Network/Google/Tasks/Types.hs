{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.Tasks.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Tasks.Types
    (
    -- * API Definition
      tasks


    -- * Task
    , Task
    , task
    , tasParent
    , tasStatus
    , tasDue
    , tasEtag
    , tasKind
    , tasSelfLink
    , tasHidden
    , tasCompleted
    , tasId
    , tasDeleted
    , tasUpdated
    , tasTitle
    , tasLinks
    , tasNotes
    , tasPosition

    -- * TaskItemLinks
    , TaskItemLinks
    , taskItemLinks
    , tilLink
    , tilType
    , tilDescription

    -- * TaskList
    , TaskList
    , taskList
    , tEtag
    , tKind
    , tSelfLink
    , tId
    , tUpdated
    , tTitle

    -- * TaskLists
    , TaskLists
    , taskLists
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlItems

    -- * Tasks
    , Tasks
    , tasks
    , ttEtag
    , ttNextPageToken
    , ttKind
    , ttItems
    ) where

import           Network.Google.Prelude
import           Network.Google.Tasks.Types.Product
import           Network.Google.Tasks.Types.Sum

tasks :: a
tasks = error "tasks"
