{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.EmailMigration.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.EmailMigration.Types
    (
    -- * Service Request
      emailMigrationRequest

    -- * MailItem
    , MailItem
    , mailItem
    , miIsDeleted
    , miIsDraft
    , miIsStarred
    , miKind
    , miIsUnread
    , miLabels
    , miIsInbox
    , miIsTrash
    , miIsSent
    ) where

import           Network.Google.EmailMigration.Types.Product
import           Network.Google.EmailMigration.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'email_migration_v2' of the Email Migration API v2. This contains the host and root path used as a starting point for constructing service requests.
emailMigrationRequest :: RequestBuilder
emailMigrationRequest
  = defaultRequest "https://www.googleapis.com/"
      "email/v2/users/"
