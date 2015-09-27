{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Admin.EmailMigration
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Email Migration API lets you migrate emails of users to Google backends.
--
-- /See:/ <https://developers.google.com/admin-sdk/email-migration/v2/ Email Migration API v2 Reference>
module Network.Google.Admin.EmailMigration
    (
    -- * Resources
      AdminEmailMigration
    , MailAPI
    , MailInsert

    -- * Types

    -- ** MailItem
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

import           Network.Google.Admin.EmailMigration.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type AdminEmailMigration = MailAPI

type MailAPI = MailInsert

-- | Insert Mail into Google\'s Gmail backends
type MailInsert =
     "email" :>
       "v2" :>
         "users" :>
           Capture "userKey" Text :>
             "mail" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] ()
