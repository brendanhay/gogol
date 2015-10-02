{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
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

data BloggerPostUserInfosListStatus
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

instance Hashable BloggerPostUserInfosListStatus

instance FromText BloggerPostUserInfosListStatus where
    fromText = \case
        "draft" -> Just Draft
        "live" -> Just Live
        "scheduled" -> Just Scheduled
        _ -> Nothing

instance ToText BloggerPostUserInfosListStatus where
    toText = \case
        Draft -> "draft"
        Live -> "live"
        Scheduled -> "scheduled"

instance FromJSON BloggerPostUserInfosListStatus where
    parseJSON = parseJSONText "BloggerPostUserInfosListStatus"

instance ToJSON BloggerPostUserInfosListStatus where
    toJSON = toJSONText

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
data BloggerBlogsListByUserStatus
    = BBLBUSDeleted
      -- ^ @DELETED@
      -- Blog has been deleted by an administrator.
    | BBLBUSLive
      -- ^ @LIVE@
      -- Blog is currently live.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerBlogsListByUserStatus

instance FromText BloggerBlogsListByUserStatus where
    fromText = \case
        "DELETED" -> Just BBLBUSDeleted
        "LIVE" -> Just BBLBUSLive
        _ -> Nothing

instance ToText BloggerBlogsListByUserStatus where
    toText = \case
        BBLBUSDeleted -> "DELETED"
        BBLBUSLive -> "LIVE"

instance FromJSON BloggerBlogsListByUserStatus where
    parseJSON = parseJSONText "BloggerBlogsListByUserStatus"

instance ToJSON BloggerBlogsListByUserStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require escalated access.
data BloggerPostsListView
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

instance Hashable BloggerPostsListView

instance FromText BloggerPostsListView where
    fromText = \case
        "ADMIN" -> Just Admin
        "AUTHOR" -> Just Author
        "READER" -> Just Reader
        _ -> Nothing

instance ToText BloggerPostsListView where
    toText = \case
        Admin -> "ADMIN"
        Author -> "AUTHOR"
        Reader -> "READER"

instance FromJSON BloggerPostsListView where
    parseJSON = parseJSONText "BloggerPostsListView"

instance ToJSON BloggerPostsListView where
    toJSON = toJSONText

data BloggerPageViewsGetRange
    = BPVGR30DAYS
      -- ^ @30DAYS@
      -- Page view counts from the last thirty days.
    | BPVGR7DAYS
      -- ^ @7DAYS@
      -- Page view counts from the last seven days.
    | BPVGRAll
      -- ^ @all@
      -- Total page view counts from all time.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPageViewsGetRange

instance FromText BloggerPageViewsGetRange where
    fromText = \case
        "30DAYS" -> Just BPVGR30DAYS
        "7DAYS" -> Just BPVGR7DAYS
        "all" -> Just BPVGRAll
        _ -> Nothing

instance ToText BloggerPageViewsGetRange where
    toText = \case
        BPVGR30DAYS -> "30DAYS"
        BPVGR7DAYS -> "7DAYS"
        BPVGRAll -> "all"

instance FromJSON BloggerPageViewsGetRange where
    parseJSON = parseJSONText "BloggerPageViewsGetRange"

instance ToJSON BloggerPageViewsGetRange where
    toJSON = toJSONText

-- | Sort search results
data BloggerPostsListOrderBy
    = Published
      -- ^ @published@
      -- Order by the date the post was published
    | Updated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostsListOrderBy

instance FromText BloggerPostsListOrderBy where
    fromText = \case
        "published" -> Just Published
        "updated" -> Just Updated
        _ -> Nothing

instance ToText BloggerPostsListOrderBy where
    toText = \case
        Published -> "published"
        Updated -> "updated"

instance FromJSON BloggerPostsListOrderBy where
    parseJSON = parseJSONText "BloggerPostsListOrderBy"

instance ToJSON BloggerPostsListOrderBy where
    toJSON = toJSONText

data BloggerCommentsListByBlogStatus
    = BCLBBSEmptied
      -- ^ @emptied@
      -- Comments that have had their content removed
    | BCLBBSLive
      -- ^ @live@
      -- Comments that are publicly visible
    | BCLBBSPending
      -- ^ @pending@
      -- Comments that are awaiting administrator approval
    | BCLBBSSpam
      -- ^ @spam@
      -- Comments marked as spam by the administrator
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerCommentsListByBlogStatus

instance FromText BloggerCommentsListByBlogStatus where
    fromText = \case
        "emptied" -> Just BCLBBSEmptied
        "live" -> Just BCLBBSLive
        "pending" -> Just BCLBBSPending
        "spam" -> Just BCLBBSSpam
        _ -> Nothing

instance ToText BloggerCommentsListByBlogStatus where
    toText = \case
        BCLBBSEmptied -> "emptied"
        BCLBBSLive -> "live"
        BCLBBSPending -> "pending"
        BCLBBSSpam -> "spam"

instance FromJSON BloggerCommentsListByBlogStatus where
    parseJSON = parseJSONText "BloggerCommentsListByBlogStatus"

instance ToJSON BloggerCommentsListByBlogStatus where
    toJSON = toJSONText

data BloggerPagesGetView
    = BPGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BPGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BPGVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPagesGetView

instance FromText BloggerPagesGetView where
    fromText = \case
        "ADMIN" -> Just BPGVAdmin
        "AUTHOR" -> Just BPGVAuthor
        "READER" -> Just BPGVReader
        _ -> Nothing

instance ToText BloggerPagesGetView where
    toText = \case
        BPGVAdmin -> "ADMIN"
        BPGVAuthor -> "AUTHOR"
        BPGVReader -> "READER"

instance FromJSON BloggerPagesGetView where
    parseJSON = parseJSONText "BloggerPagesGetView"

instance ToJSON BloggerPagesGetView where
    toJSON = toJSONText

-- | Sort order applied to search results. Default is published.
data BloggerPostUserInfosListOrderBy
    = BPUILOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | BPUILOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostUserInfosListOrderBy

instance FromText BloggerPostUserInfosListOrderBy where
    fromText = \case
        "published" -> Just BPUILOBPublished
        "updated" -> Just BPUILOBUpdated
        _ -> Nothing

instance ToText BloggerPostUserInfosListOrderBy where
    toText = \case
        BPUILOBPublished -> "published"
        BPUILOBUpdated -> "updated"

instance FromJSON BloggerPostUserInfosListOrderBy where
    parseJSON = parseJSONText "BloggerPostUserInfosListOrderBy"

instance ToJSON BloggerPostUserInfosListOrderBy where
    toJSON = toJSONText

data BloggerPagesListStatus
    = BPLSDraft
      -- ^ @draft@
      -- Draft (unpublished) Pages
    | BPLSLive
      -- ^ @live@
      -- Pages that are publicly visible
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPagesListStatus

instance FromText BloggerPagesListStatus where
    fromText = \case
        "draft" -> Just BPLSDraft
        "live" -> Just BPLSLive
        _ -> Nothing

instance ToText BloggerPagesListStatus where
    toText = \case
        BPLSDraft -> "draft"
        BPLSLive -> "live"

instance FromJSON BloggerPagesListStatus where
    parseJSON = parseJSONText "BloggerPagesListStatus"

instance ToJSON BloggerPagesListStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data BloggerPostsGetByPathView
    = BPGBPVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BPGBPVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BPGBPVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostsGetByPathView

instance FromText BloggerPostsGetByPathView where
    fromText = \case
        "ADMIN" -> Just BPGBPVAdmin
        "AUTHOR" -> Just BPGBPVAuthor
        "READER" -> Just BPGBPVReader
        _ -> Nothing

instance ToText BloggerPostsGetByPathView where
    toText = \case
        BPGBPVAdmin -> "ADMIN"
        BPGBPVAuthor -> "AUTHOR"
        BPGBPVReader -> "READER"

instance FromJSON BloggerPostsGetByPathView where
    parseJSON = parseJSONText "BloggerPostsGetByPathView"

instance ToJSON BloggerPostsGetByPathView where
    toJSON = toJSONText

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
data BloggerBlogsListByUserView
    = BBLBUVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BBLBUVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BBLBUVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerBlogsListByUserView

instance FromText BloggerBlogsListByUserView where
    fromText = \case
        "ADMIN" -> Just BBLBUVAdmin
        "AUTHOR" -> Just BBLBUVAuthor
        "READER" -> Just BBLBUVReader
        _ -> Nothing

instance ToText BloggerBlogsListByUserView where
    toText = \case
        BBLBUVAdmin -> "ADMIN"
        BBLBUVAuthor -> "AUTHOR"
        BBLBUVReader -> "READER"

instance FromJSON BloggerBlogsListByUserView where
    parseJSON = parseJSONText "BloggerBlogsListByUserView"

instance ToJSON BloggerBlogsListByUserView where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data BloggerCommentsListView
    = BCLVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BCLVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BCLVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerCommentsListView

instance FromText BloggerCommentsListView where
    fromText = \case
        "ADMIN" -> Just BCLVAdmin
        "AUTHOR" -> Just BCLVAuthor
        "READER" -> Just BCLVReader
        _ -> Nothing

instance ToText BloggerCommentsListView where
    toText = \case
        BCLVAdmin -> "ADMIN"
        BCLVAuthor -> "AUTHOR"
        BCLVReader -> "READER"

instance FromJSON BloggerCommentsListView where
    parseJSON = parseJSONText "BloggerCommentsListView"

instance ToJSON BloggerCommentsListView where
    toJSON = toJSONText

-- | User access types for blogs to include in the results, e.g. AUTHOR will
-- return blogs where the user has author level access. If no roles are
-- specified, defaults to ADMIN and AUTHOR roles.
data BloggerBlogsListByUserRole
    = BBLBURAdmin
      -- ^ @ADMIN@
      -- Admin role - Blogs where the user has Admin level access.
    | BBLBURAuthor
      -- ^ @AUTHOR@
      -- Author role - Blogs where the user has Author level access.
    | BBLBURReader
      -- ^ @READER@
      -- Reader role - Blogs where the user has Reader level access (to a private
      -- blog).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerBlogsListByUserRole

instance FromText BloggerBlogsListByUserRole where
    fromText = \case
        "ADMIN" -> Just BBLBURAdmin
        "AUTHOR" -> Just BBLBURAuthor
        "READER" -> Just BBLBURReader
        _ -> Nothing

instance ToText BloggerBlogsListByUserRole where
    toText = \case
        BBLBURAdmin -> "ADMIN"
        BBLBURAuthor -> "AUTHOR"
        BBLBURReader -> "READER"

instance FromJSON BloggerBlogsListByUserRole where
    parseJSON = parseJSONText "BloggerBlogsListByUserRole"

instance ToJSON BloggerBlogsListByUserRole where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data BloggerPostUserInfosListView
    = BPUILVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BPUILVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BPUILVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostUserInfosListView

instance FromText BloggerPostUserInfosListView where
    fromText = \case
        "ADMIN" -> Just BPUILVAdmin
        "AUTHOR" -> Just BPUILVAuthor
        "READER" -> Just BPUILVReader
        _ -> Nothing

instance ToText BloggerPostUserInfosListView where
    toText = \case
        BPUILVAdmin -> "ADMIN"
        BPUILVAuthor -> "AUTHOR"
        BPUILVReader -> "READER"

instance FromJSON BloggerPostUserInfosListView where
    parseJSON = parseJSONText "BloggerPostUserInfosListView"

instance ToJSON BloggerPostUserInfosListView where
    toJSON = toJSONText

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
data BloggerCommentsGetView
    = BCGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BCGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BCGVReader
      -- ^ @READER@
      -- Admin level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerCommentsGetView

instance FromText BloggerCommentsGetView where
    fromText = \case
        "ADMIN" -> Just BCGVAdmin
        "AUTHOR" -> Just BCGVAuthor
        "READER" -> Just BCGVReader
        _ -> Nothing

instance ToText BloggerCommentsGetView where
    toText = \case
        BCGVAdmin -> "ADMIN"
        BCGVAuthor -> "AUTHOR"
        BCGVReader -> "READER"

instance FromJSON BloggerCommentsGetView where
    parseJSON = parseJSONText "BloggerCommentsGetView"

instance ToJSON BloggerCommentsGetView where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BloggerBlogsGetByURLView
    = BBGBUVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BBGBUVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BBGBUVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerBlogsGetByURLView

instance FromText BloggerBlogsGetByURLView where
    fromText = \case
        "ADMIN" -> Just BBGBUVAdmin
        "AUTHOR" -> Just BBGBUVAuthor
        "READER" -> Just BBGBUVReader
        _ -> Nothing

instance ToText BloggerBlogsGetByURLView where
    toText = \case
        BBGBUVAdmin -> "ADMIN"
        BBGBUVAuthor -> "AUTHOR"
        BBGBUVReader -> "READER"

instance FromJSON BloggerBlogsGetByURLView where
    parseJSON = parseJSONText "BloggerBlogsGetByURLView"

instance ToJSON BloggerBlogsGetByURLView where
    toJSON = toJSONText

data BloggerCommentsListStatus
    = BCLSEmptied
      -- ^ @emptied@
      -- Comments that have had their content removed
    | BCLSLive
      -- ^ @live@
      -- Comments that are publicly visible
    | BCLSPending
      -- ^ @pending@
      -- Comments that are awaiting administrator approval
    | BCLSSpam
      -- ^ @spam@
      -- Comments marked as spam by the administrator
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerCommentsListStatus

instance FromText BloggerCommentsListStatus where
    fromText = \case
        "emptied" -> Just BCLSEmptied
        "live" -> Just BCLSLive
        "pending" -> Just BCLSPending
        "spam" -> Just BCLSSpam
        _ -> Nothing

instance ToText BloggerCommentsListStatus where
    toText = \case
        BCLSEmptied -> "emptied"
        BCLSLive -> "live"
        BCLSPending -> "pending"
        BCLSSpam -> "spam"

instance FromJSON BloggerCommentsListStatus where
    parseJSON = parseJSONText "BloggerCommentsListStatus"

instance ToJSON BloggerCommentsListStatus where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BloggerBlogsGetView
    = BBGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BBGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BBGVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerBlogsGetView

instance FromText BloggerBlogsGetView where
    fromText = \case
        "ADMIN" -> Just BBGVAdmin
        "AUTHOR" -> Just BBGVAuthor
        "READER" -> Just BBGVReader
        _ -> Nothing

instance ToText BloggerBlogsGetView where
    toText = \case
        BBGVAdmin -> "ADMIN"
        BBGVAuthor -> "AUTHOR"
        BBGVReader -> "READER"

instance FromJSON BloggerBlogsGetView where
    parseJSON = parseJSONText "BloggerBlogsGetView"

instance ToJSON BloggerBlogsGetView where
    toJSON = toJSONText

-- | Statuses to include in the results.
data BloggerPostsListStatus
    = BDraft
      -- ^ @draft@
      -- Draft (non-published) posts.
    | BLive
      -- ^ @live@
      -- Published posts
    | BScheduled
      -- ^ @scheduled@
      -- Posts that are scheduled to publish in the future.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostsListStatus

instance FromText BloggerPostsListStatus where
    fromText = \case
        "draft" -> Just BDraft
        "live" -> Just BLive
        "scheduled" -> Just BScheduled
        _ -> Nothing

instance ToText BloggerPostsListStatus where
    toText = \case
        BDraft -> "draft"
        BLive -> "live"
        BScheduled -> "scheduled"

instance FromJSON BloggerPostsListStatus where
    parseJSON = parseJSONText "BloggerPostsListStatus"

instance ToJSON BloggerPostsListStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data BloggerPostsGetView
    = BAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostsGetView

instance FromText BloggerPostsGetView where
    fromText = \case
        "ADMIN" -> Just BAdmin
        "AUTHOR" -> Just BAuthor
        "READER" -> Just BReader
        _ -> Nothing

instance ToText BloggerPostsGetView where
    toText = \case
        BAdmin -> "ADMIN"
        BAuthor -> "AUTHOR"
        BReader -> "READER"

instance FromJSON BloggerPostsGetView where
    parseJSON = parseJSONText "BloggerPostsGetView"

instance ToJSON BloggerPostsGetView where
    toJSON = toJSONText

-- | Sort search results
data BloggerPostsSearchOrderBy
    = BPSOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | BPSOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPostsSearchOrderBy

instance FromText BloggerPostsSearchOrderBy where
    fromText = \case
        "published" -> Just BPSOBPublished
        "updated" -> Just BPSOBUpdated
        _ -> Nothing

instance ToText BloggerPostsSearchOrderBy where
    toText = \case
        BPSOBPublished -> "published"
        BPSOBUpdated -> "updated"

instance FromJSON BloggerPostsSearchOrderBy where
    parseJSON = parseJSONText "BloggerPostsSearchOrderBy"

instance ToJSON BloggerPostsSearchOrderBy where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data BloggerPagesListView
    = BPLVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | BPLVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | BPLVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BloggerPagesListView

instance FromText BloggerPagesListView where
    fromText = \case
        "ADMIN" -> Just BPLVAdmin
        "AUTHOR" -> Just BPLVAuthor
        "READER" -> Just BPLVReader
        _ -> Nothing

instance ToText BloggerPagesListView where
    toText = \case
        BPLVAdmin -> "ADMIN"
        BPLVAuthor -> "AUTHOR"
        BPLVReader -> "READER"

instance FromJSON BloggerPagesListView where
    parseJSON = parseJSONText "BloggerPagesListView"

instance ToJSON BloggerPagesListView where
    toJSON = toJSONText
