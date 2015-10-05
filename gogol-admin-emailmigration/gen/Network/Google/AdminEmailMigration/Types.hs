{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdminEmailMigration.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdminEmailMigration.Types
    (
    -- * Service URL
      adminEmailMigrationURL

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

import           Network.Google.AdminEmailMigration.Types.Product
import           Network.Google.AdminEmailMigration.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'email_migration_v2' of the Email Migration API v2.
adminEmailMigrationURL :: BaseUrl
adminEmailMigrationURL
  = BaseUrl Https
      "https://www.googleapis.com/email/v2/users/"
      443
