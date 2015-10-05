{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Blogger.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Blogger.Types.Sum where

import           Network.Google.Prelude

-- | Sort search results
data PostsListOrderBy
    = Published
      -- ^ @published@
      -- Order by the date the post was published
    | Updated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsListOrderBy

instance FromText PostsListOrderBy where
    fromText = \case
        "published" -> Just Published
        "updated" -> Just Updated
        _ -> Nothing

instance ToText PostsListOrderBy where
    toText = \case
        Published -> "published"
        Updated -> "updated"

instance FromJSON PostsListOrderBy where
    parseJSON = parseJSONText "PostsListOrderBy"

instance ToJSON PostsListOrderBy where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require escalated access.
data PostsListView
    = Admin
      -- ^ @ADMIN@
      -- Admin level detail
    | Author
      -- ^ @AUTHOR@
      -- Author level detail
    | Reader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsListView

instance FromText PostsListView where
    fromText = \case
        "ADMIN" -> Just Admin
        "AUTHOR" -> Just Author
        "READER" -> Just Reader
        _ -> Nothing

instance ToText PostsListView where
    toText = \case
        Admin -> "ADMIN"
        Author -> "AUTHOR"
        Reader -> "READER"

instance FromJSON PostsListView where
    parseJSON = parseJSONText "PostsListView"

instance ToJSON PostsListView where
    toJSON = toJSONText

data PageViewsGetRange
    = PVGR30DAYS
      -- ^ @30DAYS@
      -- Page view counts from the last thirty days.
    | PVGR7DAYS
      -- ^ @7DAYS@
      -- Page view counts from the last seven days.
    | PVGRAll
      -- ^ @all@
      -- Total page view counts from all time.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PageViewsGetRange

instance FromText PageViewsGetRange where
    fromText = \case
        "30DAYS" -> Just PVGR30DAYS
        "7DAYS" -> Just PVGR7DAYS
        "all" -> Just PVGRAll
        _ -> Nothing

instance ToText PageViewsGetRange where
    toText = \case
        PVGR30DAYS -> "30DAYS"
        PVGR7DAYS -> "7DAYS"
        PVGRAll -> "all"

instance FromJSON PageViewsGetRange where
    parseJSON = parseJSONText "PageViewsGetRange"

instance ToJSON PageViewsGetRange where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data CommentsListView
    = CLVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | CLVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | CLVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsListView

instance FromText CommentsListView where
    fromText = \case
        "ADMIN" -> Just CLVAdmin
        "AUTHOR" -> Just CLVAuthor
        "READER" -> Just CLVReader
        _ -> Nothing

instance ToText CommentsListView where
    toText = \case
        CLVAdmin -> "ADMIN"
        CLVAuthor -> "AUTHOR"
        CLVReader -> "READER"

instance FromJSON CommentsListView where
    parseJSON = parseJSONText "CommentsListView"

instance ToJSON CommentsListView where
    toJSON = toJSONText

data PostUserInfosListStatus
    = Draft
      -- ^ @draft@
      -- Draft posts
    | Live
      -- ^ @live@
      -- Published posts
    | Scheduled
      -- ^ @scheduled@
      -- Posts that are scheduled to publish in future.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostUserInfosListStatus

instance FromText PostUserInfosListStatus where
    fromText = \case
        "draft" -> Just Draft
        "live" -> Just Live
        "scheduled" -> Just Scheduled
        _ -> Nothing

instance ToText PostUserInfosListStatus where
    toText = \case
        Draft -> "draft"
        Live -> "live"
        Scheduled -> "scheduled"

instance FromJSON PostUserInfosListStatus where
    parseJSON = parseJSONText "PostUserInfosListStatus"

instance ToJSON PostUserInfosListStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostsGetView
    = PGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PGVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsGetView

instance FromText PostsGetView where
    fromText = \case
        "ADMIN" -> Just PGVAdmin
        "AUTHOR" -> Just PGVAuthor
        "READER" -> Just PGVReader
        _ -> Nothing

instance ToText PostsGetView where
    toText = \case
        PGVAdmin -> "ADMIN"
        PGVAuthor -> "AUTHOR"
        PGVReader -> "READER"

instance FromJSON PostsGetView where
    parseJSON = parseJSONText "PostsGetView"

instance ToJSON PostsGetView where
    toJSON = toJSONText

-- | Sort search results
data PostsSearchOrderBy
    = PSOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | PSOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsSearchOrderBy

instance FromText PostsSearchOrderBy where
    fromText = \case
        "published" -> Just PSOBPublished
        "updated" -> Just PSOBUpdated
        _ -> Nothing

instance ToText PostsSearchOrderBy where
    toText = \case
        PSOBPublished -> "published"
        PSOBUpdated -> "updated"

instance FromJSON PostsSearchOrderBy where
    parseJSON = parseJSONText "PostsSearchOrderBy"

instance ToJSON PostsSearchOrderBy where
    toJSON = toJSONText

data CommentsListByBlogStatus
    = CLBBSEmptied
      -- ^ @emptied@
      -- Comments that have had their content removed
    | CLBBSLive
      -- ^ @live@
      -- Comments that are publicly visible
    | CLBBSPending
      -- ^ @pending@
      -- Comments that are awaiting administrator approval
    | CLBBSSpam
      -- ^ @spam@
      -- Comments marked as spam by the administrator
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsListByBlogStatus

instance FromText CommentsListByBlogStatus where
    fromText = \case
        "emptied" -> Just CLBBSEmptied
        "live" -> Just CLBBSLive
        "pending" -> Just CLBBSPending
        "spam" -> Just CLBBSSpam
        _ -> Nothing

instance ToText CommentsListByBlogStatus where
    toText = \case
        CLBBSEmptied -> "emptied"
        CLBBSLive -> "live"
        CLBBSPending -> "pending"
        CLBBSSpam -> "spam"

instance FromJSON CommentsListByBlogStatus where
    parseJSON = parseJSONText "CommentsListByBlogStatus"

instance ToJSON CommentsListByBlogStatus where
    toJSON = toJSONText

data PagesGetView
    = PAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PagesGetView

instance FromText PagesGetView where
    fromText = \case
        "ADMIN" -> Just PAdmin
        "AUTHOR" -> Just PAuthor
        "READER" -> Just PReader
        _ -> Nothing

instance ToText PagesGetView where
    toText = \case
        PAdmin -> "ADMIN"
        PAuthor -> "AUTHOR"
        PReader -> "READER"

instance FromJSON PagesGetView where
    parseJSON = parseJSONText "PagesGetView"

instance ToJSON PagesGetView where
    toJSON = toJSONText

-- | Sort order applied to search results. Default is published.
data PostUserInfosListOrderBy
    = PUILOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | PUILOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostUserInfosListOrderBy

instance FromText PostUserInfosListOrderBy where
    fromText = \case
        "published" -> Just PUILOBPublished
        "updated" -> Just PUILOBUpdated
        _ -> Nothing

instance ToText PostUserInfosListOrderBy where
    toText = \case
        PUILOBPublished -> "published"
        PUILOBUpdated -> "updated"

instance FromJSON PostUserInfosListOrderBy where
    parseJSON = parseJSONText "PostUserInfosListOrderBy"

instance ToJSON PostUserInfosListOrderBy where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BlogsGetView
    = BGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BGVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BlogsGetView

instance FromText BlogsGetView where
    fromText = \case
        "ADMIN" -> Just BGVAdmin
        "AUTHOR" -> Just BGVAuthor
        "READER" -> Just BGVReader
        _ -> Nothing

instance ToText BlogsGetView where
    toText = \case
        BGVAdmin -> "ADMIN"
        BGVAuthor -> "AUTHOR"
        BGVReader -> "READER"

instance FromJSON BlogsGetView where
    parseJSON = parseJSONText "BlogsGetView"

instance ToJSON BlogsGetView where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BlogsGetByURLView
    = BGBUVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BGBUVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BGBUVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BlogsGetByURLView

instance FromText BlogsGetByURLView where
    fromText = \case
        "ADMIN" -> Just BGBUVAdmin
        "AUTHOR" -> Just BGBUVAuthor
        "READER" -> Just BGBUVReader
        _ -> Nothing

instance ToText BlogsGetByURLView where
    toText = \case
        BGBUVAdmin -> "ADMIN"
        BGBUVAuthor -> "AUTHOR"
        BGBUVReader -> "READER"

instance FromJSON BlogsGetByURLView where
    parseJSON = parseJSONText "BlogsGetByURLView"

instance ToJSON BlogsGetByURLView where
    toJSON = toJSONText

data CommentsListStatus
    = CLSEmptied
      -- ^ @emptied@
      -- Comments that have had their content removed
    | CLSLive
      -- ^ @live@
      -- Comments that are publicly visible
    | CLSPending
      -- ^ @pending@
      -- Comments that are awaiting administrator approval
    | CLSSpam
      -- ^ @spam@
      -- Comments marked as spam by the administrator
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsListStatus

instance FromText CommentsListStatus where
    fromText = \case
        "emptied" -> Just CLSEmptied
        "live" -> Just CLSLive
        "pending" -> Just CLSPending
        "spam" -> Just CLSSpam
        _ -> Nothing

instance ToText CommentsListStatus where
    toText = \case
        CLSEmptied -> "emptied"
        CLSLive -> "live"
        CLSPending -> "pending"
        CLSSpam -> "spam"

instance FromJSON CommentsListStatus where
    parseJSON = parseJSONText "CommentsListStatus"

instance ToJSON CommentsListStatus where
    toJSON = toJSONText

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
data BlogsListByUserStatus
    = BLBUSDeleted
      -- ^ @DELETED@
      -- Blog has been deleted by an administrator.
    | BLBUSLive
      -- ^ @LIVE@
      -- Blog is currently live.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BlogsListByUserStatus

instance FromText BlogsListByUserStatus where
    fromText = \case
        "DELETED" -> Just BLBUSDeleted
        "LIVE" -> Just BLBUSLive
        _ -> Nothing

instance ToText BlogsListByUserStatus where
    toText = \case
        BLBUSDeleted -> "DELETED"
        BLBUSLive -> "LIVE"

instance FromJSON BlogsListByUserStatus where
    parseJSON = parseJSONText "BlogsListByUserStatus"

instance ToJSON BlogsListByUserStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PagesListView
    = PLVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PLVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PLVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PagesListView

instance FromText PagesListView where
    fromText = \case
        "ADMIN" -> Just PLVAdmin
        "AUTHOR" -> Just PLVAuthor
        "READER" -> Just PLVReader
        _ -> Nothing

instance ToText PagesListView where
    toText = \case
        PLVAdmin -> "ADMIN"
        PLVAuthor -> "AUTHOR"
        PLVReader -> "READER"

instance FromJSON PagesListView where
    parseJSON = parseJSONText "PagesListView"

instance ToJSON PagesListView where
    toJSON = toJSONText

-- | Statuses to include in the results.
data PostsListStatus
    = PLSDraft
      -- ^ @draft@
      -- Draft (non-published) posts.
    | PLSLive
      -- ^ @live@
      -- Published posts
    | PLSScheduled
      -- ^ @scheduled@
      -- Posts that are scheduled to publish in the future.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsListStatus

instance FromText PostsListStatus where
    fromText = \case
        "draft" -> Just PLSDraft
        "live" -> Just PLSLive
        "scheduled" -> Just PLSScheduled
        _ -> Nothing

instance ToText PostsListStatus where
    toText = \case
        PLSDraft -> "draft"
        PLSLive -> "live"
        PLSScheduled -> "scheduled"

instance FromJSON PostsListStatus where
    parseJSON = parseJSONText "PostsListStatus"

instance ToJSON PostsListStatus where
    toJSON = toJSONText

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
data BlogsListByUserView
    = BLBUVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BLBUVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BLBUVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BlogsListByUserView

instance FromText BlogsListByUserView where
    fromText = \case
        "ADMIN" -> Just BLBUVAdmin
        "AUTHOR" -> Just BLBUVAuthor
        "READER" -> Just BLBUVReader
        _ -> Nothing

instance ToText BlogsListByUserView where
    toText = \case
        BLBUVAdmin -> "ADMIN"
        BLBUVAuthor -> "AUTHOR"
        BLBUVReader -> "READER"

instance FromJSON BlogsListByUserView where
    parseJSON = parseJSONText "BlogsListByUserView"

instance ToJSON BlogsListByUserView where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostUserInfosListView
    = PUILVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PUILVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PUILVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostUserInfosListView

instance FromText PostUserInfosListView where
    fromText = \case
        "ADMIN" -> Just PUILVAdmin
        "AUTHOR" -> Just PUILVAuthor
        "READER" -> Just PUILVReader
        _ -> Nothing

instance ToText PostUserInfosListView where
    toText = \case
        PUILVAdmin -> "ADMIN"
        PUILVAuthor -> "AUTHOR"
        PUILVReader -> "READER"

instance FromJSON PostUserInfosListView where
    parseJSON = parseJSONText "PostUserInfosListView"

instance ToJSON PostUserInfosListView where
    toJSON = toJSONText

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
data CommentsGetView
    = CGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | CGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | CGVReader
      -- ^ @READER@
      -- Admin level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsGetView

instance FromText CommentsGetView where
    fromText = \case
        "ADMIN" -> Just CGVAdmin
        "AUTHOR" -> Just CGVAuthor
        "READER" -> Just CGVReader
        _ -> Nothing

instance ToText CommentsGetView where
    toText = \case
        CGVAdmin -> "ADMIN"
        CGVAuthor -> "AUTHOR"
        CGVReader -> "READER"

instance FromJSON CommentsGetView where
    parseJSON = parseJSONText "CommentsGetView"

instance ToJSON CommentsGetView where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostsGetByPathView
    = PGBPVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PGBPVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PGBPVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsGetByPathView

instance FromText PostsGetByPathView where
    fromText = \case
        "ADMIN" -> Just PGBPVAdmin
        "AUTHOR" -> Just PGBPVAuthor
        "READER" -> Just PGBPVReader
        _ -> Nothing

instance ToText PostsGetByPathView where
    toText = \case
        PGBPVAdmin -> "ADMIN"
        PGBPVAuthor -> "AUTHOR"
        PGBPVReader -> "READER"

instance FromJSON PostsGetByPathView where
    parseJSON = parseJSONText "PostsGetByPathView"

instance ToJSON PostsGetByPathView where
    toJSON = toJSONText

data PagesListStatus
    = PDraft
      -- ^ @draft@
      -- Draft (unpublished) Pages
    | PLive
      -- ^ @live@
      -- Pages that are publicly visible
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PagesListStatus

instance FromText PagesListStatus where
    fromText = \case
        "draft" -> Just PDraft
        "live" -> Just PLive
        _ -> Nothing

instance ToText PagesListStatus where
    toText = \case
        PDraft -> "draft"
        PLive -> "live"

instance FromJSON PagesListStatus where
    parseJSON = parseJSONText "PagesListStatus"

instance ToJSON PagesListStatus where
    toJSON = toJSONText

-- | User access types for blogs to include in the results, e.g. AUTHOR will
-- return blogs where the user has author level access. If no roles are
-- specified, defaults to ADMIN and AUTHOR roles.
data BlogsListByUserRole
    = BLBURAdmin
      -- ^ @ADMIN@
      -- Admin role - Blogs where the user has Admin level access.
    | BLBURAuthor
      -- ^ @AUTHOR@
      -- Author role - Blogs where the user has Author level access.
    | BLBURReader
      -- ^ @READER@
      -- Reader role - Blogs where the user has Reader level access (to a private
      -- blog).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BlogsListByUserRole

instance FromText BlogsListByUserRole where
    fromText = \case
        "ADMIN" -> Just BLBURAdmin
        "AUTHOR" -> Just BLBURAuthor
        "READER" -> Just BLBURReader
        _ -> Nothing

instance ToText BlogsListByUserRole where
    toText = \case
        BLBURAdmin -> "ADMIN"
        BLBURAuthor -> "AUTHOR"
        BLBURReader -> "READER"

instance FromJSON BlogsListByUserRole where
    parseJSON = parseJSONText "BlogsListByUserRole"

instance ToJSON BlogsListByUserRole where
    toJSON = toJSONText
