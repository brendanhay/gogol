{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE LambdaCase         #-}

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

import Network.Google.Prelude

-- | Sort search results
data PostsSearch'OrderBy
    = Published
      -- ^ @published@
      -- Order by the date the post was published
    | Updated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsSearch'OrderBy

instance FromText PostsSearch'OrderBy where
    fromText = \case
        "published" -> Just Published
        "updated" -> Just Updated
        _ -> Nothing

instance ToText PostsSearch'OrderBy where
    toText = \case
        Published -> "published"
        Updated -> "updated"

instance FromJSON PostsSearch'OrderBy where
    parseJSON = parseJSONText "PostsSearch'OrderBy"

instance ToJSON PostsSearch'OrderBy where
    toJSON = toJSONText

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
data CommentsGet'View
    = Admin
      -- ^ @ADMIN@
      -- Admin level detail
    | Author
      -- ^ @AUTHOR@
      -- Author level detail
    | Reader
      -- ^ @READER@
      -- Admin level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CommentsGet'View

instance FromText CommentsGet'View where
    fromText = \case
        "ADMIN" -> Just Admin
        "AUTHOR" -> Just Author
        "READER" -> Just Reader
        _ -> Nothing

instance ToText CommentsGet'View where
    toText = \case
        Admin -> "ADMIN"
        Author -> "AUTHOR"
        Reader -> "READER"

instance FromJSON CommentsGet'View where
    parseJSON = parseJSONText "CommentsGet'View"

instance ToJSON CommentsGet'View where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostUserInfosList'View
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

instance Hashable PostUserInfosList'View

instance FromText PostUserInfosList'View where
    fromText = \case
        "ADMIN" -> Just PUILVAdmin
        "AUTHOR" -> Just PUILVAuthor
        "READER" -> Just PUILVReader
        _ -> Nothing

instance ToText PostUserInfosList'View where
    toText = \case
        PUILVAdmin -> "ADMIN"
        PUILVAuthor -> "AUTHOR"
        PUILVReader -> "READER"

instance FromJSON PostUserInfosList'View where
    parseJSON = parseJSONText "PostUserInfosList'View"

instance ToJSON PostUserInfosList'View where
    toJSON = toJSONText

data PagesGet'View
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

instance Hashable PagesGet'View

instance FromText PagesGet'View where
    fromText = \case
        "ADMIN" -> Just PGVAdmin
        "AUTHOR" -> Just PGVAuthor
        "READER" -> Just PGVReader
        _ -> Nothing

instance ToText PagesGet'View where
    toText = \case
        PGVAdmin -> "ADMIN"
        PGVAuthor -> "AUTHOR"
        PGVReader -> "READER"

instance FromJSON PagesGet'View where
    parseJSON = parseJSONText "PagesGet'View"

instance ToJSON PagesGet'View where
    toJSON = toJSONText

data PagesList'Status
    = Draft
      -- ^ @draft@
      -- Draft (unpublished) Pages
    | Live
      -- ^ @live@
      -- Pages that are publicly visible
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PagesList'Status

instance FromText PagesList'Status where
    fromText = \case
        "draft" -> Just Draft
        "live" -> Just Live
        _ -> Nothing

instance ToText PagesList'Status where
    toText = \case
        Draft -> "draft"
        Live -> "live"

instance FromJSON PagesList'Status where
    parseJSON = parseJSONText "PagesList'Status"

instance ToJSON PagesList'Status where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostsGetByPath'View
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

instance Hashable PostsGetByPath'View

instance FromText PostsGetByPath'View where
    fromText = \case
        "ADMIN" -> Just PGBPVAdmin
        "AUTHOR" -> Just PGBPVAuthor
        "READER" -> Just PGBPVReader
        _ -> Nothing

instance ToText PostsGetByPath'View where
    toText = \case
        PGBPVAdmin -> "ADMIN"
        PGBPVAuthor -> "AUTHOR"
        PGBPVReader -> "READER"

instance FromJSON PostsGetByPath'View where
    parseJSON = parseJSONText "PostsGetByPath'View"

instance ToJSON PostsGetByPath'View where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BlogsGetByURL'View
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

instance Hashable BlogsGetByURL'View

instance FromText BlogsGetByURL'View where
    fromText = \case
        "ADMIN" -> Just BGBUVAdmin
        "AUTHOR" -> Just BGBUVAuthor
        "READER" -> Just BGBUVReader
        _ -> Nothing

instance ToText BlogsGetByURL'View where
    toText = \case
        BGBUVAdmin -> "ADMIN"
        BGBUVAuthor -> "AUTHOR"
        BGBUVReader -> "READER"

instance FromJSON BlogsGetByURL'View where
    parseJSON = parseJSONText "BlogsGetByURL'View"

instance ToJSON BlogsGetByURL'View where
    toJSON = toJSONText

data CommentsList'Status
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

instance Hashable CommentsList'Status

instance FromText CommentsList'Status where
    fromText = \case
        "emptied" -> Just CLSEmptied
        "live" -> Just CLSLive
        "pending" -> Just CLSPending
        "spam" -> Just CLSSpam
        _ -> Nothing

instance ToText CommentsList'Status where
    toText = \case
        CLSEmptied -> "emptied"
        CLSLive -> "live"
        CLSPending -> "pending"
        CLSSpam -> "spam"

instance FromJSON CommentsList'Status where
    parseJSON = parseJSONText "CommentsList'Status"

instance ToJSON CommentsList'Status where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
data BlogsListByUser'Status
    = BLBUSDeleted
      -- ^ @DELETED@
      -- Blog has been deleted by an administrator.
    | BLBUSLive
      -- ^ @LIVE@
      -- Blog is currently live.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BlogsListByUser'Status

instance FromText BlogsListByUser'Status where
    fromText = \case
        "DELETED" -> Just BLBUSDeleted
        "LIVE" -> Just BLBUSLive
        _ -> Nothing

instance ToText BlogsListByUser'Status where
    toText = \case
        BLBUSDeleted -> "DELETED"
        BLBUSLive -> "LIVE"

instance FromJSON BlogsListByUser'Status where
    parseJSON = parseJSONText "BlogsListByUser'Status"

instance ToJSON BlogsListByUser'Status where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require escalated access.
data PostsList'View
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

instance Hashable PostsList'View

instance FromText PostsList'View where
    fromText = \case
        "ADMIN" -> Just PLVAdmin
        "AUTHOR" -> Just PLVAuthor
        "READER" -> Just PLVReader
        _ -> Nothing

instance ToText PostsList'View where
    toText = \case
        PLVAdmin -> "ADMIN"
        PLVAuthor -> "AUTHOR"
        PLVReader -> "READER"

instance FromJSON PostsList'View where
    parseJSON = parseJSONText "PostsList'View"

instance ToJSON PostsList'View where
    toJSON = toJSONText

-- | Sort search results
data PostsList'OrderBy
    = PLOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | PLOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsList'OrderBy

instance FromText PostsList'OrderBy where
    fromText = \case
        "published" -> Just PLOBPublished
        "updated" -> Just PLOBUpdated
        _ -> Nothing

instance ToText PostsList'OrderBy where
    toText = \case
        PLOBPublished -> "published"
        PLOBUpdated -> "updated"

instance FromJSON PostsList'OrderBy where
    parseJSON = parseJSONText "PostsList'OrderBy"

instance ToJSON PostsList'OrderBy where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PagesList'View
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

instance Hashable PagesList'View

instance FromText PagesList'View where
    fromText = \case
        "ADMIN" -> Just PAdmin
        "AUTHOR" -> Just PAuthor
        "READER" -> Just PReader
        _ -> Nothing

instance ToText PagesList'View where
    toText = \case
        PAdmin -> "ADMIN"
        PAuthor -> "AUTHOR"
        PReader -> "READER"

instance FromJSON PagesList'View where
    parseJSON = parseJSONText "PagesList'View"

instance ToJSON PagesList'View where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data CommentsList'View
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

instance Hashable CommentsList'View

instance FromText CommentsList'View where
    fromText = \case
        "ADMIN" -> Just CLVAdmin
        "AUTHOR" -> Just CLVAuthor
        "READER" -> Just CLVReader
        _ -> Nothing

instance ToText CommentsList'View where
    toText = \case
        CLVAdmin -> "ADMIN"
        CLVAuthor -> "AUTHOR"
        CLVReader -> "READER"

instance FromJSON CommentsList'View where
    parseJSON = parseJSONText "CommentsList'View"

instance ToJSON CommentsList'View where
    toJSON = toJSONText

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
data BlogsListByUser'View
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

instance Hashable BlogsListByUser'View

instance FromText BlogsListByUser'View where
    fromText = \case
        "ADMIN" -> Just BLBUVAdmin
        "AUTHOR" -> Just BLBUVAuthor
        "READER" -> Just BLBUVReader
        _ -> Nothing

instance ToText BlogsListByUser'View where
    toText = \case
        BLBUVAdmin -> "ADMIN"
        BLBUVAuthor -> "AUTHOR"
        BLBUVReader -> "READER"

instance FromJSON BlogsListByUser'View where
    parseJSON = parseJSONText "BlogsListByUser'View"

instance ToJSON BlogsListByUser'View where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostsGet'View
    = POSAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | POSAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | POSReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostsGet'View

instance FromText PostsGet'View where
    fromText = \case
        "ADMIN" -> Just POSAdmin
        "AUTHOR" -> Just POSAuthor
        "READER" -> Just POSReader
        _ -> Nothing

instance ToText PostsGet'View where
    toText = \case
        POSAdmin -> "ADMIN"
        POSAuthor -> "AUTHOR"
        POSReader -> "READER"

instance FromJSON PostsGet'View where
    parseJSON = parseJSONText "PostsGet'View"

instance ToJSON PostsGet'View where
    toJSON = toJSONText

data CommentsListByBlog'Status
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

instance Hashable CommentsListByBlog'Status

instance FromText CommentsListByBlog'Status where
    fromText = \case
        "emptied" -> Just CLBBSEmptied
        "live" -> Just CLBBSLive
        "pending" -> Just CLBBSPending
        "spam" -> Just CLBBSSpam
        _ -> Nothing

instance ToText CommentsListByBlog'Status where
    toText = \case
        CLBBSEmptied -> "emptied"
        CLBBSLive -> "live"
        CLBBSPending -> "pending"
        CLBBSSpam -> "spam"

instance FromJSON CommentsListByBlog'Status where
    parseJSON = parseJSONText "CommentsListByBlog'Status"

instance ToJSON CommentsListByBlog'Status where
    toJSON = toJSONText

-- | Sort order applied to search results. Default is published.
data PostUserInfosList'OrderBy
    = PUILOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | PUILOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostUserInfosList'OrderBy

instance FromText PostUserInfosList'OrderBy where
    fromText = \case
        "published" -> Just PUILOBPublished
        "updated" -> Just PUILOBUpdated
        _ -> Nothing

instance ToText PostUserInfosList'OrderBy where
    toText = \case
        PUILOBPublished -> "published"
        PUILOBUpdated -> "updated"

instance FromJSON PostUserInfosList'OrderBy where
    parseJSON = parseJSONText "PostUserInfosList'OrderBy"

instance ToJSON PostUserInfosList'OrderBy where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BlogsGet'View
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

instance Hashable BlogsGet'View

instance FromText BlogsGet'View where
    fromText = \case
        "ADMIN" -> Just BGVAdmin
        "AUTHOR" -> Just BGVAuthor
        "READER" -> Just BGVReader
        _ -> Nothing

instance ToText BlogsGet'View where
    toText = \case
        BGVAdmin -> "ADMIN"
        BGVAuthor -> "AUTHOR"
        BGVReader -> "READER"

instance FromJSON BlogsGet'View where
    parseJSON = parseJSONText "BlogsGet'View"

instance ToJSON BlogsGet'View where
    toJSON = toJSONText

-- | User access types for blogs to include in the results, e.g. AUTHOR will
-- return blogs where the user has author level access. If no roles are
-- specified, defaults to ADMIN and AUTHOR roles.
data BlogsListByUser'Role
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

instance Hashable BlogsListByUser'Role

instance FromText BlogsListByUser'Role where
    fromText = \case
        "ADMIN" -> Just BLBURAdmin
        "AUTHOR" -> Just BLBURAuthor
        "READER" -> Just BLBURReader
        _ -> Nothing

instance ToText BlogsListByUser'Role where
    toText = \case
        BLBURAdmin -> "ADMIN"
        BLBURAuthor -> "AUTHOR"
        BLBURReader -> "READER"

instance FromJSON BlogsListByUser'Role where
    parseJSON = parseJSONText "BlogsListByUser'Role"

instance ToJSON BlogsListByUser'Role where
    toJSON = toJSONText

data PageViewsGet'Range
    = 30DAYS
      -- ^ @30DAYS@
      -- Page view counts from the last thirty days.
    | 7DAYS
      -- ^ @7DAYS@
      -- Page view counts from the last seven days.
    | All
      -- ^ @all@
      -- Total page view counts from all time.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PageViewsGet'Range

instance FromText PageViewsGet'Range where
    fromText = \case
        "30DAYS" -> Just 30DAYS
        "7DAYS" -> Just 7DAYS
        "all" -> Just All
        _ -> Nothing

instance ToText PageViewsGet'Range where
    toText = \case
        30DAYS -> "30DAYS"
        7DAYS -> "7DAYS"
        All -> "all"

instance FromJSON PageViewsGet'Range where
    parseJSON = parseJSONText "PageViewsGet'Range"

instance ToJSON PageViewsGet'Range where
    toJSON = toJSONText

data PostUserInfosList'Status
    = PUILSDraft
      -- ^ @draft@
      -- Draft posts
    | PUILSLive
      -- ^ @live@
      -- Published posts
    | PUILSScheduled
      -- ^ @scheduled@
      -- Posts that are scheduled to publish in future.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PostUserInfosList'Status

instance FromText PostUserInfosList'Status where
    fromText = \case
        "draft" -> Just PUILSDraft
        "live" -> Just PUILSLive
        "scheduled" -> Just PUILSScheduled
        _ -> Nothing

instance ToText PostUserInfosList'Status where
    toText = \case
        PUILSDraft -> "draft"
        PUILSLive -> "live"
        PUILSScheduled -> "scheduled"

instance FromJSON PostUserInfosList'Status where
    parseJSON = parseJSONText "PostUserInfosList'Status"

instance ToJSON PostUserInfosList'Status where
    toJSON = toJSONText

-- | Statuses to include in the results.
data PostsList'Status
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

instance Hashable PostsList'Status

instance FromText PostsList'Status where
    fromText = \case
        "draft" -> Just PLSDraft
        "live" -> Just PLSLive
        "scheduled" -> Just PLSScheduled
        _ -> Nothing

instance ToText PostsList'Status where
    toText = \case
        PLSDraft -> "draft"
        PLSLive -> "live"
        PLSScheduled -> "scheduled"

instance FromJSON PostsList'Status where
    parseJSON = parseJSONText "PostsList'Status"

instance ToJSON PostsList'Status where
    toJSON = toJSONText
