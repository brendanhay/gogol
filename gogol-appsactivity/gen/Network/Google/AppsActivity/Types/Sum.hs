{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.AppsActivity.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types.Sum where

import           Network.Google.Prelude

data EventItemAdditionalEventTypes
    = EIAETComment
      -- ^ @comment@
    | EIAETCreate
      -- ^ @create@
    | EIAETEdit
      -- ^ @edit@
    | EIAETEmptyTrash
      -- ^ @emptyTrash@
    | EIAETMove
      -- ^ @move@
    | EIAETPermissionChange
      -- ^ @permissionChange@
    | EIAETRename
      -- ^ @rename@
    | EIAETTrash
      -- ^ @trash@
    | EIAETUnknown
      -- ^ @unknown@
    | EIAETUntrash
      -- ^ @untrash@
    | EIAETUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventItemAdditionalEventTypes

-- | The main type of event that occurred.
data EventPrimaryEventType
    = EPETComment
      -- ^ @comment@
    | EPETCreate
      -- ^ @create@
    | EPETEdit
      -- ^ @edit@
    | EPETEmptyTrash
      -- ^ @emptyTrash@
    | EPETMove
      -- ^ @move@
    | EPETPermissionChange
      -- ^ @permissionChange@
    | EPETRename
      -- ^ @rename@
    | EPETTrash
      -- ^ @trash@
    | EPETUnknown
      -- ^ @unknown@
    | EPETUntrash
      -- ^ @untrash@
    | EPETUpload
      -- ^ @upload@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable EventPrimaryEventType

-- | Indicates the Google Drive permissions role. The role determines a
-- user\'s ability to read, write, or comment on the file.
data PermissionRole
    = PRCommenter
      -- ^ @commenter@
    | PROwner
      -- ^ @owner@
    | PRReader
      -- ^ @reader@
    | PRWriter
      -- ^ @writer@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionRole

-- | Indicates how widely permissions are granted.
data PermissionType
    = PTAnyone
      -- ^ @anyone@
    | PTDomain
      -- ^ @domain@
    | PTGroup
      -- ^ @group@
    | PTUser
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PermissionType
