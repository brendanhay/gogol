{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Apps.Tasks.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Apps.Tasks.Types
    (
    -- * Service URL
      appsTasksURL

    -- * TaskLists
    , TaskLists
    , taskLists
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlItems

    -- * TaskList
    , TaskList
    , taskList
    , tEtag
    , tKind
    , tSelfLink
    , tId
    , tUpdated
    , tTitle

    -- * Alt
    , Alt (..)

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

    -- * Tasks
    , Tasks
    , tasks
    , ttEtag
    , ttNextPageToken
    , ttKind
    , ttItems

    -- * TaskItemLinks
    , TaskItemLinks
    , taskItemLinks
    , tilLink
    , tilType
    , tilDescription
    ) where

import           Network.Google.Apps.Tasks.Types.Product
import           Network.Google.Apps.Tasks.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Tasks API.
appsTasksURL :: BaseUrl
appsTasksURL
  = BaseUrl Https
      "https://www.googleapis.com/tasks/v1/"
      443
